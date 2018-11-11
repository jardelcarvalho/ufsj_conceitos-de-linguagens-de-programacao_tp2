package orientado_objetos.ponto_flutuante;

class FloatTeste {

    private static final Double k = Double.MIN_VALUE;

    public void soma(long max) {
        Double x = 1d, c;
        long i = 0;
        while(i != max) {
            c = x + k;
            i++;
        }
    }

    public void sub(long max) {
        Double x = 1d, c;
        long i = 0;
        while(i != max) {
            c = x - k;
            i++;
        }
    }

    public void mult(long max) {
        Double x = 1d, c;
        long i = 0;
        while(i != max) {
            c = x * k;
            i++;
        }
    }

    public void div(long max) {
        Double x = 1d, c;
        long i = 0;
        while(i != max) {
            c = x / k;
            i++;
        }
    }

    public void tempo_extra(long max) {
        Double x = 1d, c;
        long i = 0;
        while(i != max) {
            c = 0d;
            i++;
        }
    }
}

public class main {

    public static void main(String []args) {

        int opt = Integer.parseInt(args[0]);
        long max = Long.parseLong(args[1]);

        switch(opt) {
            case 0:
                new FloatTeste().soma(max);
                break;
            case 1:
                new FloatTeste().sub(max);
                break;
            case 2:
                new FloatTeste().mult(max);
                break;
            case 3:
                new FloatTeste().div(max);
                break;
            case 4:
                new FloatTeste().tempo_extra(max);
                break;
            default:
                System.out.println("[]args inválido");
                break;
        }
    }
}