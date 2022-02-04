/*
 */

#include <AbstractHardware/MCU/ATMega328p/MCU_ATMega328p.h>
#include <Board_v0.0.0_dev.h>

MCU_ATMega328p atmega328p;

MCU_ATMega328pAdcData mcu_ATMega328pAdcData((MCU_ATMega328p_Data::AnalogIn&)MCU_ATMega328p_Data::PhysicalPin::PC0);
MCU_ATMega328pTimer1::TimerOut_16Bit& pwmPinoutputMode =
    atmega328p.mcu_ATMega328pTimer.timer1.getOutput(MCU_ATMega328p_Data::PhysicalPin::PB1);

void BoardSetting::init() {
    atmega328p.setGlobalInterrupt(true);

    atmega328p.mcu_ATMega328pAdc.on();
    atmega328p.mcu_ATMega328pTimer.timer1.set(MCU_ATMega328pTimer1::WaveformGenerationMode::FastPWM_10bit,
                                              MCU_ATMega328pTimer1::ClockSorce::CLK_PRESCALER_1);

    atmega328p.mcu_ATMega328pGpio.getGPIOPin(MCU_ATMega328p_Data::PhysicalPin::PB1).set(false);
    pwmPinoutputMode.init(MCU_ATMega328pTimer1::OutputMode::FastPWM_NonInverting);

    atmega328p.mcu_ATMega328pTimer.timer1.on();
}

ADCData& BoardSetting::getADCData() { return mcu_ATMega328pAdcData; }

void BoardSetting::setOutput(unsigned short value, unsigned short maxValue) { pwmPinoutputMode.set(value, maxValue); }