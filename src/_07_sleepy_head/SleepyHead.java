package _07_sleepy_head;
//    Copyright (c) The League of Amazing Programmers 2013-2017
//    Level 0

import javax.swing.JOptionPane;


public class SleepyHead {


    public static void main(String[] args) {
        
        boolean isWeekday, isVacation;
        
        /* You MUST use the above boolean variables in your code */
        
        /*
         * Ask the user for these values using a confirm dialog like the one below
         * JOptionPane.showConfirmDialog(null, "Is it a weekday?", "Sleepy Head", JOptionPane.YES_NO_OPTION);
         */
        int weekday = JOptionPane.showConfirmDialog(null,"Is it a weekday", "Please select", JOptionPane.YES_NO_OPTION);
        System.out.println("result from entry " + weekday);
        if(weekday==1) {
        isWeekday = true;
		JOptionPane.showMessageDialog(null, "Thats too bad");
        }
        else if(weekday==0) {
		isWeekday = false;
        JOptionPane.showMessageDialog(null, "are you asleep?");
		}
/* System.out.println(contactServerUp); */
}

        /*
         * Print “sleep in�? if it is a vacation or a weekend. If it’s a weekday,
         * print “get up lazybones!�? If it is a weekday, and we are on vacation,
         * print “sleep in�?.
         */
    }

