
///------------------ Nested switch case ---------------------------
void main()
{
  String s1 = '1';
  String s2 = "33";

  switch(s1)
  {
    case '1' :
      print('come in one ');
      switch(s2)
      {
        case "32":
          print("NO");
          break;
        case "33":
          print("Sajjad is here ");
          break;
        default :
          print("Go Home");

      }
  }
}