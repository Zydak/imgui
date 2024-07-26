project "imgui"
    architecture "x86_64"
    kind "StaticLib"
    language "C++"
    location "build"
	staticruntime "on"

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    defines
    {
        "D_CRT_SECURE_NO_WARNINGS"
    }

    includedirs
    {
        ".",
        "../glfw/include",
        "%{wks.location}/Vulture/lib/vulkanLib/Include/",
    }

    files
    {
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "backends/*.cpp"
    }
    
    buildoptions { "/MP" }

  filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

  filter "configurations:Dist"
		runtime "Release"
		optimize "speed"
