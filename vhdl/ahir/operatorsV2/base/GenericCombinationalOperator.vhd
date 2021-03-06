library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ahir;
use ahir.Types.all;
use ahir.Subprograms.all;
use ahir.OperatorPackage.all;
use ahir.FloatOperatorPackage.all;

entity GenericCombinationalOperator is
  generic
    (
      operator_id   : string := "ApIntAdd";          -- operator id
      input1_is_int : Boolean := true; -- false means float
      input1_characteristic_width : integer := 0; -- characteristic width if input1 is float
      input1_mantissa_width       : integer := 0; -- mantissa width if input1 is float
      iwidth_1      : integer := 4;    -- width of input1
      input2_is_int : Boolean := true; -- false means float
      input2_characteristic_width : integer := 0; -- characteristic width if input2 is float
      input2_mantissa_width       : integer := 0; -- mantissa width if input2 is float
      iwidth_2      : integer := 0;    -- width of input2
      num_inputs    : integer := 1;    -- can be 1 or 2.
      output_is_int : Boolean := true;  -- false means that the output is a float
      output_characteristic_width : integer := 0;
      output_mantissa_width       : integer := 0;
      owidth        : integer := 4;          -- width of output.
      constant_operand : std_logic_vector := "0001"; -- constant operand.. (it is always the second operand)
      constant_width: integer := 4;
      use_constant  : boolean := true
      );
  port (
    data_in       : in  std_logic_vector(iwidth_1 + iwidth_2 - 1 downto 0);
    result      : out std_logic_vector(owidth-1 downto 0)
    );
end GenericCombinationalOperator;


architecture Vanilla of GenericCombinationalOperator is
  constant iwidth : integer := iwidth_1 + iwidth_2;
begin  -- Behave

  assert((num_inputs = 1) or (num_inputs = 2)) report "either 1 or 2 inputs" severity failure;

  TwoOperand : if num_inputs = 2 generate
    -- int x int -> int
    TwoOpIntIntInt: if input1_is_int and input2_is_int and output_is_int generate
      process(data_in)
        variable   result_var : std_logic_vector(owidth-1 downto 0);
        variable op1: std_logic_vector(iwidth_1-1 downto 0);
        variable op2: std_logic_vector(iwidth_2-1 downto 0);
      begin
        op1 := data_in(iwidth-1 downto iwidth_2);
        op2 := data_in(iwidth_2-1 downto 0);
        result_var := (others => '0');
        TwoInputOperation(operator_id, op1, op2,result_var);
        result <= result_var;
      end process;
    end generate TwoOpIntIntInt;

    -- float x float -> float
    TwoOpFloatFloatFloat: if (not input1_is_int) and (not input2_is_int) and (not output_is_int) generate
      process(data_in)
        variable op1: IStdLogicVector(input1_characteristic_width downto (- input1_mantissa_width));
        variable op2: IStdLogicVector(input2_characteristic_width downto (- input2_mantissa_width));
        variable   result_var: IStdLogicVector(output_characteristic_width downto (-output_mantissa_width));
      begin
        op1 := To_ISLV(data_in(iwidth-1 downto iwidth_2));
        op2 := To_ISLV(data_in(iwidth_2-1 downto 0));
        result_var := (others => '0');
        TwoInputFloatOperation(operator_id, op1,op2,result_var);
        result <= To_SLV(result_var);
      end process;
    end generate TwoOpFloatFloatFloat;

    -- float x float -> int
    TwoOpFloatFloatInt: if (not input1_is_int) and (not input2_is_int) and output_is_int generate
      process(data_in)
        variable op1: IStdLogicVector(input1_characteristic_width downto (- input1_mantissa_width));
        variable op2: IStdLogicVector(input2_characteristic_width downto (- input2_mantissa_width));
        variable   result_var: IStdLogicVector(owidth-1 downto 0);
      begin
        op1 := To_ISLV(data_in(iwidth-1 downto iwidth_2));
        op2 := To_ISLV(data_in(iwidth_2-1 downto 0));
        result_var := (others => '0');
        TwoInputFloatOperation(operator_id, op1,op2,result_var);
        result <= To_SLV(result_var);
      end process;
    end generate TwoOpFloatFloatInt;

    -- float x int -> * and int x float -> * are not permitted.
    assert(input1_is_int = input2_is_int) report "both operands of two input operators should be either ints or floats"
      severity failure;

    -- int x int -> float is not permitted.
    assert((not input1_is_int) or output_is_int) report "if the inputs to a two-input operation are ints, the output cannot be a float!" severity failure;

  end generate TwoOperand;


  SingleOperandNoConstant : if num_inputs = 1 and not use_constant generate

    SingleOperandNoConstantIntInt: if input1_is_int and output_is_int generate
      process(data_in)
        variable   result_var    : std_logic_vector(owidth-1 downto 0);
      begin
        result_var := (others => '0');
        SingleInputOperation(operator_id, data_in, result_var);
        result <= result_var;
      end process;
    end generate SingleOperandNoConstantIntInt;
    
    SingleOperandNoConstantFloatFloat: if (not input1_is_int) and (not output_is_int) generate
      process(data_in)
        variable op1: IStdLogicVector(input1_characteristic_width downto (- input1_mantissa_width));
        variable result_var: IStdLogicVector(output_characteristic_width downto (- output_mantissa_width));
      begin
        op1 := To_ISLV(data_in);
        result_var := (others => '0');
        SingleInputFloatOperation(operator_id, op1, result_var);
        result <= To_SLV(result_var);
      end process;
    end generate SingleOperandNoConstantFloatFloat;

    SingleOperandNoConstantFloatInt: if (not input1_is_int) and output_is_int generate
      process(data_in)
        variable op1: IStdLogicVector(input1_characteristic_width downto (- input1_mantissa_width));
        variable result_var: IStdLogicVector(owidth-1 downto 0);
      begin
        op1 := To_ISLV(data_in);
        result_var := (others => '0');
        SingleInputFloatOperation(operator_id, op1, result_var);
        result <= To_SLV(result_var);
      end process;
    end generate SingleOperandNoConstantFloatInt;

    SingleOperandNoConstantIntFloat: if (input1_is_int) and (not output_is_int) generate
      process(data_in)
        variable result_var: IStdLogicVector(output_characteristic_width downto (- output_mantissa_width));
      begin
        result_var := (others => '0');
        SingleInputFloatOperation(operator_id, To_ISLV(data_in), result_var);
        result <= To_SLV(result_var);
      end process;
    end generate SingleOperandNoConstantIntFloat;
  end generate SingleOperandNoConstant;

  SingleOperandWithConstant : if num_inputs = 1 and use_constant generate

    SingleOperandWithConstantIntInt: if input1_is_int and output_is_int generate
      SigBlock: block
        signal op2_sig : std_logic_vector(constant_width-1 downto 0);
      begin  -- block SigBlock
        -- TODO: changes here.
        op2_sig <= constant_operand;

        process(data_in,op2_sig)
          variable   result_var    : std_logic_vector(owidth-1 downto 0);
        begin
          result_var := (others => '0');
          TwoInputOperation(operator_id,
                            data_in,
                            op2_sig,
                            result_var); 
          result <= result_var;
        end process;
      end block SigBlock;
    end generate SingleOperandWithConstantIntInt;

    SingleOperandWithConstantFloatInt: if (not input1_is_int) and output_is_int generate
      process(data_in)
        variable op1: IStdLogicVector(input1_characteristic_width downto (- input1_mantissa_width));
        constant op2: IStdLogicVector(input2_characteristic_width downto (- input2_mantissa_width)) 
          := To_ISLV(constant_operand);
        variable   result_var: IStdLogicVector(owidth-1 downto 0);
      begin
        result_var := (others => '0');
        op1 := To_ISLV(data_in);	
        TwoInputFloatOperation(operator_id, op1, op2, result_var);
        result <= To_SLV(result_var);
      end process;
    end generate SingleOperandWithConstantFloatInt;

    SingleOperandWithConstantFloatFloat: if (not input1_is_int) and (not output_is_int) generate
      process(data_in)
        variable op1: IStdLogicVector(input1_characteristic_width downto (- input1_mantissa_width));
        constant op2: IStdLogicVector(input2_characteristic_width downto (- input2_mantissa_width)) 
          := To_ISLV(constant_operand);
        variable result_var: IStdLogicVector(output_characteristic_width downto (- output_mantissa_width));
      begin
        op1 := To_ISLV(data_in);
        result_var := (others => '0');
        TwoInputFloatOperation(operator_id, op1, op2, result_var);
        result <= To_SLV(result_var);
      end process;
    end generate SingleOperandWithConstantFloatFloat;
  end generate SingleOperandWithConstant;
  
end Vanilla;



