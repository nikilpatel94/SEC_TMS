#include<stdio.h>
#include<iostream.h>
#include<conio.h>
#include<string.h>
#include<math.h>

void main()
{
	clrscr();
	char str[20];
	int char_count[26];
	float prob[26],H;

	cout<<"Enter The String:";
	gets(str);
	int len=strlen(str);

	for(int i=0;i<26;i++)
		char_count[i]=0;

	for(i=0;i<strlen(str);i++)
	{
		switch(str[i])
		{
			case 'a':char_count[0]++;
				break;
			case 'b':char_count[1]++;
				break;
			case 'c':char_count[2]++;
				break;
			case 'd':char_count[3]++;
				break;
		}
		/*if(str[i] == 'a')
			char_count[0]++;
		else if(str[i] == 'b')
			char_count[1]++;
		else if(str[i] == 'c')
			char_count[2]++;
		else if(str[i] == 'd')
			char_count[3]++;
		else if(str[i] == 'e')
			char_count[4]++;
		else if(str[i] == 'f')
			char_count[5]++;*/
	}

	int j=0;
	for(i=0;i<26;i++)
	{
		if(char_count[i]!=0)
		{
			prob[j]=(float)char_count[i]/(float)len;
			cout<<"Count:"<<char_count[i];
			cout<<"\nProbability:"<<prob[j];
			j++;
		}
	}

	for(i=0;i<j;i++)
		H-=prob[i]*(log10(prob[i])/log10(2));

	cout<<"Entropy is:"<<H;

	getch();
}
