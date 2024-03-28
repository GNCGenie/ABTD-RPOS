#include<tinyfsm.hpp>
#include<iostream>
using namespace tinyfsm;

#include"telemetry.cpp"

enum TeleCommand {
    ACQUIRE_MODE,
    APPROACH_MODE,
    ORIENT_MODE,
    DOCK_MODE
};

struct Clock : tinyfsm::Event{};
struct Telecommand : tinyfsm::Event { int TC; };

struct STANDBY;
struct ACQUIRE;
struct APPROACH;
struct ORIENT;
struct DOCK;

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
        // Initialise controller
        // Initialise Kalman Filters
    }

    void react(Clock const &) override {
        // Print state and internal variables
        std::cout << "STANDBY" << std::endl;
    }

    void exit() override {
        // Set velocity to zero
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACQUIRE_MODE)
            transit<ACQUIRE>();
    }
};

struct ACQUIRE : Board
{
    void entry() override {
        // Start rotation at constant velocity
        // Start target acquisition
    }

    void react(Clock const &) override {
        // Generate Telemetry
        std::cout << "ACQUIRE" << std::endl;
        // Update detection state
    }

    void react(Telecommand const & a) override {
        if (a.TC == APPROACH_MODE)
            transit<APPROACH>();
    }
};

struct APPROACH : Board
{
    void entry() override {
        // Initialise controller
    }

    void react(Clock const &) override {
        // Calculate effort and activation times
        std::cout << "APPROACH" << std::endl;
    }

    void exit() override {
        // Set velocity to zero
        transit<ORIENT>();
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACQUIRE_MODE)
            transit<ACQUIRE>();
        if (a.TC == ORIENT_MODE)
            transit<ORIENT>();
    }
};

struct ORIENT : Board
{
    void entry() override {
        // Initialise trajectory
        // ADCS online
    }

    void react(Clock const &) override {
        // Circle the target till docking face is acquired
        std::cout << "ORIENT" << std::endl;
        // Keep target in frame center
        // If target is lost, transition to ACQUIRE
    }

    void exit() override {
        // Set velocity to zero
        transit<DOCK>();
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACQUIRE_MODE)
            transit<ACQUIRE>();
        if (a.TC == DOCK_MODE)
            transit<DOCK>();
    }
};

struct DOCK : Board
{
    void entry() override {
        // Set velocity to zero
        // Open arm
        // Generate trajectory
    }

    void react(Clock const &) override {
        // Follow trajectory
        std::cout << "DOCK" << std::endl;
        // Keep target in frame center
        // If target is lost, transition to ACQUIRE
    }

    void exit() override {
        // Close arm
    }

    void react(Telecommand const & a) override {
        if (a.TC == ACQUIRE_MODE)
            transit<ACQUIRE>();
    }
};

FSM_INITIAL_STATE(Board, STANDBY);
