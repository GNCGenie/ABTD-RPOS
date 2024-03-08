#include<tinyfsm.hpp>
#include<iostream>
using namespace tinyfsm;

#include"telemetry.cpp"

enum TeleCommand {
    ACTIVE_MODE,
    STR_TM_MODE,
    FIRING_MODE
};

struct Clock : tinyfsm::Event{};
struct Telecommand : tinyfsm::Event { int TC; };

struct STANDBY;
struct ACTIVE;
struct FIRING;
struct STR_TM;

struct Board : tinyfsm::Fsm<Board>
{
    virtual void react(Clock const &) {};
    virtual void react(Telecommand const & a) {};

    virtual void entry(void) {};
    virtual void exit(void) {};
};

struct STANDBY : Board
{
    void entry() override {
        // Initialise RT telemetry
        // Initialise telecommand handling
    }

    void react(Clock const &) override {
        // Generate Telemetry
        printIdleTelemetry();
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACTIVE_MODE)
            transit<ACTIVE>();
    }
};

struct ACTIVE : Board
{
    void entry() override {
        // Initialise RT telemetry
        // Initialise FDIR
        // Initialise PID / Maintainance functions
    }

    void react(Clock const &) override {
        // Generate Telemetry
        printActiveTelemetry();
        // Run Fuel Tank PID
        // Run FDIR & Catch any errors
    }

    void react(Telecommand const & a) override {
        if (a.TC == FIRING_MODE)
            transit<FIRING>();
        if (a.TC == STR_TM_MODE)
            transit<STR_TM>();
    }
};

struct STR_TM : Board
{
    void entry() override {
        // Initialise FDIR
        // Initialise PID / Maintainance functions
        // Initialise Operational Memory Read
    }

    void react(Clock const &) override {
        // Transfer Stored Telemetry
        printStoredTelemetry();
        // Run Fuel Tank PID
        // Run FDIR & Catch any errors
    }

    void exit() override {
        // Do Nothing
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACTIVE_MODE)
            transit<ACTIVE>();
    }
};


struct FIRING : Board
{
    void entry() override {
        // Initialise RT telemetry
        // Initialise Hi-Freq Data Read/Write
        // Initialise firing sequence
    }

    void react(Clock const &) override {
        // Generate Telemetry
        printFiringTelemetry();
        // Copy propulsion unit data to Volatile memory
    }

    void exit() override {
        // Stop Hi-Freq Data Read/Write
        // Copy Hi-Freq Data from Volatile to Non-volatile
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACTIVE_MODE)
            transit<ACTIVE>();
    }
};

FSM_INITIAL_STATE(Board, STANDBY);
