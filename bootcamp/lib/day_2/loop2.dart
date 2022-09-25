import 'dart:io';
void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);

  for(int i = 1 ; i <= y ; i++)
  {
    if(i%x==0)
    {
      stdout.write("$i\n");

    }
    else
    {
      stdout.write("$i ");

    }
  }
}
/*void main()
{
  //int n = int.parse(stdin.readLineSync()!);

  for(int i = 1 ; i < 10 ; i+=2 )
 {
   for(int j = 7 ; j >= 5 ; j--)
     {
       print("I=$i J=$j");
     }
 }
}*/

/*
I=1 J=60
I=4 J=55
I=7 J=50
...
I=? J=0
 */