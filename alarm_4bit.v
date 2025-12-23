module alarm_4bit (
    input wire D0, D1, D2, D3,
    output wire Alarm
);
    assign Alarm = D0 & D1 & D2 & D3;
endmodule
