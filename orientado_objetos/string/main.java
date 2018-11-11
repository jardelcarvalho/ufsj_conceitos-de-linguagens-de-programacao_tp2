package orientado_objetos.string;

class StringTeste {
    
    private static final String total = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    private static final String p = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String q = "abcdefghijklmnopqrstuvwxyz";

    public void quebra(long max) {
        String[] partes = null;
        long i = 0;
        while(i != max) {
            partes = total.split("a");
            i++;
        }
    }

    public void concatena(long max) {
        String partes = null;
        long i = 0;
        while(i != max) {
            partes = p + q;
            i++;
        }
    }

    public void tempo_extra(long max) {
        String partes = null;
        long i = 0;
        while(i != max) {
            partes = "";
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
                new StringTeste().quebra(max);                
                break;
            case 1:
                new StringTeste().concatena(max);
                break;
            case 2:
                new StringTeste().tempo_extra(max);
                break;
            default:
                System.out.println("[]args inválido");
                break;
        }

    }
}