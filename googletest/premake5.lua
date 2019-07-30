project "GoogleTest"
  architecture "x64"
  kind "StaticLib"
  language "C++"
  staticruntime "on"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  includedirs{
    "include/",
    "."
  }

  files{
    "src/*"
  }

  filter "system:windows"
  systemversion "latest"

  defines{
      "EE_PLATFORM_WINDOWS"
  }

filter "configurations:Debug"
  defines "EE_DEBUG"
  runtime "Debug"
  symbols "on"

filter "configurations:Release"
  defines "EE_Release"
  runtime "Release"
  optimize "on"

filter "configurations:Dist"
  defines "EE_DIST"
  runtime "Release"
  optimize "on"