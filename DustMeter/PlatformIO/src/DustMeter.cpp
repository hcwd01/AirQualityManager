/*
 * 메인 SWC
 * 각 SWC 기능 시작 전에 실행되는 진입 컴포넌트
 */
#include <Board_v0.0.0_dev.h>
#include <DustMeter.h>

// MainSWC 인스턴스 연결
static MainSWC _mainSwc;
Component& mainSWC = _mainSwc;

// DSM501AManagerSWC
#include <HardwareImpl/DSM501A/DSM501ASWC.h>
class Dsm501TimeSource : public DSM501ASWC::TimeSource {
    virtual unsigned long getMicroTime() override { return BoardSetting::getHwMicroSecTime(); }
};
Dsm501TimeSource dsm501TimeSource;
DSM501ASWC dsm501aSwc = DSM501ASWC(dsm501TimeSource, BoardSetting::getVout1Pin(), BoardSetting::getVout2Pin());

void MainSWC::StartAction::run(ChainDrive& chainDrive, EventType eventType) {
    BoardSetting::init();

    BoardSetting::drawUi();

    chainDrive.loadComponent(dsm501aSwc, EventType::SWCSchedule);
    _mainSwc.currentAction = &_mainSwc.mainAction;
}

unsigned short ventilationWaitingTime_10ms = 0;

void MainSWC::MainAction::run(ChainDrive& chainDrive, EventType eventType) {
    if (!swc.timerChecker.isPassed(BoardSetting::getHwMicroSecTime())) return;

    DustMeterData dustMeterData;
    if (dsm501aSwc.getState().getNum() == DSM501ASWC::State::heating.getNum()) {
        dustMeterData.state = &DustMeterData::State::HEATING;
        dustMeterData.targetTimeCount_100ms = dsm501aSwc.heatingTime_s * 10;
        dustMeterData.currentTimeCount_100ms = dsm501aSwc.getRemainTime_100ms();
    } else if (dsm501aSwc.getState().getNum() == DSM501ASWC::State::ready.getNum()) {
        dustMeterData.state = &DustMeterData::State::VENTING;
        dustMeterData.targetTimeCount_100ms = _mainSwc.ventilationTime_100ms;
        dustMeterData.currentTimeCount_100ms = (_mainSwc.ventilationTime_100ms - (ventilationWaitingTime_10ms++ / 10));
        BoardSetting::getFanConstrolPin().set(true);
        if ((ventilationWaitingTime_10ms / 10) > _mainSwc.ventilationTime_100ms) {
            BoardSetting::getFanConstrolPin().set(false);
            dsm501aSwc.start();
            ventilationWaitingTime_10ms = 0;
        }
    } else {
        dustMeterData.state = &DustMeterData::State::RUNNING;
        dustMeterData.targetTimeCount_100ms = dsm501aSwc.measurementTime_100ms;
        dustMeterData.currentTimeCount_100ms = dsm501aSwc.getRemainTime_100ms();
    }

    dustMeterData.pm2_5LowRatio_0_00Per = dsm501aSwc.getPm2_5LowRatio_0_00Per();
    dustMeterData.pm0_1LowRatio_0_00Per = dsm501aSwc.getPm0_1LowRatio_0_00Per();
    dustMeterData.pm2_5Concentration_0_00umM3 = dsm501aSwc.getPm2_5Concentration_0_00umM3();
    dustMeterData.pm0_1Concentration_0_00umM3 = dsm501aSwc.getPm0_1Concentration_0_00umM3();

    BoardSetting::dataUpdate(dustMeterData);
}
