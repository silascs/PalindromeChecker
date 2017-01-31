public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String testString = noSpaces(word);
  testString = onlyLetters(testString);
  testString = lowerCase(testString);
  if(reverse(testString).equals(testString))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length()-1;
    for(int i = last; i >= 0; i--)
    {
        sNew = sNew + str.charAt(i);
    }
    return sNew;
}

public String lowerCase (String sWord)
{
  return sWord.toLowerCase();
}

public String onlyLetters (String sWord)
{
  String letters = new String();
  for (int i = 0; i < sWord.length(); i ++)
  {
    if(Character.isLetter(sWord.charAt(i)))
    {
      letters = letters + sWord.charAt(i);
    }
  }
  return letters;
}

public String noSpaces (String sWord)
{
  sWord = sWord.replace(" ", "");
  return sWord;
}
