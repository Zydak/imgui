project "imgui"
    kind "StaticLib"
    language "C++"
    location "build"

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    includedirs
    {
        "."
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

  filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

  filter "configurations:Dist"
		runtime "Release"
		optimize "speed"