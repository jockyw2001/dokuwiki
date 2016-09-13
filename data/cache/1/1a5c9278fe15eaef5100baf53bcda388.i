a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"二分查找";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1178:"
#include <stdio.h>

//二分法对以排好序的数据进行查找
int binary_search(int array[],int value,int size)
{
     int low=0,high=size-1,mid;
    
     while(low<=high)                    //只要高低不碰头就继续二分查找
     {
          mid=(low+high)/2;
          if(value==array[mid])          //比较是不是与中间元素相等
               return mid;
          else if(value > array[mid])     //每查找一次，就判断一次所要查找变量所在范围，并继续二分
               low=mid;                     //如果大小中间值，下限移到中间的后一个位，上限不变，往高方向二分
          else
               high=mid;                    //上限移到中间的前一个位，往低方向二分
     }
     return -1;
}


int main(void)
{
     int value;
     int a[10]={0,1,2,3,4,5,6,7,8,9};
     int n;

     while(1)
     {
          printf("\n请输入你要查找的数字:\n");
          scanf("%d",&value);
          n = binary_search(a,value,10);
          if(n==-1)
               printf("数字没找到!\n");
          else
               printf("查找数据的下标是：%d\n",n);
     }
}

";i:1;s:1:"c";i:2;N;}i:2;i:32;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1220;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1220;}}