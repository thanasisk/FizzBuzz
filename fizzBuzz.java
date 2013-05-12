public class fizzBuzz {                      // Everything in Java is a class
  public static void main(String[] args) {   // Every program must have main()
    for(int i = 1; i <= 100; i++) {                    // count from 1 to 100
      if (((i % 3) == 0) && ((i % 5) == 0))            // A multiple of both?
        System.out.println("fizzbuzz");    
      else if ((i % 3) == 0) System.out.println("fizz"); // else a multiple of 5?
      else if ((i % 5) == 0) System.out.println("buzz"); // else a multiple of 7?
      else System.out.println(i);                        // else just print it
      System.out.print(" "); 
    }
    System.out.println();
  }
}
