
import java.util.ArrayList;
/**
 * Solution to Project Euler Q 39. 
 */
public class Test {

        static ArrayList<Integer> pairs = new ArrayList<Integer>();

        public static void main(String[] args) {
            long startTime = System.currentTimeMillis();
            for (int i = 1; i <= 1000; i++) {
                pairs.add(perimeterPairs(i));
            }
            int max = 0;
            int val = 1;
            for (int j = 0; j < pairs.size(); j++) {
                if (pairs.get(j) > max) {
                    max = pairs.get(j);
                    val = j + 1;
                }
            }

            System.out.println("MAX IS " + max + ", " + val);

            long stopTime = System.currentTimeMillis();
            long elapsedTime = stopTime - startTime;
            System.out.println("ELAPSED TIME (SECONDS): " + ((float) elapsedTime * 0.001f));
        }

        public static int perimeterPairs(int p) {
            int counter = 0;
            int i, j = 0;
            for (i = 0; i < p; i++) {
                for (j = 0; j <= i; j++) {
                    double pyth = pyth(i, j);
                    if (pyth - (int) pyth == 0) {
                        if (pyth + i + j == p)
                            counter++;
                    }
                }
            }
            return counter;
        }

        public static double pyth(int a, int b) {
            double c = Math.sqrt((double) (a * a) + (double) (b * b));
            return c;
        }
    }
