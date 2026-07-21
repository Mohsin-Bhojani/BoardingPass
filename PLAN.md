System Font (SF Pro) will be what i pick to use for fonts 
and will describe actual size later but for now will use the labels as we create and make a list below this 

.largeTitle: The largest title style, intended for prominent headers.
.title2: A medium title style.
.body: The default style for standard text content.
.callout: Used for text that needs to draw attention, like labels or secondary info.


Colors: I think a solid color picked at random for the pass background and a lighter vareint of the color for accsent font colors background of the pass is solid white or black depending on the mode , also if dark mode the saturation woul need to be increased 

Gate, Group, Seat no will follow the the label on top and right below it would be the value 

Width of the pass with leaving a fixed witdh from both sides of iPhone that will be the width of the pass so my guess is it's .padding as i am leaving space on the sides of the pass than the size of the pass 
 
Asummer below is the ticket 

Flight Name										Flight Number		| Flight name font .title2 (accent color font),Flight number font .title2 (White color font)
												Flight Date 		| Flight date will be font .callout (accent color font)
																	|
																	|
//Flight Orgin 									//Flight destination| Not in the actual pass 
Airpot name 						 			Airport name		| Airport names be in font .title2 (accent color font)
Airport Code	 		Airplane icon			Airport Code		| Airport codes be in font .largetitle  (White color font)
Time to depart 									Time to land 		| Local timmings and in font .callout (accent color font)
) - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - (	| This better shows the tearbale part 
Passenger name 														| Name be in font .title2 (White color font)
																	|
	Gate 			Boards	 		Group			Seat			| These are the lables not the actual value this font .callout (accent color fonts)
	Gate 			Boards	 		Group			Seat			| These are the values this font .title2 (White color font)
																	| 
																	|
																	|	 
																	|
							QR Code								    | Leaving game to hold for qr code ig padding would work 
																	| Size of qr code be calculated with the witdh of the pass so .padding 
																	| should work here too 	
																	|
																	|
																
Screen
└─ VStack				← This is for the pass
   ├─ HStack			← This is for flight name and (Flight number and Flight date)
   │  ├─ VStack 		← This is Flight number and Flight date as the as stacked vertically
   ├─ HStack			← This is for Airport name 	  
   ├─ HStack			← This is for Airport code | Airplance icon | Airport code
   ├─ HStack			← This is for Flight times
   | // The tearable line goes here
   ├─ HStack			   	
   │  ├─ Text		← This is for Passenger name   
   ├─ HStack			
   │  ├─ VStack 		← This is Gate and Gate No. as the as stacked vertically
   │  ├─ VStack 		← This is Boards and Boarding time as the as stacked vertically      
   │  ├─ VStack 		← This is Group and Group name as the as stacked vertically   
   │  ├─ VStack 		← This is Seate and Seat No. as the as stacked vertically
   │ // I don't know about Qr code 
