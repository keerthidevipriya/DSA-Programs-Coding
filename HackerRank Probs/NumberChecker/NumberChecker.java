//NumberChecker: PFind the number present and display in sending order

Number Checker 

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
    static String findQualifiedNumbers(int[] numberArray) {
        ArrayList<String> ansAr = new ArrayList<String>();
        String ans = "";
        for(int i=0;i<numberArray.length;i++) {
            String s = numberArray[i]+"";
            if(s.contains("1") && s.contains("2") && s.contains("3")) {
                ansAr.add(s);
            }
        }
        if(ansAr.isEmpty()) {
            return "-1";
        }
        ansAr.sort(Comparator.comparingInt(Integer::valueOf));
        ans = String.join(",", ansAr);
        return ans;
    }

    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);
        final String fileName = System.getenv("OUTPUT_PATH");
        BufferedWriter bw = null;
        if (fileName != null) {
            bw = new BufferedWriter(new FileWriter(fileName));
        }
        else {
            bw = new BufferedWriter(new OutputStreamWriter(System.out));
        }

        String res;
        int numberArray_size = 0;
        numberArray_size = Integer.parseInt(in.nextLine().trim());

        int[] numberArray = new int[numberArray_size];
        for(int i = 0; i < numberArray_size; i++) {
            int numberArray_item;
            numberArray_item = Integer.parseInt(in.nextLine().trim());
            numberArray[i] = numberArray_item;
        }

        res = findQualifiedNumbers(numberArray);
        bw.write(res);
        bw.newLine();

        bw.close();
    }
}

/*
Input: 
2
1231
123
Output: Comma separated String which contains finalised numbers in ascending order
123,1231
*/
