; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
;      新核科技(广州)有限公司
;
;      Copyright (C) 2022 CoreKernel Technology Guangzhou Co., Ltd
;
; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
;      GPIO LED 汇编
;
;      2022年04月26日
;
; ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;
;    汇编工程
;
;    - 希望缄默(bin wang)
;    - bin@corekernel.net
;
;    官网 corekernel.net/.org/.cn
;    社区 fpga.net.cn
;
    .sect		".text"
    .global		main

main:                                                ; 汇编程序开始

; GPIO 管脚复用配置
        MVKL	.S2    0x01C14154, B4
||      MVKL	.S1    0x00008800, A3                ; || 表示相邻指令并行执行

        MVKH	.S2    0x01C14154, B4
||      MVKH	.S1    0x00008800, A3

        STW		.D2T1  A3, *B4                       ; 赋值（存储字（WORD）到内存）

; GPIO 管脚方向配置
        MVKL	.S2    0x1E26088, B6
||      MVKL	.S1    0, A5

        MVKH	.S2    0x1E26088, B6
||      MVKH	.S1    0, A5

        STW		.D2T1  A5, *B6

        ADD		.L1X   4, B6, A4                     ; DIR67 寄存器偏移 4 个字节为 GPIO_OUT_DATA67 寄存器

; 闪烁 LED
LED_ON:
        MVK		.S1    0x00003000, A3
        STW		.D1T1  A3, *A4

	    MVKL	.S2    0x00FFFFFF, B1
        MVKH	.S2    0x00FFFFFF, B1
delay0:
        SUB		B1, 1, B1
   [B1] B		delay0
        NOP		5

LED_OFF:
        MVK		.S1    0x00000000, A3
        STW		.D1T1  A3, *A4

	    MVKL	.S2    0x00FFFFFF, B1
        MVKH	.S2    0x00FFFFFF, B1
delay1:
        SUB		B1, 1, B1
   [B1] B		delay1
        NOP		5

        B		LED_ON                               ; 跳转到 LED2 标签循环
        NOP		5
