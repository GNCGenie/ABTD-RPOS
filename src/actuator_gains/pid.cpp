#include <iostream>

class PIDController {
public:
  // Constructor
  PIDController(double Kp, double Ki, double Kd) :
      Kp_(Kp), Ki_(Ki), Kd_(Kd), integral_(0.0), previous_error_(0.0) {}

  // Update function to calculate control output
  double update(double current_value, double target_value, double dt) {
    // Calculate error
    double error = target_value - current_value;

    // Update integral term (avoid integral wind-up)
    integral_ += error * dt;
    if (integral_ > integral_limit_) {
      integral_ = integral_limit_;
    } else if (integral_ < -integral_limit_) {
      integral_ = -integral_limit_;
    }

    // Calculate derivative term
    double derivative = (error - previous_error_) / dt;

    // Update previous error
    previous_error_ = error;

    // Calculate control output
    double control_output = Kp * error + Ki * integral_ + Kd * derivative;

    // Apply output saturation (optional)
    if (control_output > output_limit_) {
      control_output = output_limit_;
    } else if (control_output < -output_limit_) {
      control_output = -output_limit_;
    }

    return control_output;
  }

private:
  // PID gains
  double Kp_, Ki_, Kd_;

  // Integral term
  double integral_;

  // Previous error
  double previous_error_;

  // Optional limits for integral and output
  double integral_limit_ = 1.0;
  double output_limit_ = 10.0;
};

int main() {
  // Sample usage
  PIDController controller(1.0, 0.1, 0.5); // Adjust gains as needed

  double current_value = 5.0;
  double target_value = 10.0;
  double dt = 0.1;

  for (int i = 0; i < 10; ++i) {
    double control_output = controller.update(current_value, target_value, dt);
    // Apply control output to your system
    std::cout << "Control output: " << control_output << std::endl;

    // Update current value (simulated system behavior)
    current_value += 0.1; // Replace with actual system response
  }

  return 0;
}
