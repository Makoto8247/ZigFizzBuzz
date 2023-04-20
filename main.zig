const std = @import("std");
const print = std.debug.print;


pub fn main() void {
    const ni = 100;
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