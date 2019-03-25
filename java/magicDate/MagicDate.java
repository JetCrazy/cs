
public class MagicDate {
	private int month;
	private int day;
	private int year;
	
	public MagicDate() {
		month = 0;
		day = 0;
		year = 0;
	}
	
	public MagicDate(int monthC, int dayC, int yearC) {
		setMonth(monthC);
		setDay(dayC);
		setYear(yearC);
	}
	
	// Mutator methods
	
	public void setMonth(int monthS) {
		month = monthS;
	}
	
	public void setDay(int dayS) {
		day = dayS;
	}
	
	public void setYear(int yearS) {
		year = yearS;
	}
	
	// Accessor Methods
	
	public int getMonth() {
		return month;
	}
	
	public int getDay() {
		return day;
	}
	
	public int getYear() {
		return year;
	}
	
	public boolean isMagic() {
		int magic = month * day;
		boolean date;
		if (magic == year) {
			date = true;
		} else {
			date = false;
		}
		
		return date;
	}
}
