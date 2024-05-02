// declaration
// List<Integer> myList = new List<Integer>();


public class ListExample(){
    public static void processList(List<Integer> numbers){
        for(Integer num : numbers){
            System.debug(num)
        }
    }

    public static void main(){
        List<Integer> numbers = new List<Integer>{10, 20, 30};
        processList(numbers);
    }

}