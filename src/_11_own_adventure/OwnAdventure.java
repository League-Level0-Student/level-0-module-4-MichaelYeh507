package _11_own_adventure;

import javax.swing.JOptionPane;
import javax.swing.JPopupMenu;

public class OwnAdventure {
	public static void main(String[] args) {
		//story
		JOptionPane.showMessageDialog(null, "Once upon a time, you were walking in the forest.");
		JOptionPane.showMessageDialog(null, "You suddenly stop between two paths that leads to different places.");
		JOptionPane.showMessageDialog(null, "There was a path on the right thats looks dangerous and a path on the left that has happy elevator music playing.");
		
		//chose paths
		int path = JOptionPane.showOptionDialog(null, "Which way would you go?", "Title", 0, JOptionPane.INFORMATION_MESSAGE, null,
		new String[] { "dangerous path", "elevator music path" }, null);
		if (path == 0) {
			//level 2
			JOptionPane.showMessageDialog(null, "Congrats you reached a checkpoint!");
			JOptionPane.showMessageDialog(null, "You kept on walking through the forest and a river cuts you off");
			JOptionPane.showMessageDialog(null, "You see a broken boat and a jetpack");
			
			//riverCrossing
			int transportation = JOptionPane.showOptionDialog(null, "What would you use to cross the river?", "Title", 0, JOptionPane.INFORMATION_MESSAGE, null,
			new String[] { "broken boat", "jetpack" }, null);
			if (transportation == 0) {
				//level 3 
				JOptionPane.showMessageDialog(null, "Congrats you reached another checkpoint!");
				JOptionPane.showMessageDialog(null, "You are now on the final stage of the woods");
				JOptionPane.showMessageDialog(null, "You see a nether portal and a door that says exit");
				int portals = JOptionPane.showOptionDialog(null, "Which way would you go?", "Title", 0, JOptionPane.INFORMATION_MESSAGE, null,
				new String[] { "Nether", "exit" }, null);
				if (portals == 1) {
					JOptionPane.showMessageDialog(null, "You past the forest! Congrats!");
				} else {
					JOptionPane.showMessageDialog(null, "You spawned in lava");
					JOptionPane.showMessageDialog(null, "You died GG");
				}
				
				
			} else {
				// Take D L
				JOptionPane.showMessageDialog(null, "You took the jetpack and started flying across the river");
				JOptionPane.showMessageDialog(null, "You did not see that the jetpack was low on fuel");
				JOptionPane.showMessageDialog(null, "You fall into the river and drowned GG");
			}
			
		} else {
			//TAKE D L
			JOptionPane.showMessageDialog(null, "You got in an elevator and the door closed");
			JOptionPane.showMessageDialog(null, "Suddenly, creepy spiders starts crawling out of the openings on the roof!");
			JOptionPane.showMessageDialog(null, "You got eaten buy spiders GG");
		}
	}
}
