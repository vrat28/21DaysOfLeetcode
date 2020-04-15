#include <iostream>
#include <math.h>
using namespace std;

class CalculateComplement {
    public:
     static int bitwiseComplement(int n) {
        // TODO: Write your code here
        int bitN = n;
        int noOfBits = 0;

        while (bitN > 0){
          noOfBits++;
          bitN = bitN >> 1 ;
        }

        int allBits1 = pow(2,noOfBits) - 1;
        return n ^ allBits1;
    }
};

int main(int argc, char* argv[]) {
  // your code goes here
  cout << "Bitwise complement is: " << CalculateComplement::bitwiseComplement(8) << endl;
  cout << "Bitwise complement is: " << CalculateComplement::bitwiseComplement(10) << endl;
}