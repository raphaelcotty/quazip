import qbs 1.0

StaticLibrary {
    name: "quazip5"
    Depends { name: "cpp" }
    cpp.cxxLanguageVersion:"c++14"
    Depends { name: "Qt"; submodules: ["core"] }
    cpp.defines: ["QUAZIP_STATIC"]

    files: [
        "quazip/*.h",
        "quazip/*.c",
        "quazip/*.cpp"
    ]
    Export {
        Depends { name: "cpp" }
        cpp.cxxLanguageVersion:"c++14"
        Depends { name: "Qt"; submodules: ["core"] }
        cpp.includePaths: "quazip"
        cpp.dynamicLibraries: ["z"]
    }
}
