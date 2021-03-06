#include<vector>
#include<bits/stdc++.h>
using namespace std;

vector<int> vec[10];
bool visit[10];

int dfs(int v)
{

	int i,val;
	int ln = vec[v].size();
	int maxm = 0;
	for(i = 0;i<ln;i++)
	{

		val = dfs(vec[v][i]);
		if(val>maxm)
		{
			maxm = val;
		}
	}
	return maxm+1;
}

 


int main()
{
	char p_table[10][10];
	int i,j,n;
	cin>>n;
	cout<<"Enter precedence table\n";
	for(i = 1;i<=n;i++)
	{
		for(j = 1;j<=n;j++)
		{
			cin>>p_table[i][j];
		}
	}
	for(i = 1;i<=n;i++)
	{
		for(j = 1;j<=n;j++)
		{
			if(p_table[i][j] == '>')
			{
				vec[i].push_back(n+j);
			}
			else if(p_table[i][j] == '<')
			{
				vec[n+j].push_back(i);
			}
		}
	}

	int f[10],g[10];
	for(i = 1;i<=n;i++)
	{
		f[i] = dfs(i)-1;
	}
	for(i = 1;i<=n;i++)
	{
		g[i] = dfs(i+n)-1;
	}
	cout<<"f: ";

	for(i = 1;i<=n;i++)
	cout<<f[i]<<" ";
	cout<<"\n";
	cout<<"g: ";

	for(i = 1;i<=n;i++)
	cout<<g[i]<<" ";
}
