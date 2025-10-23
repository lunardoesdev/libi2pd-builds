package("i2pdwrap")
    add_deps("cmake")
    set_sourcedir(path.join(os.scriptdir(), "cmake"))
    on_install(function (package)
        local configs = {}
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:debug() and "Debug" or "Release"))
        import("package.tools.cmake").install(package, configs)
        os.rm(package:installdir("**/*|lib/*i2pdwrap*|include/i2pdwrap.h"))
    end)
package_end()

add_requires("i2pdwrap")

target("feel-free-to-remove-me")
    -- set_kind("shared")
    add_files("phony.c")
    add_packages("i2pdwrap")

includes("@builtin/xpack")

xpack("i2pdwrap")
    set_formats("targz")
    add_targets("feel-free-to-remove-me")
    set_basename("i2pdwrap-" .. "$(plat)" .. "-" .. "$(arch)")


