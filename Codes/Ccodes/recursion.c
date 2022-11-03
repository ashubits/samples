#include <stdio.h>
int function(int);
int main()
{int ret = function(5);
return 0;
}
int function(int inter)
    {printf("In Function Hello world %d \n", inter);
    if(inter>=0)
    inter=function(--inter);
    return 0;}