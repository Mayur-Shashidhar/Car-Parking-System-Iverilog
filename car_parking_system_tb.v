// car_parking_system_tb.v
`timescale 1ns/1ns  // Set the timescale for simulation
module tb_car_parking_system;
  // Inputs
  reg sensor1;
  reg sensor2;
  reg sensor3;
  reg sensor4;
  reg sensor5;
  reg sensor6;
  reg sensor7;
  reg sensor8;
  // Outputs
  wire [7:0] parking_spaces;
  
  integer i;  // Loop variable for displaying free slots
  
  // Instantiate the module under test
  car_parking_system uut (
    .sensors({sensor8, sensor7, sensor6, sensor5, sensor4, sensor3, sensor2, sensor1}),  // Changed order
    .parking_spaces(parking_spaces)
  );
  
  // File for VCD (Value Change Dump) output
  initial begin
    $dumpfile("car_parking_system_tb.vcd");
    $dumpvars(0, tb_car_parking_system);
  end
  
  // Initial block for stimulus generation
  initial begin
    // Test case 1: No cars, all spaces should be vacant
    sensor1 = 0;
    sensor2 = 0;
    sensor3 = 0;
    sensor4 = 0;
    sensor5 = 0;
    sensor6 = 0;
    sensor7 = 0;
    sensor8 = 0;
    #10;  // Wait for 10 time units
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin  // Changed loop direction
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);  // Changed slot numbering
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 2: Car in space 1, other spaces vacant
    sensor1 = 1;
    sensor2 = 0;
    sensor3 = 0;
    sensor4 = 0;
    sensor5 = 0;
    sensor6 = 0;
    sensor7 = 0;
    sensor8 = 0;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 3: Car in space 2, other spaces vacant
    sensor1 = 0;
    sensor2 = 1;
    sensor3 = 0;
    sensor4 = 0;
    sensor5 = 0;
    sensor6 = 0;
    sensor7 = 0;
    sensor8 = 0;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 4: Cars in spaces 1 and 2, other spaces vacant
    sensor1 = 1;
    sensor2 = 1;
    sensor3 = 0;
    sensor4 = 0;
    sensor5 = 0;
    sensor6 = 0;
    sensor7 = 0;
    sensor8 = 0;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 5: Cars in spaces 7 and 8, other spaces vacant
    sensor1 = 0;
    sensor2 = 0;
    sensor3 = 0;
    sensor4 = 0;
    sensor5 = 0;
    sensor6 = 0;
    sensor7 = 1;
    sensor8 = 1;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 6: Cars in spaces 1,3, 5 and 7, other spaces vacant
    sensor1 = 1;
    sensor2 = 0;
    sensor3 = 1;
    sensor4 = 0;
    sensor5 = 1;
    sensor6 = 0;
    sensor7 = 1;
    sensor8 = 0;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 7: Cars in spaces 2, 4, 6 and 8, other spaces vacant
    sensor1 = 0;
    sensor2 = 1;
    sensor3 = 0;
    sensor4 = 1;
    sensor5 = 0;
    sensor6 = 1;
    sensor7 = 0;
    sensor8 = 1;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    // Test case 8: Cars in all spaces
    sensor1 = 1;
    sensor2 = 1;
    sensor3 = 1;
    sensor4 = 1;
    sensor5 = 1;
    sensor6 = 1;
    sensor7 = 1;
    sensor8 = 1;
    #10;
    $display("\n--- Parking Status at time %0t ---", $time);
    $display("Occupied Spaces (binary): %b", parking_spaces);
    $display("Free Parking Slots:");
    for (i = 7; i >= 0; i = i - 1) begin
      if (parking_spaces[i] == 0) begin
        $display("  Slot %0d is FREE", 8 - i);
      end
    end
    $display("-----------------------------------\n");
    
    $stop;  // Stop simulation
  end
endmodule