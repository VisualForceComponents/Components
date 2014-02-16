public with sharing class OrdinalNumberComponentController {

  public Integer preFormattedNumber {get; set;}
  public String getOrdinalNumber(){
    if(preFormattedNumber == null) return '';
    String formattedValue = '';
    Integer hundredRemainder =  Math.mod(preFormattedNumber, 100);
    Integer tenRemainder = Math.mod(preFormattedNumber, 10);
    if(hundredRemainder - tenRemainder == 10) {
      return preFormattedNumber+'th';
    }
    if(tenRemainder == 1) return preFormattedNumber+'st';
    if(tenRemainder == 2) return preFormattedNumber+'nd';
    if(tenRemainder == 3) return preFormattedNumber+'rd';
    return preFormattedNumber+'th';
  }
}