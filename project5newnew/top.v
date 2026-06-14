`timescale 1ns / 1ps

module top(
    input clk,
    input [7:0] sw,
    output [7:0] led,
    output Y
);

    // Selector from counter
    wire [2:0] sel;

    // Mux output
    wire mux_out;

    //---------------------------------------
    // Counter (slow selector)
    //---------------------------------------
    counter u_counter(
        .clk(clk),
        .B(sel)
    );

    //---------------------------------------
    // 8:1 Mux
    //---------------------------------------
    mux u_mux(
        .I(sw),
        .S(sel),
        .Y(mux_out)
    );

    // Output mux result to red LED
    assign Y = mux_out;

    //---------------------------------------
    // Demux (combinational, as in your code)
    //---------------------------------------
    demux u_demux(
        .EN(mux_out),
        .I(sel),
        .led(led)
    );

endmodule
