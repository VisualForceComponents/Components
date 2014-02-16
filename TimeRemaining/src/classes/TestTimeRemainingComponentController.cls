@isTest
private class TestTimeRemainingComponentController {
	
	@isTest static void testWeeksRemaining() {
		DateTime now = System.now();
		TimeRemainingComponentController controller = new TimeRemainingComponentController();

		Test.startTest();
			controller.dateTimeValue = now.addMinutes(48000);
			String timeUntil = controller.getTimeUntil();
			System.assertEquals('5 weeks', timeUntil, 'It should be 5 weeks from now');
		Test.stopTest(); 
	}
	
	@isTest static void testDaysRemaining() {
		DateTime now = System.now();
		TimeRemainingComponentController controller = new TimeRemainingComponentController();

		Test.startTest();
			controller.dateTimeValue = now.addMinutes(4800);
			String timeUntil = controller.getTimeUntil();
			System.assertEquals('3 days', timeUntil, 'It should be 3 days from now');
		Test.stopTest(); 
	}

	@isTest static void testHoursRemaining() {
		DateTime now = System.now();
		TimeRemainingComponentController controller = new TimeRemainingComponentController();

		Test.startTest();
			controller.dateTimeValue = now.addMinutes(150);
			String timeUntil = controller.getTimeUntil();
			System.assertEquals('2 hours', timeUntil, 'It should be 2 hours from now');
		Test.stopTest(); 
	}

	@isTest static void testMinutesRemaining() {
		DateTime now = System.now();
		TimeRemainingComponentController controller = new TimeRemainingComponentController();

		Test.startTest();
			controller.dateTimeValue = now.addMinutes(5);
			String timeUntil = controller.getTimeUntil();
			System.assertEquals('5 minutes', timeUntil, 'It should be 5 minutes from now');
		Test.stopTest(); 
	}

	@isTest static void testSecondsRemaining() {
		TimeRemainingComponentController controller = new TimeRemainingComponentController();

		Test.startTest();
			controller.dateTimeValue = System.now().addSeconds(5);
			String timeUntil = controller.getTimeUntil();
			System.assertEquals('5 seconds', timeUntil, 'It should be 5 seconds from now');
		Test.stopTest(); 
	}
	@isTest static void testNullValue() {
		TimeRemainingComponentController controller = new TimeRemainingComponentController();

		Test.startTest();
			controller.dateTimeValue = null;
			String timeUntil = controller.getTimeUntil();
			System.assertEquals('', timeUntil, 'It should be an empty string');
		Test.stopTest(); 
	}
	
}