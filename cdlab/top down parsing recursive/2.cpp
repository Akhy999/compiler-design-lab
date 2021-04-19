#include<bits/stdc++.h>
using namespace std;

string str;
int i,n;

bool match(char ch)
{
	if(i<n && str[i]==ch)
	{
		i+=1;
		return true;
	}
	else
	{
		return false;
	}
}


bool A()
{
	int save = i;
	if(i<n)
	{
		
		if(match('a'))
		{
			
			
			if(match('b'))
			return true;
			else 	
			{
			
			return true;
			}
		}
	}
	
}

 

bool S()
{
	if(i<n)
	{
		if(match('c'))
		{
			if(A())
			{ 
				if(match('d'))
				return true;
				else
				return false;
            		}
		}
	}
	else
	return false;
}

 

int main()
{
	cin>>str;
	i = 0;
	n = str.length();
	if(S() && i==n)
		cout<<"Valid String"<<endl;
	else
		cout<<"Invalid String"<<endl;
	return 0;
}
