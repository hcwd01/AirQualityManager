/*
 */

#include <Component.h>
#include <Event.h>

#include <Common/ArrayList.cpp>

// EventType::SWCSchedule
#define SWCScheduleEventObserverSize 1

Component* swcScheduleEventComponentArr[SWCScheduleEventObserverSize];
ArrayList<Component*> swcScheduleEventComponentArrList(swcScheduleEventComponentArr, SWCScheduleEventObserverSize);

SWCSchedule swcScheduleEvent(swcScheduleEventComponentArrList);

// 모든 이벤트 처리

Event* eventPtrArr[] = {&swcScheduleEvent};

ArrayList<Event*> activedEventArrListImple(eventPtrArr, sizeof(eventPtrArr) / sizeof(eventPtrArr[0]), eventPtrArr,
                                           sizeof(eventPtrArr) / sizeof(eventPtrArr[0]));

ArrayList<Event*>& activedEventArrList = activedEventArrListImple;

#ifndef ARRAYLIST_EVENT_PTR
#define ARRAYLIST_EVENT_PTR
template class ArrayList<Event*>;
#endif
#ifndef ARRAYLIST_COMPONENT_PTR
#define ARRAYLIST_COMPONENT_PTR
template class ArrayList<Component*>;
#endif