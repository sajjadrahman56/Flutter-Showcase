void main()
{
  int a = 10;
  int b = 9 ;

  /// conditional expression instead of if else
  int small = a > b ? a : b;

  String name1 = 'sajjad';
  String? name2 = null;

  /// conditions use for check null or not
  
  String showName = name2 ?? "Guest Teacher";
  print(showName);

}