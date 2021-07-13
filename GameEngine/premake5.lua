project "GameEngine"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"

    targetdir("../bin/" .. outputdir .. "/%{prj.name}")
    objdir("../bin-int/" .. outputdir .. "/%{prj.name}")

    pchheader "gepch.h"
    pchsource "src/gepch.cpp"

    files {
        "src/**.cpp",
        "src/**.h"
    }

    includedirs {
        "src",
        "%{IncludeDir.GLFW}"
    }

    links {
        "GLFW",
        "opengl32.lib"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
            "GE_WINDOWS"
        }

    filter {"system:windows", "configurations:Debug"}
        defines { "GE_DEBUG" }
        buildoptions "/MTd"
        runtime "Debug"
        symbols "on"

    filter {"system:windows", "configurations:Release"}
        defines { "GE_RELEASE" }
        buildoptions "/MT"
        runtime "Release"
        optimize "on"