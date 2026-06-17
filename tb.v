

module tb();

    // Clock and reset
    reg clk;
    reg rst;

    // Instantiate DUT
    top uut (
        .clk(clk),
        .rst(rst)
    );

    // ---------------- CLOCK GENERATION ----------------
    // 10 ns clock period
    always #5 clk = ~clk;

    // ---------------- TEST SEQUENCE ----------------
    initial begin
        // Initialize
        clk = 0;
        rst = 1;          // ASSERT reset

        // Hold reset for multiple clock cycles
        #30;
        rst = 0;          // DEASSERT reset

        // Let CPU run
        #500;

        $finish;
    end

    // ---------------- DEBUG MONITOR ----------------
    initial begin
        $display("Time\tPC\t\tInstruction\t\tALU_RESULT\tMEM[4]");
        $monitor("%0t\t%h\t%h\t%h\t%h",
                 $time,
                 uut.PC_TOP,
                 uut.IN,
                 uut.ALU_RESULT,
                 uut.MEM.mem[4]);
    end

endmodule
