# Piano-Tiles
**Rhythm Tappers Prototype** <br />
**Group Members:** Ilana Livshits and Salvina Sharipova <br />
**Project Description:** <br />
Our final project follows a Piano Tiles configuration of a 4 column board of black tiles that appear to move down the screen. There will be several gameplay screens. One would instruct the player on user input in reference to their username, desired speed (which would accelerate as the game progresses), and preferred song (one or two songs would be synchronized with music, although a random assortment of tiles would initially be tested). The second screen, which would be switched to after the user presses “S” or “s”, would include the board of tiles moving down the screen. Tiles would be considered “pressed” and turn from black to gray when the user clicks on them. If a black tile touches the bottom edge of the screen, the player loses the game and their score (number of tiles they successfully clicked) is displayed. The player is able to restart the game by pressing R. <br />
**Google Doc Link:** https://docs.google.com/document/d/1o1WsvxEHCIpvZJGfSCGDGlKxMInxzNGv7OTZE-fzk_U/edit?usp=sharing

# Instructions
Our Piano Tiles project should be compiled and run in Processing.

# Daily Log
**5/23/22** <br />
*Ilana Livshits:* I was absent with Covid and couldn't work on the lab. <br />
*Salvina Sharipova:* I watched videos and followed documentation on how to branch and merge. <br />
**5/24/22** <br />
*Ilana Livshits:* I created a new branch (name: ilanaBlocks1) and worked on a Blocks class separately, creating constructors that took in tile length, width, and x and y coordinates. Although I disregarded this idea by the end of the coding session, I made set and get methods that would allows the attributes of the tiles to be accessed and moved down the screen. The idea was ultimately not used due to issues with storing the y coordinates of the tiles so that the tiles move down the screen. <br />
*Salvina Sharipova:* I branched (name: salvinaLoadingScreen1) and worked on LoadingScreen seperately. Created an intro screen with a difficulty setter that the user can input using mouseClicked() and instructions. Did not go into aesthetics. Attempted to add username with an input from user that would be stored throughout the game but it is proven to be very difficult so I scrapped that idea for now. <br />
**5/25/22** <br />
*Ilana Livshits:* I continued working on the branch made yesterday (name: ilanaBlocks1) and merged with the main at the end of the session. I created three arraylists to keep track of the tiles created, tiles presses, and the y coordinates of the tiles. This was done to replace the Blocks class. At present, the display is randomized black tiles moving down the screen, but all other user interaction does not yet work. <br />
*Salvina Sharipova:* I continued with yesterday's branch (name: salvinaLoadingScreen1). I continued with my attempt to find a way to store an input username, however it seems that it requires a usage of the library and dense coding in java, so I am dropping that idea for now. Instead, I worked on merging and finishing the interactive difficulty setter. I had a merge conflict, but was able to pull Ilana's work that she merged into the main. <br />
**5/26/22** <br />
*Ilana Livshits:* Each tile now plays a sound when pressed. However, there are issues with randomizing the piano notes played. <br />
*Salvina Sharipova:* Finished the aesthetics of the intro screen such as properly positioning the text and making it more game-like. <br />
**5/27/22** <br />
*Ilana Livshits:* A score counter has been implemented. Dealt with merge conflicts. <br /> 
*Salvina Sharipova:* Looked at merges. Didn't do much, got COVID and was feeling ill looking at a screen. <br />
**5/28/22** <br />
Relaxing Saturday off. <br />
**5/29/22** <br />
Relaxing Sunday off. <br />
**5/29/22** <br />
*Ilana Livshits:* Two Piano Tiles modes have been implemented: a Zen and Aracde mode. The Zen mode allows the user to click as many tiles as possible in 30 seconds, while in Arcade mode, the user continues playing until they miss a tile or press on a white tile. The Zen mode implements a timing sistem using millis(). Likewise, the piano notes for mouseClicked have been randomized. <br /> 
*Salvina Sharipova:* Added two very simple end screens for when the player beats the game (aka reaches a certain number of tiles) and for when the player loses (by tapping on a white tile, missing a tile, or skipping a tile). <br />
**5/30/22** <br />
*Ilana Livshits:* Obligatory Memorial Day weekend break. <br /> 
*Salvina Sharipova:* Attempted to make a background that has a moving shape to make it more interesting, but the intro text started rotating instead. Didn't know ow to fix that, so I abandoned that idea. Instead, I designed a nice moving background of shooting stars on top of a rainbow color scheme using another separate class called Stars{}. I added the same background (a bit different for each) for each end screen. I linked each end screen to the appropriate situation (where the winning end screen displays when the player reached a certain count whilst the losing end screen displays otherwise). We merged into the final branch and finished the demo aspect of the project which is due for tomorrow. <br />
**5/31/22** <br />
*Ilana Livshits:* I wrote the script for the demo, including the part of the game that is working and necessary features we need improvement. I attempted to code a new mode (only tapping a tile moves the screen), but did not commit the idea due to frustration. <br /> 
*Salvina Sharipova:*  <br />
**6/1/22** <br />
*Ilana Livshits:* I fixed the zen mode that did not properly take input after merging. Likewise, I altered the winning screen to not immediately end the game when 20 tiles are reached, but instead to display a winning screen after the player loses with a score of more than 20. <br /> 
*Salvina Sharipova:* <br />
**6/2/22** <br />
*Ilana Livshits:* <br /> 
*Salvina Sharipova:* Added to the loading screen. I got inspired by an online version of piano tiles, so I imitated the aesthetics they used. Planning on adding buttons and more 'pretty' stuff. <br />
**6/3/22** <br />
*Ilana Livshits:* <br /> 
*Salvina Sharipova:* Struggled through varous ways in making it so that two blocks back to back will both turn gray after one appears. Mostly did not work. Created a separate method to check for this rather than interfering with the drawblackTiles() method. It does something... but clearly not what it is intended to do. At least it doesn't crash the game like the other ways I tried to implement. <br />
**6/4/22** <br />
Relaxing Saturday off. <br />
**6/5/22** <br />
Relaxing Sunday off.
**6/6/22** <br />
*Ilana Livshits:* <br /> 
*Salvina Sharipova:* Merged all of our branches. New branch for more functionality, where two blocks back to back should both turn gray. Made the blocks appear a few seconds after the player loads in the game. <br />

