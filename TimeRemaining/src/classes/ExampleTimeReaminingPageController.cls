public with sharing class ExampleTimeReaminingPageController {
    
    public List<DateTime> dateTimes {get; set;}
    public DateTime now = System.now();
    public ExampleTimeReaminingPageController() {
      dateTimes = new List<DateTime>();
      dateTimes.add(now.addSeconds(1));
      dateTimes.add(now.addSeconds(25));
      dateTimes.add(now.addMinutes(1));
      dateTimes.add(now.addMinutes(5));
      dateTimes.add(now.addMinutes(15));
      dateTimes.add(now.addMinutes(65));
      dateTimes.add(now.addMinutes(150));
      dateTimes.add(now.addMinutes(4800));
      dateTimes.add(now.addMinutes(48000));
    }
}