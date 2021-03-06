library ieee;
use ieee.std_logic_1164.all;
library ahir;
use ahir.Types.all;
use ahir.BaseComponents.all;
use ahir.Subprograms.all;
use ahir.Utilities.all;

entity ApFloat_S_2_C is
  generic (const_operand : ApFloat; colouring : NaturalArray);
  port (x          : in  ApFloatArray;
        clk, reset : in  std_logic;
        reqR, reqC : in  BooleanArray;
        ackR, ackC : out BooleanArray;
        z          : out ApFloatArray);
end entity;

architecture Base of ApFloat_S_2_C is
  signal xT : StdLogicArray2D(x'length(1) -1 downto 0, x'high(2) downto x'low(2));
  signal zT : StdLogicArray2D(z'length(1) -1 downto 0, z'high(2) downto z'low(2));
  constant suppr_imm_ack : BooleanArray(reqR'length-1 downto 0) := (others => false);  
begin  -- Base

  assert z'length(1) = x'length(1) and x'length(2) = const_operand'length and z'length(2) = x'length(2)
    report "length mismatch in ApFloat_S_2_C" severity error;
  
  xT <= To_StdLogicArray2D(x);
  z  <= To_ApFloatArray(zT);

  op : OperatorShared  -- remaining generics will be set through a configuration
    generic map (operator_id   => "Null",
                 const_operand => To_ISLV(const_operand),
                 use_constant  => true,
                 colouring     => colouring,
                 suppress_immediate_ack => suppr_imm_ack)
    port map (
      reqL  => reqR,
      ackL  => ackR,
      reqR  => reqC,
      ackR  => ackC,
      dataL => xT,
      dataR => zT,
      clk   => clk,
      reset => reset);
end Base;
