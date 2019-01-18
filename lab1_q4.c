int main()
{
  int a[10] = {3,77,1,43,103,56,98,52,12,88};
  int b[10] = {0,1,2,3,4,5,6,7,8,9};
  int i,temp;

   for(i=0;i<10;i++)
      {
          temp = a[i];
          a[i] = b[i];
          b[i] = temp;
      }
}
