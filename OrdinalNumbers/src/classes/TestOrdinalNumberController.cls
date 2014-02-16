@isTest
private class TestOrdinalNumberController {
	
	@isTest static void testValueForST() {
		Integer testValue = 1;

		OrdinalNumberComponentController controller = new OrdinalNumberComponentController();
		controller.preFormattedNumber = testValue;

		Test.startTest();
			String ordinalNumber = controller.getOrdinalNumber();
			System.assertEquals('1st', ordinalNumber, 'The integer 1 should have an ordinal of 1st');
		Test.stopTest();
	}
	
	@isTest static void testValueForNd() {
		Integer testValue = 2;

		OrdinalNumberComponentController controller = new OrdinalNumberComponentController();
		controller.preFormattedNumber = testValue;

		Test.startTest();
			String ordinalNumber = controller.getOrdinalNumber();
			System.assertEquals('2nd', ordinalNumber, 'The integer 2 should have an ordinal of 2nd');
		Test.stopTest();
	}

	@isTest static void testValueForRD() {
		Integer testValue = 3;

		OrdinalNumberComponentController controller = new OrdinalNumberComponentController();
		controller.preFormattedNumber = testValue;

		Test.startTest();
			String ordinalNumber = controller.getOrdinalNumber();
			System.assertEquals('3rd', ordinalNumber, 'The integer 3 should have an ordinal of 3nd');
		Test.stopTest();
	}

	@isTest static void testValueForTH() {
		Integer testValue = 5;

		OrdinalNumberComponentController controller = new OrdinalNumberComponentController();
		controller.preFormattedNumber = testValue;

		Test.startTest();
			String ordinalNumber = controller.getOrdinalNumber();
			System.assertEquals('5th', ordinalNumber, 'The integer 5 should have an ordinal of 5th');
		Test.stopTest();
	}

	@isTest static void testLargeValueForTH() {
		Integer testValue = 1115;

		OrdinalNumberComponentController controller = new OrdinalNumberComponentController();
		controller.preFormattedNumber = testValue;

		Test.startTest();
			String ordinalNumber = controller.getOrdinalNumber();
			System.assertEquals('1115th', ordinalNumber, 'The integer 1115 should have an ordinal of 1115th');
		Test.stopTest();
	}

	@isTest static void testNulLValue() {
		Integer testValue = null;

		OrdinalNumberComponentController controller = new OrdinalNumberComponentController();
		controller.preFormattedNumber = testValue;

		Test.startTest();
			String ordinalNumber = controller.getOrdinalNumber();
			System.assertEquals('', ordinalNumber, 'When a null value is passed it, it should return an empty sting');
		Test.stopTest();
	}
	
}