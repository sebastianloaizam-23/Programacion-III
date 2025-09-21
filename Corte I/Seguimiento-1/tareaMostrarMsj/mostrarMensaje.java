import javax.swing.JOptionPane;
/* 
 * Este programa en Java muestra un mensaje de bienvenida al usuario.
 * Solicita al usuario que ingrese su nombre y luego muestra un mensaje de bienvenida personalizado.
 */
public class mostrarMensaje {
    public static void main(String[] args) {
        String mensaje = JOptionPane.showInputDialog(null, "Escriba el nombre de usuario:");
        JOptionPane.showMessageDialog(null,"Bienvenido a la empresa Once Ltda \n Nombre de usuario: " + mensaje );
    }
}

