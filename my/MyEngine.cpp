#include <string>
#include <vector>
#include <map>
#include <cassert>
#include <iostream>
#include <cstring>
#include <algorithm>
#include <random>
#include <chrono>

using namespace std;

const int NO_CHESS = 0;
const int BLACK_CHESS = 1;
const int WHITE_CHESS = 2;


struct ACNode {
    ACNode(int p, char c)
            : ch(c),
              fail(-1),
              parent(p) {
    }

    char ch;
    map<char, int> sons;
    int fail;
    vector<int> output;
    int parent;
};

struct Pattern {
    const std::string word;
    int score;
};

struct Coord {
    int x, y;
    friend ostream& operator<<(ostream& os, const Coord& coord) {
        os << "(" << coord.x << ", " << coord.y << ")";
        return os;
    }
};

struct ScoreCoord {
    int score;
    Coord coord;
};

class ACEngine {
public:
    ACEngine(std::initializer_list<Pattern> patterns) : maxState(0) {
        AddState(-1, 'a');
        nodes[0].fail = -1;
        vector<string> patternStrs;
        for (const auto &p: patterns) {
            patternStrs.push_back(p.word);
            score.push_back(p.score);
        }
        this->patterns = patternStrs;
        BuildGotoTable();
        BuildFailTable();
    }

    ~ACEngine() = default;

    void BuildGotoTable(){
        assert(!nodes.empty());
        for (auto i = 0; i < static_cast<int>(patterns.size()); i++) {
            int currentIndex = 0;
            for (char j: patterns[i]) {
                if (nodes[currentIndex].sons.find(j) == nodes[currentIndex].sons.end()) {
                    nodes[currentIndex].sons[j] = ++maxState;
                    AddState(currentIndex, j);
                    currentIndex = maxState;
                } else {
                    currentIndex = nodes[currentIndex].sons[j];
                }
            }
            nodes[currentIndex].output.push_back(i);
        }
    }

    void BuildFailTable(){
        assert(!nodes.empty());
        vector<int> midNodesIndex;
        ACNode root = nodes[0];
        map<char, int>::iterator iter1, iter2;
        for (iter1 = root.sons.begin(); iter1 != root.sons.end(); iter1++) {
            nodes[iter1->second].fail = 0;
            ACNode &currentNode = nodes[iter1->second];
            for (iter2 = currentNode.sons.begin(); iter2 != currentNode.sons.end(); iter2++) {
                midNodesIndex.push_back(iter2->second);
            }
        }
        while (!midNodesIndex.empty()) {
            vector<int> newMidNodesIndex;
            unsigned int i;
            for (i = 0; i < midNodesIndex.size(); i++) {
                ACNode &currentNode = nodes[midNodesIndex[i]];
                int currentFail = nodes[currentNode.parent].fail;
                while (true) {
                    ACNode &currentFailNode = nodes[currentFail];
                    if (currentFailNode.sons.find(currentNode.ch) != currentFailNode.sons.end()) {
                        currentNode.fail = currentFailNode.sons.find(currentNode.ch)->second;
                        if (!nodes[currentNode.fail].output.empty()) {
                            currentNode.output.insert(currentNode.output.end(), nodes[currentNode.fail].output.begin(),
                                                    nodes[currentNode.fail].output.end());
                        }
                        break;
                    } else {
                        currentFail = currentFailNode.fail;
                    }
                    if (currentFail == -1) {
                        currentNode.fail = 0;
                        break;
                    }
                }
                for (iter1 = currentNode.sons.begin(); iter1 != currentNode.sons.end(); iter1++) {
                    newMidNodesIndex.push_back(iter1->second);
                }
            }
            midNodesIndex = newMidNodesIndex;
        }
    }

    int ACSearch(const string &text){
        vector<int> result;
        int ret = 0;
        int currentIndex = 0;
        map<char, int>::iterator tmpIter;
        for (unsigned int i = 0; i < text.size();) {
            if ((tmpIter = nodes[currentIndex].sons.find(text[i])) != nodes[currentIndex].sons.end()) {
                currentIndex = tmpIter->second;
                i++;
            } else {
                while (nodes[currentIndex].fail != -1 &&
                    nodes[currentIndex].sons.find(text[i]) == nodes[currentIndex].sons.end()) {
                    currentIndex = nodes[currentIndex].fail;
                }
                if (nodes[currentIndex].sons.find(text[i]) == nodes[currentIndex].sons.end()) {
                    i++;
                }
            }
            if (!nodes[currentIndex].output.empty()) {
                result.insert(result.end(), nodes[currentIndex].output.begin(), nodes[currentIndex].output.end());
            }
        }
        for (auto i: result) {
            ret += score[i];
        }
        return ret;
    }

    void AddState(int parent, char ch){
        nodes.emplace_back(parent, ch);
        assert(nodes.size() - 1 == static_cast<long long unsigned int>(maxState));
    }

private:
    int maxState;
    vector<ACNode> nodes;
    vector<string> patterns;
    vector<int> score;
};

class ChessEngine {
public:// private:
    //[横坐标→][纵坐标↓] 坐标边界1开始15结束 0--NO_CHESS
    const static int SEARCH_INFINITY = 1000000000;
    static int m_map[16][16];
    static ACEngine blackEngine;
    static ACEngine whiteEngine;
public:
    static int searchFloor;
    static bool isBlack;

public:
    ChessEngine(){}

    ChessEngine(const ChessEngine &) = delete;

    ChessEngine &operator=(const ChessEngine &) = delete;

    //返回棋盘的最大得分点
    static Coord getMaxCoord(){
        auto start = std::chrono::high_resolution_clock::now();
        
        Coord ret{};
        if (isEmptyBoard()) return {8, 8}; // center
        // bool isBlack = isBlackNow();
        abSearch(searchFloor, -SEARCH_INFINITY, SEARCH_INFINITY, isBlack, ret);
        
        auto end = std::chrono::high_resolution_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        int time_consuming = duration.count();
        cout << (isBlack ? "black" : "white") << " action took " << time_consuming << "ms";
        if (time_consuming > 1000) cout << " > 1s alert!!!!!!!";
        cout << endl;
        
        return ret;
    }

    //检查这个点有没有人赢
    static bool someoneWin(Coord coord){
        return (checkByStep(coord, 0, 1) + checkByStep(coord, 0, -1) >= 4) or
            (checkByStep(coord, 1, 0) + checkByStep(coord, -1, 0) >= 4) or
            (checkByStep(coord, 1, 1) + checkByStep(coord, -1, -1) >= 4) or
            (checkByStep(coord, 1, -1) + checkByStep(coord, -1, 1) >= 4);
    }

public:// private:
    //[customize]
    void printMap(){
        for (int i = 1; i <= 15; ++i) {
            for (int j = 1; j <= 15; ++j) {
                cout << m_map[i][j] << " ";
            }
            cout << endl;
        }
    }

    void initMapWithSeq(vector<Coord> seq){
        int curChess = BLACK_CHESS;
        for (auto &coord: seq) {
            m_map[coord.x][coord.y] = curChess;
            curChess = WHITE_CHESS + BLACK_CHESS - curChess;
        }
    }

    void step(Coord coord){
        m_map[coord.x][coord.y] = isBlack ? BLACK_CHESS : WHITE_CHESS;
        isBlack = !isBlack;
    }

    //返回这个棋子的字符表示
    static inline char chessChar(int chessType){
        switch (chessType) {
            case 0:
                return '0';
            case WHITE_CHESS:
                return '2';
            case BLACK_CHESS:
                return '1';
            default:
                assert(false);
        }
    }

    //判断这个点附近有没有棋子 附近隔着一个棋子也算
    static inline bool thereIsNoChessNearby(Coord coord){ // 5 * 5 的范围内没有棋子
        for (int i = max(1, coord.x - 2); i <= min(15, coord.x + 2); ++i) {
            for (int j = max(1, coord.y - 2); j <= min(15, coord.y + 2); ++j) {
                if (m_map[i][j] != NO_CHESS)return false;
            }
        }
        return true;
    }

    //没有棋子可以下了
    static bool isEmptyBoard(){
        for (int i = 1; i <= 15; ++i) {
            for (int j = 1; j <= 15; ++j) {
                if (m_map[i][j] != NO_CHESS)return false;
            }
        }
        return true;
    }

    //现在要下的是黑棋
    static bool isBlackNow(){ // TODO
        int blackCC = 0, whiteCC = 0;
        for (int i = 1; i <= 15; ++i) {
            for (int j = 1; j <= 15; ++j) {
                switch (m_map[i][j]) {
                    case NO_CHESS:
                        continue;
                    case WHITE_CHESS:
                        whiteCC++;
                        continue;
                    case BLACK_CHESS:
                        blackCC++;
                        continue;
                    default:
                        assert(false);
                }
            }
        }
        if (blackCC == whiteCC)return true;
        return false;
    }
    
    //检查这个点在这个方向上有几个连续的棋子
    static int checkByStep(Coord now, int x_step, int y_step){
        int cc = 0;
        auto origin = now;
        now.x += x_step;
        now.y += y_step;
        while ((now.x > 0 and now.x < 16 and now.y > 0 and now.y < 16) and (m_map[now.x][now.y] == m_map[origin.x][origin.y])) {
            cc++;
            now.x += x_step;
            now.y += y_step;
        }
        return cc;
    }

    //评估一条线上的分 差值评分 越大对当前棋子越有利
    static int getLineScore(const char *line, bool isBlack){
        int score = blackEngine.ACSearch(line) - whiteEngine.ACSearch(line);
        return isBlack ? score : -score;
    }

    //评估一个点所在位置放射状的四条线的评分和 越大对当前棋子越有利
    static int evaluateOnePoint(bool isBlack, Coord coord){
        int ret = 0;
        char line[17] = {};
        //coord所在位置的横向
        for (int x = 1, lineIndex = 0; x <= 15; ++x, lineIndex++) {
            line[lineIndex] = chessChar(m_map[x][coord.y]);
        }
        ret += getLineScore(line, isBlack);
        //coord所在位置的竖向
        for (int y = 1, lineIndex = 0; y <= 15; ++y, lineIndex++) {
            line[lineIndex] = chessChar(m_map[coord.x][y]);
        }
        ret += getLineScore(line, isBlack);
        memset(line, 0, sizeof line);
        //coord所在位置的右上到左下
        //画图求函数解析式后得出算法
        int b = coord.x + coord.y;
        if (b <= 16) {
            for (int x = b - 1, y = 1, lineIndex = 0; x >= 1; x--, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
        } else {
            for (int x = 15, y = b - 15, lineIndex = 0; y <= 15; x--, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
        }
        ret += getLineScore(line, isBlack);
        memset(line, 0, sizeof line);
        //coord所在位置的左上到右下
        int a = coord.x - coord.y;
        if (a >= 0) {
            for (int x = a + 1, y = 1, lineIndex = 0; x <= 15; x++, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
        } else {
            for (int x = 1, y = -a + 1, lineIndex = 0; y <= 15; x++, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
        }
        ret += getLineScore(line, isBlack);
        return ret;
    }

    //评估整个棋盘 如果是黑棋返回黑棋的得分 如果是白棋返回白棋的得分
    static int evaluateAll(bool isBlack, bool debug = false){
        int ret = 0;
        char line[17] = {};

        //竖向
        for (int i = 1; i <= 15; ++i) {
            for (int j = 1, lineIndex = 0; j <= 15; ++j, lineIndex++) {
                line[lineIndex] = chessChar(m_map[i][j]);
            }
            int score = getLineScore(line, isBlack);
            if (debug)cout << line <<"  " << "score: " << score << endl;
            ret += score;
        }
        if (debug) cout << "竖向" << ret << endl;
        //横向
        for (int j = 1; j <= 15; ++j) {
            for (int i = 1, lineIndex = 0; i <= 15; ++i, lineIndex++) {
                line[lineIndex] = chessChar(m_map[i][j]);
            }
            ret += getLineScore(line, isBlack);
        }
        if (debug) cout << "横向" << ret << endl;
        //右上到左下
        for (int i = 5; i <= 15; ++i) {
            memset(line, 0, sizeof line);
            for (int x = i, y = 1, lineIndex = 0; x >= 1; x--, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
            ret += getLineScore(line, isBlack);
        }
        if (debug) cout << "右上到左下" << ret << endl;
        for (int i = 2; i <= 11; ++i) {
            memset(line, 0, sizeof line);
            for (int x = 15, y = 15 + i - x, lineIndex = 0; y <= 15; x--, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
            ret += getLineScore(line, isBlack);
        }
        if (debug) cout << "右上到左下" << ret << endl;
        // 左上到右下
        for (int i = 10; i >= 0; --i) {
            memset(line, 0, sizeof line);
            for (int x = 1, y = x + i, lineIndex = 0; y <= 15; x++, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
            ret += getLineScore(line, isBlack);
        }
        if (debug) cout << "左上到右下" << ret << endl;
        for (int i = -1; i >= -10; --i) {
            memset(line, 0, sizeof line);
            for (int y = 1, x = y - i, lineIndex = 0; x <= 15; x++, y++, lineIndex++) {
                line[lineIndex] = chessChar(m_map[x][y]);
            }
            ret += getLineScore(line, isBlack);
        }
        if (debug) cout << "左上到右下" << ret << endl;
        return ret;
    }

    //生成所有可能的走法
    static std::vector<ScoreCoord> generatePossibleMove(bool isBlack){
        std::vector<ScoreCoord> ret;
        ret.reserve(225); // 15 * 15
        for (int x = 1; x <= 15; ++x) {
            for (int y = 1; y <= 15; ++y) {
                if (thereIsNoChessNearby({x, y}))continue;
                if (m_map[x][y] != NO_CHESS)continue;
                int baseScore = evaluateOnePoint(isBlack, {x, y});//没有落子前的分数
                m_map[x][y] = isBlack ? BLACK_CHESS : WHITE_CHESS;
                int myScore = evaluateOnePoint(isBlack, {x, y});//我下这点我会得到的分数
                m_map[x][y] = isBlack ? WHITE_CHESS : BLACK_CHESS;
                int rivalScore = evaluateOnePoint(!isBlack, {x, y});//敌方下这点会得到的分数
                m_map[x][y] = NO_CHESS;
                ret.push_back({(myScore - baseScore) + (rivalScore - (-baseScore)), {x, y}});//要让我获益最大 或者能让敌方获益最大的点下棋
            }
        }
        std::shuffle(ret.begin(), ret.end(), std::mt19937(std::random_device()()));
        std::sort(ret.begin(), ret.end(), [](const ScoreCoord &a, const ScoreCoord &b) {
            return a.score > b.score;
        });
        return ret;
    }
    

    //alpha-beta剪枝搜索
    static int abSearch(int floor, int alpha, int beta, bool isBlack, Coord &searchResult){
        int tmpScore, moveCount = 0;
        Coord tempSearchResult{};
        std::vector<ScoreCoord> possibleMove = generatePossibleMove(isBlack);
        for (auto &now: possibleMove) {
            moveCount++;
            if (moveCount > 8) break; //只搜索前8个可能的落子点
            int x = now.coord.x, y = now.coord.y;
            m_map[x][y] = isBlack ? BLACK_CHESS : WHITE_CHESS;
            if (someoneWin({x, y})) {//如果有人赢了 必定是下这个子的人赢了
                searchResult = {x, y};
                tmpScore = evaluateAll(isBlack);//返回这个局面最高的得分，也就是赢局的分数
                m_map[x][y] = NO_CHESS;
                return tmpScore;
            }
            if (floor == 1) {//如果只看这一步子 那就是这一步子所有可能的得分中的最大值
                tmpScore = evaluateAll(isBlack);
                m_map[x][y] = NO_CHESS;
                if (tmpScore > alpha) {
                    alpha = tmpScore;
                    searchResult = {x, y};
                }
                continue;
            }
            tmpScore = -abSearch(floor - 1, -beta, -alpha, !isBlack, tempSearchResult);//不然得分就是我下了之后的对方的所能得到的最高分取负
            m_map[x][y] = NO_CHESS;
            if (tmpScore >= beta) {
                return beta;
            }
            if (tmpScore > alpha) {//取对方尽所有努力后得到最大值中的最小的一个 取负值后变成最大的一个
                alpha = tmpScore;
                searchResult = {x, y};
            }
        }
        return alpha;
    }

};

int ChessEngine::m_map[16][16] = {0};
int ChessEngine::searchFloor = 4;
bool ChessEngine::isBlack = true;

ACEngine ChessEngine::blackEngine({
    {"11111",  50000},
    {"011110", 4320},
    {"011100", 720},
    {"001110", 720},
    {"011010", 720},
    {"010110", 720},
    {"11110",  720},
    {"01111",  720},
    {"11011",  720},
    {"10111",  720},
    {"11101",  720},
    {"001100", 120},
    {"001010", 120},
    {"010100", 120},
    {"000100", 20},
    {"001000", 20},
});

ACEngine ChessEngine::whiteEngine({
    {"22222",  50000},
    {"022220", 4320},
    {"022200", 720},
    {"002220", 720},
    {"022020", 720},
    {"020220", 720},
    {"22220",  720},
    {"02222",  720},
    {"22022",  720},
    {"20222",  720},
    {"22202",  720},
    {"002200", 120},
    {"002020", 120},
    {"020200", 120},
    {"000200", 20},
    {"002000", 20},
});

void test_evaluate(){
    ChessEngine engine;
    engine.initMapWithSeq({
        // {1, 2}, 
        // {2, 2},
        // {1, 3},
        // {2, 3},
        // {1, 4},
        // {2, 4},
        // {1, 5},
        // {2, 5},
        // {1, 7},
        // {2, 7},
        // {1, 8},
        // {2, 8},
    });
    engine.printMap();
    // judge black or white
    bool isBlack = engine.isBlackNow();
    cout << "isBlack: " << isBlack << endl;
    // evaluate board
    cout << engine.evaluateAll(isBlack) << endl;
}

void test_game(){
    ChessEngine engine;
    engine.initMapWithSeq({});
    for(int round = 1; round <=15*15/2; ++round){
        Coord black_step = engine.getMaxCoord();
        engine.step(black_step); 
        if(engine.someoneWin(black_step)){
            engine.printMap();
            cout << "round " << round << " black win!" << endl;
            break;
        }
        Coord white_step = engine.getMaxCoord();
        engine.step(white_step);
        if(engine.someoneWin(white_step)){
            engine.printMap();
            cout << "round " << round << " white win!" << endl;
            break;
        }
        engine.printMap();
        printf("\n");
    }
}
int main() {
    test_game();
    return 0;
}