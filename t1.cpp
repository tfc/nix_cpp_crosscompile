#include <iostream>
#include <vector>

int main() {
  std::vector<int> V{1,2,3,4,5,6};

  for(auto &e : V) {
    std::cout << e << ' ';
  }
  std::cout << '\n';
}
