/*
 * 메인 SWC
 * 각 SWC 기능 시작 전에 실행되는 진입 컴포넌트
 */
#include <AirCleaner.h>
#include <Board_v0.0.0_dev.h>

// MainSWC 인스턴스 연결
static MainSWC _mainSwc;
Component& mainSWC = _mainSwc;

void MainSWC::StartAction::run(ChainDrive& chainDrive, EventType eventType) {
    BoardSetting::init();
    _mainSwc.currentAction = &_mainSwc.mainAction;
}

void MainSWC::MainAction::run(ChainDrive& chainDrive, EventType eventType) {
    AnalogData analogData;
    if (!BoardSetting::getADCData().getResult(analogData)) {
        analogData.numerator = 0;
        analogData.denominator = 1024;
    }
    BoardSetting::setOutput(analogData.numerator, analogData.denominator);
}