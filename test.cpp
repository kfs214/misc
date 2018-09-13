#include "iostream"
using namespace std;

int main(){
	cout << "何回？";
	int a;
	cin >> a;
	
	for(int i=0;i<a;){
		cout << ++i << endl;
	}

	return 0;
}