# Piano-Tiles
**Rhythm Tappers Prototype** <br />
**Group Members:** Ilana Livshits and Salvina Sharipova <br />
**Project Description:** <br />
Our final project follows a Piano Tiles configuration of a 4 column board of black tiles that appear to move down the screen. There will be several gameplay screens. One would instruct the player on user input in reference to their username, desired speed (which would accelerate as the game progresses), and preferred song (one or two songs would be synchronized with music, although a random assortment of tiles would initially be tested). The second screen, which would be switched to after the user presses “S” or “s”, would include the board of tiles moving down the screen. Tiles would be considered “pressed” and turn from black to gray when the user clicks on them. If a black tile touches the bottom edge of the screen, the player loses the game and their score (number of tiles they successfully clicked) is displayed. The player is able to restart the game by pressing R. <br />
**Google Doc Link:** https://docs.google.com/document/d/1o1WsvxEHCIpvZJGfSCGDGlKxMInxzNGv7OTZE-fzk_U/edit?usp=sharing

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
*Ilana Livshits:* <br /> Each tile now plays a sound when pressed. However, there are issues with randomizing the piano notes played.
*Salvina Sharipova:* <br />
**5/27/22** <br />
*Ilana Livshits:* <br /> A score counter has been implemented.
*Salvina Sharipova:* <br />
