from os import stat   ##### 01.08.2024 last time changes to fram 32 bytes
from tkinter import *
import os
import serial
import customtkinter
import time

#ser = serial.Serial("COM3", 38400)

ser = serial.Serial(
    "COM5",
    baudrate=38400,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_TWO,
    bytesize=serial.EIGHTBITS
    )

array = [0x01, 0xC0, 0xCA, 0XFE, 0XAB]

customtkinter.set_appearance_mode("System")
root = Tk()
root.geometry('850x700')

horizontal1 = ""
horizontal2 = ""
horizontal3 = ""
horizontal4 = ""
horizontal5 = ""
horizontal6 = ""
horizontal7 = ""
horizontal8 = ""
horizontal9 = ""
horizontal10 = ""
horizontal11 = ""
horizontal12 = ""
flag = b'\xca'

buttons = 0

def updateArray():
    global array, flag

    array = [0x01, 0xC0, 0xCA, 0XFE, 0XAB]

    array.extend([int(horizontal1.get()), int(horizontal2.get()), int(horizontal3.get()), int(horizontal4.get()),
                  int(horizontal5.get()), int(horizontal6.get()), int(horizontal7.get()), int(horizontal8.get()),
                  int(horizontal9.get()), int(horizontal10.get()), int(horizontal11.get()), int(horizontal12.get()),
                  buttons])
    for i in range(1, 15):  # for loop that appends 0x00 from slot 19 (included) to 32

        array.append(0x00)

    # Example usage with an array of integers representing hexadecimal values:
    hex_data = array[5:31]
    crc_value = calculate_crc8(hex_data)
    array[-1] = crc_value
    print(f"CRC8 checksum: 0x{crc_value:02X}")

    print(array)
    root.after(30)

    ser.write(array)

    s = ser.read(1)

    flag = s
    
def txrx():
    ser.write(array)
    s = ser.read(1)
    flag = s
    
def createLabels():
    #############################################
    ##Led #1
    global horizontal1, horizontal2, horizontal3, horizontal4
    global horizontal5, horizontal6, horizontal7, horizontal8
    global horizontal9, horizontal10, horizontal11, horizontal12

    horizontal1 = Scale(root, from_=0, to=255, bg="green", fg="white", font=('Helvetica 18 bold', 15))
    #horizontal1.grid(row=2, column=1)
    horizontal1.place(x=100, y=50, height=200)

    horizontal2 = Scale(root, from_=0, to=255,  bg="red", fg="white",font=('Helvetica 18 bold', 15))
    horizontal2.place(x=200, y=50, height=200)

    horizontal3 = Scale(root, from_=0, to=255, bg="blue", fg="white",font=('Helvetica 18 bold', 15))
    horizontal3.place(x=300, y=50, height=200)
    ###########################################
    ##Led #2

    horizontal4 = Scale(root, from_=0, to=255, bg="green", fg="white",font=('Helvetica 18 bold', 15))
    horizontal4.place(x=500, y=50, height=200)

    horizontal5 = Scale(root, from_=0, to=255, bg="red", fg="white",font=('Helvetica 18 bold', 15))
    horizontal5.place(x=600, y=50, height=200)

    horizontal6 = Scale(root, from_=0, to=255, bg="blue", fg="white",font=('Helvetica 18 bold', 15))
    horizontal6.place(x=700, y=50, height=200)

    ###########################################
    ## Led #3

    horizontal7 = Scale(root, from_=0, to=255, bg="green", fg="white",font=('Helvetica 18 bold', 15))
    horizontal7.place(x=100, y=350, height=200)

    horizontal8 = Scale(root, from_=0, to=255, bg="red", fg="white",font=('Helvetica 18 bold', 15))
    horizontal8.place(x=200, y=350, height=200)

    horizontal9 = Scale(root, from_=0, to=255, bg="blue", fg="white",font=('Helvetica 18 bold', 15))
    horizontal9.place(x=300, y=350, height=200)

    ###########################################
    ##Led #4
    horizontal10 = Scale(root, from_=0, to=255, bg="green", fg="white",font=('Helvetica 18 bold', 15))
    horizontal10.place(x=500, y=350, height=200)

    horizontal11 = Scale(root, from_=0, to=255, bg="red", fg="white",font=('Helvetica 18 bold', 15))
    horizontal11.place(x=600, y=350, height=200)

    horizontal12 = Scale(root, from_=0, to=255,bg="blue", fg="white",font=('Helvetica 18 bold', 15))
    # horizontal12.grid(row=4, column=8)

    horizontal12.place(x=700, y=350, height=200)
    ###########################################

def createText():
    t1 = Label(root, text="RGB Led #1", font=("Courier", 20))
    t1.place(x=150, y=0)

    t2 = Label(root, text="RGB Led #2", font=("Courier", 20))
    t2.place(x=550, y=0)

    t3 = Label(root, text="RGB Led #3", font=("Courier", 20))
    t3.place(x=150, y=300)

    t4 = Label(root, text="RGB Led #4", font=("Courier", 20))
    t4.place(x=550, y=300)

    t5 = Label(root, text="Control Button #1", font=("Courier", 15))
    t5.place(x=70, y=615)

    t6 = Label(root, text="Control Button #2", font=("Courier", 15))
    t6.place(x=320, y=615)

    t7 = Label(root, text="Control Button #3", font=("Courier", 15))
    t7.place(x=570, y=615)

def helloCallBack(btn):
    global buttons

    if  buttons != 1 and buttons != 3 and buttons != 5 and buttons != 7 and btn == 1:
        buttons = buttons + 1
    elif (buttons == 1 or buttons == 3 or buttons == 5 or buttons == 7) and btn == 1:
        buttons = buttons - 1

    if buttons != 2 and buttons != 3 and buttons != 6 and buttons != 7 and btn == 2:
        buttons = buttons + 2
    elif (buttons == 2 or buttons == 3 or buttons == 6 or buttons == 7) and btn == 2:
        buttons = buttons - 2
        
    if buttons != 4 and buttons != 5 and buttons != 6 and buttons != 7 and btn == 3:
        buttons = buttons + 4
    elif (buttons == 4 or buttons == 5 or buttons == 6 or buttons == 7) and btn == 3:
        buttons = buttons - 4

def delay_time():
     time.sleep(1)

def createButtons():

    B1 = customtkinter.CTkButton(master=root, text="ON/OFF",hover_color=("white", "white"), text_color=("black", "black"), fg_color=("red", "lightgray"), command=lambda: helloCallBack(1))
    B1.place(x=100, y=650)

    B2 = customtkinter.CTkButton(master=root, text="ON/OFF",hover_color=("white", "white"), text_color=("black", "black"), fg_color=("red", "lightgray"), command=lambda: helloCallBack(2))
    B2.place(x=350, y=650)

    B3 = customtkinter.CTkButton(master=root, text="ON/OFF",hover_color=("white", "white"), text_color=("black", "black"), fg_color=("red", "lightgray"), command=lambda: helloCallBack(3))
    B3.place(x=600, y=650)

def turnOnLed():
    global flag

    if flag == b'\xca':
        flag = 0
        updateArray()

    root.after(1, turnOnLed)

def calculate_crc8(data):
    crc = 0x00  # Initial CRC value
    polynomial = 0x07  # CRC8 polynomial (0x07)

    for byte in data:
        crc ^= byte
        for _ in range(8):
            if crc & 0x80:
                crc = (crc << 1) ^ polynomial
            else:
                crc <<= 1

    # Ensure the CRC8 value is only 8 bits (1 byte)
    crc &= 0xFF

    return crc

createButtons()
createText()
createLabels()
turnOnLed()

root.mainloop()

