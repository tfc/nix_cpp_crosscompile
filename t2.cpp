#include <iostream>
#include <experimental/filesystem>

int main() {
  for(auto &file : std::experimental::filesystem::recursive_directory_iterator("./")) {
    std::cout << file.path() << '\n';
  }
}
