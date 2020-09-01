package objectstructures;
public class CoffeeCupTest extends junit.framework.TestCase{
	private CoffeeCup coffeeCup = null;
	@Override
	protected void setUp() {
		coffeeCup = new CoffeeCup();
	}
	@Override
	protected void tearDown() {
		coffeeCup = null;
	}
	public void testCoffeeCup() {
		assertEquals(0.0, coffeeCup.getCapacity());
		assertEquals(0.0, coffeeCup.getCurrentVolume());
	}
	public void testCoffeeCupWithParameters() {
		coffeeCup = new CoffeeCup(10.0,5.0);
		assertEquals(10.0, coffeeCup.getCapacity());
		assertEquals(5.0, coffeeCup.getCurrentVolume());
	}
	public void testCoffeeCupException() {
		try {
			coffeeCup = new CoffeeCup(-10.0,-5.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after new CoffeeCup(-10.0, -5.0)", e instanceof IllegalArgumentException);
		}
		try {
			coffeeCup = new CoffeeCup(-10.0,5.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after new CoffeeCup(-10.0, 5.0)", e instanceof IllegalArgumentException);
		}
		
		try {
			coffeeCup = new CoffeeCup(10.0,-5.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after new CoffeeCup(10.0, -5.0)", e instanceof IllegalArgumentException);
		}
		
		try {
			coffeeCup = new CoffeeCup(5.0,10.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after new CoffeeCup(5.0, 10.0)", e instanceof IllegalArgumentException);
		}
	}
	public void testCoffeeCupIncreaseCupSize() {
		assertEquals(0.0, coffeeCup.getCapacity());
		coffeeCup.increaseCupSize(10.0);
		assertEquals(10.0, coffeeCup.getCapacity());
		
		coffeeCup = new CoffeeCup();
		coffeeCup.increaseCupSize(0.0);
		assertEquals(0.0, coffeeCup.getCapacity());
		
		coffeeCup = new CoffeeCup(10.0,10.0);
		coffeeCup.increaseCupSize(10.0);
		assertEquals(20.0, coffeeCup.getCapacity());
	
		coffeeCup = new CoffeeCup();
		coffeeCup.increaseCupSize(-10.0);
		assertEquals(0.0, coffeeCup.getCapacity());
	}
	public void testCoffeeCupDrinkCoffee() {
		coffeeCup = new CoffeeCup(10.0,10.0);
		assertEquals(10.0, coffeeCup.getCurrentVolume());
		coffeeCup.drinkCoffee(2.0);
		assertEquals(8.0, coffeeCup.getCurrentVolume());
		coffeeCup.drinkCoffee(8.0);
		assertEquals(0.0, coffeeCup.getCurrentVolume());
		coffeeCup.drinkCoffee(0.0);
		assertEquals(0.0, coffeeCup.getCurrentVolume());
		
		try {
			coffeeCup = new CoffeeCup(10.0,10.0);
			coffeeCup.drinkCoffee(-10.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after drinkCoffee(-10.0)", e instanceof IllegalArgumentException);
		}
		
		try {
			coffeeCup = new CoffeeCup(10.0,5.0);
			coffeeCup.drinkCoffee(6.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after drinkCoffee(6.0)", e instanceof IllegalArgumentException);
		}
		
		try {
			coffeeCup = new CoffeeCup(10.0,0.0);
			coffeeCup.drinkCoffee(1.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after drinkCoffee(1.0)", e instanceof IllegalArgumentException);
		}	
		
		try {
			coffeeCup = new CoffeeCup(10.0,10.0);
			coffeeCup.drinkCoffee(20.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after drinkCoffee(20.0)", e instanceof IllegalArgumentException);
		}
	}
	public void testCoffeeCupFillCoffee() {
		coffeeCup = new CoffeeCup(10.0,0.0);
		assertEquals(0.0, coffeeCup.getCurrentVolume());
		coffeeCup.fillCoffee(2.0);
		assertEquals(2.0, coffeeCup.getCurrentVolume());
		coffeeCup.fillCoffee(3.0);
		assertEquals(5.0, coffeeCup.getCurrentVolume());
		coffeeCup.fillCoffee(5.0);
		assertEquals(10.0, coffeeCup.getCurrentVolume());
		
		try {
			coffeeCup = new CoffeeCup(10.0,10.0);
			coffeeCup.fillCoffee(1.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after fillCoffee(.0)", e instanceof IllegalArgumentException);
		}
		
		try {
			coffeeCup = new CoffeeCup(10.0,0.0);
			coffeeCup.fillCoffee(-10.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after fillCoffee(-10.0)", e instanceof IllegalArgumentException);
		}
		
		try {
			coffeeCup = new CoffeeCup(10.0,0.0);
			coffeeCup.fillCoffee(20.0);
			fail();
		} catch (Exception e) {
			assertTrue("IllegalArgumentException should be thrown after fillCoffee(20.0)", e instanceof IllegalArgumentException);
		}
	}
}
