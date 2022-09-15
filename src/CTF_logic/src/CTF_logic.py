#!/usr/bin/env python

import numpy as np
import rospy 
from std_msgs.msg import Bool
from std_msgs.msg import String
from geometry_msgs.msg      import Point


death = 0

en_f=Bool()

hm_f=Bool()

pre_text= 'Team score is '



def callback1(data):
    
    if data.data == 1:
    	death = 1
    else:
    	death = 0


def callback(data):
    
    
    if data.x >160: # button LT is pressed
        en_f.data = True
   
    if data.z >160:
    	hm_f.data = True




def CTF_logic():


	rospy.init_node('CTF_logic', anonymous=True)
	rospy.Rate(1)
	pubScore = rospy.Publisher('/score_topic', String, queue_size=1)
	subDeath = rospy.Subscriber('/death_topic', Bool, callback1)
	subDeath = rospy.Subscriber('/blob/point_blob', Point, callback)

	score_total=0

	while not rospy.is_shutdown():

		score_b= 0

		while en_f.data == True:
			print('if_1')
			score_a = 1

			if death == 1:
				score_a= 0
				break
				

			if hm_f.data == True:
				score_b = 1



			score = score_a + score_b
			print(score)
			if score == 2:
				score_total = score_total + 1
				en_f.data = False
				hm_f.data = False
				break
				

				
		pubScore.publish(pre_text + str(score_total)) 




if __name__ == '__main__':
	try:
		CTF_logic()
	except rospy.ROSInterruptException:
		pass














