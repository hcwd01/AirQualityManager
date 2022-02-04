/*
 */

#pragma once

#include <AbstractHardware/GPIO/GPIOModule.h>
#include <AbstractHardware/Usart/UsartModule.h>
#include <Common/Enum.h>

class DustMeterData {
   public:
    class State : public Enum {
       public:
        static State HEATING;
        static State VENTING;
        static State RUNNING;

        const char* str;
        const unsigned char strSize;

        State(unsigned char num, const char* str, const unsigned char strSize) : Enum(num), str(str), strSize(strSize) {}
    };

    State* state = &State::HEATING;
    unsigned short currentTimeCount_100ms = 0;
    unsigned short targetTimeCount_100ms = 0;
    unsigned short pm2_5LowRatio_0_00Per = 0;
    unsigned short pm0_1LowRatio_0_00Per = 0;
    unsigned long pm2_5Concentration_0_00umM3 = 0;
    unsigned long pm0_1Concentration_0_00umM3 = 0;
};

class BoardSetting {
   public:
    static void init();
    static unsigned long getHwMicroSecTime();
    static UsartModule& getUsartModule();
    static GPIOModule::GPIOPin& getVout1Pin();
    static GPIOModule::GPIOPin& getVout2Pin();
    static GPIOModule::GPIOPin& getFanConstrolPin();
    static void drawUi();
    static void dataUpdate(DustMeterData& dustMeterData);
};
