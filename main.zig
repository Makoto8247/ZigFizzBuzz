const std = @import("std");
const print = std.debug.print;


pub fn main() !void {
    var prng = std.rand.DefaultPrng.init(blk: {
        var seed: u32 = undefined;
        try std.os.getrandom(std.mem.asBytes(&seed));
        break :blk seed;
    });
    const rand = prng.random();
    const ni = rand.intRangeAtMost(u32, 0, 200);
    print("{}\n", .{&ni});

    print("{}\n",.{ni});
    var i: u32 = 0;
    while(i <= ni){
        if(i % 15 == 0) {
            print("FizzBuzz\n", .{});
        } else if(i % 3 == 0) {
            print("Fizz\n", .{});
        } else if(i % 5 == 0) {
            print("Buzz\n", .{});
        } else {
            print("{}\n", .{i});
        }
        i += 1;
    }
    print("{}\n", .{&i});
}