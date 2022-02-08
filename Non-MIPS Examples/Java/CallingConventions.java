// Author: Charles Kann

public class CallingConventions {
    public static void func(int a, final int b[]) {
        a = 7;
        b[0] = 7;
    }

    public static void main(String... argv) {
        int a = 5;
        int b[] = {5};

        System.out.println("Before call, a = " + a + " and b[0] = " + b[0]);
        func(a, b);
        System.out.println("After call, a = " + a + " and b[0] = " + b[0]);
    }
}