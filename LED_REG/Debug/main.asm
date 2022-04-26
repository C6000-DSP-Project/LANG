;******************************************************************************
;* G3 TMS320C6x C/C++ Codegen                                      PC v8.3.12 *
;* Date/Time created: Tue Apr 26 19:40:49 2022                                *
;******************************************************************************
	.compiler_opts --abi=eabi --array_alignment=8 --c64p_l1d_workaround=off --endian=little --hll_source=on --long_precision_bits=32 --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --object_format=elf --silicon_version=6740 --symdebug:dwarf --symdebug:dwarf_version=3 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C674x                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI G3 TMS320C6x C/C++ Codegen PC v8.3.12 Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\F\Desktop\Software\LANG\LED_REG\Debug")
;	C:\ti\ti-cgt-c6000_8.3.12\bin\acpia6x.exe -@C:\\Users\\F\\AppData\\Local\\Temp\\{5373C957-6A21-47DA-970D-BCE7A98F4469} 
	.sect	".text"
	.clink

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Delay")
	.dwattr $C$DW$1, DW_AT_low_pc(Delay)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("Delay")
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$1, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 44,column 1,is_stmt,address Delay,isa 0

	.dwfde $C$DW$CIE, Delay
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("delay")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg4]


;******************************************************************************
;* FUNCTION NAME: Delay                                                       *
;*                                                                            *
;*   Regs Modified     : A0,B0,B4,SP                                          *
;*   Regs Used         : A0,A4,B0,B3,B4,SP                                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************
Delay:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0

           SUB     .L2     SP,8,SP           ; [B_L674] |44| 
||         MV      .L1X    B3,A0             ; [A_L674] |44| 

	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_reg, 19, 0
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("delay")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_breg31 4]

           STW     .D2T1   A4,*SP(4)         ; [B_D64P] |44| 
	.dwpsn	file "../main.c",line 45,column 5,is_stmt,isa 0
           LDW     .D2T2   *SP(4),B0         ; [B_D64P] |45| 
           NOP             4                 ; [A_L674] 
   [!B0]   BNOP            $C$L2,3           ; [] |45| 
           SUB     .L2     B0,1,B4           ; [B_L674] |45| 
           STW     .D2T2   B4,*SP(4)         ; [B_D64P] |45| 
           ; BRANCHCC OCCURS {$C$L2}         ; [] |45| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
           LDW     .D2T2   *SP(4),B0         ; [B_D64P] |45| 
           NOP             4                 ; [A_L674] 
   [ B0]   BNOP            $C$L1,3           ; [] |45| 
           SUB     .L2     B0,1,B4           ; [B_L674] |45| 
           STW     .D2T2   B4,*SP(4)         ; [B_D64P] |45| 
           ; BRANCHCC OCCURS {$C$L1}         ; [] |45| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 46,column 1,is_stmt,isa 0
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

           RETNOP          A0,4              ; [] |46| 
           ADD     .L2     8,SP,SP           ; [B_L674] |46| 
	.dwcfi	cfa_offset, 0
           ; BRANCH OCCURS {A0}              ; [] |46| 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x2e)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.global	main

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("main")
	.dwattr $C$DW$5, DW_AT_low_pc(main)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x35)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x35)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main.c",line 54,column 1,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;******************************************************************************
;* FUNCTION NAME: main                                                        *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,B0,B3,B4,B5,B6,B7                        *
;*   Regs Used         : A0,A1,A3,A4,A5,B0,B3,B4,B5,B6,B7,SP                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
main:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main.c",line 56,column 5,is_stmt,isa 0
           MVKL    .S2     0x1c14154,B4      ; [B_Sb674] |56| 
           MVKH    .S2     0x1c14154,B4      ; [B_Sb674] |56| 
           LDW     .D2T2   *B4(0),B4         ; [B_D64P] |56| 
           MVKL    .S1     0x8800,A3         ; [A_S674] |56| 
           MVKL    .S1     0x1c14154,A4      ; [A_S674] |56| 
           MVKH    .S1     0x8800,A3         ; [A_S674] |56| 
           MVKH    .S1     0x1c14154,A4      ; [A_S674] |56| 
           EXTU    .S2     B4,4,4,B4         ; [B_Sb674] |56| 
           NOP             1                 ; [A_L674] 
           OR      .L1X    A3,B4,A3          ; [A_L674] |56| 
           STW     .D1T1   A3,*A4(0)         ; [A_D64P] |56| 
	.dwpsn	file "../main.c",line 59,column 5,is_stmt,isa 0
           MVKL    .S1     0x1e26088,A3      ; [A_S674] |59| 
           MVKH    .S1     0x1e26088,A3      ; [A_S674] |59| 
           LDW     .D1T1   *A3(0),A4         ; [A_D64P] |59| 
           MV      .L2X    A3,B5             ; [B_L674] |59| 
           MVK     .S2     -12289,B4         ; [B_Sb674] |59| 
           ADD     .L2X    4,A3,B6           ; [B_L674] 
           ADD     .L2X    4,A3,B7           ; [B_L674] 
           AND     .L2X    B4,A4,B4          ; [B_L674] |59| 

           ADD     .L1     4,A3,A5           ; [A_L674] 
||         ADD     .S1     4,A3,A3           ; [A_S674] 
||         STW     .D2T2   B4,*B5(0)         ; [B_D64P] |59| 
||         MVK     .S2     -12289,B5         ; [B_Sb674] |65| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L3
;** --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../main.c",line 64,column 9,is_stmt,isa 0
           ZERO    .L1     A4                ; [A_L674] |64| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_name("Delay")
	.dwattr $C$DW$6, DW_AT_TI_call


           CALLP   .S2     Delay,B3          ; [B_Sb674] |64| 
||         SET     .S1     A4,0,23,A4        ; [A_S674] |64| 

$C$RL0:    ; CALLP OCCURS {Delay} {0}        ; [] |64| 
	.dwpsn	file "../main.c",line 65,column 9,is_stmt,isa 0
           LDW     .D2T2   *B6(0),B4         ; [B_D64P] |65| 
           NOP             4                 ; [A_L674] 
           AND     .L2     B5,B4,B4          ; [B_L674] |65| 
           STW     .D2T2   B4,*B7(0)         ; [B_D64P] |65| 
	.dwpsn	file "../main.c",line 68,column 9,is_stmt,isa 0
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("Delay")
	.dwattr $C$DW$7, DW_AT_TI_call

           CALLP   .S2     Delay,B3          ; [B_Sb674] |68| 
$C$RL2:    ; CALLP OCCURS {Delay} {0}        ; [] |68| 
	.dwpsn	file "../main.c",line 69,column 9,is_stmt,isa 0
           LDW     .D1T1   *A3(0),A4         ; [A_D64P] |69| 
           NOP             4                 ; [A_L674] 
           SET     .S1     A4,12,13,A4       ; [A_S674] |69| 
           STW     .D1T1   A4,*A5(0)         ; [A_D64P] |69| 
	.dwpsn	file "../main.c",line 70,column 5,is_stmt,isa 0
           BNOP            $C$L3,5           ; [] |70| 
           ; BRANCH OCCURS {$C$L3}           ; [] |70| 
;** --------------------------------------------------------------------------*
	.dwattr $C$DW$5, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5


;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_Long_Precision_Bits(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_ABI_enum_size(3)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_wchar_t(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_alignment(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_align_expected(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PIC(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PID(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_DSBT(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$27	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("__int40_t")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned __int40_t")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$16, DW_AT_name("long long")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x08)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$17, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("float")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

$C$DW$T$19	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$19, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$19, DW_AT_name("double")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x08)

$C$DW$T$20	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$20, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$20, DW_AT_name("long double")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)

$C$DW$T$21	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$21, DW_AT_encoding(DW_ATE_TI_complex_signed)
	.dwattr $C$DW$T$21, DW_AT_name("cchar")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)

$C$DW$T$22	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$22, DW_AT_encoding(DW_ATE_TI_complex_signed)
	.dwattr $C$DW$T$22, DW_AT_name("cshort")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)

$C$DW$T$23	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$23, DW_AT_encoding(DW_ATE_TI_complex_signed)
	.dwattr $C$DW$T$23, DW_AT_name("cint")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x08)

$C$DW$T$24	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$24, DW_AT_encoding(DW_ATE_TI_complex_signed)
	.dwattr $C$DW$T$24, DW_AT_name("clonglong")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x10)

$C$DW$T$25	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$25, DW_AT_encoding(DW_ATE_TI_complex_float)
	.dwattr $C$DW$T$25, DW_AT_name("cfloat")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x08)

$C$DW$T$26	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$26, DW_AT_encoding(DW_ATE_TI_complex_float)
	.dwattr $C$DW$T$26, DW_AT_name("cdouble")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x10)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 19
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$8	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$8, DW_AT_name("A0")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg0]

$C$DW$9	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$9, DW_AT_name("A1")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg1]

$C$DW$10	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$10, DW_AT_name("A2")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg2]

$C$DW$11	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$11, DW_AT_name("A3")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg3]

$C$DW$12	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$12, DW_AT_name("A4")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg4]

$C$DW$13	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$13, DW_AT_name("A5")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg5]

$C$DW$14	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$14, DW_AT_name("A6")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg6]

$C$DW$15	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$15, DW_AT_name("A7")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg7]

$C$DW$16	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$16, DW_AT_name("A8")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg8]

$C$DW$17	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$17, DW_AT_name("A9")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg9]

$C$DW$18	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$18, DW_AT_name("A10")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg10]

$C$DW$19	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$19, DW_AT_name("A11")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg11]

$C$DW$20	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$20, DW_AT_name("A12")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg12]

$C$DW$21	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$21, DW_AT_name("A13")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg13]

$C$DW$22	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$22, DW_AT_name("A14")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg14]

$C$DW$23	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$23, DW_AT_name("A15")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg15]

$C$DW$24	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$24, DW_AT_name("FP")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_regx 0x20]

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("A16")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_regx 0x25]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("A17")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_regx 0x26]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("A18")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_regx 0x27]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("A19")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_regx 0x28]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("A20")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_regx 0x29]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("A21")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_regx 0x2a]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("A22")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("A23")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_regx 0x2c]

$C$DW$33	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$33, DW_AT_name("A24")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_regx 0x2d]

$C$DW$34	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$34, DW_AT_name("A25")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_regx 0x2e]

$C$DW$35	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$35, DW_AT_name("A26")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$36	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$36, DW_AT_name("A27")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x30]

$C$DW$37	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$37, DW_AT_name("A28")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_regx 0x31]

$C$DW$38	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$38, DW_AT_name("A29")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_regx 0x32]

$C$DW$39	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$39, DW_AT_name("A30")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_regx 0x33]

$C$DW$40	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$40, DW_AT_name("A31")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_regx 0x34]

$C$DW$41	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$41, DW_AT_name("B0")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg16]

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("B1")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg17]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("B2")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg18]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("B3")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg19]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("B4")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg20]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("B5")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg21]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("B6")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg22]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("B7")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg23]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("B8")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg24]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("B9")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg25]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("B10")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg26]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("B11")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg27]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("B12")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg28]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("B13")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg29]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("DP")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg30]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("SP")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg31]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("B16")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_regx 0x35]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("B17")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_regx 0x36]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("B18")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_regx 0x37]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("B19")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_regx 0x38]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("B20")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x39]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("B21")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x3a]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("B22")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_regx 0x3b]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("B23")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x3c]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("B24")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x3d]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("B25")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x3e]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("B26")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_regx 0x3f]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("B27")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x40]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("B28")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x41]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("B29")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x42]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("B30")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x43]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("B31")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x44]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("PC")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x21]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("PCE1")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x21]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("IRP")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x22]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("IFR")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x23]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("NRP")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x24]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("CSR")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x46]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("CSR")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x46]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("SSR")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("CSR")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x46]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("AMR")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x45]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("ISR")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x47]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("ICR")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x48]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("IER")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x49]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("ISTP")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("IN")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("OUT")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("ACR")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("ADR")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("FADCR")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("FAUCR")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x50]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("FMCR")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x51]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("GFPGFR")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x52]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("DIER")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x53]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("REP")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x54]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("TSCL")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x55]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("TSCH")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x56]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("ARP")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x57]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("ILC")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x58]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("RILC")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x59]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("DNUM")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("GPLYA")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("GPLYB")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$105	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$105, DW_AT_name("TSR")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$106	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$106, DW_AT_name("ITSR")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$107	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$107, DW_AT_name("NTSR")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_regx 0x60]

$C$DW$108	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$108, DW_AT_name("EFR")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_regx 0x61]

$C$DW$109	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$109, DW_AT_name("ECR")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_regx 0x62]

$C$DW$110	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$110, DW_AT_name("IERR")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_regx 0x63]

$C$DW$111	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$111, DW_AT_name("DMSG")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_regx 0x64]

$C$DW$112	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$112, DW_AT_name("CMSG")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_regx 0x65]

$C$DW$113	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$113, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x66]

$C$DW$114	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$114, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x67]

$C$DW$115	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$115, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x68]

$C$DW$116	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$116, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x69]

$C$DW$117	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$117, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_regx 0x6a]

$C$DW$118	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$118, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_regx 0x6b]

$C$DW$119	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$119, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_regx 0x6c]

$C$DW$120	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$120, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x6d]

$C$DW$121	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$121, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_regx 0x6e]

$C$DW$122	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$122, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_regx 0x6f]

$C$DW$123	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$123, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_regx 0x70]

$C$DW$124	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$124, DW_AT_name("MFREG0")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_regx 0x71]

$C$DW$125	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$125, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x72]

$C$DW$126	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$126, DW_AT_name("BRK_EN")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x73]

$C$DW$127	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$127, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x74]

$C$DW$128	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$128, DW_AT_name("HWBP0")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x75]

$C$DW$129	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$129, DW_AT_name("HWBP1")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_regx 0x76]

$C$DW$130	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$130, DW_AT_name("HWBP2")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x77]

$C$DW$131	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$131, DW_AT_name("HWBP3")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x78]

$C$DW$132	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$132, DW_AT_name("OVERLAY")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x79]

$C$DW$133	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$133, DW_AT_name("PC_PROF")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x7a]

$C$DW$134	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$134, DW_AT_name("ATSR")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x7b]

$C$DW$135	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$135, DW_AT_name("TRR")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x7c]

$C$DW$136	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$136, DW_AT_name("TCRR")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x7d]

$C$DW$137	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$137, DW_AT_name("DESR")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x7e]

$C$DW$138	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$138, DW_AT_name("DETR")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x7f]

	.dwendtag $C$DW$CU

