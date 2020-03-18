#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>
using namespace std;

bool cmp(const int a, const int b) {
    return a > b;
}

int main(void) {
    fstream f;
    f.open("file.in", ios::in);

    int n;
    f >> n;

    vector <int> cows;
    for (int i = 0; i < n; i++) {
        int tmp;
        f >> tmp;
        cows.push_back(tmp);
    }

    cout << "Before sorting\n";
    for (int i = 0; i < cows.size(); i++) {
        cout << cows.at(i) << ' ';
    }
    cout << '\n';

    sort(cows.begin(), cows.end(), cmp);

    cout << "After sorting\n";
    for (int i = 0; i < cows.size(); i++) {
        cout << cows.at(i) << ' ';
    }
    cout << '\n';

    int sum = 0;
    for (int i = 0; i < 5; i++) {
        sum += cows[i];
    }
    cout << "The total weights of top 5: " << sum << '\n';
    return 0;
}
