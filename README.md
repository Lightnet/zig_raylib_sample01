# zig_raylib_sample01

# License: MIT

# Lib:
 - raylib 5.0 master f62202198e35161a9fe394a14bbd1a7c655107ad
 - raygui 4.0 master 12804826d01bfb636e36f816bda19eaa23b4ace7
 - zig 0.12.0

# Information:
  Simple raylib and raygui test build. After doing search engine.

  Note use zig dependencies download to run application.

  By using the dependencies to handle build.zig script for easy compile and run application.

  It took a while to config and understand how build script works a bit. Still need more understand some area but zig will change api but the format almost the same for setup compile.

# Zig:
```
zig build
```
  If nothing happen, it pass build.

```
zig build run
```

Window, text and gui checkbox test.


# raylib:
 * zig fetch --save https://github.com/raysan5/raylib/archive/f62202198e35161a9fe394a14bbd1a7c655107ad.tar.gz


# Key Area Points:
 - https://github.com/ziglang/zig/issues/17302#issuecomment-1737417445
 - https://ktj.st/posts/using-a-single-header-c-library-in-zig/


# Test refs:
- https://github.com/lhk/raylib_zig_build_setup
- https://github.com/Angluca/raylib-zig-template
- https://ziggit.dev/t/zig-0-12-build-with-raylib-dependency-has-path-error/4058/6
- https://www.reddit.com/r/Zig/comments/16r0fj6/ysk_you_can_use_native_raylib_directly_in_zig_for/
- https://zig.news/perky/hot-reloading-with-raylib-4bf9
- https://github.com/lhk/raylib_zig_build_setup/blob/main/build.zig
- https://github.com/ziglang/zig/issues/19423
- https://github.com/ziglang/zig/issues/17302#issuecomment-1737417445
- 
- 
- 
- 