/*
 */

#pragma once

#include <Component/SWComponent.h>

class MainSWC : public SWComponent {
   private:
    class StartAction : public Action {
       public:
        StartAction() : Action(Signature("StartAction", 11)) {}
        void run(ChainDrive& chainDrive, EventType eventType) override;
    };
    StartAction startAction;

    class MainAction : public Action {
       public:
        MainAction() : Action(Signature("MainAction", 10)) {}
        void run(ChainDrive& chainDrive, EventType eventType) override;
    };
    MainAction mainAction;

   public:
    MainSWC() : SWComponent(Signature("MainSWC", 7)) { currentAction = &startAction; };
};
