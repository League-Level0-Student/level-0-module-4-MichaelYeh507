package _06_test_scores;

import javax.swing.JOptionPane;

public class test_scores {
	public static void main(String[] args) {
		String percentage = JOptionPane.showInputDialog("What percent did you get on the test?");
		double grade = Double.parseDouble(percentage);
		if (grade >= 90) {
			JOptionPane.showMessageDialog(null, "Nice!");
		} else if (grade >= 80 && grade < 90) {
			JOptionPane.showMessageDialog(null, "Study a little harder");
		} else {
			JOptionPane.showMessageDialog(null, "I'm disappointed.");
		}
	}
}
