/*
 */

#pragma once

#include <AbstractHardware/ADC/AdcModule.h>
#include <AbstractHardware/Display/DisplayModule.h>
#include <AbstractHardware/GPIO/GPIOModule.h>
#include <AbstractHardware/I2C/I2CModule.h>
#include <AbstractHardware/Usart/UsartModule.h>
#include <ChainDrive.h>

class BoardSetting {
   public:
    static void init();
    static ADCData& getADCData();
    static void setOutput(unsigned short value, unsigned short maxValue);
};
