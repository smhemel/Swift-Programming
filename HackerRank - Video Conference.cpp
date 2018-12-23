#include <bits/stdc++.h>

using namespace std;
map<string, int> M,N,V;
map<string,string>M1;
int main() {
    int n;
    string s;
    cin >> n;
    for(int i=0; i<n ;i++){
        cin >> s;
        int siz = M[s];
        if(siz>=1){
            M[s]++;
            cout << s << " " << M[s] << endl;
            
        }else {
            bool f = true;
            M[s]++;
            int len = s.size();
            string st = "";
            for(int i=0; i<len; i++){
                st += s[i];
                if (!N[st]){
                    V[st]++;
                    M1[st] = s;
                    N[st] = 1;
                    cout << st << endl;
                    f = false;
                    break;
                }
                int x = M1[st].size();
                string s1 = "";
                string op = M1[st];
                for(int j=0; j<min(x,len); j++){
                    if(op[j]==s[j]){
                        s1 += s[j];
                    }
                    else break;
                }
                if(s1.size()>st.size()){
                    st = s1;
                    i = s1.size()-1;
                }
            }
            if(f){
                cout << s << endl;
            }
        }
    }
    return 0;
}
