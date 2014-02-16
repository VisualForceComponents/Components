public with sharing class TimeRemainingComponentController {
    public TimeRemainingComponentController() { }
    public DateTime dateTimeValue {get;set;}
    
    public String getTimeUntil(){
      if(DateTimeValue == null) return '';
      DateTime now = DateTime.now();
      Integer timeRemainingDisplayValue = 0;
      String timeRemainingDisplayText = '';
      
      Decimal millisecondsRemaining = dateTimeValue.getTime() - now.getTime();
      Decimal secondsRemaining = millisecondsRemaining / 1000;
      Decimal minutesRemaining = secondsRemaining / 60;
      Decimal hoursRemaining = minutesRemaining / 60;
      Decimal daysRemaining = hoursRemaining / 24;

      if (Math.Round(daysRemaining) > 7) {
        return (Math.Round(daysRemaining) == 7) ? Math.Round(daysRemaining/7)+' week' : Math.Round(daysRemaining/7)+' weeks' ; 
      }
      if (Math.Round(daysRemaining) > 0) {
        return (Math.Round(daysRemaining) == 1) ? Math.Round(daysRemaining)+' day' : Math.Round(daysRemaining)+' days' ; 
      }
      if (Math.Round(hoursRemaining) > 0) {
        return (Math.Round(hoursRemaining) == 1) ? Math.Round(hoursRemaining)+' hour' : Math.Round(hoursRemaining)+' hours' ; 
      }
      if (Math.Round(minutesRemaining) > 0) {
        return (Math.Round(minutesRemaining) == 1) ? Math.Round(minutesRemaining)+' minute' : Math.Round(minutesRemaining)+' minutes' ; 
      }
      if (Math.Round(secondsRemaining) > 0) {
        return (Math.Round(secondsRemaining) == 1) ? Math.Round(secondsRemaining)+' second' : Math.Round(secondsRemaining)+' seconds' ; 
      }
      return '';
    }
}