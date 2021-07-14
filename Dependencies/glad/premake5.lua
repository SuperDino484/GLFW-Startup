project "glad"
    kind "StaticLib"
    language "C"

    targetdir("../bin/" .. outputdir .. "/%{prj.name}")
    objdir("../bin-int/" .. outputdir .. "/%{prj.name}")

    files {
		"include/glad/glad.h",
        "include/KHR/khrplatform.h",
        "src/glad.c"
	}

    includedirs {
        "include"
    }

    filter "system:windows"
        systemversion "latest"

    filter {"system:windows", "configurations:Debug"}
        buildoptions "/MTd"

    filter {"system:windows", "configurations:Release"}
        buildoptions "/MT"