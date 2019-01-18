int main()
{
   int arr[10] = {3,77,1,43,103,56,98,52,12,88};
   int i,high,low;
   high = arr[0];
   low  = arr[0];
   for(i = 0;i<10;i++)
      {
         if(arr[i]<low)
             low = arr[i];
         if(arr[i]>high)
             high = arr[i];     
      }
}
