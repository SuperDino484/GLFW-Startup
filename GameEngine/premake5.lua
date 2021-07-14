project (EngineName)
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"

    targetdir("../bin/" .. outputdir .. "/%{prj.name}")
    objdir("../bin-int/" .. outputdir .. "/%{prj.name}")

    pchsource("src/enginepch.cpp")
    pchheader("enginepch.h")

    files {
        "src/**.cpp",
        "src/**.h"
    }

    includedirs {
        "src",
        "%{IncludeDir.GLFW}",
        "%{IncludeDir.glad}"
    }

    links {
        "GLFW",
        "glad",
        "opengl32.lib"
    }

    filter "system:windows"
        systemversion "latest"
        defines {
            (EngineMacroPrefix .. "_WINDOWS")
        }

    filter {"system:windows", "configurations:Debug"}
        defines { (EngineMacroPrefix .. "_DEBUG") }
        buildoptions "/MTd"
        runtime "Debug"
        symbols "on"

    filter {"system:windows", "configurations:Release"}
        defines { (EngineMacroPrefix .. "_RELEASE") }
        buildoptions "/MT"
        runtime "Release"
        optimize "on"