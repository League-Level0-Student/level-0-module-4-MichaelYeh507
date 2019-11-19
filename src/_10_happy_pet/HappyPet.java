package _10_happy_pet;
import javax.swing.JOptionPane;

public class HappyPet {
	
	// 2. Add the following variable to the next line: static int happinessLevel = 0;
	// this will be used to store the happiness of your pet
	static int happinessLevel = 0;
	static String pet = JOptionPane.showInputDialog("What pet would you like?");

	public static void main(String[] args) {
		// 1. Ask the user what kind of pet they want to buy, and store their answer in a variable
		// 7. REPEAT steps 3 - 6 enough times to make your pet happy!
		
			// 3. Use showOptionDialog to ask the user what they want to do to make their pet happy
			//    (eg: cuddle, food, water, take a walk, groom, clean up poop).
			//    Make sure to customize the title and question too.
		for (int i = 0; i < 3; i++) {	
			int task = JOptionPane.showOptionDialog(null, "What would you do to make your pet happy?", "Title", 0, JOptionPane.INFORMATION_MESSAGE, null,
					new String[] { "clean up poop", "food", "buy a gaming set up" }, null);
			System.out.println(task);
			// 5. Use user input to call the appropriate method created in step 4.
			if (task == 0) {
				cleanUpPoop();
			} else if (task == 1) {
				food();
			} else {
				gaming();
			}
			// 6. If you determine the happiness level is large enough, tell the
			//    user that he loves his pet and use break; to exit for loop.
		}
			if (happinessLevel >=4) {
				JOptionPane.showMessageDialog(null, "You love ur pet, keep it up");
			} else {
				JOptionPane.showMessageDialog(null, "Your pet is not happy");
			}
		
	}

	// 4. Create methods to handle each of your user selections.
	//    Each method should create a pop-up with the pet's response (eg. cat might purr when pet), 
	//    and INCREMENT the pet's happiness Level.
	static void cleanUpPoop() {
		JOptionPane.showMessageDialog(null, pet + " is interested");
		happinessLevel += 1;
	} static void food() {
		JOptionPane.showMessageDialog(null, pet +  " is happy");
		happinessLevel += 2;
	} static void gaming() {
		JOptionPane.showMessageDialog(null, pet + " loves it");
		happinessLevel += 3;
	}
}