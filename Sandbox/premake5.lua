project "Sandbox"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    targetdir("../bin/" .. outputdir .. "/%{prj.name}")
    objdir("../bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.cpp",
        "src/**.h"
    }

    includedirs {
        "%{wks.location}/GameEngine/src"
    }

    links {
        "GameEngine"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
            "SB_WINDOWS"
        }

    filter {"system:windows", "configurations:Debug"}
        defines { "SB_DEBUG" }
        buildoptions "/MTd"
        runtime "Debug"
        symbols "on"

    filter {"system:windows", "configurations:Release"}
        defines { "SB_RELEASE" }
        buildoptions "/MT"
        runtime "Release"
        optimize "on"