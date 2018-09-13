#include "iostream"
using namespace std;

int check();
int list();
int mugen();

int main(){
    cout << "1.素敵判定　2.素敵一覧　3.無限素数    0.終了" << endl;
    int select;
    cin >> select;
    if(select==1)
        check();
    else if(select==2)
        list();
    else if(select==3)
        mugen();
    else if(select==0)
        return 0;
    else{
        cout << "1、2、3または0を半角数字で入力してください" << endl << endl;
        main();
    }
    return 0;
}

int check(){
    cout << "素敵判定を行います。判定したい数字を入力してください。" << endl;
    int num;
    cin >> num;
    cout << num << "は";
    
    if(num<2){
        cout << "素敵ではありません" << endl << endl;
        main();
        return 0;
    }
    
    else{
        for(int i=2;i<num;i++){
            if(num%i==0){
                cout << "素敵ではありません" << endl << endl;
                main();
                return 0;
            }
        }
        cout << "素敵です" << endl << endl;
        main();
        return 0;
    }
    return 0;
}




int list(){
    cout << "上限の数";
    int a;
    cin >> a;
    
    int r[a+1];
    for(int i=0;i<=a;i++){
        r[i]=0;
    }
    
    for(int i=2;i<=a;i++){    //aまで調べます
        //cout << i << "について調べています" << endl;
        if(r[i]==0){    //自身が素敵なら
            cout << i << "は素敵です" << endl;
            for(int j=i;j*i<=a;j++){    //r[その倍数]を1にします
                int p=i*j;
                //cout << "int p=i*j;" << endl << "を実行しました" << endl << "p=i*j=" << p << endl << "j=" << j << " i=" << i << " r[i]=" << r[i] <<endl << endl;
                r[p]=1;
                //cout << "r[p]=1;" << endl << "を実行しました" << endl;
            }
        }
    }
    cout << "使用したアルゴリズムは「エラトステネスの篩」です" << endl << endl;
    main();
    return 0;
}



int mugen(){
    for(int num=2;1;num++){
        int result=1;
        for(int i=2;i<num;i++){
            if(num%i==0)
                result=0;
        }
        if(result==1)
            cout << num << "は素敵です" << endl;
    }
    return 0;
}




