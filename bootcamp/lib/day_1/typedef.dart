
/* ------------------------------ 1st  (Typedef ) ----------------------
typedef sajjad(int a , int b);
void nfo1(int x , int y)
{
  print("This is nfo - 1 : ");
  print("Total sum is : $x ans $y is sum = ${x+ y} ");
}

void main()
{
  // sajjad is name of typedef also data type consider ,
  // saj is variable name that store "nfo1" functions
  sajjad saj = nfo1;
  saj(24,25);
}
 */

 import 'dart:io';

///---------------------------  2nd (Typedef  as a prameter )----------------------
typedef sajjad(int a , int b);
void nfo1(int x , int y)
{
  print("This is nfo - 1 : ");
  print("Total sum is : $x ans $y is sum = ${x+ y} ");
}

void nfo2(int a , int b , sajjad func)
{
  print("Hello I am here from Pakistan ");
  nfo1(a, b);
}

void main()
{

  int? xy  ;
  print(xy);
  nfo2(200,300,nfo1);

}
