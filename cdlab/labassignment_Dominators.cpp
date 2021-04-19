#include <bits/stdc++.h>
using namespace std;


int main()
{

	int n;
	cin>>n;
	vector <vector<int> > v(n+1);
	vector <vector<int> > v1(n+1);

	int m;
	cin>>m;

	int i,j,k,l;
	for(i=0;i<m;i++)
	{
		int x,y;
		cin>>x>>y;
		v[y].push_back(x);
	}
	vector <set<int> > s(n+1);
	s[1].insert(1);
	for(i=2;i<=n;i++)
	{
		for(j=1;j<=n;j++)
		{
			s[i].insert(j);
		}
	}
	for(i=2;i<=n;i++)
	{
		set <int> temp;
		temp.insert(i);
		int cnt[n+1]={0};
		for(j=0;j<v[i].size();j++)
		{
			int x=v[i][j];
			auto it=s[x].begin();
			while(it!=s[x].end())
			{
				int p=*(it);
				it++;
				cnt[p]++;
			}
		}
		for(int h=1;h<=n;h++)
		{
			if(cnt[h]==v[i].size())
			temp.insert(h);
		}
		s[i]=temp;
	}
	
	for(j=1;j<=n;j++)
		{
			cout<<j<<" ->    ";
			auto it=s[j].begin();
			while(it!=s[j].end())
			{
				int p=*(it);
				it++;
				cout<<p<<" ";
			}
			cout<<endl;
		}
}