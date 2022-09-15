import serial

ser=serial.Serial(port='/dev/ttyUSBir', baudrate=115200, timeout=3)

ser.setDTR(False)

print(ser.readline())

print(ser.readline())

print(ser.readline())

print(ser.readline())

print(ser.readline())

print(ser.readline())

ser.close()
