import javax.swing.JOptionPane;
import java.io.*;
/*
 * Este programa en Java interactúa con un script en Elixir para calcular la longitud de una palabra.   
 * Solicita al usuario un mensaje, luego ejecuta el script de Elixir con este dato y muestra el resultado.
 * 
 * 
*/
public class longitudPalabraJ {
    public static void main(String[] args) {
        String mensaje = JOptionPane.showInputDialog(null, "Ingrese el mensaje:");

        try {
            // Ejecuta el script Elixir usando el comando 'elixir'
            ProcessBuilder pb = new ProcessBuilder(
                "C:\\Program Files\\Elixir\\bin\\elixir.bat", "longitudPalabraExs.exs", mensaje
            );
            pb.directory(new File("C:\\Users\\DELL\\OneDrive\\Escritorio\\UNI\\PROGRAMACION III\\Seguimiento-1\\longitudPalabra"));
            Process process = pb.start();

            BufferedReader reader = new BufferedReader(
                new InputStreamReader(process.getInputStream())
            );
            String respuesta = reader.readLine();

            JOptionPane.showMessageDialog(null, "Cantidad de letras: " + respuesta);

            process.waitFor();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
}