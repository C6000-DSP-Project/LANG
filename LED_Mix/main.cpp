// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//
//      新核科技(广州)有限公司
//
//      Copyright (C) 2022 CoreKernel Technology Guangzhou Co., Ltd
//
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//
//      GPIO LED C++/C/线性汇编/汇编
//
//      2022年04月26日
//
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
/*
 *    C++/C/线性汇编/汇编混合开发
 *
 *    - 希望缄默(bin wang)
 *    - bin@corekernel.net
 *
 *    官网 corekernel.net/.org/.cn
 *    社区 fpga.net.cn
 *
 */
#include <iostream>

using namespace std;

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//
//      函数声明
//
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
extern "C"
{
    extern void LEDInit();                                 // 线性汇编 LED.sa
    extern void LEDControl(unsigned int LED, char value);  // 线性汇编 LED.sa
    extern void Delay(unsigned int value);                 // 汇编 Delay.asm
    extern void GPIOBankPinMuxSet();                       // C 语言 Pinmux.c
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//
//      类
//
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
class LED
{
    public:
        // LED 类型和状态
        typedef enum {
                         CoreBoardLED
                     } LEDType;

        typedef enum {
                         LED_OFF, LED_ON
                     } LEDStatus;

        // 方法
        LED(LEDType ID);                    // 构造函数
        ~LED();                             // 析构函数

        void LEDControlEx(LEDStatus value); // LED 操作

    private:
        LEDType LED_ID;
};

LED::LED(LEDType ID)
{
    LED_ID = ID;

    LEDInit();
    GPIOBankPinMuxSet();
}

LED::~LED()
{

}

void LED::LEDControlEx(LEDStatus value)
{
    if(value == LED_ON)
    {
        LEDControl(12, 3);
    }
    else
    {
        LEDControl(12, 0);
    }
}

// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//
//      主函数
//
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
void main()
{
    cout << "\r\nLED Example(Mix)..." << endl;

    // LED 对象
    LED *LED1  = new LED(LED::CoreBoardLED);

    for(int i = 0; i < 15; i++)
    {
        Delay(0x00FFFFFF);
        LED1->LEDControlEx(LED::LED_ON);

        Delay(0x00FFFFFF);
        LED1->LEDControlEx(LED::LED_OFF);
    }

    delete LED1;
}
