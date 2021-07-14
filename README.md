# GLFW-Startup
A project with premake5 for setting up everything to use glfw in new projects fast

Use the command ```git clone --recurse-submodules -j8 https://github.com/SuperDino484/GLFW-Startup``` to clone this, then run the .bat file to setup everything

# For changing the name
Open the premake5.lua in the root directory of the project (same folder as the bat file) and rename the ```EngineName | EngineMacroPrefix``` to whatever you want. After that rename the folder ```GameEngine``` to whatever you name the ```EngineName```. Run the bat file and the name of the engine will have changed. Now go into the solution and rename the pch files to the names you want. Go into the <name>pch.cpp and update the include. Now you are ready to use the project. Restart visual studio, re-run the bat file. Open visual studio, do a clean of the solution, re-run the bat file. Then build and it should work if giving errors
