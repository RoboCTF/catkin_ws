#!/usr/bin/env python
# license removed for brevity
import rospy
import serial
from sensor_msgs.msg import Joy
from std_msgs.msg import Bool



death = Bool()
shoot = Bool()


def callback(data):
    
    if data.buttons[6] == 1: # button LT is pressed
        shoot.data=1
    else: 
        shoot.data=0
    
        


def irblaster():
    

    ser=serial.Serial(baudrate=115200, timeout=0)
    ser.setDTR(False)
    ser.port='/dev/ttyUSBir'
    ser.open()
    counter=0



    
    pubdeath = rospy.Publisher('/ir_death_topic',Bool, queue_size=10)
    rospy.init_node('irblaster', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    subJoy = rospy.Subscriber('/joy', Joy, callback)
    

    while not rospy.is_shutdown():
        
        buff = ser.readline()
        #print(ser.readline())
        #print(type(ser.readline()))
        if "2" in buff:
           death.data = True

        if death.data== True :
            counter=counter+1

        if counter>50:
            counter=0
            death.data=False


        
        
        if shoot.data ==1:
            ser.write(b'1')

        pubdeath.publish(death)

        rate.sleep()
	 
if __name__ == '__main__':
	try:
		irblaster()
	except rospy.ROSInterruptException:
		pass
