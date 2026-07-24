`timescale 1ns / 1ps
module trafic_light_control(

  
    input clk,          
    input rst,          
    output reg red,
    output reg yellow,
    output reg green
);

reg [26:0] count;
reg clk_1hz;

always @(posedge clk)
begin
    if(rst)
    begin
        count <= 0;
        clk_1hz <= 0;
    end
    else
    begin
        if(count == 49999999)
        begin
            count <= 0;
            clk_1hz <= ~clk_1hz;
        end
        else
            count <= count + 1;
    end
end

reg [1:0] state;

parameter GREEN  = 2'b00;
parameter YELLOW = 2'b01;
parameter RED    = 2'b10;

always @(posedge clk_1hz)
begin
    if(rst)
        state <= GREEN;
    else
    begin
        case(state)
            GREEN  : state <= YELLOW;
            YELLOW : state <= RED;
            RED    : state <= GREEN;
            default: state <= GREEN;
        endcase
    end
end
always @(*)
begin
    red    = 1'b0;
    yellow = 1'b0;
    green  = 1'b0;

    case(state)
        GREEN:
        begin
            green = 1'b1;
        end

        YELLOW:
        begin
            yellow = 1'b1;
        end

        RED:
        begin
            red = 1'b1;
        end

        default:
        begin
            red = 1'b0;
            yellow = 1'b0;
            green = 1'b0;
        end
    endcase
end

endmodule
