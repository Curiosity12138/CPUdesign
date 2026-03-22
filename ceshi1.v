module FSM1(
    input clk,
    input w,
    output reg z);
  parameter A =3'b000 ;
  parameter B =3'b001 ;
  parameter C =3'b010 ;
  parameter D =3'b011 ;
  parameter E =3'b100 ;
  parameter F =3'b101 ;
  reg[2:0] present_state,next_state;


  //
  //

  always@(*)
  begin
    case(present_state)
      A:
        next_state=w?B:A;
      B:
        next_state=w?C:D;
      C:
        next_state=w?E:D;
      D:
        next_state=w?B:F;
      E:
        next_state=w?E:D;
      F:
        next_state=w?B:A;
    endcase
    z=(present_state==F||present_state==E)&&w;
  end
endmodule
