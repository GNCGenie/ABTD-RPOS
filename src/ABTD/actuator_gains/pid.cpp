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
    if (derivative > derivative_limit_) {
      derivative = derivative_limit_;
    } else if (derivative < -derivative_limit_) {
      derivative = -derivative_limit_;
    }

    // Update previous error
    previous_error_ = error;

    // Calculate control output
    double control_output = Kp_ * error + Ki_ * integral_ + Kd_ * derivative;
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
  double derivative_limit_ = 1.0;
  double output_limit_ = 2.0;
};

int main() {
  // Sample usage
  PIDController controller(0.1, 0.5, 0.3); // Adjust gains as needed

  double current_value = 0.0;
  double target_value = 10.0;
  double dt = 0.1;

  for (int i = 0; i < 10^2; ++i) {
    double control_output = controller.update(current_value, target_value, dt);
    current_value += control_output*dt;

    std::cout << "target_value: " << target_value << ", current_value: " << current_value << ", control_output: " << control_output << std::endl;

    target_value += 2.0/(i+1);
  }

  return 0;
}
