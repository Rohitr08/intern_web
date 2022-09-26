package springmvc.common;

	public class ServerSideValidations {
		
		public static void main(String args[]) {
			//Test Execution
			System.out.println(ServerSideValidations.validateEmail("rohit.raj@wheebox.com"));
			System.out.println(ServerSideValidations.validateAlphabetsOnly("-NOEXCEMPTION-", " ,/&-."));
			String x = "10 A Wheebox Info City 6-1 10/A \r\nGurugram Haryana";
			System.out.println(ServerSideValidations.validateAlphaNumericOnly(x, " /,/&-.(\n|\r\n)"));
			System.out.println(x+"******"+ServerSideValidations.replaceInitialAndEndLineBreaks(x));
			
		}
		
		//Email Validation
		public static boolean validateEmail(String emailid) {
			boolean status = false;
			String EMAIL_REGEX = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})$";
			status = emailid.matches(EMAIL_REGEX);
			return status;
		}
		
		//Mobile Validation
		public static boolean validateMobileNo(String mobileno) {
			boolean status = false;
			String EMAIL_REGEX = "^\\d{10,10}$";
			status = mobileno.matches(EMAIL_REGEX);
			return status;
		}
		
		//Validate Required Length
		public static boolean matchLength(int length, String text) {
			boolean status = false;
			if(text.length() <= length) {
				status = true;
			}else {
				status = false;
			}
			return status;
		}
		
		//Validate Exact Length
		public static boolean matchExactLength(int length, String text) {
			boolean status = false;
			if(text.length() == length) {
				status = true;
			}else {
				status = false;
			}
			return status;
		}
		
		//Validate allowed characters in text
		public static boolean validateAlphaNumericOnly(String text, String specialcharacters) {
			boolean status = false;
			String EMAIL_REGEX = "^[a-zA-Z0-9"+specialcharacters+"]+$";
			status = text.matches(EMAIL_REGEX);
			return status;
		}
		
		//Validate allowed characters in text
		public static boolean validateAlphabetsOnly(String text, String specialcharacters) {
			boolean status = false;
			String EMAIL_REGEX = "^[a-zA-Z"+specialcharacters+"]+$";
			status = text.matches(EMAIL_REGEX);
			return status;
		}
		
		//Validate allowed characters in text
		public static boolean validateNumericOnly(String text, String specialcharacters) {
			boolean status = false;
			String EMAIL_REGEX = "^[0-9"+specialcharacters+"]+$";
			status = text.matches(EMAIL_REGEX);
			return status;
		}
		
		//Replace Initial and Ending Blank Live Breaks
		public static String replaceInitialAndEndLineBreaks(String text) {
			//Removing from start
			text = text.trim();
			while(text.startsWith("\n")) {
				text = text.replaceFirst("\n", "");
				text = text.trim();
			}
			//Removing from end
			text = text.trim();
			while(text.endsWith("\n")) {
				text = text.substring(0, text.length()-2);
				text = text.trim();
			}
			return text;
		}


}
