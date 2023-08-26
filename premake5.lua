project "imgui"
    architecture "x86_64"
    kind "StaticLib"
    language "C++"
    location "build"

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    includedirs
    {
        ".",
        "../glfw/include",
        VULKAN_SDK_PATH .. "/Include",
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
