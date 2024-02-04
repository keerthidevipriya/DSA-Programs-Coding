//PFind the number of connections existed in the matrix

// Counting Connections in Matrix
//Approach 1
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
        final int[] x = {1, 1, 1, -1, -1, -1, 0, 0};
        final int[] y = {1, -1, 0, 1, -1, 0, 1, -1};
        int r = matrix.size(); //num of rows
        int c = matrix.get(0).size(); //num of columns
        boolean[][] visited = new boolean[r][c];
        for(int i=0;i< r;i++) {
            for(int j=0;j<c;j++) {
                for(int k=0;k<8;k++) {
                    int l = i+x[k];
                    int m = j+y[k];
                    if (matrix.get(i).get(j) == 1 && canVisit(l, m, r, c, visited) && matrix.get(l).get(m) == 1) {
                    count++;
                    }
                }
                visited[i][j] = true;
            }
        } 
        return count;
    }
    public static boolean canVisit(int i, int j, int rows, int columns, boolean [][] visited) {
        return i < rows && j < columns && i >= 0 && j >= 0 && !visited[i][j];
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
