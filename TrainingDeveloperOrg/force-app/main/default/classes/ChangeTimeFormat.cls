public with sharing class ChangeTimeFormat {
    public String ChangeTimeFormat(String strTime) {
        String[] parts = strTime.split(':');
        
        Integer hours = Integer.valueOf(parts[0]);
        
        Integer minutes = Integer.valueOf(parts[1]);
        
        String suffix = ' AM';
        
        if (hours == 12) suffix = ' PM';
        
        if (hours > 12) { 
            
            suffix = ' PM';
            
            hours -= 12;
            
        }
        
        if (hours == 0) {
            
            hours = 12;
            
        }
        
        String strHours = String.valueOf(hours);
        
        if (strHours.length() == 1) strHours = '0' + strHours;
    
        return strHours + ':' + parts[1] + suffix;
    }   
}