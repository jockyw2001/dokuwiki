a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"选择排序";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:878:"
选择最小数据进行整体交换
void selectsort(int k[],int n)    /*选择排序*/
{
     int i,j,max;
     int temp;    

     for(i=0;i<n;i++)// “ i ” 就是起始值
     {
          for(j=i+1;j<n;j++)         
          {
               if(k[j] < k[i])
                    swap(&k[j],&k[i]);
          }
     }
}


选择最小数据的下标进行交换
void selectsort2(int data[],int n)    /*选择排序*/
{
     int i,j,k,max;
     //int temp;

     for(i=0;i<n-1;i++)// “ i ” 就是起始值
     {
          k = i;
          for(j=i+1;j<n;j++)         
          {
               if(data[j] < data[k])
                    k = j;//k is the always the smaller data location
          }
         
          if(k != i)//move the smallest data to the first location
          {
               swap(&data[i], &data[k]);         
          }    
     }    
}

";i:1;s:1:"c";i:2;N;}i:2;i:31;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:919;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:919;}}