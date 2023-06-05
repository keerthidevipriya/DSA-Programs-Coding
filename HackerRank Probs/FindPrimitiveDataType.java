//PFind the data type of Number

import java.util.*;
import java.io.*;


class Solution{
    public static void main(String []argh)
    {
        Scanner sc = new Scanner(System.in);
        int t=sc.nextInt();
        for(int i=0;i<t;i++)
        {
            try
            {
                long x=sc.nextLong();
                System.out.println(x+" can be fitted in:");
                if(x>=-128 && x<=127)System.out.println("* byte");
                if(x >= (-32768) && x <= (32767)) System.out.println("* short");
                if(x >= (-2147483648) && x<= (2147483647)) System.out.println("* int");
                System.out.println("* long");
            }
            catch(Exception e)
            {
                System.out.println(sc.next()+" can't be fitted anywhere.");
            }

        }
    }
}

//Ques - https://www.hackerrank.com/challenges/java-datatypes/problem?isFullScreen=true
//Reference - https://codereview.stackexchange.com/questions/92791/checking-if-a-number-fits-in-a-primitive-type

/*
Input
5
-150
150000
1500000000
213333333333333333333333333333333333
-100000000000000

output
-150 can be fitted in:
* short
* int
* long
150000 can be fitted in:
* int
* long
1500000000 can be fitted in:
* int
* long
213333333333333333333333333333333333 can't be fitted anywhere.
-100000000000000 can be fitted in:
* long
*/