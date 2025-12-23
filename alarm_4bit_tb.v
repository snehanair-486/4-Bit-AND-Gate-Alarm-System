module test_alarm_4bit;
reg D0, D1, D2, D3;
wire Alarm;
integer i; 

alarm_4bit uut (.D0(D0), .D1(D1), .D2(D2), .D3(D3), .Alarm(Alarm));
initial begin
$monitor("D0=%b, D1=%b, D2=%b, D3=%b -> Alarm=%b", D0, D1, D2, D3,
Alarm);

for (i = 0; i < 16; i = i + 1) begin
{D0, D1, D2, D3} = i; // Assign binary values (0000 to 1111)
#10; 
end
end
endmodule
