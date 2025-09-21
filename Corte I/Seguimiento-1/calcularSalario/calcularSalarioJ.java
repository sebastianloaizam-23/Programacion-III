import javax.swing.JOptionPane;
import java.io.*;
/*    
 * Este programa en Java interactúa con un script en Elixir para calcular el salario neto de un empleado.
 * Solicita al usuario el nombre del empleado, las horas trabajadas y el valor por hora,
 * luego ejecuta el script de Elixir con estos datos y muestra el resultado.    
  */
public class calcularSalarioJ {
    public static void main(String[] args) {
        String nombre = JOptionPane.showInputDialog(null, "Ingrese el nombre del empleado:");
        String horas = JOptionPane.showInputDialog(null, "Ingrese las horas trabajadas:");
        String valor = JOptionPane.showInputDialog(null, "Ingrese el valor por hora:");

        try {
            ProcessBuilder pb = new ProcessBuilder(
                "C:\\Program Files\\Elixir\\bin\\elixir.bat", "calcularSalarioExs.exs", nombre, horas, valor
            );
            pb.directory(new File("C:\\Users\\DELL\\OneDrive\\Escritorio\\UNI\\PROGRAMACION III\\Seguimiento-1\\calcularSalario"));
            Process process = pb.start();

            BufferedReader reader = new BufferedReader(
                new InputStreamReader(process.getInputStream())
            );
            StringBuilder resultado = new StringBuilder();
            String linea;
            while ((linea = reader.readLine()) != null) {
                resultado.append(linea).append("\n");
            }

            JOptionPane.showMessageDialog(null, resultado.toString().trim());
            process.waitFor();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        }
    }
}