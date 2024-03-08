import serial
import modbus_tk
import modbus_tk.defines as cst
from modbus_tk import modbus_rtu

#PORT = 'COM8' # Windows
PORT = '/dev/ttyUSB0' # Linux

def main():
    #Connect to the slave
    ser = serial.Serial(port=PORT, baudrate=115200, bytesize=8, parity='N', stopbits=1, xonxoff=0)
    master = modbus_rtu.RtuMaster(ser)
    master.set_timeout(5.0)
    master.set_verbose(True)

    try:
        # valuesToRead = master.execute(10, cst.READ_HOLDING_REGISTERS, 1, 8) # ref0
        # print(valuesToRead)

        #send some queries
        # master.execute(10, cst.READ_COILS, 0, 8) # Not used
        # master.execute(10, cst.READ_DISCRETE_INPUTS, 0, 8) # Not used
        # master.execute(10, cst.READ_INPUT_REGISTERS, 100, 3) # Not used
        # master.execute(10, cst.READ_HOLDING_REGISTERS, 100, 12) # Not used
        # master.execute(10, cst.WRITE_SINGLE_COIL, 7, output_value=1) # Not used
        # master.execute(10, cst.WRITE_SINGLE_REGISTER, 2, output_value=2000) # ref1
        # master.execute(10, cst.WRITE_MULTIPLE_COILS, 0, output_value=[0, 0, 0, 1, 1])# Not used
        master.execute(10, cst.WRITE_MULTIPLE_REGISTERS, 1, output_value=[65000 for i in range(8)]) # ref2

    except modbus_tk.modbus.ModbusError as exc:
        print(exc)

        ser.close()
        master.close()

if __name__ == "__main__":
    main()
