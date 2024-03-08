class PIDController:
   def __init__(self, Kp, Ki, Kd):
       self.Kp = Kp
       self.Ki = Ki
       self.Kd = Kd
       self.integral = 0.0
       self.previous_error = 0.0
       self.integral_limit = 1.0
       self.derivative_limit = 1.0
       self.output_limit = 2.0

   def update(self, current_value, target_value, dt):
       error = target_value - current_value

       # Update integral term with anti-windup
       self.integral += error * dt
       self.integral = max(min(self.integral, self.integral_limit), -self.integral_limit)

       # Calculate derivative term with clamping
       derivative = (error - self.previous_error) / dt
       derivative = max(min(derivative, self.derivative_limit), -self.derivative_limit)

       self.previous_error = error

       # Calculate control output with clamping
       control_output = self.Kp * error + self.Ki * self.integral + self.Kd * derivative
       control_output = max(min(control_output, self.output_limit), -self.output_limit)

       return control_output

if __name__ == "__main__":
   controller = PIDController(0.1, 0.5, 0.3)  # Adjust gains as needed

   current_value = 0.0
   target_value = 10.0
   dt = 0.1

   for i in range(1000):  # Pythonic for loop
       control_output = controller.update(current_value, target_value, dt)
       current_value += control_output * dt

       print(f"target_value: {target_value:.2f}, current_value: {current_value:.2f}, control_output: {control_output:.2f}")

       target_value += 2.0 / (i + 1)
