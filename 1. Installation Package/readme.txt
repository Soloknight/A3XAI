Copy the contents of this folder inside your server's @ExileServer folder. 
If prompted to merge the Addons folder, click "Yes". Clicking "Yes" will not cause any Exile files to be modified in any way.

For Vilayer servers, it will not be possible to put the A3XAI.pbo inside @ExileServer, so follow the below instructions.

Edit your server parameters to -serverMod=@ExileServer;@A3XAI;
Create an @A3XAI folder in your server's Arma 3 directory
Inside @A3XAI folder, create an Addons folder
Follow the standard A3XAI install instructions (top of this file), except wherever it mentions @ExileServer, replace that with @A3XAI
In your MPMissions\Exile.<mapname>\init.sqf (create one if needed), at the very top of the file add: A3XAI_ServerDir = "@A3XAI";
Repack your mission file if needed, start your server.
