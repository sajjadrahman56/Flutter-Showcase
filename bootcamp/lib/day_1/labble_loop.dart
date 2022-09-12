void main()
{
  outerLoop : for(int i = 0 ; i < 4 ; i++)
    {
      innerloop : for(int j = 0 ; j < 4; j++)
        {
          print("$i   $j");

          if(i ==3 && j ==3) break outerLoop;
        }
    }
}