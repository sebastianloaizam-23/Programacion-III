/** ESTE CODIGO ES HACERLO IMPERATIVO
    import java.util.List;

    public class App {
        public static int SumaCuadradosImperativo(List<Integer> listNumbers) {

            int suma = 0;
            for (int number : listNumbers) {
                suma += number * number;
            }           
            return suma;
        }
        

        public static void main(String[] args) {
            List<Integer> numbers = List.of(1, 2, 3, 4, 5);
            int result = SumaCuadradosImperativo(numbers);
            System.out.println("La suma de los cuadrados es: " + result);
        }   
        }
        
**/

//// ESTE CODIGO ES HACERLO FUNCIONAL 
import java.util.List;

public class App {
    public static int SumaCuadradosFuncional(List<Integer> listNumbers) {
        return listNumbers.stream()
                          .map(n -> n * n)
                          .reduce(0, Integer::sum);
    }

    public static void main(String[] args) {
        List<Integer> numbers = List.of(1, 2, 3, 4, 5);
        int result = SumaCuadradosFuncional(numbers);
        System.out.println("La suma de los cuadrados es: " + result);
    }
}