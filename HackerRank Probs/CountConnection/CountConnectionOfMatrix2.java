//PFind the number of connections existed in the matrix

// Counting Connections in Matrix
//Approach 2
  import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;

public class Solution {

 static int countConnections(List<List<Integer>> matrix) {
         int count = 0;
         int m = matrix.size();
         int n = matrix.get(0).size();

        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {

                if (matrix.get(i).get(j) == 1) {
                    if (i - 1 >= 0 && j - 1 >= 0 && matrix.get(i-1).get(j-1) == 1) {
                        count = count + 1;
                    }
                    if (i - 1 >= 0 && matrix.get(i-1).get(j) == 1) {
                        count = count + 1;
                    }
                    if (i - 1 >= 0 && j + 1 < n && matrix.get(i-1).get(j+1) == 1) {
                        count = count + 1;
                    }
                    if (j + 1 < n && matrix.get(i).get(j+1) == 1) {
                        count = count + 1;
                    }
                }
            }
        }
        return count;
    }


    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        int matrixRows = Integer.parseInt(bufferedReader.readLine().trim());
        int matrixColumns = Integer.parseInt(bufferedReader.readLine().trim());

        List<List<Integer>> matrix = new ArrayList<>();

        IntStream.range(0, matrixRows).forEach(i -> {
            try {
                matrix.add(
                    Stream.of(bufferedReader.readLine().replaceAll("\\s+$", "").split(" "))
                        .map(Integer::parseInt)
                        .collect(toList())
                );
            } catch (IOException ex) {
                throw new RuntimeException(ex);
            }
        });

        int res = countConnections(matrix);

        bufferedWriter.write(String.valueOf(res));
        bufferedWriter.newLine();

        bufferedReader.close();
        bufferedWriter.close();
    }
}


/*
Input:
1 0 0 1
0 1 1 1
1 0 0 1
Output: Count the connections and display the path
8

As 8 connections existed
*/
