int c = 0;
public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
{
  for(int i = 0; i < sWord.length(); i++)
  {
    if((sWord.substring(i, i+1).equals("a")) || (sWord.substring(i, i+1).equals("e")) || (sWord.substring(i, i+1).equals("i")) || (sWord.substring(i, i+1).equals("o")) || (sWord.substring(i, i+1).equals("u")))
    {
      return i;
      
    }
  }
  return -1;
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if((sWord.substring(0, 1).equals("q")) || (sWord.substring(0, 1).equals("u")))
  {
    return sWord.substring(2, sWord.length()) + "quay";
  }
  else
  {
    //for(int a = 0; a < sWord.length(); a++)
    int a = 0;
    while(a < sWord.length())
    {
      if(sWord.charAt(a) != 'a' && sWord.charAt(a) != 'e' && sWord.charAt(a) != 'i' && sWord.charAt(a) != 'o' && sWord.charAt(a) != 'u')
      {
        sWord = sWord + sWord.substring(a, a+1);
        sWord = sWord.substring(a+1);  
      }
      else
      {
        break;
      }
 
    }
    sWord = sWord + "ay";
    return sWord;
  }

}