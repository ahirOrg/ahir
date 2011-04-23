-- VHDL produced by vc2vhdl from virtual circuit (vc) description 
library ieee;
use ieee.std_logic_1164.all;
package vc_system_package is -- 
  constant xx_xstr1_base_address : std_logic_vector(2 downto 0) := "000";
  constant xx_xstr2_base_address : std_logic_vector(2 downto 0) := "000";
  constant xx_xstr_base_address : std_logic_vector(2 downto 0) := "000";
  -- 
end package vc_system_package;
library ieee;
use ieee.std_logic_1164.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
library work;
use work.vc_system_package.all;
entity bar is -- 
  port ( -- 
    a : in  std_logic_vector(31 downto 0);
    ret_val_x_x : out  std_logic_vector(31 downto 0);
    clk : in std_logic;
    reset : in std_logic;
    start : in std_logic;
    fin   : out std_logic;
    midpipe_pipe_read_req : out  std_logic_vector(0 downto 0);
    midpipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
    midpipe_pipe_read_data : in   std_logic_vector(31 downto 0);
    outpipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    outpipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    outpipe_pipe_write_data : out  std_logic_vector(31 downto 0);
    tag_in: in std_logic_vector(0 downto 0);
    tag_out: out std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity bar;
architecture Default of bar is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  -- links between control-path and data-path
  signal simple_obj_ref_72_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_72_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_72_store_0_req_0 : boolean;
  signal simple_obj_ref_72_store_0_ack_0 : boolean;
  signal simple_obj_ref_72_store_0_req_1 : boolean;
  signal simple_obj_ref_72_store_0_ack_1 : boolean;
  signal simple_obj_ref_81_inst_req_0 : boolean;
  signal simple_obj_ref_81_inst_ack_0 : boolean;
  signal type_cast_82_inst_req_0 : boolean;
  signal type_cast_82_inst_ack_0 : boolean;
  signal simple_obj_ref_84_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_84_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_84_store_0_req_1 : boolean;
  signal simple_obj_ref_84_store_0_ack_1 : boolean;
  signal simple_obj_ref_84_store_0_req_0 : boolean;
  signal simple_obj_ref_84_store_0_ack_0 : boolean;
  signal simple_obj_ref_88_load_0_req_0 : boolean;
  signal simple_obj_ref_88_load_0_ack_0 : boolean;
  signal simple_obj_ref_88_load_0_req_1 : boolean;
  signal simple_obj_ref_88_load_0_ack_1 : boolean;
  signal simple_obj_ref_88_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_88_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_91_load_0_req_0 : boolean;
  signal simple_obj_ref_91_load_0_ack_0 : boolean;
  signal simple_obj_ref_91_load_0_req_1 : boolean;
  signal simple_obj_ref_91_load_0_ack_1 : boolean;
  signal simple_obj_ref_91_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_91_gather_scatter_ack_0 : boolean;
  signal binary_96_inst_req_0 : boolean;
  signal binary_96_inst_ack_0 : boolean;
  signal binary_96_inst_req_1 : boolean;
  signal binary_96_inst_ack_1 : boolean;
  signal type_cast_105_inst_req_0 : boolean;
  signal type_cast_105_inst_ack_0 : boolean;
  signal simple_obj_ref_103_inst_req_0 : boolean;
  signal simple_obj_ref_103_inst_ack_0 : boolean;
  signal simple_obj_ref_108_load_0_req_0 : boolean;
  signal simple_obj_ref_108_load_0_ack_0 : boolean;
  signal simple_obj_ref_108_load_0_req_1 : boolean;
  signal simple_obj_ref_108_load_0_ack_1 : boolean;
  signal simple_obj_ref_108_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_108_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_110_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_110_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_110_store_0_req_0 : boolean;
  signal simple_obj_ref_110_store_0_ack_0 : boolean;
  signal simple_obj_ref_110_store_0_req_1 : boolean;
  signal simple_obj_ref_110_store_0_ack_1 : boolean;
  signal simple_obj_ref_116_load_0_req_0 : boolean;
  signal simple_obj_ref_116_load_0_ack_0 : boolean;
  signal simple_obj_ref_116_load_0_req_1 : boolean;
  signal simple_obj_ref_116_load_0_ack_1 : boolean;
  signal simple_obj_ref_116_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_116_gather_scatter_ack_0 : boolean;
  signal memory_space_6_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_6_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_6_lr_addr : std_logic_vector(0 downto 0);
  signal memory_space_6_lr_tag : std_logic_vector(0 downto 0);
  signal memory_space_6_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_6_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_6_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_6_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_6_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_6_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_6_sr_addr : std_logic_vector(0 downto 0);
  signal memory_space_6_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_6_sr_tag : std_logic_vector(0 downto 0);
  signal memory_space_6_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_6_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_6_sc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_7_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_7_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_7_lr_addr : std_logic_vector(0 downto 0);
  signal memory_space_7_lr_tag : std_logic_vector(1 downto 0);
  signal memory_space_7_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_7_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_7_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_7_lc_tag :  std_logic_vector(1 downto 0);
  signal memory_space_7_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_7_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_7_sr_addr : std_logic_vector(0 downto 0);
  signal memory_space_7_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_7_sr_tag : std_logic_vector(1 downto 0);
  signal memory_space_7_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_7_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_7_sc_tag :  std_logic_vector(1 downto 0);
  signal memory_space_8_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_8_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_8_lr_addr : std_logic_vector(0 downto 0);
  signal memory_space_8_lr_tag : std_logic_vector(0 downto 0);
  signal memory_space_8_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_8_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_8_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_8_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_8_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_8_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_8_sr_addr : std_logic_vector(0 downto 0);
  signal memory_space_8_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_8_sr_tag : std_logic_vector(0 downto 0);
  signal memory_space_8_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_8_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_8_sc_tag :  std_logic_vector(0 downto 0);
  -- 
begin --  
  -- tag register
  process(clk) 
  begin -- 
    if clk'event and clk = '1' then -- 
      if start='1' then -- 
        tag_out <= tag_in; -- 
      end if; -- 
    end if; -- 
  end process;
  -- the control path
  always_true_symbol <= true; 
  bar_CP_0: Block -- control-path 
    signal bar_CP_0_start: Boolean;
    signal Xentry_1_symbol: Boolean;
    signal Xexit_2_symbol: Boolean;
    signal branch_block_stmt_69_3_symbol : Boolean;
    -- 
  begin -- 
    bar_CP_0_start <=  true when start = '1' else false; -- control passed to control-path.
    Xentry_1_symbol  <= bar_CP_0_start; -- transition $entry
    branch_block_stmt_69_3: Block -- branch_block_stmt_69 
      signal branch_block_stmt_69_3_start: Boolean;
      signal Xentry_4_symbol: Boolean;
      signal Xexit_5_symbol: Boolean;
      signal branch_block_stmt_69_x_xentry_x_xx_x6_symbol : Boolean;
      signal branch_block_stmt_69_x_xexit_x_xx_x7_symbol : Boolean;
      signal assign_stmt_74_x_xentry_x_xx_x8_symbol : Boolean;
      signal assign_stmt_74_x_xexit_x_xx_x9_symbol : Boolean;
      signal assign_stmt_79_x_xentry_x_xx_x10_symbol : Boolean;
      signal assign_stmt_79_x_xexit_x_xx_x11_symbol : Boolean;
      signal assign_stmt_83_x_xentry_x_xx_x12_symbol : Boolean;
      signal assign_stmt_83_x_xexit_x_xx_x13_symbol : Boolean;
      signal assign_stmt_86_x_xentry_x_xx_x14_symbol : Boolean;
      signal assign_stmt_86_x_xexit_x_xx_x15_symbol : Boolean;
      signal assign_stmt_89_x_xentry_x_xx_x16_symbol : Boolean;
      signal assign_stmt_89_x_xexit_x_xx_x17_symbol : Boolean;
      signal assign_stmt_92_x_xentry_x_xx_x18_symbol : Boolean;
      signal assign_stmt_92_x_xexit_x_xx_x19_symbol : Boolean;
      signal assign_stmt_97_x_xentry_x_xx_x20_symbol : Boolean;
      signal assign_stmt_97_x_xexit_x_xx_x21_symbol : Boolean;
      signal assign_stmt_102_x_xentry_x_xx_x22_symbol : Boolean;
      signal assign_stmt_102_x_xexit_x_xx_x23_symbol : Boolean;
      signal assign_stmt_106_x_xentry_x_xx_x24_symbol : Boolean;
      signal assign_stmt_106_x_xexit_x_xx_x25_symbol : Boolean;
      signal assign_stmt_109_x_xentry_x_xx_x26_symbol : Boolean;
      signal assign_stmt_109_x_xexit_x_xx_x27_symbol : Boolean;
      signal assign_stmt_112_x_xentry_x_xx_x28_symbol : Boolean;
      signal assign_stmt_112_x_xexit_x_xx_x29_symbol : Boolean;
      signal return_x_xx_x30_symbol : Boolean;
      signal merge_stmt_114_x_xexit_x_xx_x31_symbol : Boolean;
      signal assign_stmt_117_x_xentry_x_xx_x32_symbol : Boolean;
      signal assign_stmt_117_x_xexit_x_xx_x33_symbol : Boolean;
      signal assign_stmt_74_34_symbol : Boolean;
      signal assign_stmt_79_55_symbol : Boolean;
      signal assign_stmt_83_59_symbol : Boolean;
      signal assign_stmt_86_72_symbol : Boolean;
      signal assign_stmt_89_93_symbol : Boolean;
      signal assign_stmt_92_114_symbol : Boolean;
      signal assign_stmt_97_135_symbol : Boolean;
      signal assign_stmt_102_148_symbol : Boolean;
      signal assign_stmt_106_152_symbol : Boolean;
      signal assign_stmt_109_165_symbol : Boolean;
      signal assign_stmt_112_186_symbol : Boolean;
      signal assign_stmt_117_207_symbol : Boolean;
      signal return_x_xx_xPhiReq_228_symbol : Boolean;
      signal merge_stmt_114_PhiReqMerge_231_symbol : Boolean;
      signal merge_stmt_114_PhiAck_232_symbol : Boolean;
      -- 
    begin -- 
      branch_block_stmt_69_3_start <= Xentry_1_symbol; -- control passed to block
      Xentry_4_symbol  <= branch_block_stmt_69_3_start; -- transition branch_block_stmt_69/$entry
      branch_block_stmt_69_x_xentry_x_xx_x6_symbol  <=  Xentry_4_symbol; -- place branch_block_stmt_69/branch_block_stmt_69__entry__ (optimized away) 
      branch_block_stmt_69_x_xexit_x_xx_x7_symbol  <=  assign_stmt_117_x_xexit_x_xx_x33_symbol; -- place branch_block_stmt_69/branch_block_stmt_69__exit__ (optimized away) 
      assign_stmt_74_x_xentry_x_xx_x8_symbol  <=  branch_block_stmt_69_x_xentry_x_xx_x6_symbol; -- place branch_block_stmt_69/assign_stmt_74__entry__ (optimized away) 
      assign_stmt_74_x_xexit_x_xx_x9_symbol  <=  assign_stmt_74_34_symbol; -- place branch_block_stmt_69/assign_stmt_74__exit__ (optimized away) 
      assign_stmt_79_x_xentry_x_xx_x10_symbol  <=  assign_stmt_74_x_xexit_x_xx_x9_symbol; -- place branch_block_stmt_69/assign_stmt_79__entry__ (optimized away) 
      assign_stmt_79_x_xexit_x_xx_x11_symbol  <=  assign_stmt_79_55_symbol; -- place branch_block_stmt_69/assign_stmt_79__exit__ (optimized away) 
      assign_stmt_83_x_xentry_x_xx_x12_symbol  <=  assign_stmt_79_x_xexit_x_xx_x11_symbol; -- place branch_block_stmt_69/assign_stmt_83__entry__ (optimized away) 
      assign_stmt_83_x_xexit_x_xx_x13_symbol  <=  assign_stmt_83_59_symbol; -- place branch_block_stmt_69/assign_stmt_83__exit__ (optimized away) 
      assign_stmt_86_x_xentry_x_xx_x14_symbol  <=  assign_stmt_83_x_xexit_x_xx_x13_symbol; -- place branch_block_stmt_69/assign_stmt_86__entry__ (optimized away) 
      assign_stmt_86_x_xexit_x_xx_x15_symbol  <=  assign_stmt_86_72_symbol; -- place branch_block_stmt_69/assign_stmt_86__exit__ (optimized away) 
      assign_stmt_89_x_xentry_x_xx_x16_symbol  <=  assign_stmt_86_x_xexit_x_xx_x15_symbol; -- place branch_block_stmt_69/assign_stmt_89__entry__ (optimized away) 
      assign_stmt_89_x_xexit_x_xx_x17_symbol  <=  assign_stmt_89_93_symbol; -- place branch_block_stmt_69/assign_stmt_89__exit__ (optimized away) 
      assign_stmt_92_x_xentry_x_xx_x18_symbol  <=  assign_stmt_89_x_xexit_x_xx_x17_symbol; -- place branch_block_stmt_69/assign_stmt_92__entry__ (optimized away) 
      assign_stmt_92_x_xexit_x_xx_x19_symbol  <=  assign_stmt_92_114_symbol; -- place branch_block_stmt_69/assign_stmt_92__exit__ (optimized away) 
      assign_stmt_97_x_xentry_x_xx_x20_symbol  <=  assign_stmt_92_x_xexit_x_xx_x19_symbol; -- place branch_block_stmt_69/assign_stmt_97__entry__ (optimized away) 
      assign_stmt_97_x_xexit_x_xx_x21_symbol  <=  assign_stmt_97_135_symbol; -- place branch_block_stmt_69/assign_stmt_97__exit__ (optimized away) 
      assign_stmt_102_x_xentry_x_xx_x22_symbol  <=  assign_stmt_97_x_xexit_x_xx_x21_symbol; -- place branch_block_stmt_69/assign_stmt_102__entry__ (optimized away) 
      assign_stmt_102_x_xexit_x_xx_x23_symbol  <=  assign_stmt_102_148_symbol; -- place branch_block_stmt_69/assign_stmt_102__exit__ (optimized away) 
      assign_stmt_106_x_xentry_x_xx_x24_symbol  <=  assign_stmt_102_x_xexit_x_xx_x23_symbol; -- place branch_block_stmt_69/assign_stmt_106__entry__ (optimized away) 
      assign_stmt_106_x_xexit_x_xx_x25_symbol  <=  assign_stmt_106_152_symbol; -- place branch_block_stmt_69/assign_stmt_106__exit__ (optimized away) 
      assign_stmt_109_x_xentry_x_xx_x26_symbol  <=  assign_stmt_106_x_xexit_x_xx_x25_symbol; -- place branch_block_stmt_69/assign_stmt_109__entry__ (optimized away) 
      assign_stmt_109_x_xexit_x_xx_x27_symbol  <=  assign_stmt_109_165_symbol; -- place branch_block_stmt_69/assign_stmt_109__exit__ (optimized away) 
      assign_stmt_112_x_xentry_x_xx_x28_symbol  <=  assign_stmt_109_x_xexit_x_xx_x27_symbol; -- place branch_block_stmt_69/assign_stmt_112__entry__ (optimized away) 
      assign_stmt_112_x_xexit_x_xx_x29_symbol  <=  assign_stmt_112_186_symbol; -- place branch_block_stmt_69/assign_stmt_112__exit__ (optimized away) 
      return_x_xx_x30_symbol  <=  assign_stmt_112_x_xexit_x_xx_x29_symbol; -- place branch_block_stmt_69/return__ (optimized away) 
      merge_stmt_114_x_xexit_x_xx_x31_symbol  <=  merge_stmt_114_PhiAck_232_symbol; -- place branch_block_stmt_69/merge_stmt_114__exit__ (optimized away) 
      assign_stmt_117_x_xentry_x_xx_x32_symbol  <=  merge_stmt_114_x_xexit_x_xx_x31_symbol; -- place branch_block_stmt_69/assign_stmt_117__entry__ (optimized away) 
      assign_stmt_117_x_xexit_x_xx_x33_symbol  <=  assign_stmt_117_207_symbol; -- place branch_block_stmt_69/assign_stmt_117__exit__ (optimized away) 
      assign_stmt_74_34: Block -- branch_block_stmt_69/assign_stmt_74 
        signal assign_stmt_74_34_start: Boolean;
        signal Xentry_35_symbol: Boolean;
        signal Xexit_36_symbol: Boolean;
        signal simple_obj_ref_72_37_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_74_34_start <= assign_stmt_74_x_xentry_x_xx_x8_symbol; -- control passed to block
        Xentry_35_symbol  <= assign_stmt_74_34_start; -- transition branch_block_stmt_69/assign_stmt_74/$entry
        simple_obj_ref_72_37: Block -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72 
          signal simple_obj_ref_72_37_start: Boolean;
          signal Xentry_38_symbol: Boolean;
          signal Xexit_39_symbol: Boolean;
          signal simple_obj_ref_72_write_40_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_72_37_start <= Xentry_35_symbol; -- control passed to block
          Xentry_38_symbol  <= simple_obj_ref_72_37_start; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/$entry
          simple_obj_ref_72_write_40: Block -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write 
            signal simple_obj_ref_72_write_40_start: Boolean;
            signal Xentry_41_symbol: Boolean;
            signal Xexit_42_symbol: Boolean;
            signal split_req_43_symbol : Boolean;
            signal split_ack_44_symbol : Boolean;
            signal word_access_45_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_72_write_40_start <= Xentry_38_symbol; -- control passed to block
            Xentry_41_symbol  <= simple_obj_ref_72_write_40_start; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/$entry
            split_req_43_symbol <= Xentry_41_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/split_req
            simple_obj_ref_72_gather_scatter_req_0 <= split_req_43_symbol; -- link to DP
            split_ack_44_symbol <= simple_obj_ref_72_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/split_ack
            word_access_45: Block -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access 
              signal word_access_45_start: Boolean;
              signal Xentry_46_symbol: Boolean;
              signal Xexit_47_symbol: Boolean;
              signal word_access_0_48_symbol : Boolean;
              -- 
            begin -- 
              word_access_45_start <= split_ack_44_symbol; -- control passed to block
              Xentry_46_symbol  <= word_access_45_start; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/$entry
              word_access_0_48: Block -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0 
                signal word_access_0_48_start: Boolean;
                signal Xentry_49_symbol: Boolean;
                signal Xexit_50_symbol: Boolean;
                signal rr_51_symbol : Boolean;
                signal ra_52_symbol : Boolean;
                signal cr_53_symbol : Boolean;
                signal ca_54_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_48_start <= Xentry_46_symbol; -- control passed to block
                Xentry_49_symbol  <= word_access_0_48_start; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0/$entry
                rr_51_symbol <= Xentry_49_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0/rr
                simple_obj_ref_72_store_0_req_0 <= rr_51_symbol; -- link to DP
                ra_52_symbol <= simple_obj_ref_72_store_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0/ra
                cr_53_symbol <= ra_52_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0/cr
                simple_obj_ref_72_store_0_req_1 <= cr_53_symbol; -- link to DP
                ca_54_symbol <= simple_obj_ref_72_store_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0/ca
                Xexit_50_symbol <= ca_54_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0/$exit
                word_access_0_48_symbol <= Xexit_50_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/word_access_0
              Xexit_47_symbol <= word_access_0_48_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access/$exit
              word_access_45_symbol <= Xexit_47_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/word_access
            Xexit_42_symbol <= word_access_45_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write/$exit
            simple_obj_ref_72_write_40_symbol <= Xexit_42_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/simple_obj_ref_72_write
          Xexit_39_symbol <= simple_obj_ref_72_write_40_symbol; -- transition branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72/$exit
          simple_obj_ref_72_37_symbol <= Xexit_39_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_74/simple_obj_ref_72
        Xexit_36_symbol <= simple_obj_ref_72_37_symbol; -- transition branch_block_stmt_69/assign_stmt_74/$exit
        assign_stmt_74_34_symbol <= Xexit_36_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_74
      assign_stmt_79_55: Block -- branch_block_stmt_69/assign_stmt_79 
        signal assign_stmt_79_55_start: Boolean;
        signal Xentry_56_symbol: Boolean;
        signal Xexit_57_symbol: Boolean;
        signal dummy_58_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_79_55_start <= assign_stmt_79_x_xentry_x_xx_x10_symbol; -- control passed to block
        Xentry_56_symbol  <= assign_stmt_79_55_start; -- transition branch_block_stmt_69/assign_stmt_79/$entry
        dummy_58_symbol <= Xentry_56_symbol; -- transition branch_block_stmt_69/assign_stmt_79/dummy
        Xexit_57_symbol <= dummy_58_symbol; -- transition branch_block_stmt_69/assign_stmt_79/$exit
        assign_stmt_79_55_symbol <= Xexit_57_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_79
      assign_stmt_83_59: Block -- branch_block_stmt_69/assign_stmt_83 
        signal assign_stmt_83_59_start: Boolean;
        signal Xentry_60_symbol: Boolean;
        signal Xexit_61_symbol: Boolean;
        signal type_cast_82_62_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_83_59_start <= assign_stmt_83_x_xentry_x_xx_x12_symbol; -- control passed to block
        Xentry_60_symbol  <= assign_stmt_83_59_start; -- transition branch_block_stmt_69/assign_stmt_83/$entry
        type_cast_82_62: Block -- branch_block_stmt_69/assign_stmt_83/type_cast_82 
          signal type_cast_82_62_start: Boolean;
          signal Xentry_63_symbol: Boolean;
          signal Xexit_64_symbol: Boolean;
          signal simple_obj_ref_81_65_symbol : Boolean;
          signal req_70_symbol : Boolean;
          signal ack_71_symbol : Boolean;
          -- 
        begin -- 
          type_cast_82_62_start <= Xentry_60_symbol; -- control passed to block
          Xentry_63_symbol  <= type_cast_82_62_start; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/$entry
          simple_obj_ref_81_65: Block -- branch_block_stmt_69/assign_stmt_83/type_cast_82/simple_obj_ref_81 
            signal simple_obj_ref_81_65_start: Boolean;
            signal Xentry_66_symbol: Boolean;
            signal Xexit_67_symbol: Boolean;
            signal req_68_symbol : Boolean;
            signal ack_69_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_81_65_start <= Xentry_63_symbol; -- control passed to block
            Xentry_66_symbol  <= simple_obj_ref_81_65_start; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/simple_obj_ref_81/$entry
            req_68_symbol <= Xentry_66_symbol; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/simple_obj_ref_81/req
            simple_obj_ref_81_inst_req_0 <= req_68_symbol; -- link to DP
            ack_69_symbol <= simple_obj_ref_81_inst_ack_0; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/simple_obj_ref_81/ack
            Xexit_67_symbol <= ack_69_symbol; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/simple_obj_ref_81/$exit
            simple_obj_ref_81_65_symbol <= Xexit_67_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_83/type_cast_82/simple_obj_ref_81
          req_70_symbol <= simple_obj_ref_81_65_symbol; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/req
          type_cast_82_inst_req_0 <= req_70_symbol; -- link to DP
          ack_71_symbol <= type_cast_82_inst_ack_0; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/ack
          Xexit_64_symbol <= ack_71_symbol; -- transition branch_block_stmt_69/assign_stmt_83/type_cast_82/$exit
          type_cast_82_62_symbol <= Xexit_64_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_83/type_cast_82
        Xexit_61_symbol <= type_cast_82_62_symbol; -- transition branch_block_stmt_69/assign_stmt_83/$exit
        assign_stmt_83_59_symbol <= Xexit_61_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_83
      assign_stmt_86_72: Block -- branch_block_stmt_69/assign_stmt_86 
        signal assign_stmt_86_72_start: Boolean;
        signal Xentry_73_symbol: Boolean;
        signal Xexit_74_symbol: Boolean;
        signal simple_obj_ref_84_75_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_86_72_start <= assign_stmt_86_x_xentry_x_xx_x14_symbol; -- control passed to block
        Xentry_73_symbol  <= assign_stmt_86_72_start; -- transition branch_block_stmt_69/assign_stmt_86/$entry
        simple_obj_ref_84_75: Block -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84 
          signal simple_obj_ref_84_75_start: Boolean;
          signal Xentry_76_symbol: Boolean;
          signal Xexit_77_symbol: Boolean;
          signal simple_obj_ref_84_write_78_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_84_75_start <= Xentry_73_symbol; -- control passed to block
          Xentry_76_symbol  <= simple_obj_ref_84_75_start; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/$entry
          simple_obj_ref_84_write_78: Block -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write 
            signal simple_obj_ref_84_write_78_start: Boolean;
            signal Xentry_79_symbol: Boolean;
            signal Xexit_80_symbol: Boolean;
            signal split_req_81_symbol : Boolean;
            signal split_ack_82_symbol : Boolean;
            signal word_access_83_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_84_write_78_start <= Xentry_76_symbol; -- control passed to block
            Xentry_79_symbol  <= simple_obj_ref_84_write_78_start; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/$entry
            split_req_81_symbol <= Xentry_79_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/split_req
            simple_obj_ref_84_gather_scatter_req_0 <= split_req_81_symbol; -- link to DP
            split_ack_82_symbol <= simple_obj_ref_84_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/split_ack
            word_access_83: Block -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access 
              signal word_access_83_start: Boolean;
              signal Xentry_84_symbol: Boolean;
              signal Xexit_85_symbol: Boolean;
              signal word_access_0_86_symbol : Boolean;
              -- 
            begin -- 
              word_access_83_start <= split_ack_82_symbol; -- control passed to block
              Xentry_84_symbol  <= word_access_83_start; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/$entry
              word_access_0_86: Block -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0 
                signal word_access_0_86_start: Boolean;
                signal Xentry_87_symbol: Boolean;
                signal Xexit_88_symbol: Boolean;
                signal rr_89_symbol : Boolean;
                signal ra_90_symbol : Boolean;
                signal cr_91_symbol : Boolean;
                signal ca_92_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_86_start <= Xentry_84_symbol; -- control passed to block
                Xentry_87_symbol  <= word_access_0_86_start; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0/$entry
                rr_89_symbol <= Xentry_87_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0/rr
                simple_obj_ref_84_store_0_req_0 <= rr_89_symbol; -- link to DP
                ra_90_symbol <= simple_obj_ref_84_store_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0/ra
                cr_91_symbol <= ra_90_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0/cr
                simple_obj_ref_84_store_0_req_1 <= cr_91_symbol; -- link to DP
                ca_92_symbol <= simple_obj_ref_84_store_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0/ca
                Xexit_88_symbol <= ca_92_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0/$exit
                word_access_0_86_symbol <= Xexit_88_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/word_access_0
              Xexit_85_symbol <= word_access_0_86_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access/$exit
              word_access_83_symbol <= Xexit_85_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/word_access
            Xexit_80_symbol <= word_access_83_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write/$exit
            simple_obj_ref_84_write_78_symbol <= Xexit_80_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/simple_obj_ref_84_write
          Xexit_77_symbol <= simple_obj_ref_84_write_78_symbol; -- transition branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84/$exit
          simple_obj_ref_84_75_symbol <= Xexit_77_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_86/simple_obj_ref_84
        Xexit_74_symbol <= simple_obj_ref_84_75_symbol; -- transition branch_block_stmt_69/assign_stmt_86/$exit
        assign_stmt_86_72_symbol <= Xexit_74_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_86
      assign_stmt_89_93: Block -- branch_block_stmt_69/assign_stmt_89 
        signal assign_stmt_89_93_start: Boolean;
        signal Xentry_94_symbol: Boolean;
        signal Xexit_95_symbol: Boolean;
        signal simple_obj_ref_88_96_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_89_93_start <= assign_stmt_89_x_xentry_x_xx_x16_symbol; -- control passed to block
        Xentry_94_symbol  <= assign_stmt_89_93_start; -- transition branch_block_stmt_69/assign_stmt_89/$entry
        simple_obj_ref_88_96: Block -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88 
          signal simple_obj_ref_88_96_start: Boolean;
          signal Xentry_97_symbol: Boolean;
          signal Xexit_98_symbol: Boolean;
          signal simple_obj_ref_88_read_99_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_88_96_start <= Xentry_94_symbol; -- control passed to block
          Xentry_97_symbol  <= simple_obj_ref_88_96_start; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/$entry
          simple_obj_ref_88_read_99: Block -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read 
            signal simple_obj_ref_88_read_99_start: Boolean;
            signal Xentry_100_symbol: Boolean;
            signal Xexit_101_symbol: Boolean;
            signal word_access_102_symbol : Boolean;
            signal merge_req_112_symbol : Boolean;
            signal merge_ack_113_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_88_read_99_start <= Xentry_97_symbol; -- control passed to block
            Xentry_100_symbol  <= simple_obj_ref_88_read_99_start; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/$entry
            word_access_102: Block -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access 
              signal word_access_102_start: Boolean;
              signal Xentry_103_symbol: Boolean;
              signal Xexit_104_symbol: Boolean;
              signal word_access_0_105_symbol : Boolean;
              -- 
            begin -- 
              word_access_102_start <= Xentry_100_symbol; -- control passed to block
              Xentry_103_symbol  <= word_access_102_start; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/$entry
              word_access_0_105: Block -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0 
                signal word_access_0_105_start: Boolean;
                signal Xentry_106_symbol: Boolean;
                signal Xexit_107_symbol: Boolean;
                signal rr_108_symbol : Boolean;
                signal ra_109_symbol : Boolean;
                signal cr_110_symbol : Boolean;
                signal ca_111_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_105_start <= Xentry_103_symbol; -- control passed to block
                Xentry_106_symbol  <= word_access_0_105_start; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0/$entry
                rr_108_symbol <= Xentry_106_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0/rr
                simple_obj_ref_88_load_0_req_0 <= rr_108_symbol; -- link to DP
                ra_109_symbol <= simple_obj_ref_88_load_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0/ra
                cr_110_symbol <= ra_109_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0/cr
                simple_obj_ref_88_load_0_req_1 <= cr_110_symbol; -- link to DP
                ca_111_symbol <= simple_obj_ref_88_load_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0/ca
                Xexit_107_symbol <= ca_111_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0/$exit
                word_access_0_105_symbol <= Xexit_107_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/word_access_0
              Xexit_104_symbol <= word_access_0_105_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access/$exit
              word_access_102_symbol <= Xexit_104_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/word_access
            merge_req_112_symbol <= word_access_102_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/merge_req
            simple_obj_ref_88_gather_scatter_req_0 <= merge_req_112_symbol; -- link to DP
            merge_ack_113_symbol <= simple_obj_ref_88_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/merge_ack
            Xexit_101_symbol <= merge_ack_113_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read/$exit
            simple_obj_ref_88_read_99_symbol <= Xexit_101_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/simple_obj_ref_88_read
          Xexit_98_symbol <= simple_obj_ref_88_read_99_symbol; -- transition branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88/$exit
          simple_obj_ref_88_96_symbol <= Xexit_98_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_89/simple_obj_ref_88
        Xexit_95_symbol <= simple_obj_ref_88_96_symbol; -- transition branch_block_stmt_69/assign_stmt_89/$exit
        assign_stmt_89_93_symbol <= Xexit_95_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_89
      assign_stmt_92_114: Block -- branch_block_stmt_69/assign_stmt_92 
        signal assign_stmt_92_114_start: Boolean;
        signal Xentry_115_symbol: Boolean;
        signal Xexit_116_symbol: Boolean;
        signal simple_obj_ref_91_117_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_92_114_start <= assign_stmt_92_x_xentry_x_xx_x18_symbol; -- control passed to block
        Xentry_115_symbol  <= assign_stmt_92_114_start; -- transition branch_block_stmt_69/assign_stmt_92/$entry
        simple_obj_ref_91_117: Block -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91 
          signal simple_obj_ref_91_117_start: Boolean;
          signal Xentry_118_symbol: Boolean;
          signal Xexit_119_symbol: Boolean;
          signal simple_obj_ref_91_read_120_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_91_117_start <= Xentry_115_symbol; -- control passed to block
          Xentry_118_symbol  <= simple_obj_ref_91_117_start; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/$entry
          simple_obj_ref_91_read_120: Block -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read 
            signal simple_obj_ref_91_read_120_start: Boolean;
            signal Xentry_121_symbol: Boolean;
            signal Xexit_122_symbol: Boolean;
            signal word_access_123_symbol : Boolean;
            signal merge_req_133_symbol : Boolean;
            signal merge_ack_134_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_91_read_120_start <= Xentry_118_symbol; -- control passed to block
            Xentry_121_symbol  <= simple_obj_ref_91_read_120_start; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/$entry
            word_access_123: Block -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access 
              signal word_access_123_start: Boolean;
              signal Xentry_124_symbol: Boolean;
              signal Xexit_125_symbol: Boolean;
              signal word_access_0_126_symbol : Boolean;
              -- 
            begin -- 
              word_access_123_start <= Xentry_121_symbol; -- control passed to block
              Xentry_124_symbol  <= word_access_123_start; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/$entry
              word_access_0_126: Block -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0 
                signal word_access_0_126_start: Boolean;
                signal Xentry_127_symbol: Boolean;
                signal Xexit_128_symbol: Boolean;
                signal rr_129_symbol : Boolean;
                signal ra_130_symbol : Boolean;
                signal cr_131_symbol : Boolean;
                signal ca_132_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_126_start <= Xentry_124_symbol; -- control passed to block
                Xentry_127_symbol  <= word_access_0_126_start; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0/$entry
                rr_129_symbol <= Xentry_127_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0/rr
                simple_obj_ref_91_load_0_req_0 <= rr_129_symbol; -- link to DP
                ra_130_symbol <= simple_obj_ref_91_load_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0/ra
                cr_131_symbol <= ra_130_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0/cr
                simple_obj_ref_91_load_0_req_1 <= cr_131_symbol; -- link to DP
                ca_132_symbol <= simple_obj_ref_91_load_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0/ca
                Xexit_128_symbol <= ca_132_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0/$exit
                word_access_0_126_symbol <= Xexit_128_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/word_access_0
              Xexit_125_symbol <= word_access_0_126_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access/$exit
              word_access_123_symbol <= Xexit_125_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/word_access
            merge_req_133_symbol <= word_access_123_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/merge_req
            simple_obj_ref_91_gather_scatter_req_0 <= merge_req_133_symbol; -- link to DP
            merge_ack_134_symbol <= simple_obj_ref_91_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/merge_ack
            Xexit_122_symbol <= merge_ack_134_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read/$exit
            simple_obj_ref_91_read_120_symbol <= Xexit_122_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/simple_obj_ref_91_read
          Xexit_119_symbol <= simple_obj_ref_91_read_120_symbol; -- transition branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91/$exit
          simple_obj_ref_91_117_symbol <= Xexit_119_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_92/simple_obj_ref_91
        Xexit_116_symbol <= simple_obj_ref_91_117_symbol; -- transition branch_block_stmt_69/assign_stmt_92/$exit
        assign_stmt_92_114_symbol <= Xexit_116_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_92
      assign_stmt_97_135: Block -- branch_block_stmt_69/assign_stmt_97 
        signal assign_stmt_97_135_start: Boolean;
        signal Xentry_136_symbol: Boolean;
        signal Xexit_137_symbol: Boolean;
        signal binary_96_138_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_97_135_start <= assign_stmt_97_x_xentry_x_xx_x20_symbol; -- control passed to block
        Xentry_136_symbol  <= assign_stmt_97_135_start; -- transition branch_block_stmt_69/assign_stmt_97/$entry
        binary_96_138: Block -- branch_block_stmt_69/assign_stmt_97/binary_96 
          signal binary_96_138_start: Boolean;
          signal Xentry_139_symbol: Boolean;
          signal Xexit_140_symbol: Boolean;
          signal binary_96_inputs_141_symbol : Boolean;
          signal rr_144_symbol : Boolean;
          signal ra_145_symbol : Boolean;
          signal cr_146_symbol : Boolean;
          signal ca_147_symbol : Boolean;
          -- 
        begin -- 
          binary_96_138_start <= Xentry_136_symbol; -- control passed to block
          Xentry_139_symbol  <= binary_96_138_start; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/$entry
          binary_96_inputs_141: Block -- branch_block_stmt_69/assign_stmt_97/binary_96/binary_96_inputs 
            signal binary_96_inputs_141_start: Boolean;
            signal Xentry_142_symbol: Boolean;
            signal Xexit_143_symbol: Boolean;
            -- 
          begin -- 
            binary_96_inputs_141_start <= Xentry_139_symbol; -- control passed to block
            Xentry_142_symbol  <= binary_96_inputs_141_start; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/binary_96_inputs/$entry
            Xexit_143_symbol <= Xentry_142_symbol; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/binary_96_inputs/$exit
            binary_96_inputs_141_symbol <= Xexit_143_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_97/binary_96/binary_96_inputs
          rr_144_symbol <= binary_96_inputs_141_symbol; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/rr
          binary_96_inst_req_0 <= rr_144_symbol; -- link to DP
          ra_145_symbol <= binary_96_inst_ack_0; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/ra
          cr_146_symbol <= ra_145_symbol; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/cr
          binary_96_inst_req_1 <= cr_146_symbol; -- link to DP
          ca_147_symbol <= binary_96_inst_ack_1; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/ca
          Xexit_140_symbol <= ca_147_symbol; -- transition branch_block_stmt_69/assign_stmt_97/binary_96/$exit
          binary_96_138_symbol <= Xexit_140_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_97/binary_96
        Xexit_137_symbol <= binary_96_138_symbol; -- transition branch_block_stmt_69/assign_stmt_97/$exit
        assign_stmt_97_135_symbol <= Xexit_137_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_97
      assign_stmt_102_148: Block -- branch_block_stmt_69/assign_stmt_102 
        signal assign_stmt_102_148_start: Boolean;
        signal Xentry_149_symbol: Boolean;
        signal Xexit_150_symbol: Boolean;
        signal dummy_151_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_102_148_start <= assign_stmt_102_x_xentry_x_xx_x22_symbol; -- control passed to block
        Xentry_149_symbol  <= assign_stmt_102_148_start; -- transition branch_block_stmt_69/assign_stmt_102/$entry
        dummy_151_symbol <= Xentry_149_symbol; -- transition branch_block_stmt_69/assign_stmt_102/dummy
        Xexit_150_symbol <= dummy_151_symbol; -- transition branch_block_stmt_69/assign_stmt_102/$exit
        assign_stmt_102_148_symbol <= Xexit_150_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_102
      assign_stmt_106_152: Block -- branch_block_stmt_69/assign_stmt_106 
        signal assign_stmt_106_152_start: Boolean;
        signal Xentry_153_symbol: Boolean;
        signal Xexit_154_symbol: Boolean;
        signal type_cast_105_155_symbol : Boolean;
        signal simple_obj_ref_103_160_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_106_152_start <= assign_stmt_106_x_xentry_x_xx_x24_symbol; -- control passed to block
        Xentry_153_symbol  <= assign_stmt_106_152_start; -- transition branch_block_stmt_69/assign_stmt_106/$entry
        type_cast_105_155: Block -- branch_block_stmt_69/assign_stmt_106/type_cast_105 
          signal type_cast_105_155_start: Boolean;
          signal Xentry_156_symbol: Boolean;
          signal Xexit_157_symbol: Boolean;
          signal req_158_symbol : Boolean;
          signal ack_159_symbol : Boolean;
          -- 
        begin -- 
          type_cast_105_155_start <= Xentry_153_symbol; -- control passed to block
          Xentry_156_symbol  <= type_cast_105_155_start; -- transition branch_block_stmt_69/assign_stmt_106/type_cast_105/$entry
          req_158_symbol <= Xentry_156_symbol; -- transition branch_block_stmt_69/assign_stmt_106/type_cast_105/req
          type_cast_105_inst_req_0 <= req_158_symbol; -- link to DP
          ack_159_symbol <= type_cast_105_inst_ack_0; -- transition branch_block_stmt_69/assign_stmt_106/type_cast_105/ack
          Xexit_157_symbol <= ack_159_symbol; -- transition branch_block_stmt_69/assign_stmt_106/type_cast_105/$exit
          type_cast_105_155_symbol <= Xexit_157_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_106/type_cast_105
        simple_obj_ref_103_160: Block -- branch_block_stmt_69/assign_stmt_106/simple_obj_ref_103 
          signal simple_obj_ref_103_160_start: Boolean;
          signal Xentry_161_symbol: Boolean;
          signal Xexit_162_symbol: Boolean;
          signal pipe_wreq_163_symbol : Boolean;
          signal pipe_wack_164_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_103_160_start <= type_cast_105_155_symbol; -- control passed to block
          Xentry_161_symbol  <= simple_obj_ref_103_160_start; -- transition branch_block_stmt_69/assign_stmt_106/simple_obj_ref_103/$entry
          pipe_wreq_163_symbol <= Xentry_161_symbol; -- transition branch_block_stmt_69/assign_stmt_106/simple_obj_ref_103/pipe_wreq
          simple_obj_ref_103_inst_req_0 <= pipe_wreq_163_symbol; -- link to DP
          pipe_wack_164_symbol <= simple_obj_ref_103_inst_ack_0; -- transition branch_block_stmt_69/assign_stmt_106/simple_obj_ref_103/pipe_wack
          Xexit_162_symbol <= pipe_wack_164_symbol; -- transition branch_block_stmt_69/assign_stmt_106/simple_obj_ref_103/$exit
          simple_obj_ref_103_160_symbol <= Xexit_162_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_106/simple_obj_ref_103
        Xexit_154_symbol <= simple_obj_ref_103_160_symbol; -- transition branch_block_stmt_69/assign_stmt_106/$exit
        assign_stmt_106_152_symbol <= Xexit_154_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_106
      assign_stmt_109_165: Block -- branch_block_stmt_69/assign_stmt_109 
        signal assign_stmt_109_165_start: Boolean;
        signal Xentry_166_symbol: Boolean;
        signal Xexit_167_symbol: Boolean;
        signal simple_obj_ref_108_168_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_109_165_start <= assign_stmt_109_x_xentry_x_xx_x26_symbol; -- control passed to block
        Xentry_166_symbol  <= assign_stmt_109_165_start; -- transition branch_block_stmt_69/assign_stmt_109/$entry
        simple_obj_ref_108_168: Block -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108 
          signal simple_obj_ref_108_168_start: Boolean;
          signal Xentry_169_symbol: Boolean;
          signal Xexit_170_symbol: Boolean;
          signal simple_obj_ref_108_read_171_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_108_168_start <= Xentry_166_symbol; -- control passed to block
          Xentry_169_symbol  <= simple_obj_ref_108_168_start; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/$entry
          simple_obj_ref_108_read_171: Block -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read 
            signal simple_obj_ref_108_read_171_start: Boolean;
            signal Xentry_172_symbol: Boolean;
            signal Xexit_173_symbol: Boolean;
            signal word_access_174_symbol : Boolean;
            signal merge_req_184_symbol : Boolean;
            signal merge_ack_185_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_108_read_171_start <= Xentry_169_symbol; -- control passed to block
            Xentry_172_symbol  <= simple_obj_ref_108_read_171_start; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/$entry
            word_access_174: Block -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access 
              signal word_access_174_start: Boolean;
              signal Xentry_175_symbol: Boolean;
              signal Xexit_176_symbol: Boolean;
              signal word_access_0_177_symbol : Boolean;
              -- 
            begin -- 
              word_access_174_start <= Xentry_172_symbol; -- control passed to block
              Xentry_175_symbol  <= word_access_174_start; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/$entry
              word_access_0_177: Block -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0 
                signal word_access_0_177_start: Boolean;
                signal Xentry_178_symbol: Boolean;
                signal Xexit_179_symbol: Boolean;
                signal rr_180_symbol : Boolean;
                signal ra_181_symbol : Boolean;
                signal cr_182_symbol : Boolean;
                signal ca_183_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_177_start <= Xentry_175_symbol; -- control passed to block
                Xentry_178_symbol  <= word_access_0_177_start; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0/$entry
                rr_180_symbol <= Xentry_178_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0/rr
                simple_obj_ref_108_load_0_req_0 <= rr_180_symbol; -- link to DP
                ra_181_symbol <= simple_obj_ref_108_load_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0/ra
                cr_182_symbol <= ra_181_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0/cr
                simple_obj_ref_108_load_0_req_1 <= cr_182_symbol; -- link to DP
                ca_183_symbol <= simple_obj_ref_108_load_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0/ca
                Xexit_179_symbol <= ca_183_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0/$exit
                word_access_0_177_symbol <= Xexit_179_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/word_access_0
              Xexit_176_symbol <= word_access_0_177_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access/$exit
              word_access_174_symbol <= Xexit_176_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/word_access
            merge_req_184_symbol <= word_access_174_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/merge_req
            simple_obj_ref_108_gather_scatter_req_0 <= merge_req_184_symbol; -- link to DP
            merge_ack_185_symbol <= simple_obj_ref_108_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/merge_ack
            Xexit_173_symbol <= merge_ack_185_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read/$exit
            simple_obj_ref_108_read_171_symbol <= Xexit_173_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/simple_obj_ref_108_read
          Xexit_170_symbol <= simple_obj_ref_108_read_171_symbol; -- transition branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108/$exit
          simple_obj_ref_108_168_symbol <= Xexit_170_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_109/simple_obj_ref_108
        Xexit_167_symbol <= simple_obj_ref_108_168_symbol; -- transition branch_block_stmt_69/assign_stmt_109/$exit
        assign_stmt_109_165_symbol <= Xexit_167_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_109
      assign_stmt_112_186: Block -- branch_block_stmt_69/assign_stmt_112 
        signal assign_stmt_112_186_start: Boolean;
        signal Xentry_187_symbol: Boolean;
        signal Xexit_188_symbol: Boolean;
        signal simple_obj_ref_110_189_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_112_186_start <= assign_stmt_112_x_xentry_x_xx_x28_symbol; -- control passed to block
        Xentry_187_symbol  <= assign_stmt_112_186_start; -- transition branch_block_stmt_69/assign_stmt_112/$entry
        simple_obj_ref_110_189: Block -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110 
          signal simple_obj_ref_110_189_start: Boolean;
          signal Xentry_190_symbol: Boolean;
          signal Xexit_191_symbol: Boolean;
          signal simple_obj_ref_110_write_192_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_110_189_start <= Xentry_187_symbol; -- control passed to block
          Xentry_190_symbol  <= simple_obj_ref_110_189_start; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/$entry
          simple_obj_ref_110_write_192: Block -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write 
            signal simple_obj_ref_110_write_192_start: Boolean;
            signal Xentry_193_symbol: Boolean;
            signal Xexit_194_symbol: Boolean;
            signal split_req_195_symbol : Boolean;
            signal split_ack_196_symbol : Boolean;
            signal word_access_197_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_110_write_192_start <= Xentry_190_symbol; -- control passed to block
            Xentry_193_symbol  <= simple_obj_ref_110_write_192_start; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/$entry
            split_req_195_symbol <= Xentry_193_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/split_req
            simple_obj_ref_110_gather_scatter_req_0 <= split_req_195_symbol; -- link to DP
            split_ack_196_symbol <= simple_obj_ref_110_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/split_ack
            word_access_197: Block -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access 
              signal word_access_197_start: Boolean;
              signal Xentry_198_symbol: Boolean;
              signal Xexit_199_symbol: Boolean;
              signal word_access_0_200_symbol : Boolean;
              -- 
            begin -- 
              word_access_197_start <= split_ack_196_symbol; -- control passed to block
              Xentry_198_symbol  <= word_access_197_start; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/$entry
              word_access_0_200: Block -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0 
                signal word_access_0_200_start: Boolean;
                signal Xentry_201_symbol: Boolean;
                signal Xexit_202_symbol: Boolean;
                signal rr_203_symbol : Boolean;
                signal ra_204_symbol : Boolean;
                signal cr_205_symbol : Boolean;
                signal ca_206_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_200_start <= Xentry_198_symbol; -- control passed to block
                Xentry_201_symbol  <= word_access_0_200_start; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0/$entry
                rr_203_symbol <= Xentry_201_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0/rr
                simple_obj_ref_110_store_0_req_0 <= rr_203_symbol; -- link to DP
                ra_204_symbol <= simple_obj_ref_110_store_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0/ra
                cr_205_symbol <= ra_204_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0/cr
                simple_obj_ref_110_store_0_req_1 <= cr_205_symbol; -- link to DP
                ca_206_symbol <= simple_obj_ref_110_store_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0/ca
                Xexit_202_symbol <= ca_206_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0/$exit
                word_access_0_200_symbol <= Xexit_202_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/word_access_0
              Xexit_199_symbol <= word_access_0_200_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access/$exit
              word_access_197_symbol <= Xexit_199_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/word_access
            Xexit_194_symbol <= word_access_197_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write/$exit
            simple_obj_ref_110_write_192_symbol <= Xexit_194_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/simple_obj_ref_110_write
          Xexit_191_symbol <= simple_obj_ref_110_write_192_symbol; -- transition branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110/$exit
          simple_obj_ref_110_189_symbol <= Xexit_191_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_112/simple_obj_ref_110
        Xexit_188_symbol <= simple_obj_ref_110_189_symbol; -- transition branch_block_stmt_69/assign_stmt_112/$exit
        assign_stmt_112_186_symbol <= Xexit_188_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_112
      assign_stmt_117_207: Block -- branch_block_stmt_69/assign_stmt_117 
        signal assign_stmt_117_207_start: Boolean;
        signal Xentry_208_symbol: Boolean;
        signal Xexit_209_symbol: Boolean;
        signal simple_obj_ref_116_210_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_117_207_start <= assign_stmt_117_x_xentry_x_xx_x32_symbol; -- control passed to block
        Xentry_208_symbol  <= assign_stmt_117_207_start; -- transition branch_block_stmt_69/assign_stmt_117/$entry
        simple_obj_ref_116_210: Block -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116 
          signal simple_obj_ref_116_210_start: Boolean;
          signal Xentry_211_symbol: Boolean;
          signal Xexit_212_symbol: Boolean;
          signal simple_obj_ref_116_read_213_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_116_210_start <= Xentry_208_symbol; -- control passed to block
          Xentry_211_symbol  <= simple_obj_ref_116_210_start; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/$entry
          simple_obj_ref_116_read_213: Block -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read 
            signal simple_obj_ref_116_read_213_start: Boolean;
            signal Xentry_214_symbol: Boolean;
            signal Xexit_215_symbol: Boolean;
            signal word_access_216_symbol : Boolean;
            signal merge_req_226_symbol : Boolean;
            signal merge_ack_227_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_116_read_213_start <= Xentry_211_symbol; -- control passed to block
            Xentry_214_symbol  <= simple_obj_ref_116_read_213_start; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/$entry
            word_access_216: Block -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access 
              signal word_access_216_start: Boolean;
              signal Xentry_217_symbol: Boolean;
              signal Xexit_218_symbol: Boolean;
              signal word_access_0_219_symbol : Boolean;
              -- 
            begin -- 
              word_access_216_start <= Xentry_214_symbol; -- control passed to block
              Xentry_217_symbol  <= word_access_216_start; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/$entry
              word_access_0_219: Block -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0 
                signal word_access_0_219_start: Boolean;
                signal Xentry_220_symbol: Boolean;
                signal Xexit_221_symbol: Boolean;
                signal rr_222_symbol : Boolean;
                signal ra_223_symbol : Boolean;
                signal cr_224_symbol : Boolean;
                signal ca_225_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_219_start <= Xentry_217_symbol; -- control passed to block
                Xentry_220_symbol  <= word_access_0_219_start; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0/$entry
                rr_222_symbol <= Xentry_220_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0/rr
                simple_obj_ref_116_load_0_req_0 <= rr_222_symbol; -- link to DP
                ra_223_symbol <= simple_obj_ref_116_load_0_ack_0; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0/ra
                cr_224_symbol <= ra_223_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0/cr
                simple_obj_ref_116_load_0_req_1 <= cr_224_symbol; -- link to DP
                ca_225_symbol <= simple_obj_ref_116_load_0_ack_1; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0/ca
                Xexit_221_symbol <= ca_225_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0/$exit
                word_access_0_219_symbol <= Xexit_221_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/word_access_0
              Xexit_218_symbol <= word_access_0_219_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access/$exit
              word_access_216_symbol <= Xexit_218_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/word_access
            merge_req_226_symbol <= word_access_216_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/merge_req
            simple_obj_ref_116_gather_scatter_req_0 <= merge_req_226_symbol; -- link to DP
            merge_ack_227_symbol <= simple_obj_ref_116_gather_scatter_ack_0; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/merge_ack
            Xexit_215_symbol <= merge_ack_227_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read/$exit
            simple_obj_ref_116_read_213_symbol <= Xexit_215_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/simple_obj_ref_116_read
          Xexit_212_symbol <= simple_obj_ref_116_read_213_symbol; -- transition branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116/$exit
          simple_obj_ref_116_210_symbol <= Xexit_212_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_69/assign_stmt_117/simple_obj_ref_116
        Xexit_209_symbol <= simple_obj_ref_116_210_symbol; -- transition branch_block_stmt_69/assign_stmt_117/$exit
        assign_stmt_117_207_symbol <= Xexit_209_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/assign_stmt_117
      return_x_xx_xPhiReq_228: Block -- branch_block_stmt_69/return___PhiReq 
        signal return_x_xx_xPhiReq_228_start: Boolean;
        signal Xentry_229_symbol: Boolean;
        signal Xexit_230_symbol: Boolean;
        -- 
      begin -- 
        return_x_xx_xPhiReq_228_start <= return_x_xx_x30_symbol; -- control passed to block
        Xentry_229_symbol  <= return_x_xx_xPhiReq_228_start; -- transition branch_block_stmt_69/return___PhiReq/$entry
        Xexit_230_symbol <= Xentry_229_symbol; -- transition branch_block_stmt_69/return___PhiReq/$exit
        return_x_xx_xPhiReq_228_symbol <= Xexit_230_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/return___PhiReq
      merge_stmt_114_PhiReqMerge_231_symbol  <=  return_x_xx_xPhiReq_228_symbol; -- place branch_block_stmt_69/merge_stmt_114_PhiReqMerge (optimized away) 
      merge_stmt_114_PhiAck_232: Block -- branch_block_stmt_69/merge_stmt_114_PhiAck 
        signal merge_stmt_114_PhiAck_232_start: Boolean;
        signal Xentry_233_symbol: Boolean;
        signal Xexit_234_symbol: Boolean;
        signal dummy_235_symbol : Boolean;
        -- 
      begin -- 
        merge_stmt_114_PhiAck_232_start <= merge_stmt_114_PhiReqMerge_231_symbol; -- control passed to block
        Xentry_233_symbol  <= merge_stmt_114_PhiAck_232_start; -- transition branch_block_stmt_69/merge_stmt_114_PhiAck/$entry
        dummy_235_symbol <= Xentry_233_symbol; -- transition branch_block_stmt_69/merge_stmt_114_PhiAck/dummy
        Xexit_234_symbol <= dummy_235_symbol; -- transition branch_block_stmt_69/merge_stmt_114_PhiAck/$exit
        merge_stmt_114_PhiAck_232_symbol <= Xexit_234_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_69/merge_stmt_114_PhiAck
      Xexit_5_symbol <= branch_block_stmt_69_x_xexit_x_xx_x7_symbol; -- transition branch_block_stmt_69/$exit
      branch_block_stmt_69_3_symbol <= Xexit_5_symbol; -- control passed from block 
      -- 
    end Block; -- branch_block_stmt_69
    Xexit_2_symbol <= branch_block_stmt_69_3_symbol; -- transition $exit
    fin  <=  '1' when Xexit_2_symbol else '0'; -- fin symbol when control-path exits
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal iNsTr_10_109 : std_logic_vector(31 downto 0);
    signal iNsTr_2_79 : std_logic_vector(31 downto 0);
    signal iNsTr_3_83 : std_logic_vector(31 downto 0);
    signal iNsTr_5_89 : std_logic_vector(31 downto 0);
    signal iNsTr_6_92 : std_logic_vector(31 downto 0);
    signal iNsTr_7_97 : std_logic_vector(31 downto 0);
    signal iNsTr_8_102 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_108_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_108_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_110_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_110_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_116_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_116_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_72_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_72_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_81_wire : std_logic_vector(31 downto 0);
    signal simple_obj_ref_84_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_84_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_88_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_88_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_91_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_91_word_address_0 : std_logic_vector(0 downto 0);
    signal type_cast_105_wire : std_logic_vector(31 downto 0);
    signal xxbarxxbodyxxb_base_address : std_logic_vector(0 downto 0);
    signal xxbarxxbodyxxiNsTr_0_base_address : std_logic_vector(0 downto 0);
    signal xxbarxxstored_ret_val_x_xx_xbase_address : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    iNsTr_2_79 <= "00000000000000000000000000000000";
    iNsTr_8_102 <= "00000000000000000000000000000000";
    simple_obj_ref_108_word_address_0 <= "0";
    simple_obj_ref_110_word_address_0 <= "0";
    simple_obj_ref_116_word_address_0 <= "0";
    simple_obj_ref_72_word_address_0 <= "0";
    simple_obj_ref_84_word_address_0 <= "0";
    simple_obj_ref_88_word_address_0 <= "0";
    simple_obj_ref_91_word_address_0 <= "0";
    xxbarxxbodyxxb_base_address <= "0";
    xxbarxxbodyxxiNsTr_0_base_address <= "0";
    xxbarxxstored_ret_val_x_xx_xbase_address <= "0";
    type_cast_105_inst: RegisterBase generic map(in_data_width => 32,out_data_width => 32) -- 
      port map( din => iNsTr_7_97, dout => type_cast_105_wire, req => type_cast_105_inst_req_0, ack => type_cast_105_inst_ack_0, clk => clk, reset => reset); -- 
    type_cast_82_inst: RegisterBase generic map(in_data_width => 32,out_data_width => 32) -- 
      port map( din => simple_obj_ref_81_wire, dout => iNsTr_3_83, req => type_cast_82_inst_req_0, ack => type_cast_82_inst_ack_0, clk => clk, reset => reset); -- 
    simple_obj_ref_108_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_108_gather_scatter_ack_0 <= simple_obj_ref_108_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_108_data_0;
      iNsTr_10_109 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_110_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_110_gather_scatter_ack_0 <= simple_obj_ref_110_gather_scatter_req_0;
      aggregated_sig <= iNsTr_10_109;
      simple_obj_ref_110_data_0 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_116_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_116_gather_scatter_ack_0 <= simple_obj_ref_116_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_116_data_0;
      ret_val_x_x <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_72_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_72_gather_scatter_ack_0 <= simple_obj_ref_72_gather_scatter_req_0;
      aggregated_sig <= a;
      simple_obj_ref_72_data_0 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_84_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_84_gather_scatter_ack_0 <= simple_obj_ref_84_gather_scatter_req_0;
      aggregated_sig <= iNsTr_3_83;
      simple_obj_ref_84_data_0 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_88_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_88_gather_scatter_ack_0 <= simple_obj_ref_88_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_88_data_0;
      iNsTr_5_89 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_91_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_91_gather_scatter_ack_0 <= simple_obj_ref_91_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_91_data_0;
      iNsTr_6_92 <= aggregated_sig(31 downto 0);
      --
    end Block;
    -- shared split operator group (0) : binary_96_inst 
    SplitOperatorGroup0: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      data_in <= iNsTr_5_89 & iNsTr_6_92;
      iNsTr_7_97 <= data_out(31 downto 0);
      UnsharedOperator: UnsharedOperatorBase -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 32,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 32, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
          constant_operand => "0",
          use_constant  => false,
          zero_delay => false, 
          flow_through => false--
        ) 
        port map ( -- 
          reqL => binary_96_inst_req_0,
          ackL => binary_96_inst_ack_0,
          reqR => binary_96_inst_req_1,
          ackR => binary_96_inst_ack_1,
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 0
    -- shared load operator group (0) : simple_obj_ref_88_load_0 simple_obj_ref_108_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal data_out: std_logic_vector(63 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      -- 
    begin -- 
      reqL(1) <= simple_obj_ref_88_load_0_req_0;
      reqL(0) <= simple_obj_ref_108_load_0_req_0;
      simple_obj_ref_88_load_0_ack_0 <= ackL(1);
      simple_obj_ref_108_load_0_ack_0 <= ackL(0);
      reqR(1) <= simple_obj_ref_88_load_0_req_1;
      reqR(0) <= simple_obj_ref_108_load_0_req_1;
      simple_obj_ref_88_load_0_ack_1 <= ackR(1);
      simple_obj_ref_108_load_0_ack_1 <= ackR(0);
      data_in <= simple_obj_ref_88_word_address_0 & simple_obj_ref_108_word_address_0;
      simple_obj_ref_88_data_0 <= data_out(63 downto 32);
      simple_obj_ref_108_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqShared -- 
        generic map (addr_width => 1,  num_reqs => 2,  tag_length => 2,  no_arbitration => true)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_7_lr_req(0),
          mack => memory_space_7_lr_ack(0),
          maddr => memory_space_7_lr_addr(0 downto 0),
          mtag => memory_space_7_lr_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( data_width => 32,  num_reqs => 2,  tag_length => 2,  no_arbitration => true)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_7_lc_req(0),
          mack => memory_space_7_lc_ack(0),
          mdata => memory_space_7_lc_data(31 downto 0),
          mtag => memory_space_7_lc_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared load operator group (1) : simple_obj_ref_116_load_0 
    LoadGroup1: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_116_load_0_req_0;
      simple_obj_ref_116_load_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_116_load_0_req_1;
      simple_obj_ref_116_load_0_ack_1 <= ackR(0);
      data_in <= simple_obj_ref_116_word_address_0;
      simple_obj_ref_116_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqShared -- 
        generic map (addr_width => 1,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_6_lr_req(0),
          mack => memory_space_6_lr_ack(0),
          maddr => memory_space_6_lr_addr(0 downto 0),
          mtag => memory_space_6_lr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( data_width => 32,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_6_lc_req(0),
          mack => memory_space_6_lc_ack(0),
          mdata => memory_space_6_lc_data(31 downto 0),
          mtag => memory_space_6_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 1
    -- shared load operator group (2) : simple_obj_ref_91_load_0 
    LoadGroup2: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_91_load_0_req_0;
      simple_obj_ref_91_load_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_91_load_0_req_1;
      simple_obj_ref_91_load_0_ack_1 <= ackR(0);
      data_in <= simple_obj_ref_91_word_address_0;
      simple_obj_ref_91_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqShared -- 
        generic map (addr_width => 1,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_8_lr_req(0),
          mack => memory_space_8_lr_ack(0),
          maddr => memory_space_8_lr_addr(0 downto 0),
          mtag => memory_space_8_lr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( data_width => 32,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_8_lc_req(0),
          mack => memory_space_8_lc_ack(0),
          mdata => memory_space_8_lc_data(31 downto 0),
          mtag => memory_space_8_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 2
    -- shared store operator group (0) : simple_obj_ref_110_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(0 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_110_store_0_req_0;
      simple_obj_ref_110_store_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_110_store_0_req_1;
      simple_obj_ref_110_store_0_ack_1 <= ackR(0);
      addr_in <= simple_obj_ref_110_word_address_0;
      data_in <= simple_obj_ref_110_data_0;
      StoreReq: StoreReqShared -- 
        generic map ( addr_width => 1,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        no_arbitration => true)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_6_sr_req(0),
          mack => memory_space_6_sr_ack(0),
          maddr => memory_space_6_sr_addr(0 downto 0),
          mdata => memory_space_6_sr_data(31 downto 0),
          mtag => memory_space_6_sr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          num_reqs => 1,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_6_sc_req(0),
          mack => memory_space_6_sc_ack(0),
          mtag => memory_space_6_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared store operator group (1) : simple_obj_ref_72_store_0 
    StoreGroup1: Block -- 
      signal addr_in: std_logic_vector(0 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_72_store_0_req_0;
      simple_obj_ref_72_store_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_72_store_0_req_1;
      simple_obj_ref_72_store_0_ack_1 <= ackR(0);
      addr_in <= simple_obj_ref_72_word_address_0;
      data_in <= simple_obj_ref_72_data_0;
      StoreReq: StoreReqShared -- 
        generic map ( addr_width => 1,
        data_width => 32,
        num_reqs => 1,
        tag_length => 2,
        no_arbitration => true)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_7_sr_req(0),
          mack => memory_space_7_sr_ack(0),
          maddr => memory_space_7_sr_addr(0 downto 0),
          mdata => memory_space_7_sr_data(31 downto 0),
          mtag => memory_space_7_sr_tag(1 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          num_reqs => 1,
          tag_length => 2 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_7_sc_req(0),
          mack => memory_space_7_sc_ack(0),
          mtag => memory_space_7_sc_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 1
    -- shared store operator group (2) : simple_obj_ref_84_store_0 
    StoreGroup2: Block -- 
      signal addr_in: std_logic_vector(0 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_84_store_0_req_0;
      simple_obj_ref_84_store_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_84_store_0_req_1;
      simple_obj_ref_84_store_0_ack_1 <= ackR(0);
      addr_in <= simple_obj_ref_84_word_address_0;
      data_in <= simple_obj_ref_84_data_0;
      StoreReq: StoreReqShared -- 
        generic map ( addr_width => 1,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        no_arbitration => true)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_8_sr_req(0),
          mack => memory_space_8_sr_ack(0),
          maddr => memory_space_8_sr_addr(0 downto 0),
          mdata => memory_space_8_sr_data(31 downto 0),
          mtag => memory_space_8_sr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          num_reqs => 1,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_8_sc_req(0),
          mack => memory_space_8_sc_ack(0),
          mtag => memory_space_8_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 2
    -- shared inport operator group (0) : simple_obj_ref_81_inst 
    InportGroup0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal req, ack : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      req(0) <= simple_obj_ref_81_inst_req_0;
      simple_obj_ref_81_inst_ack_0 <= ack(0);
      simple_obj_ref_81_wire <= data_out(31 downto 0);
      Inport: InputPort -- 
        generic map ( data_width => 32,  num_reqs => 1,  no_arbitration => true)
        port map (-- 
          req => req , 
          ack => ack , 
          data => data_out, 
          oreq => midpipe_pipe_read_req(0),
          oack => midpipe_pipe_read_ack(0),
          odata => midpipe_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : simple_obj_ref_103_inst 
    OutportGroup0: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal req, ack : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      req(0) <= simple_obj_ref_103_inst_req_0;
      simple_obj_ref_103_inst_ack_0 <= ack(0);
      data_in <= type_cast_105_wire;
      outport: OutputPort -- 
        generic map ( data_width => 32,  num_reqs => 1,  no_arbitration => true)
        port map (--
          req => req , 
          ack => ack , 
          data => data_in, 
          oreq => outpipe_pipe_write_req(0),
          oack => outpipe_pipe_write_ack(0),
          odata => outpipe_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  RegisterBank_memory_space_6: register_bank -- 
    generic map(-- 
      num_loads => 1,
      num_stores => 1,
      addr_width => 1,
      data_width => 32,
      tag_width => 1,
      num_registers => 1) -- 
    port map(-- 
      lr_addr_in => memory_space_6_lr_addr,
      lr_req_in => memory_space_6_lr_req,
      lr_ack_out => memory_space_6_lr_ack,
      lr_tag_in => memory_space_6_lr_tag,
      lc_req_in => memory_space_6_lc_req,
      lc_ack_out => memory_space_6_lc_ack,
      lc_data_out => memory_space_6_lc_data,
      lc_tag_out => memory_space_6_lc_tag,
      sr_addr_in => memory_space_6_sr_addr,
      sr_data_in => memory_space_6_sr_data,
      sr_req_in => memory_space_6_sr_req,
      sr_ack_out => memory_space_6_sr_ack,
      sr_tag_in => memory_space_6_sr_tag,
      sc_req_in=> memory_space_6_sc_req,
      sc_ack_out => memory_space_6_sc_ack,
      sc_tag_out => memory_space_6_sc_tag,
      clock => clk,
      reset => reset); -- 
  RegisterBank_memory_space_7: register_bank -- 
    generic map(-- 
      num_loads => 1,
      num_stores => 1,
      addr_width => 1,
      data_width => 32,
      tag_width => 2,
      num_registers => 1) -- 
    port map(-- 
      lr_addr_in => memory_space_7_lr_addr,
      lr_req_in => memory_space_7_lr_req,
      lr_ack_out => memory_space_7_lr_ack,
      lr_tag_in => memory_space_7_lr_tag,
      lc_req_in => memory_space_7_lc_req,
      lc_ack_out => memory_space_7_lc_ack,
      lc_data_out => memory_space_7_lc_data,
      lc_tag_out => memory_space_7_lc_tag,
      sr_addr_in => memory_space_7_sr_addr,
      sr_data_in => memory_space_7_sr_data,
      sr_req_in => memory_space_7_sr_req,
      sr_ack_out => memory_space_7_sr_ack,
      sr_tag_in => memory_space_7_sr_tag,
      sc_req_in=> memory_space_7_sc_req,
      sc_ack_out => memory_space_7_sc_ack,
      sc_tag_out => memory_space_7_sc_tag,
      clock => clk,
      reset => reset); -- 
  RegisterBank_memory_space_8: register_bank -- 
    generic map(-- 
      num_loads => 1,
      num_stores => 1,
      addr_width => 1,
      data_width => 32,
      tag_width => 1,
      num_registers => 1) -- 
    port map(-- 
      lr_addr_in => memory_space_8_lr_addr,
      lr_req_in => memory_space_8_lr_req,
      lr_ack_out => memory_space_8_lr_ack,
      lr_tag_in => memory_space_8_lr_tag,
      lc_req_in => memory_space_8_lc_req,
      lc_ack_out => memory_space_8_lc_ack,
      lc_data_out => memory_space_8_lc_data,
      lc_tag_out => memory_space_8_lc_tag,
      sr_addr_in => memory_space_8_sr_addr,
      sr_data_in => memory_space_8_sr_data,
      sr_req_in => memory_space_8_sr_req,
      sr_ack_out => memory_space_8_sr_ack,
      sr_tag_in => memory_space_8_sr_tag,
      sc_req_in=> memory_space_8_sc_req,
      sc_ack_out => memory_space_8_sc_ack,
      sc_tag_out => memory_space_8_sc_tag,
      clock => clk,
      reset => reset); -- 
  -- 
end Default;
library ieee;
use ieee.std_logic_1164.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
library work;
use work.vc_system_package.all;
entity foo is -- 
  port ( -- 
    a : in  std_logic_vector(31 downto 0);
    ret_val_x_x : out  std_logic_vector(31 downto 0);
    clk : in std_logic;
    reset : in std_logic;
    start : in std_logic;
    fin   : out std_logic;
    inpipe_pipe_read_req : out  std_logic_vector(0 downto 0);
    inpipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
    inpipe_pipe_read_data : in   std_logic_vector(31 downto 0);
    midpipe_pipe_write_req : out  std_logic_vector(0 downto 0);
    midpipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
    midpipe_pipe_write_data : out  std_logic_vector(31 downto 0);
    tag_in: in std_logic_vector(0 downto 0);
    tag_out: out std_logic_vector(0 downto 0)-- 
  );
  -- 
end entity foo;
architecture Default of foo is -- 
  -- always true...
  signal always_true_symbol: Boolean;
  -- links between control-path and data-path
  signal simple_obj_ref_17_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_17_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_17_store_0_req_0 : boolean;
  signal simple_obj_ref_17_store_0_ack_0 : boolean;
  signal simple_obj_ref_17_store_0_req_1 : boolean;
  signal simple_obj_ref_17_store_0_ack_1 : boolean;
  signal simple_obj_ref_26_inst_req_0 : boolean;
  signal simple_obj_ref_26_inst_ack_0 : boolean;
  signal type_cast_27_inst_req_0 : boolean;
  signal type_cast_27_inst_ack_0 : boolean;
  signal simple_obj_ref_29_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_29_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_29_store_0_req_0 : boolean;
  signal simple_obj_ref_29_store_0_ack_0 : boolean;
  signal simple_obj_ref_29_store_0_req_1 : boolean;
  signal simple_obj_ref_29_store_0_ack_1 : boolean;
  signal simple_obj_ref_33_load_0_req_0 : boolean;
  signal simple_obj_ref_33_load_0_ack_0 : boolean;
  signal simple_obj_ref_33_load_0_req_1 : boolean;
  signal simple_obj_ref_33_load_0_ack_1 : boolean;
  signal simple_obj_ref_33_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_33_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_36_load_0_req_0 : boolean;
  signal simple_obj_ref_36_load_0_ack_0 : boolean;
  signal simple_obj_ref_36_load_0_req_1 : boolean;
  signal simple_obj_ref_36_load_0_ack_1 : boolean;
  signal simple_obj_ref_36_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_36_gather_scatter_ack_0 : boolean;
  signal binary_41_inst_req_0 : boolean;
  signal binary_41_inst_ack_0 : boolean;
  signal binary_41_inst_req_1 : boolean;
  signal binary_41_inst_ack_1 : boolean;
  signal type_cast_50_inst_req_0 : boolean;
  signal type_cast_50_inst_ack_0 : boolean;
  signal simple_obj_ref_48_inst_req_0 : boolean;
  signal simple_obj_ref_48_inst_ack_0 : boolean;
  signal simple_obj_ref_53_load_0_req_0 : boolean;
  signal simple_obj_ref_53_load_0_ack_0 : boolean;
  signal simple_obj_ref_53_load_0_req_1 : boolean;
  signal simple_obj_ref_53_load_0_ack_1 : boolean;
  signal simple_obj_ref_53_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_53_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_55_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_55_gather_scatter_ack_0 : boolean;
  signal simple_obj_ref_55_store_0_req_0 : boolean;
  signal simple_obj_ref_55_store_0_ack_0 : boolean;
  signal simple_obj_ref_55_store_0_req_1 : boolean;
  signal simple_obj_ref_55_store_0_ack_1 : boolean;
  signal simple_obj_ref_61_load_0_req_0 : boolean;
  signal simple_obj_ref_61_load_0_ack_0 : boolean;
  signal simple_obj_ref_61_load_0_req_1 : boolean;
  signal simple_obj_ref_61_load_0_ack_1 : boolean;
  signal simple_obj_ref_61_gather_scatter_req_0 : boolean;
  signal simple_obj_ref_61_gather_scatter_ack_0 : boolean;
  signal memory_space_3_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_3_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_3_lr_addr : std_logic_vector(0 downto 0);
  signal memory_space_3_lr_tag : std_logic_vector(0 downto 0);
  signal memory_space_3_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_3_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_3_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_3_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_3_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_3_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_3_sr_addr : std_logic_vector(0 downto 0);
  signal memory_space_3_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_3_sr_tag : std_logic_vector(0 downto 0);
  signal memory_space_3_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_3_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_3_sc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_4_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_4_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_4_lr_addr : std_logic_vector(0 downto 0);
  signal memory_space_4_lr_tag : std_logic_vector(1 downto 0);
  signal memory_space_4_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_4_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_4_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_4_lc_tag :  std_logic_vector(1 downto 0);
  signal memory_space_4_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_4_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_4_sr_addr : std_logic_vector(0 downto 0);
  signal memory_space_4_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_4_sr_tag : std_logic_vector(1 downto 0);
  signal memory_space_4_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_4_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_4_sc_tag :  std_logic_vector(1 downto 0);
  signal memory_space_5_lr_req :  std_logic_vector(0 downto 0);
  signal memory_space_5_lr_ack : std_logic_vector(0 downto 0);
  signal memory_space_5_lr_addr : std_logic_vector(0 downto 0);
  signal memory_space_5_lr_tag : std_logic_vector(0 downto 0);
  signal memory_space_5_lc_req : std_logic_vector(0 downto 0);
  signal memory_space_5_lc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_5_lc_data : std_logic_vector(31 downto 0);
  signal memory_space_5_lc_tag :  std_logic_vector(0 downto 0);
  signal memory_space_5_sr_req :  std_logic_vector(0 downto 0);
  signal memory_space_5_sr_ack : std_logic_vector(0 downto 0);
  signal memory_space_5_sr_addr : std_logic_vector(0 downto 0);
  signal memory_space_5_sr_data : std_logic_vector(31 downto 0);
  signal memory_space_5_sr_tag : std_logic_vector(0 downto 0);
  signal memory_space_5_sc_req : std_logic_vector(0 downto 0);
  signal memory_space_5_sc_ack :  std_logic_vector(0 downto 0);
  signal memory_space_5_sc_tag :  std_logic_vector(0 downto 0);
  -- 
begin --  
  -- tag register
  process(clk) 
  begin -- 
    if clk'event and clk = '1' then -- 
      if start='1' then -- 
        tag_out <= tag_in; -- 
      end if; -- 
    end if; -- 
  end process;
  -- the control path
  always_true_symbol <= true; 
  foo_CP_236: Block -- control-path 
    signal foo_CP_236_start: Boolean;
    signal Xentry_237_symbol: Boolean;
    signal Xexit_238_symbol: Boolean;
    signal branch_block_stmt_14_239_symbol : Boolean;
    -- 
  begin -- 
    foo_CP_236_start <=  true when start = '1' else false; -- control passed to control-path.
    Xentry_237_symbol  <= foo_CP_236_start; -- transition $entry
    branch_block_stmt_14_239: Block -- branch_block_stmt_14 
      signal branch_block_stmt_14_239_start: Boolean;
      signal Xentry_240_symbol: Boolean;
      signal Xexit_241_symbol: Boolean;
      signal branch_block_stmt_14_x_xentry_x_xx_x242_symbol : Boolean;
      signal branch_block_stmt_14_x_xexit_x_xx_x243_symbol : Boolean;
      signal assign_stmt_19_x_xentry_x_xx_x244_symbol : Boolean;
      signal assign_stmt_19_x_xexit_x_xx_x245_symbol : Boolean;
      signal assign_stmt_24_x_xentry_x_xx_x246_symbol : Boolean;
      signal assign_stmt_24_x_xexit_x_xx_x247_symbol : Boolean;
      signal assign_stmt_28_x_xentry_x_xx_x248_symbol : Boolean;
      signal assign_stmt_28_x_xexit_x_xx_x249_symbol : Boolean;
      signal assign_stmt_31_x_xentry_x_xx_x250_symbol : Boolean;
      signal assign_stmt_31_x_xexit_x_xx_x251_symbol : Boolean;
      signal assign_stmt_34_x_xentry_x_xx_x252_symbol : Boolean;
      signal assign_stmt_34_x_xexit_x_xx_x253_symbol : Boolean;
      signal assign_stmt_37_x_xentry_x_xx_x254_symbol : Boolean;
      signal assign_stmt_37_x_xexit_x_xx_x255_symbol : Boolean;
      signal assign_stmt_42_x_xentry_x_xx_x256_symbol : Boolean;
      signal assign_stmt_42_x_xexit_x_xx_x257_symbol : Boolean;
      signal assign_stmt_47_x_xentry_x_xx_x258_symbol : Boolean;
      signal assign_stmt_47_x_xexit_x_xx_x259_symbol : Boolean;
      signal assign_stmt_51_x_xentry_x_xx_x260_symbol : Boolean;
      signal assign_stmt_51_x_xexit_x_xx_x261_symbol : Boolean;
      signal assign_stmt_54_x_xentry_x_xx_x262_symbol : Boolean;
      signal assign_stmt_54_x_xexit_x_xx_x263_symbol : Boolean;
      signal assign_stmt_57_x_xentry_x_xx_x264_symbol : Boolean;
      signal assign_stmt_57_x_xexit_x_xx_x265_symbol : Boolean;
      signal return_x_xx_x266_symbol : Boolean;
      signal merge_stmt_59_x_xexit_x_xx_x267_symbol : Boolean;
      signal assign_stmt_62_x_xentry_x_xx_x268_symbol : Boolean;
      signal assign_stmt_62_x_xexit_x_xx_x269_symbol : Boolean;
      signal assign_stmt_19_270_symbol : Boolean;
      signal assign_stmt_24_291_symbol : Boolean;
      signal assign_stmt_28_295_symbol : Boolean;
      signal assign_stmt_31_308_symbol : Boolean;
      signal assign_stmt_34_329_symbol : Boolean;
      signal assign_stmt_37_350_symbol : Boolean;
      signal assign_stmt_42_371_symbol : Boolean;
      signal assign_stmt_47_384_symbol : Boolean;
      signal assign_stmt_51_388_symbol : Boolean;
      signal assign_stmt_54_401_symbol : Boolean;
      signal assign_stmt_57_422_symbol : Boolean;
      signal assign_stmt_62_443_symbol : Boolean;
      signal return_x_xx_xPhiReq_464_symbol : Boolean;
      signal merge_stmt_59_PhiReqMerge_467_symbol : Boolean;
      signal merge_stmt_59_PhiAck_468_symbol : Boolean;
      -- 
    begin -- 
      branch_block_stmt_14_239_start <= Xentry_237_symbol; -- control passed to block
      Xentry_240_symbol  <= branch_block_stmt_14_239_start; -- transition branch_block_stmt_14/$entry
      branch_block_stmt_14_x_xentry_x_xx_x242_symbol  <=  Xentry_240_symbol; -- place branch_block_stmt_14/branch_block_stmt_14__entry__ (optimized away) 
      branch_block_stmt_14_x_xexit_x_xx_x243_symbol  <=  assign_stmt_62_x_xexit_x_xx_x269_symbol; -- place branch_block_stmt_14/branch_block_stmt_14__exit__ (optimized away) 
      assign_stmt_19_x_xentry_x_xx_x244_symbol  <=  branch_block_stmt_14_x_xentry_x_xx_x242_symbol; -- place branch_block_stmt_14/assign_stmt_19__entry__ (optimized away) 
      assign_stmt_19_x_xexit_x_xx_x245_symbol  <=  assign_stmt_19_270_symbol; -- place branch_block_stmt_14/assign_stmt_19__exit__ (optimized away) 
      assign_stmt_24_x_xentry_x_xx_x246_symbol  <=  assign_stmt_19_x_xexit_x_xx_x245_symbol; -- place branch_block_stmt_14/assign_stmt_24__entry__ (optimized away) 
      assign_stmt_24_x_xexit_x_xx_x247_symbol  <=  assign_stmt_24_291_symbol; -- place branch_block_stmt_14/assign_stmt_24__exit__ (optimized away) 
      assign_stmt_28_x_xentry_x_xx_x248_symbol  <=  assign_stmt_24_x_xexit_x_xx_x247_symbol; -- place branch_block_stmt_14/assign_stmt_28__entry__ (optimized away) 
      assign_stmt_28_x_xexit_x_xx_x249_symbol  <=  assign_stmt_28_295_symbol; -- place branch_block_stmt_14/assign_stmt_28__exit__ (optimized away) 
      assign_stmt_31_x_xentry_x_xx_x250_symbol  <=  assign_stmt_28_x_xexit_x_xx_x249_symbol; -- place branch_block_stmt_14/assign_stmt_31__entry__ (optimized away) 
      assign_stmt_31_x_xexit_x_xx_x251_symbol  <=  assign_stmt_31_308_symbol; -- place branch_block_stmt_14/assign_stmt_31__exit__ (optimized away) 
      assign_stmt_34_x_xentry_x_xx_x252_symbol  <=  assign_stmt_31_x_xexit_x_xx_x251_symbol; -- place branch_block_stmt_14/assign_stmt_34__entry__ (optimized away) 
      assign_stmt_34_x_xexit_x_xx_x253_symbol  <=  assign_stmt_34_329_symbol; -- place branch_block_stmt_14/assign_stmt_34__exit__ (optimized away) 
      assign_stmt_37_x_xentry_x_xx_x254_symbol  <=  assign_stmt_34_x_xexit_x_xx_x253_symbol; -- place branch_block_stmt_14/assign_stmt_37__entry__ (optimized away) 
      assign_stmt_37_x_xexit_x_xx_x255_symbol  <=  assign_stmt_37_350_symbol; -- place branch_block_stmt_14/assign_stmt_37__exit__ (optimized away) 
      assign_stmt_42_x_xentry_x_xx_x256_symbol  <=  assign_stmt_37_x_xexit_x_xx_x255_symbol; -- place branch_block_stmt_14/assign_stmt_42__entry__ (optimized away) 
      assign_stmt_42_x_xexit_x_xx_x257_symbol  <=  assign_stmt_42_371_symbol; -- place branch_block_stmt_14/assign_stmt_42__exit__ (optimized away) 
      assign_stmt_47_x_xentry_x_xx_x258_symbol  <=  assign_stmt_42_x_xexit_x_xx_x257_symbol; -- place branch_block_stmt_14/assign_stmt_47__entry__ (optimized away) 
      assign_stmt_47_x_xexit_x_xx_x259_symbol  <=  assign_stmt_47_384_symbol; -- place branch_block_stmt_14/assign_stmt_47__exit__ (optimized away) 
      assign_stmt_51_x_xentry_x_xx_x260_symbol  <=  assign_stmt_47_x_xexit_x_xx_x259_symbol; -- place branch_block_stmt_14/assign_stmt_51__entry__ (optimized away) 
      assign_stmt_51_x_xexit_x_xx_x261_symbol  <=  assign_stmt_51_388_symbol; -- place branch_block_stmt_14/assign_stmt_51__exit__ (optimized away) 
      assign_stmt_54_x_xentry_x_xx_x262_symbol  <=  assign_stmt_51_x_xexit_x_xx_x261_symbol; -- place branch_block_stmt_14/assign_stmt_54__entry__ (optimized away) 
      assign_stmt_54_x_xexit_x_xx_x263_symbol  <=  assign_stmt_54_401_symbol; -- place branch_block_stmt_14/assign_stmt_54__exit__ (optimized away) 
      assign_stmt_57_x_xentry_x_xx_x264_symbol  <=  assign_stmt_54_x_xexit_x_xx_x263_symbol; -- place branch_block_stmt_14/assign_stmt_57__entry__ (optimized away) 
      assign_stmt_57_x_xexit_x_xx_x265_symbol  <=  assign_stmt_57_422_symbol; -- place branch_block_stmt_14/assign_stmt_57__exit__ (optimized away) 
      return_x_xx_x266_symbol  <=  assign_stmt_57_x_xexit_x_xx_x265_symbol; -- place branch_block_stmt_14/return__ (optimized away) 
      merge_stmt_59_x_xexit_x_xx_x267_symbol  <=  merge_stmt_59_PhiAck_468_symbol; -- place branch_block_stmt_14/merge_stmt_59__exit__ (optimized away) 
      assign_stmt_62_x_xentry_x_xx_x268_symbol  <=  merge_stmt_59_x_xexit_x_xx_x267_symbol; -- place branch_block_stmt_14/assign_stmt_62__entry__ (optimized away) 
      assign_stmt_62_x_xexit_x_xx_x269_symbol  <=  assign_stmt_62_443_symbol; -- place branch_block_stmt_14/assign_stmt_62__exit__ (optimized away) 
      assign_stmt_19_270: Block -- branch_block_stmt_14/assign_stmt_19 
        signal assign_stmt_19_270_start: Boolean;
        signal Xentry_271_symbol: Boolean;
        signal Xexit_272_symbol: Boolean;
        signal simple_obj_ref_17_273_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_19_270_start <= assign_stmt_19_x_xentry_x_xx_x244_symbol; -- control passed to block
        Xentry_271_symbol  <= assign_stmt_19_270_start; -- transition branch_block_stmt_14/assign_stmt_19/$entry
        simple_obj_ref_17_273: Block -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17 
          signal simple_obj_ref_17_273_start: Boolean;
          signal Xentry_274_symbol: Boolean;
          signal Xexit_275_symbol: Boolean;
          signal simple_obj_ref_17_write_276_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_17_273_start <= Xentry_271_symbol; -- control passed to block
          Xentry_274_symbol  <= simple_obj_ref_17_273_start; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/$entry
          simple_obj_ref_17_write_276: Block -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write 
            signal simple_obj_ref_17_write_276_start: Boolean;
            signal Xentry_277_symbol: Boolean;
            signal Xexit_278_symbol: Boolean;
            signal split_req_279_symbol : Boolean;
            signal split_ack_280_symbol : Boolean;
            signal word_access_281_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_17_write_276_start <= Xentry_274_symbol; -- control passed to block
            Xentry_277_symbol  <= simple_obj_ref_17_write_276_start; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/$entry
            split_req_279_symbol <= Xentry_277_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/split_req
            simple_obj_ref_17_gather_scatter_req_0 <= split_req_279_symbol; -- link to DP
            split_ack_280_symbol <= simple_obj_ref_17_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/split_ack
            word_access_281: Block -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access 
              signal word_access_281_start: Boolean;
              signal Xentry_282_symbol: Boolean;
              signal Xexit_283_symbol: Boolean;
              signal word_access_0_284_symbol : Boolean;
              -- 
            begin -- 
              word_access_281_start <= split_ack_280_symbol; -- control passed to block
              Xentry_282_symbol  <= word_access_281_start; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/$entry
              word_access_0_284: Block -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0 
                signal word_access_0_284_start: Boolean;
                signal Xentry_285_symbol: Boolean;
                signal Xexit_286_symbol: Boolean;
                signal rr_287_symbol : Boolean;
                signal ra_288_symbol : Boolean;
                signal cr_289_symbol : Boolean;
                signal ca_290_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_284_start <= Xentry_282_symbol; -- control passed to block
                Xentry_285_symbol  <= word_access_0_284_start; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0/$entry
                rr_287_symbol <= Xentry_285_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0/rr
                simple_obj_ref_17_store_0_req_0 <= rr_287_symbol; -- link to DP
                ra_288_symbol <= simple_obj_ref_17_store_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0/ra
                cr_289_symbol <= ra_288_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0/cr
                simple_obj_ref_17_store_0_req_1 <= cr_289_symbol; -- link to DP
                ca_290_symbol <= simple_obj_ref_17_store_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0/ca
                Xexit_286_symbol <= ca_290_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0/$exit
                word_access_0_284_symbol <= Xexit_286_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/word_access_0
              Xexit_283_symbol <= word_access_0_284_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access/$exit
              word_access_281_symbol <= Xexit_283_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/word_access
            Xexit_278_symbol <= word_access_281_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write/$exit
            simple_obj_ref_17_write_276_symbol <= Xexit_278_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/simple_obj_ref_17_write
          Xexit_275_symbol <= simple_obj_ref_17_write_276_symbol; -- transition branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17/$exit
          simple_obj_ref_17_273_symbol <= Xexit_275_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_19/simple_obj_ref_17
        Xexit_272_symbol <= simple_obj_ref_17_273_symbol; -- transition branch_block_stmt_14/assign_stmt_19/$exit
        assign_stmt_19_270_symbol <= Xexit_272_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_19
      assign_stmt_24_291: Block -- branch_block_stmt_14/assign_stmt_24 
        signal assign_stmt_24_291_start: Boolean;
        signal Xentry_292_symbol: Boolean;
        signal Xexit_293_symbol: Boolean;
        signal dummy_294_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_24_291_start <= assign_stmt_24_x_xentry_x_xx_x246_symbol; -- control passed to block
        Xentry_292_symbol  <= assign_stmt_24_291_start; -- transition branch_block_stmt_14/assign_stmt_24/$entry
        dummy_294_symbol <= Xentry_292_symbol; -- transition branch_block_stmt_14/assign_stmt_24/dummy
        Xexit_293_symbol <= dummy_294_symbol; -- transition branch_block_stmt_14/assign_stmt_24/$exit
        assign_stmt_24_291_symbol <= Xexit_293_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_24
      assign_stmt_28_295: Block -- branch_block_stmt_14/assign_stmt_28 
        signal assign_stmt_28_295_start: Boolean;
        signal Xentry_296_symbol: Boolean;
        signal Xexit_297_symbol: Boolean;
        signal type_cast_27_298_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_28_295_start <= assign_stmt_28_x_xentry_x_xx_x248_symbol; -- control passed to block
        Xentry_296_symbol  <= assign_stmt_28_295_start; -- transition branch_block_stmt_14/assign_stmt_28/$entry
        type_cast_27_298: Block -- branch_block_stmt_14/assign_stmt_28/type_cast_27 
          signal type_cast_27_298_start: Boolean;
          signal Xentry_299_symbol: Boolean;
          signal Xexit_300_symbol: Boolean;
          signal simple_obj_ref_26_301_symbol : Boolean;
          signal req_306_symbol : Boolean;
          signal ack_307_symbol : Boolean;
          -- 
        begin -- 
          type_cast_27_298_start <= Xentry_296_symbol; -- control passed to block
          Xentry_299_symbol  <= type_cast_27_298_start; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/$entry
          simple_obj_ref_26_301: Block -- branch_block_stmt_14/assign_stmt_28/type_cast_27/simple_obj_ref_26 
            signal simple_obj_ref_26_301_start: Boolean;
            signal Xentry_302_symbol: Boolean;
            signal Xexit_303_symbol: Boolean;
            signal req_304_symbol : Boolean;
            signal ack_305_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_26_301_start <= Xentry_299_symbol; -- control passed to block
            Xentry_302_symbol  <= simple_obj_ref_26_301_start; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/simple_obj_ref_26/$entry
            req_304_symbol <= Xentry_302_symbol; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/simple_obj_ref_26/req
            simple_obj_ref_26_inst_req_0 <= req_304_symbol; -- link to DP
            ack_305_symbol <= simple_obj_ref_26_inst_ack_0; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/simple_obj_ref_26/ack
            Xexit_303_symbol <= ack_305_symbol; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/simple_obj_ref_26/$exit
            simple_obj_ref_26_301_symbol <= Xexit_303_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_28/type_cast_27/simple_obj_ref_26
          req_306_symbol <= simple_obj_ref_26_301_symbol; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/req
          type_cast_27_inst_req_0 <= req_306_symbol; -- link to DP
          ack_307_symbol <= type_cast_27_inst_ack_0; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/ack
          Xexit_300_symbol <= ack_307_symbol; -- transition branch_block_stmt_14/assign_stmt_28/type_cast_27/$exit
          type_cast_27_298_symbol <= Xexit_300_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_28/type_cast_27
        Xexit_297_symbol <= type_cast_27_298_symbol; -- transition branch_block_stmt_14/assign_stmt_28/$exit
        assign_stmt_28_295_symbol <= Xexit_297_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_28
      assign_stmt_31_308: Block -- branch_block_stmt_14/assign_stmt_31 
        signal assign_stmt_31_308_start: Boolean;
        signal Xentry_309_symbol: Boolean;
        signal Xexit_310_symbol: Boolean;
        signal simple_obj_ref_29_311_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_31_308_start <= assign_stmt_31_x_xentry_x_xx_x250_symbol; -- control passed to block
        Xentry_309_symbol  <= assign_stmt_31_308_start; -- transition branch_block_stmt_14/assign_stmt_31/$entry
        simple_obj_ref_29_311: Block -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29 
          signal simple_obj_ref_29_311_start: Boolean;
          signal Xentry_312_symbol: Boolean;
          signal Xexit_313_symbol: Boolean;
          signal simple_obj_ref_29_write_314_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_29_311_start <= Xentry_309_symbol; -- control passed to block
          Xentry_312_symbol  <= simple_obj_ref_29_311_start; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/$entry
          simple_obj_ref_29_write_314: Block -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write 
            signal simple_obj_ref_29_write_314_start: Boolean;
            signal Xentry_315_symbol: Boolean;
            signal Xexit_316_symbol: Boolean;
            signal split_req_317_symbol : Boolean;
            signal split_ack_318_symbol : Boolean;
            signal word_access_319_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_29_write_314_start <= Xentry_312_symbol; -- control passed to block
            Xentry_315_symbol  <= simple_obj_ref_29_write_314_start; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/$entry
            split_req_317_symbol <= Xentry_315_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/split_req
            simple_obj_ref_29_gather_scatter_req_0 <= split_req_317_symbol; -- link to DP
            split_ack_318_symbol <= simple_obj_ref_29_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/split_ack
            word_access_319: Block -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access 
              signal word_access_319_start: Boolean;
              signal Xentry_320_symbol: Boolean;
              signal Xexit_321_symbol: Boolean;
              signal word_access_0_322_symbol : Boolean;
              -- 
            begin -- 
              word_access_319_start <= split_ack_318_symbol; -- control passed to block
              Xentry_320_symbol  <= word_access_319_start; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/$entry
              word_access_0_322: Block -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0 
                signal word_access_0_322_start: Boolean;
                signal Xentry_323_symbol: Boolean;
                signal Xexit_324_symbol: Boolean;
                signal rr_325_symbol : Boolean;
                signal ra_326_symbol : Boolean;
                signal cr_327_symbol : Boolean;
                signal ca_328_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_322_start <= Xentry_320_symbol; -- control passed to block
                Xentry_323_symbol  <= word_access_0_322_start; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0/$entry
                rr_325_symbol <= Xentry_323_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0/rr
                simple_obj_ref_29_store_0_req_0 <= rr_325_symbol; -- link to DP
                ra_326_symbol <= simple_obj_ref_29_store_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0/ra
                cr_327_symbol <= ra_326_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0/cr
                simple_obj_ref_29_store_0_req_1 <= cr_327_symbol; -- link to DP
                ca_328_symbol <= simple_obj_ref_29_store_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0/ca
                Xexit_324_symbol <= ca_328_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0/$exit
                word_access_0_322_symbol <= Xexit_324_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/word_access_0
              Xexit_321_symbol <= word_access_0_322_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access/$exit
              word_access_319_symbol <= Xexit_321_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/word_access
            Xexit_316_symbol <= word_access_319_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write/$exit
            simple_obj_ref_29_write_314_symbol <= Xexit_316_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/simple_obj_ref_29_write
          Xexit_313_symbol <= simple_obj_ref_29_write_314_symbol; -- transition branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29/$exit
          simple_obj_ref_29_311_symbol <= Xexit_313_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_31/simple_obj_ref_29
        Xexit_310_symbol <= simple_obj_ref_29_311_symbol; -- transition branch_block_stmt_14/assign_stmt_31/$exit
        assign_stmt_31_308_symbol <= Xexit_310_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_31
      assign_stmt_34_329: Block -- branch_block_stmt_14/assign_stmt_34 
        signal assign_stmt_34_329_start: Boolean;
        signal Xentry_330_symbol: Boolean;
        signal Xexit_331_symbol: Boolean;
        signal simple_obj_ref_33_332_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_34_329_start <= assign_stmt_34_x_xentry_x_xx_x252_symbol; -- control passed to block
        Xentry_330_symbol  <= assign_stmt_34_329_start; -- transition branch_block_stmt_14/assign_stmt_34/$entry
        simple_obj_ref_33_332: Block -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33 
          signal simple_obj_ref_33_332_start: Boolean;
          signal Xentry_333_symbol: Boolean;
          signal Xexit_334_symbol: Boolean;
          signal simple_obj_ref_33_read_335_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_33_332_start <= Xentry_330_symbol; -- control passed to block
          Xentry_333_symbol  <= simple_obj_ref_33_332_start; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/$entry
          simple_obj_ref_33_read_335: Block -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read 
            signal simple_obj_ref_33_read_335_start: Boolean;
            signal Xentry_336_symbol: Boolean;
            signal Xexit_337_symbol: Boolean;
            signal word_access_338_symbol : Boolean;
            signal merge_req_348_symbol : Boolean;
            signal merge_ack_349_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_33_read_335_start <= Xentry_333_symbol; -- control passed to block
            Xentry_336_symbol  <= simple_obj_ref_33_read_335_start; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/$entry
            word_access_338: Block -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access 
              signal word_access_338_start: Boolean;
              signal Xentry_339_symbol: Boolean;
              signal Xexit_340_symbol: Boolean;
              signal word_access_0_341_symbol : Boolean;
              -- 
            begin -- 
              word_access_338_start <= Xentry_336_symbol; -- control passed to block
              Xentry_339_symbol  <= word_access_338_start; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/$entry
              word_access_0_341: Block -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0 
                signal word_access_0_341_start: Boolean;
                signal Xentry_342_symbol: Boolean;
                signal Xexit_343_symbol: Boolean;
                signal rr_344_symbol : Boolean;
                signal ra_345_symbol : Boolean;
                signal cr_346_symbol : Boolean;
                signal ca_347_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_341_start <= Xentry_339_symbol; -- control passed to block
                Xentry_342_symbol  <= word_access_0_341_start; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0/$entry
                rr_344_symbol <= Xentry_342_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0/rr
                simple_obj_ref_33_load_0_req_0 <= rr_344_symbol; -- link to DP
                ra_345_symbol <= simple_obj_ref_33_load_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0/ra
                cr_346_symbol <= ra_345_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0/cr
                simple_obj_ref_33_load_0_req_1 <= cr_346_symbol; -- link to DP
                ca_347_symbol <= simple_obj_ref_33_load_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0/ca
                Xexit_343_symbol <= ca_347_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0/$exit
                word_access_0_341_symbol <= Xexit_343_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/word_access_0
              Xexit_340_symbol <= word_access_0_341_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access/$exit
              word_access_338_symbol <= Xexit_340_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/word_access
            merge_req_348_symbol <= word_access_338_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/merge_req
            simple_obj_ref_33_gather_scatter_req_0 <= merge_req_348_symbol; -- link to DP
            merge_ack_349_symbol <= simple_obj_ref_33_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/merge_ack
            Xexit_337_symbol <= merge_ack_349_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read/$exit
            simple_obj_ref_33_read_335_symbol <= Xexit_337_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/simple_obj_ref_33_read
          Xexit_334_symbol <= simple_obj_ref_33_read_335_symbol; -- transition branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33/$exit
          simple_obj_ref_33_332_symbol <= Xexit_334_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_34/simple_obj_ref_33
        Xexit_331_symbol <= simple_obj_ref_33_332_symbol; -- transition branch_block_stmt_14/assign_stmt_34/$exit
        assign_stmt_34_329_symbol <= Xexit_331_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_34
      assign_stmt_37_350: Block -- branch_block_stmt_14/assign_stmt_37 
        signal assign_stmt_37_350_start: Boolean;
        signal Xentry_351_symbol: Boolean;
        signal Xexit_352_symbol: Boolean;
        signal simple_obj_ref_36_353_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_37_350_start <= assign_stmt_37_x_xentry_x_xx_x254_symbol; -- control passed to block
        Xentry_351_symbol  <= assign_stmt_37_350_start; -- transition branch_block_stmt_14/assign_stmt_37/$entry
        simple_obj_ref_36_353: Block -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36 
          signal simple_obj_ref_36_353_start: Boolean;
          signal Xentry_354_symbol: Boolean;
          signal Xexit_355_symbol: Boolean;
          signal simple_obj_ref_36_read_356_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_36_353_start <= Xentry_351_symbol; -- control passed to block
          Xentry_354_symbol  <= simple_obj_ref_36_353_start; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/$entry
          simple_obj_ref_36_read_356: Block -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read 
            signal simple_obj_ref_36_read_356_start: Boolean;
            signal Xentry_357_symbol: Boolean;
            signal Xexit_358_symbol: Boolean;
            signal word_access_359_symbol : Boolean;
            signal merge_req_369_symbol : Boolean;
            signal merge_ack_370_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_36_read_356_start <= Xentry_354_symbol; -- control passed to block
            Xentry_357_symbol  <= simple_obj_ref_36_read_356_start; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/$entry
            word_access_359: Block -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access 
              signal word_access_359_start: Boolean;
              signal Xentry_360_symbol: Boolean;
              signal Xexit_361_symbol: Boolean;
              signal word_access_0_362_symbol : Boolean;
              -- 
            begin -- 
              word_access_359_start <= Xentry_357_symbol; -- control passed to block
              Xentry_360_symbol  <= word_access_359_start; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/$entry
              word_access_0_362: Block -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0 
                signal word_access_0_362_start: Boolean;
                signal Xentry_363_symbol: Boolean;
                signal Xexit_364_symbol: Boolean;
                signal rr_365_symbol : Boolean;
                signal ra_366_symbol : Boolean;
                signal cr_367_symbol : Boolean;
                signal ca_368_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_362_start <= Xentry_360_symbol; -- control passed to block
                Xentry_363_symbol  <= word_access_0_362_start; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0/$entry
                rr_365_symbol <= Xentry_363_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0/rr
                simple_obj_ref_36_load_0_req_0 <= rr_365_symbol; -- link to DP
                ra_366_symbol <= simple_obj_ref_36_load_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0/ra
                cr_367_symbol <= ra_366_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0/cr
                simple_obj_ref_36_load_0_req_1 <= cr_367_symbol; -- link to DP
                ca_368_symbol <= simple_obj_ref_36_load_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0/ca
                Xexit_364_symbol <= ca_368_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0/$exit
                word_access_0_362_symbol <= Xexit_364_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/word_access_0
              Xexit_361_symbol <= word_access_0_362_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access/$exit
              word_access_359_symbol <= Xexit_361_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/word_access
            merge_req_369_symbol <= word_access_359_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/merge_req
            simple_obj_ref_36_gather_scatter_req_0 <= merge_req_369_symbol; -- link to DP
            merge_ack_370_symbol <= simple_obj_ref_36_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/merge_ack
            Xexit_358_symbol <= merge_ack_370_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read/$exit
            simple_obj_ref_36_read_356_symbol <= Xexit_358_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/simple_obj_ref_36_read
          Xexit_355_symbol <= simple_obj_ref_36_read_356_symbol; -- transition branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36/$exit
          simple_obj_ref_36_353_symbol <= Xexit_355_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_37/simple_obj_ref_36
        Xexit_352_symbol <= simple_obj_ref_36_353_symbol; -- transition branch_block_stmt_14/assign_stmt_37/$exit
        assign_stmt_37_350_symbol <= Xexit_352_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_37
      assign_stmt_42_371: Block -- branch_block_stmt_14/assign_stmt_42 
        signal assign_stmt_42_371_start: Boolean;
        signal Xentry_372_symbol: Boolean;
        signal Xexit_373_symbol: Boolean;
        signal binary_41_374_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_42_371_start <= assign_stmt_42_x_xentry_x_xx_x256_symbol; -- control passed to block
        Xentry_372_symbol  <= assign_stmt_42_371_start; -- transition branch_block_stmt_14/assign_stmt_42/$entry
        binary_41_374: Block -- branch_block_stmt_14/assign_stmt_42/binary_41 
          signal binary_41_374_start: Boolean;
          signal Xentry_375_symbol: Boolean;
          signal Xexit_376_symbol: Boolean;
          signal binary_41_inputs_377_symbol : Boolean;
          signal rr_380_symbol : Boolean;
          signal ra_381_symbol : Boolean;
          signal cr_382_symbol : Boolean;
          signal ca_383_symbol : Boolean;
          -- 
        begin -- 
          binary_41_374_start <= Xentry_372_symbol; -- control passed to block
          Xentry_375_symbol  <= binary_41_374_start; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/$entry
          binary_41_inputs_377: Block -- branch_block_stmt_14/assign_stmt_42/binary_41/binary_41_inputs 
            signal binary_41_inputs_377_start: Boolean;
            signal Xentry_378_symbol: Boolean;
            signal Xexit_379_symbol: Boolean;
            -- 
          begin -- 
            binary_41_inputs_377_start <= Xentry_375_symbol; -- control passed to block
            Xentry_378_symbol  <= binary_41_inputs_377_start; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/binary_41_inputs/$entry
            Xexit_379_symbol <= Xentry_378_symbol; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/binary_41_inputs/$exit
            binary_41_inputs_377_symbol <= Xexit_379_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_42/binary_41/binary_41_inputs
          rr_380_symbol <= binary_41_inputs_377_symbol; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/rr
          binary_41_inst_req_0 <= rr_380_symbol; -- link to DP
          ra_381_symbol <= binary_41_inst_ack_0; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/ra
          cr_382_symbol <= ra_381_symbol; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/cr
          binary_41_inst_req_1 <= cr_382_symbol; -- link to DP
          ca_383_symbol <= binary_41_inst_ack_1; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/ca
          Xexit_376_symbol <= ca_383_symbol; -- transition branch_block_stmt_14/assign_stmt_42/binary_41/$exit
          binary_41_374_symbol <= Xexit_376_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_42/binary_41
        Xexit_373_symbol <= binary_41_374_symbol; -- transition branch_block_stmt_14/assign_stmt_42/$exit
        assign_stmt_42_371_symbol <= Xexit_373_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_42
      assign_stmt_47_384: Block -- branch_block_stmt_14/assign_stmt_47 
        signal assign_stmt_47_384_start: Boolean;
        signal Xentry_385_symbol: Boolean;
        signal Xexit_386_symbol: Boolean;
        signal dummy_387_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_47_384_start <= assign_stmt_47_x_xentry_x_xx_x258_symbol; -- control passed to block
        Xentry_385_symbol  <= assign_stmt_47_384_start; -- transition branch_block_stmt_14/assign_stmt_47/$entry
        dummy_387_symbol <= Xentry_385_symbol; -- transition branch_block_stmt_14/assign_stmt_47/dummy
        Xexit_386_symbol <= dummy_387_symbol; -- transition branch_block_stmt_14/assign_stmt_47/$exit
        assign_stmt_47_384_symbol <= Xexit_386_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_47
      assign_stmt_51_388: Block -- branch_block_stmt_14/assign_stmt_51 
        signal assign_stmt_51_388_start: Boolean;
        signal Xentry_389_symbol: Boolean;
        signal Xexit_390_symbol: Boolean;
        signal type_cast_50_391_symbol : Boolean;
        signal simple_obj_ref_48_396_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_51_388_start <= assign_stmt_51_x_xentry_x_xx_x260_symbol; -- control passed to block
        Xentry_389_symbol  <= assign_stmt_51_388_start; -- transition branch_block_stmt_14/assign_stmt_51/$entry
        type_cast_50_391: Block -- branch_block_stmt_14/assign_stmt_51/type_cast_50 
          signal type_cast_50_391_start: Boolean;
          signal Xentry_392_symbol: Boolean;
          signal Xexit_393_symbol: Boolean;
          signal req_394_symbol : Boolean;
          signal ack_395_symbol : Boolean;
          -- 
        begin -- 
          type_cast_50_391_start <= Xentry_389_symbol; -- control passed to block
          Xentry_392_symbol  <= type_cast_50_391_start; -- transition branch_block_stmt_14/assign_stmt_51/type_cast_50/$entry
          req_394_symbol <= Xentry_392_symbol; -- transition branch_block_stmt_14/assign_stmt_51/type_cast_50/req
          type_cast_50_inst_req_0 <= req_394_symbol; -- link to DP
          ack_395_symbol <= type_cast_50_inst_ack_0; -- transition branch_block_stmt_14/assign_stmt_51/type_cast_50/ack
          Xexit_393_symbol <= ack_395_symbol; -- transition branch_block_stmt_14/assign_stmt_51/type_cast_50/$exit
          type_cast_50_391_symbol <= Xexit_393_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_51/type_cast_50
        simple_obj_ref_48_396: Block -- branch_block_stmt_14/assign_stmt_51/simple_obj_ref_48 
          signal simple_obj_ref_48_396_start: Boolean;
          signal Xentry_397_symbol: Boolean;
          signal Xexit_398_symbol: Boolean;
          signal pipe_wreq_399_symbol : Boolean;
          signal pipe_wack_400_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_48_396_start <= type_cast_50_391_symbol; -- control passed to block
          Xentry_397_symbol  <= simple_obj_ref_48_396_start; -- transition branch_block_stmt_14/assign_stmt_51/simple_obj_ref_48/$entry
          pipe_wreq_399_symbol <= Xentry_397_symbol; -- transition branch_block_stmt_14/assign_stmt_51/simple_obj_ref_48/pipe_wreq
          simple_obj_ref_48_inst_req_0 <= pipe_wreq_399_symbol; -- link to DP
          pipe_wack_400_symbol <= simple_obj_ref_48_inst_ack_0; -- transition branch_block_stmt_14/assign_stmt_51/simple_obj_ref_48/pipe_wack
          Xexit_398_symbol <= pipe_wack_400_symbol; -- transition branch_block_stmt_14/assign_stmt_51/simple_obj_ref_48/$exit
          simple_obj_ref_48_396_symbol <= Xexit_398_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_51/simple_obj_ref_48
        Xexit_390_symbol <= simple_obj_ref_48_396_symbol; -- transition branch_block_stmt_14/assign_stmt_51/$exit
        assign_stmt_51_388_symbol <= Xexit_390_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_51
      assign_stmt_54_401: Block -- branch_block_stmt_14/assign_stmt_54 
        signal assign_stmt_54_401_start: Boolean;
        signal Xentry_402_symbol: Boolean;
        signal Xexit_403_symbol: Boolean;
        signal simple_obj_ref_53_404_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_54_401_start <= assign_stmt_54_x_xentry_x_xx_x262_symbol; -- control passed to block
        Xentry_402_symbol  <= assign_stmt_54_401_start; -- transition branch_block_stmt_14/assign_stmt_54/$entry
        simple_obj_ref_53_404: Block -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53 
          signal simple_obj_ref_53_404_start: Boolean;
          signal Xentry_405_symbol: Boolean;
          signal Xexit_406_symbol: Boolean;
          signal simple_obj_ref_53_read_407_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_53_404_start <= Xentry_402_symbol; -- control passed to block
          Xentry_405_symbol  <= simple_obj_ref_53_404_start; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/$entry
          simple_obj_ref_53_read_407: Block -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read 
            signal simple_obj_ref_53_read_407_start: Boolean;
            signal Xentry_408_symbol: Boolean;
            signal Xexit_409_symbol: Boolean;
            signal word_access_410_symbol : Boolean;
            signal merge_req_420_symbol : Boolean;
            signal merge_ack_421_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_53_read_407_start <= Xentry_405_symbol; -- control passed to block
            Xentry_408_symbol  <= simple_obj_ref_53_read_407_start; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/$entry
            word_access_410: Block -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access 
              signal word_access_410_start: Boolean;
              signal Xentry_411_symbol: Boolean;
              signal Xexit_412_symbol: Boolean;
              signal word_access_0_413_symbol : Boolean;
              -- 
            begin -- 
              word_access_410_start <= Xentry_408_symbol; -- control passed to block
              Xentry_411_symbol  <= word_access_410_start; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/$entry
              word_access_0_413: Block -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0 
                signal word_access_0_413_start: Boolean;
                signal Xentry_414_symbol: Boolean;
                signal Xexit_415_symbol: Boolean;
                signal rr_416_symbol : Boolean;
                signal ra_417_symbol : Boolean;
                signal cr_418_symbol : Boolean;
                signal ca_419_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_413_start <= Xentry_411_symbol; -- control passed to block
                Xentry_414_symbol  <= word_access_0_413_start; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0/$entry
                rr_416_symbol <= Xentry_414_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0/rr
                simple_obj_ref_53_load_0_req_0 <= rr_416_symbol; -- link to DP
                ra_417_symbol <= simple_obj_ref_53_load_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0/ra
                cr_418_symbol <= ra_417_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0/cr
                simple_obj_ref_53_load_0_req_1 <= cr_418_symbol; -- link to DP
                ca_419_symbol <= simple_obj_ref_53_load_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0/ca
                Xexit_415_symbol <= ca_419_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0/$exit
                word_access_0_413_symbol <= Xexit_415_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/word_access_0
              Xexit_412_symbol <= word_access_0_413_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access/$exit
              word_access_410_symbol <= Xexit_412_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/word_access
            merge_req_420_symbol <= word_access_410_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/merge_req
            simple_obj_ref_53_gather_scatter_req_0 <= merge_req_420_symbol; -- link to DP
            merge_ack_421_symbol <= simple_obj_ref_53_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/merge_ack
            Xexit_409_symbol <= merge_ack_421_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read/$exit
            simple_obj_ref_53_read_407_symbol <= Xexit_409_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/simple_obj_ref_53_read
          Xexit_406_symbol <= simple_obj_ref_53_read_407_symbol; -- transition branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53/$exit
          simple_obj_ref_53_404_symbol <= Xexit_406_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_54/simple_obj_ref_53
        Xexit_403_symbol <= simple_obj_ref_53_404_symbol; -- transition branch_block_stmt_14/assign_stmt_54/$exit
        assign_stmt_54_401_symbol <= Xexit_403_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_54
      assign_stmt_57_422: Block -- branch_block_stmt_14/assign_stmt_57 
        signal assign_stmt_57_422_start: Boolean;
        signal Xentry_423_symbol: Boolean;
        signal Xexit_424_symbol: Boolean;
        signal simple_obj_ref_55_425_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_57_422_start <= assign_stmt_57_x_xentry_x_xx_x264_symbol; -- control passed to block
        Xentry_423_symbol  <= assign_stmt_57_422_start; -- transition branch_block_stmt_14/assign_stmt_57/$entry
        simple_obj_ref_55_425: Block -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55 
          signal simple_obj_ref_55_425_start: Boolean;
          signal Xentry_426_symbol: Boolean;
          signal Xexit_427_symbol: Boolean;
          signal simple_obj_ref_55_write_428_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_55_425_start <= Xentry_423_symbol; -- control passed to block
          Xentry_426_symbol  <= simple_obj_ref_55_425_start; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/$entry
          simple_obj_ref_55_write_428: Block -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write 
            signal simple_obj_ref_55_write_428_start: Boolean;
            signal Xentry_429_symbol: Boolean;
            signal Xexit_430_symbol: Boolean;
            signal split_req_431_symbol : Boolean;
            signal split_ack_432_symbol : Boolean;
            signal word_access_433_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_55_write_428_start <= Xentry_426_symbol; -- control passed to block
            Xentry_429_symbol  <= simple_obj_ref_55_write_428_start; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/$entry
            split_req_431_symbol <= Xentry_429_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/split_req
            simple_obj_ref_55_gather_scatter_req_0 <= split_req_431_symbol; -- link to DP
            split_ack_432_symbol <= simple_obj_ref_55_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/split_ack
            word_access_433: Block -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access 
              signal word_access_433_start: Boolean;
              signal Xentry_434_symbol: Boolean;
              signal Xexit_435_symbol: Boolean;
              signal word_access_0_436_symbol : Boolean;
              -- 
            begin -- 
              word_access_433_start <= split_ack_432_symbol; -- control passed to block
              Xentry_434_symbol  <= word_access_433_start; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/$entry
              word_access_0_436: Block -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0 
                signal word_access_0_436_start: Boolean;
                signal Xentry_437_symbol: Boolean;
                signal Xexit_438_symbol: Boolean;
                signal rr_439_symbol : Boolean;
                signal ra_440_symbol : Boolean;
                signal cr_441_symbol : Boolean;
                signal ca_442_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_436_start <= Xentry_434_symbol; -- control passed to block
                Xentry_437_symbol  <= word_access_0_436_start; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0/$entry
                rr_439_symbol <= Xentry_437_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0/rr
                simple_obj_ref_55_store_0_req_0 <= rr_439_symbol; -- link to DP
                ra_440_symbol <= simple_obj_ref_55_store_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0/ra
                cr_441_symbol <= ra_440_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0/cr
                simple_obj_ref_55_store_0_req_1 <= cr_441_symbol; -- link to DP
                ca_442_symbol <= simple_obj_ref_55_store_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0/ca
                Xexit_438_symbol <= ca_442_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0/$exit
                word_access_0_436_symbol <= Xexit_438_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/word_access_0
              Xexit_435_symbol <= word_access_0_436_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access/$exit
              word_access_433_symbol <= Xexit_435_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/word_access
            Xexit_430_symbol <= word_access_433_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write/$exit
            simple_obj_ref_55_write_428_symbol <= Xexit_430_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/simple_obj_ref_55_write
          Xexit_427_symbol <= simple_obj_ref_55_write_428_symbol; -- transition branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55/$exit
          simple_obj_ref_55_425_symbol <= Xexit_427_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_57/simple_obj_ref_55
        Xexit_424_symbol <= simple_obj_ref_55_425_symbol; -- transition branch_block_stmt_14/assign_stmt_57/$exit
        assign_stmt_57_422_symbol <= Xexit_424_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_57
      assign_stmt_62_443: Block -- branch_block_stmt_14/assign_stmt_62 
        signal assign_stmt_62_443_start: Boolean;
        signal Xentry_444_symbol: Boolean;
        signal Xexit_445_symbol: Boolean;
        signal simple_obj_ref_61_446_symbol : Boolean;
        -- 
      begin -- 
        assign_stmt_62_443_start <= assign_stmt_62_x_xentry_x_xx_x268_symbol; -- control passed to block
        Xentry_444_symbol  <= assign_stmt_62_443_start; -- transition branch_block_stmt_14/assign_stmt_62/$entry
        simple_obj_ref_61_446: Block -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61 
          signal simple_obj_ref_61_446_start: Boolean;
          signal Xentry_447_symbol: Boolean;
          signal Xexit_448_symbol: Boolean;
          signal simple_obj_ref_61_read_449_symbol : Boolean;
          -- 
        begin -- 
          simple_obj_ref_61_446_start <= Xentry_444_symbol; -- control passed to block
          Xentry_447_symbol  <= simple_obj_ref_61_446_start; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/$entry
          simple_obj_ref_61_read_449: Block -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read 
            signal simple_obj_ref_61_read_449_start: Boolean;
            signal Xentry_450_symbol: Boolean;
            signal Xexit_451_symbol: Boolean;
            signal word_access_452_symbol : Boolean;
            signal merge_req_462_symbol : Boolean;
            signal merge_ack_463_symbol : Boolean;
            -- 
          begin -- 
            simple_obj_ref_61_read_449_start <= Xentry_447_symbol; -- control passed to block
            Xentry_450_symbol  <= simple_obj_ref_61_read_449_start; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/$entry
            word_access_452: Block -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access 
              signal word_access_452_start: Boolean;
              signal Xentry_453_symbol: Boolean;
              signal Xexit_454_symbol: Boolean;
              signal word_access_0_455_symbol : Boolean;
              -- 
            begin -- 
              word_access_452_start <= Xentry_450_symbol; -- control passed to block
              Xentry_453_symbol  <= word_access_452_start; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/$entry
              word_access_0_455: Block -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0 
                signal word_access_0_455_start: Boolean;
                signal Xentry_456_symbol: Boolean;
                signal Xexit_457_symbol: Boolean;
                signal rr_458_symbol : Boolean;
                signal ra_459_symbol : Boolean;
                signal cr_460_symbol : Boolean;
                signal ca_461_symbol : Boolean;
                -- 
              begin -- 
                word_access_0_455_start <= Xentry_453_symbol; -- control passed to block
                Xentry_456_symbol  <= word_access_0_455_start; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0/$entry
                rr_458_symbol <= Xentry_456_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0/rr
                simple_obj_ref_61_load_0_req_0 <= rr_458_symbol; -- link to DP
                ra_459_symbol <= simple_obj_ref_61_load_0_ack_0; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0/ra
                cr_460_symbol <= ra_459_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0/cr
                simple_obj_ref_61_load_0_req_1 <= cr_460_symbol; -- link to DP
                ca_461_symbol <= simple_obj_ref_61_load_0_ack_1; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0/ca
                Xexit_457_symbol <= ca_461_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0/$exit
                word_access_0_455_symbol <= Xexit_457_symbol; -- control passed from block 
                -- 
              end Block; -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/word_access_0
              Xexit_454_symbol <= word_access_0_455_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access/$exit
              word_access_452_symbol <= Xexit_454_symbol; -- control passed from block 
              -- 
            end Block; -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/word_access
            merge_req_462_symbol <= word_access_452_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/merge_req
            simple_obj_ref_61_gather_scatter_req_0 <= merge_req_462_symbol; -- link to DP
            merge_ack_463_symbol <= simple_obj_ref_61_gather_scatter_ack_0; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/merge_ack
            Xexit_451_symbol <= merge_ack_463_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read/$exit
            simple_obj_ref_61_read_449_symbol <= Xexit_451_symbol; -- control passed from block 
            -- 
          end Block; -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/simple_obj_ref_61_read
          Xexit_448_symbol <= simple_obj_ref_61_read_449_symbol; -- transition branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61/$exit
          simple_obj_ref_61_446_symbol <= Xexit_448_symbol; -- control passed from block 
          -- 
        end Block; -- branch_block_stmt_14/assign_stmt_62/simple_obj_ref_61
        Xexit_445_symbol <= simple_obj_ref_61_446_symbol; -- transition branch_block_stmt_14/assign_stmt_62/$exit
        assign_stmt_62_443_symbol <= Xexit_445_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/assign_stmt_62
      return_x_xx_xPhiReq_464: Block -- branch_block_stmt_14/return___PhiReq 
        signal return_x_xx_xPhiReq_464_start: Boolean;
        signal Xentry_465_symbol: Boolean;
        signal Xexit_466_symbol: Boolean;
        -- 
      begin -- 
        return_x_xx_xPhiReq_464_start <= return_x_xx_x266_symbol; -- control passed to block
        Xentry_465_symbol  <= return_x_xx_xPhiReq_464_start; -- transition branch_block_stmt_14/return___PhiReq/$entry
        Xexit_466_symbol <= Xentry_465_symbol; -- transition branch_block_stmt_14/return___PhiReq/$exit
        return_x_xx_xPhiReq_464_symbol <= Xexit_466_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/return___PhiReq
      merge_stmt_59_PhiReqMerge_467_symbol  <=  return_x_xx_xPhiReq_464_symbol; -- place branch_block_stmt_14/merge_stmt_59_PhiReqMerge (optimized away) 
      merge_stmt_59_PhiAck_468: Block -- branch_block_stmt_14/merge_stmt_59_PhiAck 
        signal merge_stmt_59_PhiAck_468_start: Boolean;
        signal Xentry_469_symbol: Boolean;
        signal Xexit_470_symbol: Boolean;
        signal dummy_471_symbol : Boolean;
        -- 
      begin -- 
        merge_stmt_59_PhiAck_468_start <= merge_stmt_59_PhiReqMerge_467_symbol; -- control passed to block
        Xentry_469_symbol  <= merge_stmt_59_PhiAck_468_start; -- transition branch_block_stmt_14/merge_stmt_59_PhiAck/$entry
        dummy_471_symbol <= Xentry_469_symbol; -- transition branch_block_stmt_14/merge_stmt_59_PhiAck/dummy
        Xexit_470_symbol <= dummy_471_symbol; -- transition branch_block_stmt_14/merge_stmt_59_PhiAck/$exit
        merge_stmt_59_PhiAck_468_symbol <= Xexit_470_symbol; -- control passed from block 
        -- 
      end Block; -- branch_block_stmt_14/merge_stmt_59_PhiAck
      Xexit_241_symbol <= branch_block_stmt_14_x_xexit_x_xx_x243_symbol; -- transition branch_block_stmt_14/$exit
      branch_block_stmt_14_239_symbol <= Xexit_241_symbol; -- control passed from block 
      -- 
    end Block; -- branch_block_stmt_14
    Xexit_238_symbol <= branch_block_stmt_14_239_symbol; -- transition $exit
    fin  <=  '1' when Xexit_238_symbol else '0'; -- fin symbol when control-path exits
    -- 
  end Block; -- control-path
  -- the data path
  data_path: Block -- 
    signal iNsTr_10_54 : std_logic_vector(31 downto 0);
    signal iNsTr_2_24 : std_logic_vector(31 downto 0);
    signal iNsTr_3_28 : std_logic_vector(31 downto 0);
    signal iNsTr_5_34 : std_logic_vector(31 downto 0);
    signal iNsTr_6_37 : std_logic_vector(31 downto 0);
    signal iNsTr_7_42 : std_logic_vector(31 downto 0);
    signal iNsTr_8_47 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_17_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_17_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_26_wire : std_logic_vector(31 downto 0);
    signal simple_obj_ref_29_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_29_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_33_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_33_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_36_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_36_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_53_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_53_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_55_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_55_word_address_0 : std_logic_vector(0 downto 0);
    signal simple_obj_ref_61_data_0 : std_logic_vector(31 downto 0);
    signal simple_obj_ref_61_word_address_0 : std_logic_vector(0 downto 0);
    signal type_cast_50_wire : std_logic_vector(31 downto 0);
    signal xxfooxxbodyxxb_base_address : std_logic_vector(0 downto 0);
    signal xxfooxxbodyxxiNsTr_0_base_address : std_logic_vector(0 downto 0);
    signal xxfooxxstored_ret_val_x_xx_xbase_address : std_logic_vector(0 downto 0);
    -- 
  begin -- 
    iNsTr_2_24 <= "00000000000000000000000000000000";
    iNsTr_8_47 <= "00000000000000000000000000000000";
    simple_obj_ref_17_word_address_0 <= "0";
    simple_obj_ref_29_word_address_0 <= "0";
    simple_obj_ref_33_word_address_0 <= "0";
    simple_obj_ref_36_word_address_0 <= "0";
    simple_obj_ref_53_word_address_0 <= "0";
    simple_obj_ref_55_word_address_0 <= "0";
    simple_obj_ref_61_word_address_0 <= "0";
    xxfooxxbodyxxb_base_address <= "0";
    xxfooxxbodyxxiNsTr_0_base_address <= "0";
    xxfooxxstored_ret_val_x_xx_xbase_address <= "0";
    type_cast_27_inst: RegisterBase generic map(in_data_width => 32,out_data_width => 32) -- 
      port map( din => simple_obj_ref_26_wire, dout => iNsTr_3_28, req => type_cast_27_inst_req_0, ack => type_cast_27_inst_ack_0, clk => clk, reset => reset); -- 
    type_cast_50_inst: RegisterBase generic map(in_data_width => 32,out_data_width => 32) -- 
      port map( din => iNsTr_7_42, dout => type_cast_50_wire, req => type_cast_50_inst_req_0, ack => type_cast_50_inst_ack_0, clk => clk, reset => reset); -- 
    simple_obj_ref_17_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_17_gather_scatter_ack_0 <= simple_obj_ref_17_gather_scatter_req_0;
      aggregated_sig <= a;
      simple_obj_ref_17_data_0 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_29_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_29_gather_scatter_ack_0 <= simple_obj_ref_29_gather_scatter_req_0;
      aggregated_sig <= iNsTr_3_28;
      simple_obj_ref_29_data_0 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_33_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_33_gather_scatter_ack_0 <= simple_obj_ref_33_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_33_data_0;
      iNsTr_5_34 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_36_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_36_gather_scatter_ack_0 <= simple_obj_ref_36_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_36_data_0;
      iNsTr_6_37 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_53_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_53_gather_scatter_ack_0 <= simple_obj_ref_53_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_53_data_0;
      iNsTr_10_54 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_55_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_55_gather_scatter_ack_0 <= simple_obj_ref_55_gather_scatter_req_0;
      aggregated_sig <= iNsTr_10_54;
      simple_obj_ref_55_data_0 <= aggregated_sig(31 downto 0);
      --
    end Block;
    simple_obj_ref_61_gather_scatter: Block -- 
      signal aggregated_sig: std_logic_vector(31 downto 0); --
    begin -- 
      simple_obj_ref_61_gather_scatter_ack_0 <= simple_obj_ref_61_gather_scatter_req_0;
      aggregated_sig <= simple_obj_ref_61_data_0;
      ret_val_x_x <= aggregated_sig(31 downto 0);
      --
    end Block;
    -- shared split operator group (0) : binary_41_inst 
    SplitOperatorGroup0: Block -- 
      signal data_in: std_logic_vector(63 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      data_in <= iNsTr_5_34 & iNsTr_6_37;
      iNsTr_7_42 <= data_out(31 downto 0);
      UnsharedOperator: UnsharedOperatorBase -- 
        generic map ( -- 
          operator_id => "ApIntAdd",
          input1_is_int => true, 
          input1_characteristic_width => 0, 
          input1_mantissa_width    => 0, 
          iwidth_1  => 32,
          input2_is_int => true, 
          input2_characteristic_width => 0, 
          input2_mantissa_width => 0, 
          iwidth_2      => 32, 
          num_inputs    => 2,
          output_is_int => true,
          output_characteristic_width  => 0, 
          output_mantissa_width => 0, 
          owidth => 32,
          constant_operand => "0",
          use_constant  => false,
          zero_delay => false, 
          flow_through => false--
        ) 
        port map ( -- 
          reqL => binary_41_inst_req_0,
          ackL => binary_41_inst_ack_0,
          reqR => binary_41_inst_req_1,
          ackR => binary_41_inst_ack_1,
          dataL => data_in, 
          dataR => data_out,
          clk => clk,
          reset => reset); -- 
      -- 
    end Block; -- split operator group 0
    -- shared load operator group (0) : simple_obj_ref_33_load_0 simple_obj_ref_53_load_0 
    LoadGroup0: Block -- 
      signal data_in: std_logic_vector(1 downto 0);
      signal data_out: std_logic_vector(63 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 1 downto 0);
      -- 
    begin -- 
      reqL(1) <= simple_obj_ref_33_load_0_req_0;
      reqL(0) <= simple_obj_ref_53_load_0_req_0;
      simple_obj_ref_33_load_0_ack_0 <= ackL(1);
      simple_obj_ref_53_load_0_ack_0 <= ackL(0);
      reqR(1) <= simple_obj_ref_33_load_0_req_1;
      reqR(0) <= simple_obj_ref_53_load_0_req_1;
      simple_obj_ref_33_load_0_ack_1 <= ackR(1);
      simple_obj_ref_53_load_0_ack_1 <= ackR(0);
      data_in <= simple_obj_ref_33_word_address_0 & simple_obj_ref_53_word_address_0;
      simple_obj_ref_33_data_0 <= data_out(63 downto 32);
      simple_obj_ref_53_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqShared -- 
        generic map (addr_width => 1,  num_reqs => 2,  tag_length => 2,  no_arbitration => true)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_4_lr_req(0),
          mack => memory_space_4_lr_ack(0),
          maddr => memory_space_4_lr_addr(0 downto 0),
          mtag => memory_space_4_lr_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( data_width => 32,  num_reqs => 2,  tag_length => 2,  no_arbitration => true)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_4_lc_req(0),
          mack => memory_space_4_lc_ack(0),
          mdata => memory_space_4_lc_data(31 downto 0),
          mtag => memory_space_4_lc_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 0
    -- shared load operator group (1) : simple_obj_ref_36_load_0 
    LoadGroup1: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_36_load_0_req_0;
      simple_obj_ref_36_load_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_36_load_0_req_1;
      simple_obj_ref_36_load_0_ack_1 <= ackR(0);
      data_in <= simple_obj_ref_36_word_address_0;
      simple_obj_ref_36_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqShared -- 
        generic map (addr_width => 1,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_5_lr_req(0),
          mack => memory_space_5_lr_ack(0),
          maddr => memory_space_5_lr_addr(0 downto 0),
          mtag => memory_space_5_lr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( data_width => 32,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_5_lc_req(0),
          mack => memory_space_5_lc_ack(0),
          mdata => memory_space_5_lc_data(31 downto 0),
          mtag => memory_space_5_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 1
    -- shared load operator group (2) : simple_obj_ref_61_load_0 
    LoadGroup2: Block -- 
      signal data_in: std_logic_vector(0 downto 0);
      signal data_out: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_61_load_0_req_0;
      simple_obj_ref_61_load_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_61_load_0_req_1;
      simple_obj_ref_61_load_0_ack_1 <= ackR(0);
      data_in <= simple_obj_ref_61_word_address_0;
      simple_obj_ref_61_data_0 <= data_out(31 downto 0);
      LoadReq: LoadReqShared -- 
        generic map (addr_width => 1,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqL => reqL , 
          ackL => ackL , 
          dataL => data_in, 
          mreq => memory_space_3_lr_req(0),
          mack => memory_space_3_lr_ack(0),
          maddr => memory_space_3_lr_addr(0 downto 0),
          mtag => memory_space_3_lr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      LoadComplete: LoadCompleteShared -- 
        generic map ( data_width => 32,  num_reqs => 1,  tag_length => 1,  no_arbitration => true)
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          dataR => data_out, 
          mreq => memory_space_3_lc_req(0),
          mack => memory_space_3_lc_ack(0),
          mdata => memory_space_3_lc_data(31 downto 0),
          mtag => memory_space_3_lc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- load group 2
    -- shared store operator group (0) : simple_obj_ref_17_store_0 
    StoreGroup0: Block -- 
      signal addr_in: std_logic_vector(0 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_17_store_0_req_0;
      simple_obj_ref_17_store_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_17_store_0_req_1;
      simple_obj_ref_17_store_0_ack_1 <= ackR(0);
      addr_in <= simple_obj_ref_17_word_address_0;
      data_in <= simple_obj_ref_17_data_0;
      StoreReq: StoreReqShared -- 
        generic map ( addr_width => 1,
        data_width => 32,
        num_reqs => 1,
        tag_length => 2,
        no_arbitration => true)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_4_sr_req(0),
          mack => memory_space_4_sr_ack(0),
          maddr => memory_space_4_sr_addr(0 downto 0),
          mdata => memory_space_4_sr_data(31 downto 0),
          mtag => memory_space_4_sr_tag(1 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          num_reqs => 1,
          tag_length => 2 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_4_sc_req(0),
          mack => memory_space_4_sc_ack(0),
          mtag => memory_space_4_sc_tag(1 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 0
    -- shared store operator group (1) : simple_obj_ref_29_store_0 
    StoreGroup1: Block -- 
      signal addr_in: std_logic_vector(0 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_29_store_0_req_0;
      simple_obj_ref_29_store_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_29_store_0_req_1;
      simple_obj_ref_29_store_0_ack_1 <= ackR(0);
      addr_in <= simple_obj_ref_29_word_address_0;
      data_in <= simple_obj_ref_29_data_0;
      StoreReq: StoreReqShared -- 
        generic map ( addr_width => 1,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        no_arbitration => true)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_5_sr_req(0),
          mack => memory_space_5_sr_ack(0),
          maddr => memory_space_5_sr_addr(0 downto 0),
          mdata => memory_space_5_sr_data(31 downto 0),
          mtag => memory_space_5_sr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          num_reqs => 1,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_5_sc_req(0),
          mack => memory_space_5_sc_ack(0),
          mtag => memory_space_5_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 1
    -- shared store operator group (2) : simple_obj_ref_55_store_0 
    StoreGroup2: Block -- 
      signal addr_in: std_logic_vector(0 downto 0);
      signal data_in: std_logic_vector(31 downto 0);
      signal reqR, ackR, reqL, ackL : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      reqL(0) <= simple_obj_ref_55_store_0_req_0;
      simple_obj_ref_55_store_0_ack_0 <= ackL(0);
      reqR(0) <= simple_obj_ref_55_store_0_req_1;
      simple_obj_ref_55_store_0_ack_1 <= ackR(0);
      addr_in <= simple_obj_ref_55_word_address_0;
      data_in <= simple_obj_ref_55_data_0;
      StoreReq: StoreReqShared -- 
        generic map ( addr_width => 1,
        data_width => 32,
        num_reqs => 1,
        tag_length => 1,
        no_arbitration => true)
        port map (--
          reqL => reqL , 
          ackL => ackL , 
          addr => addr_in, 
          data => data_in, 
          mreq => memory_space_3_sr_req(0),
          mack => memory_space_3_sr_ack(0),
          maddr => memory_space_3_sr_addr(0 downto 0),
          mdata => memory_space_3_sr_data(31 downto 0),
          mtag => memory_space_3_sr_tag(0 downto 0),
          clk => clk, reset => reset -- 
        );--
      StoreComplete: StoreCompleteShared -- 
        generic map ( -- 
          num_reqs => 1,
          tag_length => 1 -- 
        )
        port map ( -- 
          reqR => reqR , 
          ackR => ackR , 
          mreq => memory_space_3_sc_req(0),
          mack => memory_space_3_sc_ack(0),
          mtag => memory_space_3_sc_tag(0 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- store group 2
    -- shared inport operator group (0) : simple_obj_ref_26_inst 
    InportGroup0: Block -- 
      signal data_out: std_logic_vector(31 downto 0);
      signal req, ack : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      req(0) <= simple_obj_ref_26_inst_req_0;
      simple_obj_ref_26_inst_ack_0 <= ack(0);
      simple_obj_ref_26_wire <= data_out(31 downto 0);
      Inport: InputPort -- 
        generic map ( data_width => 32,  num_reqs => 1,  no_arbitration => true)
        port map (-- 
          req => req , 
          ack => ack , 
          data => data_out, 
          oreq => inpipe_pipe_read_req(0),
          oack => inpipe_pipe_read_ack(0),
          odata => inpipe_pipe_read_data(31 downto 0),
          clk => clk, reset => reset -- 
        ); -- 
      -- 
    end Block; -- inport group 0
    -- shared outport operator group (0) : simple_obj_ref_48_inst 
    OutportGroup0: Block -- 
      signal data_in: std_logic_vector(31 downto 0);
      signal req, ack : BooleanArray( 0 downto 0);
      -- 
    begin -- 
      req(0) <= simple_obj_ref_48_inst_req_0;
      simple_obj_ref_48_inst_ack_0 <= ack(0);
      data_in <= type_cast_50_wire;
      outport: OutputPort -- 
        generic map ( data_width => 32,  num_reqs => 1,  no_arbitration => true)
        port map (--
          req => req , 
          ack => ack , 
          data => data_in, 
          oreq => midpipe_pipe_write_req(0),
          oack => midpipe_pipe_write_ack(0),
          odata => midpipe_pipe_write_data(31 downto 0),
          clk => clk, reset => reset -- 
        );-- 
      -- 
    end Block; -- outport group 0
    -- 
  end Block; -- data_path
  RegisterBank_memory_space_3: register_bank -- 
    generic map(-- 
      num_loads => 1,
      num_stores => 1,
      addr_width => 1,
      data_width => 32,
      tag_width => 1,
      num_registers => 1) -- 
    port map(-- 
      lr_addr_in => memory_space_3_lr_addr,
      lr_req_in => memory_space_3_lr_req,
      lr_ack_out => memory_space_3_lr_ack,
      lr_tag_in => memory_space_3_lr_tag,
      lc_req_in => memory_space_3_lc_req,
      lc_ack_out => memory_space_3_lc_ack,
      lc_data_out => memory_space_3_lc_data,
      lc_tag_out => memory_space_3_lc_tag,
      sr_addr_in => memory_space_3_sr_addr,
      sr_data_in => memory_space_3_sr_data,
      sr_req_in => memory_space_3_sr_req,
      sr_ack_out => memory_space_3_sr_ack,
      sr_tag_in => memory_space_3_sr_tag,
      sc_req_in=> memory_space_3_sc_req,
      sc_ack_out => memory_space_3_sc_ack,
      sc_tag_out => memory_space_3_sc_tag,
      clock => clk,
      reset => reset); -- 
  RegisterBank_memory_space_4: register_bank -- 
    generic map(-- 
      num_loads => 1,
      num_stores => 1,
      addr_width => 1,
      data_width => 32,
      tag_width => 2,
      num_registers => 1) -- 
    port map(-- 
      lr_addr_in => memory_space_4_lr_addr,
      lr_req_in => memory_space_4_lr_req,
      lr_ack_out => memory_space_4_lr_ack,
      lr_tag_in => memory_space_4_lr_tag,
      lc_req_in => memory_space_4_lc_req,
      lc_ack_out => memory_space_4_lc_ack,
      lc_data_out => memory_space_4_lc_data,
      lc_tag_out => memory_space_4_lc_tag,
      sr_addr_in => memory_space_4_sr_addr,
      sr_data_in => memory_space_4_sr_data,
      sr_req_in => memory_space_4_sr_req,
      sr_ack_out => memory_space_4_sr_ack,
      sr_tag_in => memory_space_4_sr_tag,
      sc_req_in=> memory_space_4_sc_req,
      sc_ack_out => memory_space_4_sc_ack,
      sc_tag_out => memory_space_4_sc_tag,
      clock => clk,
      reset => reset); -- 
  RegisterBank_memory_space_5: register_bank -- 
    generic map(-- 
      num_loads => 1,
      num_stores => 1,
      addr_width => 1,
      data_width => 32,
      tag_width => 1,
      num_registers => 1) -- 
    port map(-- 
      lr_addr_in => memory_space_5_lr_addr,
      lr_req_in => memory_space_5_lr_req,
      lr_ack_out => memory_space_5_lr_ack,
      lr_tag_in => memory_space_5_lr_tag,
      lc_req_in => memory_space_5_lc_req,
      lc_ack_out => memory_space_5_lc_ack,
      lc_data_out => memory_space_5_lc_data,
      lc_tag_out => memory_space_5_lc_tag,
      sr_addr_in => memory_space_5_sr_addr,
      sr_data_in => memory_space_5_sr_data,
      sr_req_in => memory_space_5_sr_req,
      sr_ack_out => memory_space_5_sr_ack,
      sr_tag_in => memory_space_5_sr_tag,
      sc_req_in=> memory_space_5_sc_req,
      sc_ack_out => memory_space_5_sc_ack,
      sc_tag_out => memory_space_5_sc_tag,
      clock => clk,
      reset => reset); -- 
  -- 
end Default;
library ieee;
use ieee.std_logic_1164.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
library work;
use work.vc_system_package.all;
entity test_system is  -- system 
  port (-- 
    bar_a : in  std_logic_vector(31 downto 0);
    bar_ret_val_x_x : out  std_logic_vector(31 downto 0);
    bar_tag_in: in std_logic_vector(0 downto 0);
    bar_tag_out: out std_logic_vector(0 downto 0);
    bar_start : in std_logic;
    bar_fin   : out std_logic;
    foo_a : in  std_logic_vector(31 downto 0);
    foo_ret_val_x_x : out  std_logic_vector(31 downto 0);
    foo_tag_in: in std_logic_vector(0 downto 0);
    foo_tag_out: out std_logic_vector(0 downto 0);
    foo_start : in std_logic;
    foo_fin   : out std_logic;
    clk : in std_logic;
    reset : in std_logic;
    inpipe_pipe_write_data: in std_logic_vector(31 downto 0);
    inpipe_pipe_write_req : in std_logic_vector(0 downto 0);
    inpipe_pipe_write_ack : out std_logic_vector(0 downto 0);
    outpipe_pipe_read_data: out std_logic_vector(31 downto 0);
    outpipe_pipe_read_req : in std_logic_vector(0 downto 0);
    outpipe_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
  -- 
end entity; 
architecture Default of test_system is -- system-architecture 
  -- interface signals to connect to memory space memory_space_0
  -- interface signals to connect to memory space memory_space_1
  -- interface signals to connect to memory space memory_space_2
  -- declarations related to module bar
  component bar is -- 
    port ( -- 
      a : in  std_logic_vector(31 downto 0);
      ret_val_x_x : out  std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic;
      start : in std_logic;
      fin   : out std_logic;
      midpipe_pipe_read_req : out  std_logic_vector(0 downto 0);
      midpipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
      midpipe_pipe_read_data : in   std_logic_vector(31 downto 0);
      outpipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      outpipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      outpipe_pipe_write_data : out  std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(0 downto 0);
      tag_out: out std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component;
  -- declarations related to module foo
  component foo is -- 
    port ( -- 
      a : in  std_logic_vector(31 downto 0);
      ret_val_x_x : out  std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic;
      start : in std_logic;
      fin   : out std_logic;
      inpipe_pipe_read_req : out  std_logic_vector(0 downto 0);
      inpipe_pipe_read_ack : in   std_logic_vector(0 downto 0);
      inpipe_pipe_read_data : in   std_logic_vector(31 downto 0);
      midpipe_pipe_write_req : out  std_logic_vector(0 downto 0);
      midpipe_pipe_write_ack : in   std_logic_vector(0 downto 0);
      midpipe_pipe_write_data : out  std_logic_vector(31 downto 0);
      tag_in: in std_logic_vector(0 downto 0);
      tag_out: out std_logic_vector(0 downto 0)-- 
    );
    -- 
  end component;
  -- aggregate signals for read from pipe inpipe
  signal inpipe_pipe_read_data: std_logic_vector(31 downto 0);
  signal inpipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal inpipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe midpipe
  signal midpipe_pipe_write_data: std_logic_vector(31 downto 0);
  signal midpipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal midpipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for read from pipe midpipe
  signal midpipe_pipe_read_data: std_logic_vector(31 downto 0);
  signal midpipe_pipe_read_req: std_logic_vector(0 downto 0);
  signal midpipe_pipe_read_ack: std_logic_vector(0 downto 0);
  -- aggregate signals for write to pipe outpipe
  signal outpipe_pipe_write_data: std_logic_vector(31 downto 0);
  signal outpipe_pipe_write_req: std_logic_vector(0 downto 0);
  signal outpipe_pipe_write_ack: std_logic_vector(0 downto 0);
  -- 
begin -- 
  -- module bar
  bar_instance:bar-- 
    port map(-- 
      a => bar_a,
      ret_val_x_x => bar_ret_val_x_x,
      start => bar_start,
      fin => bar_fin,
      clk => clk,
      reset => reset,
      midpipe_pipe_read_req => midpipe_pipe_read_req(0 downto 0),
      midpipe_pipe_read_ack => midpipe_pipe_read_ack(0 downto 0),
      midpipe_pipe_read_data => midpipe_pipe_read_data(31 downto 0),
      outpipe_pipe_write_req => outpipe_pipe_write_req(0 downto 0),
      outpipe_pipe_write_ack => outpipe_pipe_write_ack(0 downto 0),
      outpipe_pipe_write_data => outpipe_pipe_write_data(31 downto 0),
      tag_in => bar_tag_in,
      tag_out => bar_tag_out-- 
    ); -- 
  -- module foo
  foo_instance:foo-- 
    port map(-- 
      a => foo_a,
      ret_val_x_x => foo_ret_val_x_x,
      start => foo_start,
      fin => foo_fin,
      clk => clk,
      reset => reset,
      inpipe_pipe_read_req => inpipe_pipe_read_req(0 downto 0),
      inpipe_pipe_read_ack => inpipe_pipe_read_ack(0 downto 0),
      inpipe_pipe_read_data => inpipe_pipe_read_data(31 downto 0),
      midpipe_pipe_write_req => midpipe_pipe_write_req(0 downto 0),
      midpipe_pipe_write_ack => midpipe_pipe_write_ack(0 downto 0),
      midpipe_pipe_write_data => midpipe_pipe_write_data(31 downto 0),
      tag_in => foo_tag_in,
      tag_out => foo_tag_out-- 
    ); -- 
  inpipe_Pipe: PipeBase -- 
    generic map( -- 
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      depth => 1 --
    )
    port map( -- 
      read_req => inpipe_pipe_read_req,
      read_ack => inpipe_pipe_read_ack,
      read_data => inpipe_pipe_read_data,
      write_req => inpipe_pipe_write_req,
      write_ack => inpipe_pipe_write_ack,
      write_data => inpipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  midpipe_Pipe: PipeBase -- 
    generic map( -- 
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      depth => 1 --
    )
    port map( -- 
      read_req => midpipe_pipe_read_req,
      read_ack => midpipe_pipe_read_ack,
      read_data => midpipe_pipe_read_data,
      write_req => midpipe_pipe_write_req,
      write_ack => midpipe_pipe_write_ack,
      write_data => midpipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  outpipe_Pipe: PipeBase -- 
    generic map( -- 
      num_reads => 1,
      num_writes => 1,
      data_width => 32,
      depth => 1 --
    )
    port map( -- 
      read_req => outpipe_pipe_read_req,
      read_ack => outpipe_pipe_read_ack,
      read_data => outpipe_pipe_read_data,
      write_req => outpipe_pipe_write_req,
      write_ack => outpipe_pipe_write_ack,
      write_data => outpipe_pipe_write_data,
      clk => clk,reset => reset -- 
    ); -- 
  -- 
end Default;
library ieee;
use ieee.std_logic_1164.all;
library ahir;
use ahir.memory_subsystem_package.all;
use ahir.types.all;
use ahir.subprograms.all;
use ahir.components.all;
use ahir.basecomponents.all;
use ahir.operatorpackage.all;
library work;
use work.vc_system_package.all;
use work.Vhpi_Package.all;
entity test_system_Test_Bench is -- 
  -- 
end entity;
architecture VhpiLink of test_system_Test_Bench is -- 
  component test_system is -- 
    port (-- 
      bar_a : in  std_logic_vector(31 downto 0);
      bar_ret_val_x_x : out  std_logic_vector(31 downto 0);
      bar_tag_in: in std_logic_vector(0 downto 0);
      bar_tag_out: out std_logic_vector(0 downto 0);
      bar_start : in std_logic;
      bar_fin   : out std_logic;
      foo_a : in  std_logic_vector(31 downto 0);
      foo_ret_val_x_x : out  std_logic_vector(31 downto 0);
      foo_tag_in: in std_logic_vector(0 downto 0);
      foo_tag_out: out std_logic_vector(0 downto 0);
      foo_start : in std_logic;
      foo_fin   : out std_logic;
      clk : in std_logic;
      reset : in std_logic;
      inpipe_pipe_write_data: in std_logic_vector(31 downto 0);
      inpipe_pipe_write_req : in std_logic_vector(0 downto 0);
      inpipe_pipe_write_ack : out std_logic_vector(0 downto 0);
      outpipe_pipe_read_data: out std_logic_vector(31 downto 0);
      outpipe_pipe_read_req : in std_logic_vector(0 downto 0);
      outpipe_pipe_read_ack : out std_logic_vector(0 downto 0)); -- 
    -- 
  end component;
  signal clk: std_logic := '0';
  signal reset: std_logic := '1';
  signal bar_a :  std_logic_vector(31 downto 0) := (others => '0');
  signal bar_ret_val_x_x :   std_logic_vector(31 downto 0);
  signal bar_tag_in: std_logic_vector(0 downto 0);
  signal bar_tag_out: std_logic_vector(0 downto 0);
  signal bar_start : std_logic := '0';
  signal bar_fin   : std_logic := '0';
  signal foo_a :  std_logic_vector(31 downto 0) := (others => '0');
  signal foo_ret_val_x_x :   std_logic_vector(31 downto 0);
  signal foo_tag_in: std_logic_vector(0 downto 0);
  signal foo_tag_out: std_logic_vector(0 downto 0);
  signal foo_start : std_logic := '0';
  signal foo_fin   : std_logic := '0';
  -- write to pipe inpipe
  signal inpipe_pipe_write_data: std_logic_vector(31 downto 0);
  signal inpipe_pipe_write_req : std_logic_vector(0 downto 0) := (others => '0');
  signal inpipe_pipe_write_ack : std_logic_vector(0 downto 0);
  -- read from pipe outpipe
  signal outpipe_pipe_read_data: std_logic_vector(31 downto 0);
  signal outpipe_pipe_read_req : std_logic_vector(0 downto 0) := (others => '0');
  signal outpipe_pipe_read_ack : std_logic_vector(0 downto 0);
  -- 
begin --
  -- clock/reset generation 
  clk <= not clk after 5 ns;
  process
  begin --
    Vhpi_Initialize;
    wait until clk = '1';
    reset <= '0';
    while true loop --
      wait until clk = '1';
      Vhpi_Listen;
      Vhpi_Send;
      --
    end loop;
    wait;
    --
  end process;
  -- connect all the top-level modules to Vhpi
  process
  variable val_string, obj_ref: VhpiString;
  begin --
    wait until reset  '0';
    while true loop -- 
      wait until clk = '0';
      obj_ref := Pack_String("bar req");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      bar_start <= To_Std_Logic(val_string);
      obj_ref := Pack_String("bar 0");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      bar_a <= Unpack_String(val_string,32);
      obj_ref := Pack_String("bar ack");
      val_string := To_String(bar_fin);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      obj_ref := Pack_String("bar 0");
      val_string <= Pack_String(bar_ret_val_x_x);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      -- 
    end loop;
    --
  end process;
  process
  variable val_string, obj_ref: VhpiString;
  begin --
    wait until reset  '0';
    while true loop -- 
      wait until clk = '0';
      obj_ref := Pack_String("foo req");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      foo_start <= To_Std_Logic(val_string);
      obj_ref := Pack_String("foo 0");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      foo_a <= Unpack_String(val_string,32);
      obj_ref := Pack_String("foo ack");
      val_string := To_String(foo_fin);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      obj_ref := Pack_String("foo 0");
      val_string <= Pack_String(foo_ret_val_x_x);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      -- 
    end loop;
    --
  end process;
  process
  variable val_string, obj_ref: VhpiString;
  begin --
    wait until reset  '0';
    while true loop -- 
      wait until clk = '0';
      obj_ref := Pack_String("inpipe req");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      inpipe_pipe_write_req <= Unpack_String(val_string,1);
      obj_ref := Pack_String("inpipe 0");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      inpipe_pipe_write_data <= Unpack_String(val_string,32);
      obj_ref := Pack_String("inpipe ack");
      val_string := Pack_String(inpipe_pipe_write_ack);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      -- 
    end loop;
    --
  end process;
  process
  variable val_string, obj_ref: VhpiString;
  begin --
    wait until reset  '0';
    while true loop -- 
      wait until clk = '0';
      obj_ref := Pack_String("outpipe req");
      Vhpi_Get_Port_Value(obj_ref,val_string);
      outpipe_pipe_read_req <= Unpack_String(val_string,1);
      obj_ref := Pack_String("outpipe 0");
      val_string <= Pack_String(outpipe_pipe_read_data);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      obj_ref := Pack_String("outpipe ack");
      val_string := Pack_String(outpipe_pipe_read_ack);
      Vhpi_Set_Port_Value(obj_ref,val_string);
      -- 
    end loop;
    --
  end process;
  test_system_instance: test_system -- 
    port map ( -- 
      bar_a => bar_a,
      bar_ret_val_x_x => bar_ret_val_x_x,
      bar_tag_in => bar_tag_in,
      bar_tag_out => bar_tag_out,
      bar_start => bar_start,
      bar_fin  => bar_fin ,
      foo_a => foo_a,
      foo_ret_val_x_x => foo_ret_val_x_x,
      foo_tag_in => foo_tag_in,
      foo_tag_out => foo_tag_out,
      foo_start => foo_start,
      foo_fin  => foo_fin ,
      clk => clk,
      reset => reset,
      inpipe_pipe_write_data  => inpipe_pipe_write_data, 
      inpipe_pipe_write_req  => inpipe_pipe_write_req, 
      inpipe_pipe_write_ack  => inpipe_pipe_write_ack,
      outpipe_pipe_read_data  => outpipe_pipe_read_data, 
      outpipe_pipe_read_req  => outpipe_pipe_read_req, 
      outpipe_pipe_read_ack  => outpipe_pipe_read_ack ); -- 
  -- 
end Default;
