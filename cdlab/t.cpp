#include<bits/stdc++.h>
#include<cstdlib>
using namespace std;
int main()
{
string s,k;
getline(cin,s);
////cout<<s;
k=s;
transform(s.begin(), s.end(), s.begin(), ::tolower);
int l=s.size(),t=0,p=0;
if(s=="begin" || s=="BEGIN")
{
cout<<"token "<<1<<" "<<"keyword "<<k<<"\n";
return 0;
}

if(s=="end" || s=="END")
{
cout<<"token "<<2<<" "<<"keyword "<<k<<"\n"; return 0;
}


if(s=="if" || s=="IF")
{
cout<<"token "<<3<<" "<<"keyword "<<k<<"\n"; return 0;
}

if(s=="then" || s=="THEN")
{
cout<<"token "<<4<<" "<<"keyword "<<k<<"\n"; return 0;
}

if(s=="else" || s=="ELSE")
{
cout<<"token "<<5<<" "<<"keyword "<<k<<"\n"; return 0;
}
if(s[0]<=122&&s[0]>=97||s[0]<=90&&s[0]>=65)
{
for(int i=1;i<=l-1;i++)
{
if(s[i]<=122&&s[i]>=97||s[i]<=90&&s[i]>=65||s[i]<=57&&s[i]>=48)
t++;
}
}
if(t==l-1&&s[0]>=97&&s[0]<=122)
{
cout<<"token "<<6<<" "<<"identifier"<<"\n";return 0;
}
  if(s[0]<=57&&s[0]>=48)
  {
  for(int i=1;i<=l-1;i++)
  {
  if(s[i]<=57&&s[i]>=48)
  p++;
 }
 if(p==l-1)
 {
  cout<<"token "<<7<<" "<<"constant"<<"\n";
  return 0;
}
}
if(s=="<")
{
cout<<"token 8 value 1\n";return 0;
}
if(s=="<=")
{
cout<<"token 8 value 2\n";return 0;
}
if(s=="=")
{
cout<<"token 8 value 3\n";return 0;
}
if(s=="<>")
{
cout<<"token 8 value 4\n";return 0;
}
if(s==">")
{
cout<<"token 8 value 5\n";return 0;
}
if(s==">=")
{
cout<<"token 8 value 6\n";return 0;
}

cout<<"Not an identifier token 0\n";




}
