import javax.swing.JOptionPane;

public class mostrarMensaje {
    public static void main(String[] args) {
        String mensaje = JOptionPane.showInputDialog(null, "Escriba el nombre de usuario:");
        JOptionPane.showMessageDialog(null,"Bienvenido a la empresa Once Ltda \n Nombre de usuario: " + mensaje );
    }
}

