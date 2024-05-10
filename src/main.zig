// https://www.reddit.com/r/Zig/comments/16r0fj6/ysk_you_can_use_native_raylib_directly_in_zig_for/
// https://ziglang.org/learn/samples/
// https://github.com/ziglang/zig/issues/17302#issuecomment-1737417445

const std = @import("std");
const r = @cImport({
    @cInclude("raylib.h");
    @cInclude("raygui.h");
});
//const rgui = @cImport(@cInclude("raygui.h"));

pub fn main() !void {
    r.InitWindow(960, 540, "My Window Name");
    r.SetTargetFPS(144);
    defer r.CloseWindow();

    r.SetTargetFPS(60);
    //const rec = rgui.Rectangle{ .x = 600, .y = 40, .width = 120, .height = 20 };
    var checked = false;
    //var value: f32 = 0;

    while (!r.WindowShouldClose()) {
        r.BeginDrawing();
        r.ClearBackground(r.BLACK);

        //rg.GuiButton(_, "HELLO");
        _ = r.GuiCheckBox(r.Rectangle{ .x = 20, .y = 20, .height = 200, .width = 100 }, "FORCE CHECK!", &checked);
        //_ = rgui.GuiButton(rgui.Rectangle{ .x = 20, .y = 20, .height = 200, .width = 100 }, "FORCE CHECK!");
        //_ = rgui.GuiSliderBar(rec, "StartAngle", null, &value, -450, 450);

        r.DrawText("Hello, World!", 190, 200, 20, r.LIGHTGRAY);
        r.EndDrawing();
    }
}

//const raylib = @import("raylib");

// pub fn main() !void {
//     raylib.SetConfigFlags(raylib.ConfigFlags{ .FLAG_WINDOW_RESIZABLE = true });
//     raylib.InitWindow(800, 800, "hello world!");
//     raylib.SetTargetFPS(60);

//     defer raylib.CloseWindow();

//     while (!raylib.WindowShouldClose()) {
//         raylib.BeginDrawing();
//         defer raylib.EndDrawing();

//         raylib.ClearBackground(raylib.BLACK);
//         raylib.DrawFPS(10, 10);

//         raylib.DrawText("hello world!", 100, 100, 20, raylib.YELLOW);
//     }
// }

// pub fn main() !void {
//     // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
//     std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

//     // stdout is for the actual output of your application, for example if you
//     // are implementing gzip, then only the compressed bytes should be sent to
//     // stdout, not any debugging messages.
//     const stdout_file = std.io.getStdOut().writer();
//     var bw = std.io.bufferedWriter(stdout_file);
//     const stdout = bw.writer();

//     try stdout.print("Run `zig build test` to run the tests.\n", .{});

//     try bw.flush(); // don't forget to flush!
// }

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
