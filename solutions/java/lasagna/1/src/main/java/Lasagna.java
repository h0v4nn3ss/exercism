public class Lasagna {
    int total = 40;
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven(){
        return total;
    }
    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int actual){
        return expectedMinutesInOven() - actual;
    }
    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int layers) {
        return layers * 2;
    }
    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int layers, int actual){
        return preparationTimeInMinutes(layers) + actual;
    }
}
