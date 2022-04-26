// ������������������������������������������������������������������������������������������������������������������������������������������������������
//
//      �º˿Ƽ�(����)���޹�˾
//
//      Copyright (C) 2022 CoreKernel Technology Guangzhou Co., Ltd
//
// ������������������������������������������������������������������������������������������������������������������������������������������������������
// ������������������������������������������������������������������������������������������������������������������������������������������������������
//
//      GPIO LED C++
//
//      2022��04��26��
//
// ������������������������������������������������������������������������������������������������������������������������������������������������������
/*
 *    C++ ����
 *
 *    - ϣ����Ĭ(bin wang)
 *    - bin@corekernel.net
 *
 *    ���� corekernel.net/.org/.cn
 *    ���� fpga.net.cn
 *
 */
#include <iostream>

using namespace std;

// ������������������������������������������������������������������������������������������������������������������������������������������������������
//
//      �궨��
//
// ������������������������������������������������������������������������������������������������������������������������������������������������������
#define HWREG(x)              (*((volatile unsigned int *)(x)))

// ������������������������������������������������������������������������������������������������������������������������������������������������������
//
//      ��
//
// ������������������������������������������������������������������������������������������������������������������������������������������������������
class LED
{
    public:
        // LED ���ͺ�״̬
        typedef enum {
                         /*   LED2          LED3    */
                         /* GPIO6[13]     GPIO6[12] */
                         CoreBoardLED2, CoreBoardLED3
                     } LEDType;

        typedef enum {
                         LED_OFF, LED_ON
                     } LEDStatus;

        // ����
        LED(LEDType ID);                    // ���캯��
        ~LED();                             // ��������

        void LEDControl(LEDStatus value);   // LED ����

    private:
        // �Ĵ���
        #define SYSCFG_PINMUX13_REG  (0x01C14154)
        #define GPIO_DIR67_REG       (0x01E26000 + 0x88)
        #define GPIO_OUT_DATA67_REG  (0x01E26000 + 0x8C)

        LEDType LED_ID;
};

LED::LED(LEDType ID)
{
    LED_ID = ID;

    switch(ID)
    {
        case CoreBoardLED2: HWREG(SYSCFG_PINMUX13_REG) = (HWREG(SYSCFG_PINMUX13_REG) & ~(0xFu << 8)) | (8u << 8);
                            HWREG(GPIO_DIR67_REG) = (HWREG(GPIO_DIR67_REG) & ~(1 << 13));
                            break;

        case CoreBoardLED3: HWREG(SYSCFG_PINMUX13_REG) = (HWREG(SYSCFG_PINMUX13_REG) & ~(0xFu << 12)) | (8u << 12);
                            HWREG(GPIO_DIR67_REG) = (HWREG(GPIO_DIR67_REG) & ~(1 << 12));
                            break;

        default:
                cout << "Wrong LED " << ID << endl;
                break;
    }
}

LED::~LED()
{
    switch(LED_ID)
    {
        case CoreBoardLED2: HWREG(SYSCFG_PINMUX13_REG) = HWREG(SYSCFG_PINMUX13_REG) & ~(0xFu << 8);
                            HWREG(GPIO_DIR67_REG) = (HWREG(GPIO_DIR67_REG) | (1 << 13));
                            break;

        case CoreBoardLED3: HWREG(SYSCFG_PINMUX13_REG) = HWREG(SYSCFG_PINMUX13_REG) & ~(0xFu << 12);
                            HWREG(GPIO_DIR67_REG) = (HWREG(GPIO_DIR67_REG) | (1 << 12));
                            break;

        default:
                cout << "Wrong LED " << LED_ID << endl;
                break;
    }
}

void LED::LEDControl(LEDStatus value)
{
    switch(LED_ID)
    {
        case CoreBoardLED2: (value == LED_ON) ? HWREG(GPIO_OUT_DATA67_REG) |= (1 << 13) : HWREG(GPIO_OUT_DATA67_REG) &= ~(1 << 13); break;
        case CoreBoardLED3: (value == LED_ON) ? HWREG(GPIO_OUT_DATA67_REG) |= (1 << 12) : HWREG(GPIO_OUT_DATA67_REG) &= ~(1 << 12); break;

        default:
                cout << "Wrong LED " << LED_ID << endl;
                break;
    }
}

// ������������������������������������������������������������������������������������������������������������������������������������������������������
//
//      ��ʱ���Ǿ�ȷ��
//
// ������������������������������������������������������������������������������������������������������������������������������������������������������
static void Delay(volatile unsigned int delay)
{
    while(delay--);
}

// ������������������������������������������������������������������������������������������������������������������������������������������������������
//
//      ������
//
// ������������������������������������������������������������������������������������������������������������������������������������������������������
void main()
{
    cout << "\r\nLED Example(C++)..." << endl;

    // LED ����
    LED *LED1  = new LED(LED::CoreBoardLED2);
    LED *LED2  = new LED(LED::CoreBoardLED3);

    for(int i = 0; i < 15; i++)
    {
        LED1->LEDControl(LED::LED_ON);
        LED2->LEDControl(LED::LED_ON);
        Delay(0x00FFFFFF);

        LED1->LEDControl(LED::LED_OFF);
        LED2->LEDControl(LED::LED_OFF);
        Delay(0x00FFFFFF);
    }

    delete LED1;
    delete LED2;
}
