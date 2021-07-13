workspace "GameEngine"
    architecture "x64"

    configurations {
        "Debug",
        "Release"
    }

    startproject "Sandbox"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/Dependencies/GLFW/include"

group "Dependencies"
    include "Dependencies/GLFW"

group ""

include "GameEngine"
include "Sandbox"