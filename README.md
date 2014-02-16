# Components

### Visualforce components are a great way to build resuable block of UI. This repo is setup to share open-source components. 

## Components
  * [Ordinal Numbers](https://github.com/ApexComponents/Components/tree/master/OrdinalNumbers)
    *A utility component to translate an integer to its ordinal number, ie 1 to 1st*
     
     	The ordinal value of "1" is : <c:OrdinalNumber value="1"/>
     	result is "1st"
 * [Time Reamining](https://github.com/ApexComponents/Components/tree/master/TimeRemaining)
    *A utility component to display the time remaining until a given datetime*
     	
     	Time remaining until: {!dateTimeValue} is <c:TimeRemaining value="{!dateTimeValue}"/>
     	
     	It is currently: Sun Feb 16 20:58:18 GMT 2014
     	Time remaining until: Sun Feb 16 20:58:19 GMT 2014 is 1 second
        Time remaining until: Sun Feb 16 20:58:43 GMT 2014 is 25 seconds
        Time remaining until: Sun Feb 16 20:59:18 GMT 2014 is 1 minute
        Time remaining until: Sun Feb 16 21:03:18 GMT 2014 is 5 minutes
        Time remaining until: Sun Feb 16 21:13:18 GMT 2014 is 15 minutes
        Time remaining until: Sun Feb 16 22:03:18 GMT 2014 is 1 hour
        Time remaining until: Sun Feb 16 23:28:18 GMT 2014 is 2 hours
        Time remaining until: Thu Feb 20 04:58:18 GMT 2014 is 3 days
        Time remaining until: Sat Mar 22 04:58:18 GMT 2014 is 5 weeks
