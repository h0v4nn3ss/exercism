public class Lasagna {
    int total = 40;
    
    public int expectedMinutesInOven(){
        return total;
    }
    
    public int remainingMinutesInOven(int actual){
        return expectedMinutesInOven() - actual;
    }
    
    public int preparationTimeInMinutes(int layers) {
        return layers * 2;
    }
    
    public int totalTimeInMinutes(int layers, int actual){
        return preparationTimeInMinutes(layers) + actual;
    }
}
