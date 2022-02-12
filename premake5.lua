project "GLFW"
    kind "Staticlib"
    language "C"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-inter/" .. outputdir .. "/%{prj.name}")

    
    -- Currently only supports windows :P
    filter "system:windows"
        buildoptions { "-std=c11", "-lgdi32"}
        systemversion "latest"
        staticruntime "On"

        files
        {
            "src/window.c",
            "src/context.c",
            "src/monitor.c",
            "src/init.c",
            "src/input.c",
            "src/platform.c",
            "src/vulkan.c",
            "src/null_init.c",
            "src/null_joystick.c",
            "src/null_monitor.c",
            "src/null_window.c",
            "src/egl_context.c",
            "src/osmesa_context.c",
            "src/wgl_context.c",
            "src/win32_init.c",
            "src/win32_joystick.c",
            "src/win32_module.c",
            "src/win32_monitor.c",
            "src/win32_thread.c",
            "src/win32_time.c",
            "src/win32_window.c"
        }


        defines
        {
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
        }
    
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"