/*
 */

#pragma once

#include <CompilerAbst/VariableLocation.h>
#include <Component/SWComponent.h>

const char startActionStr[] PROGMEM = "StartAction";
const char MainActionStr[] PROGMEM = "MainAction";
const char MainSWCStr[] PROGMEM = "MainSWC";

class MainSWC : public SWComponent {
   private:
    class StartAction : public Action {
       public:
        StartAction() : Action(Signature(startActionStr, 11)) {}
        void run(ChainDrive& chainDrive, EventType eventType) override;
    };
    StartAction startAction;

    class MainAction : public Action {
       private:
        MainSWC& swc;

       public:
        MainAction(MainSWC& swc) : Action(Signature(MainActionStr, 10)), swc(swc) {}
        void run(ChainDrive& chainDrive, EventType eventType) override;
    };
    MainAction mainAction = MainAction(*this);

   public:
    const unsigned char ventilationTime_100ms = 50;  // 5초

    MainSWC() : SWComponent(Signature(MainSWCStr, 7)) {
        currentAction = &startAction;
        timerChecker.setWaitingTime(10000);
    };
};
