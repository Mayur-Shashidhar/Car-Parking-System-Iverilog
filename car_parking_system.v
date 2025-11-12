// car_parking_system.v
module car_parking_system(
    input wire [7:0] sensors,
    output reg [7:0] parking_spaces
);

// Initialize parking_spaces
initial begin
    parking_spaces = 8'b00000000;
end

genvar i;
generate
    for (i = 0; i < 8; i = i + 1) begin : parking_space_logic
        always @(*) begin  // Changed to always @(*) for combinational logic
            // Sensor logic to update parking space status
            parking_spaces[i] = sensors[i];  // Direct assignment instead of toggle
        end
    end
endgenerate
endmodule