# include <stdio.h>
#include<conio.h>
void main ( )
{ static int s, i, k,n,c[100];
printf("\n program 1: encryption and 2. decryption");
scanf ("%d", &s);
switch (s)
{ case 1: printf("enter the key value:");
 scanf("%d", &k);
printf("enter the length of text:");
 scanf("%d", &n);
printf("enter the data to be encrypted:");
for (i=0;i<=n;i++)
scanf("%c", &c[i]);
for (i=0;i<=n;i++)
{c[i]=c[i]+k;
if (c[i]>90)
c[i]=c[i]-26;}
printf("encrypted data");
for (i=1;i<=n;i++)
printf("%c", c[i]);
break;
case 2: printf("enter the key value:");
 scanf("%d", &k);
 
printf("enter the length of text:");
 scanf("%d", &n);
printf("enter the data to be decrypted:");
for (i=0;i<=n;i++)
scanf("%c", &c[i]);
for (i=0;i<=n;i++)
{c[i]=c[i]-k;
if (c[i]<65)
c[i]=c[i]+26;}
printf("decrypted data");
for (i=1;i<=n;i++)
printf("%c", c[i]);
break;
case 3: break;
getch ();
}
}
