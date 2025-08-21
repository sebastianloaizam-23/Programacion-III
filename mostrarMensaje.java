import javax.swing.JOptionPane;

public class mostrarMensaje {
    public static void main(String[] args) {
        String mensaje = JOptionPane.showInputDialog(null, "Escriba su nombre:");
        JOptionPane.showMessageDialog(null,"Bienvenido a la empresa Once Ltda " + mensaje);
    }
}

