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
IncludeDir["glad"] = "%{wks.location}/Dependencies/glad/include"

EngineMacroPrefix = "GE"
EngineName = "GameEngine"

group "Dependencies"
    include "Dependencies/GLFW"
    include "Dependencies/glad"

group ""

include (EngineName)
include "Sandbox"