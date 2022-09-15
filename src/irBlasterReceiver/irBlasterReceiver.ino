/* IRremoteESP8266: IRsendDemo - demonstrates sending IR codes with IRsend.
 *
 * Version 1.1 January, 2019
 * Based on Ken Shirriff's IrsendDemo Version 0.1 July, 2009,
 * Copyright 2009 Ken Shirriff, http://arcfn.com
 *
 * An IR LED circuit *MUST* be connected to the ESP8266 on a pin
 * as specified by kIrLed below.
 *
 * TL;DR: The IR LED needs to be driven by a transistor for a good result.
 *
 * Suggested circuit:
 *     https://github.com/crankyoldgit/IRremoteESP8266/wiki#ir-sending
 *
 * Common mistakes & tips:
 *   * Don't just connect the IR LED directly to the pin, it won't
 *     have enough current to drive the IR LED effectively.
 *   * Make sure you have the IR LED polarity correct.
 *     See: https://learn.sparkfun.com/tutorials/polarity/diode-and-led-polarity
 *   * Typical digital camera/phones can be used to see if the IR LED is flashed.
 *     Replace the IR LED with a normal LED if you don't have a digital camera
 *     when debugging.
 *   * Avoid using the following pins unless you really know what you are doing:
 *     * Pin 0/D3: Can interfere with the boot/program mode & support circuits.
 *     * Pin 1/TX/TXD0: Any serial transmissions from the ESP8266 will interfere.
 *     * Pin 3/RX/RXD0: Any serial transmissions to the ESP8266 will interfere.
 *   * ESP-01 modules are tricky. We suggest you use a module with more GPIOs
 *     for your first time. e.g. ESP-12 etc.
 */

#include <Arduino.h>
#include <IRremoteESP8266.h>
#include <IRsend.h>
#include <IRrecv.h>
#include <IRutils.h>

const uint16_t kIrLed = 4;  // ESP8266 GPIO pin to use. Recommended: 4 (D2).
const uint16_t kRecvPin = 13; // IR sensor pin

IRsend irsend(kIrLed);  // Set the GPIO to be used to sending the message.
IRrecv irrecv(kRecvPin); // Set the GPIO to be used for receiving the message.

uint16_t rawData[71] = {8994, 4428,  600, 522,  600, 520,  602, 520,  604, 1608,  
                        606, 516,  606, 516,  606, 516,  606, 516,  606, 1604,  
                        600, 1610,  604, 1606,  598, 524,  598, 1612,  602, 1610,  
                        604, 1606,  598, 1614,  600, 1612,  602, 520,  602, 1608,  
                        606, 514,  608, 514,  596, 524,  598, 524,  598, 524,  598, 
                        524,  598, 1610,  604, 518,  604, 1606,  598, 1612,  600, 1610,  
                        604, 1606,  596, 1616,  598, 35622,  8988, 2214,  598};  // NEC 10EFA05F
uint32_t address = 0x8;
uint32_t command = 0x5;
uint64_t data = 0x10EFA05F;

decode_results results;

void setup() {
  Serial.begin(115200);
  irsend.begin();
  irrecv.enableIRIn();
  Serial.println();
  Serial.print("IRrecv is now running and waiting for IR message on Pin ");
  Serial.println(kRecvPin);
  Serial.print("IRsend is now running and waiting for IR message on Pin ");
  Serial.println(kIrLed);
}

void loop() {
  if (irrecv.decode(&results)) {
    //serialPrintUint64(results.value, HEX);
    Serial.println("2"); //If the receiver detects a hit, it will print "2"
    irrecv.resume();
  }
  if(Serial.read() == 49){
    //Serial.println("Shooting");
    irsend.sendRaw(rawData, 67, 38);
  }
  delay(25);
}
