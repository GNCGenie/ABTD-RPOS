#include<iostream>
#include<chrono>
#include<thread>
using namespace std;

#include"ABTD/state_management/states.cpp"

int main()
{
    Clock clock;
    Board::start();

    for(int i = 0; i < 2; i++){
        Board::dispatch(clock);
        this_thread::sleep_for(chrono::milliseconds(500));
    }

    Telecommand tc;
    tc.TC = ACTIVE_MODE;
    Board::dispatch(tc);
    for(int i = 0; i < 2; i++){
        Board::dispatch(clock);
        this_thread::sleep_for(chrono::milliseconds(500));
    }

    tc.TC = FIRING_MODE;
    Board::dispatch(tc);
    for(int i = 0; i < 2; i++){
        Board::dispatch(clock);
        this_thread::sleep_for(chrono::milliseconds(500));
    }

    tc.TC = ACTIVE_MODE;
    Board::dispatch(tc);
    for(int i = 0; i < 2; i++){
        Board::dispatch(clock);
        this_thread::sleep_for(chrono::milliseconds(500));
    }

    tc.TC = STR_TM_MODE;
    Board::dispatch(tc);
    for(int i = 0; i < 2; i++){
        Board::dispatch(clock);
        this_thread::sleep_for(chrono::milliseconds(500));
    }
}
