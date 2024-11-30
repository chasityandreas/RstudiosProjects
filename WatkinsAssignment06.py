#Chasity Watkins
#04/14/2024


#Import module from tkinter
from tkinter import *
from tkinter import filedialog
import os

#Function to collect content, perform computation, display results in label & save data to the file
def CalcGrossPay():
    
    wage = float(txtWage.get()) #Collects the contents of the wage textbox
    weekHours = float(txtWeekHours.get()) #Collects the contents of the hours textbox
    grossPay = weekHours*wage #Calculates the pay
    
    overTime = wage*1.5
    if weekHours > 40:
        print("Over Time Pay Amount:", overTime)
        grossPay += (weekHours - 40) * overTime
    else:
        print("Gross Pay Amount:", grossPay)
   
    lName = (txtLname.get())
    fName = (txtFname.get())
    lblList.configure(text = format(grossPay, ".1f"))
    
    newFile.write(str(weekHours) + ", " + str(wage) + "," + str(fName)+ ", " + str(lName) + "," + str(grossPay) + "\n") #Writes data to the file
    #txtWage.delete(0, END) #Clears the contents of the Fuel textbox
    #txtWeekHours.delete(0, END) #Clears the contents of the Miles textbox
    #txtLname.delete(0, END)
    #txtFname.delete(0, END)
    #allows user to manually clear text with buttons created^
    txtWeekHours.focus()

#Function to display Open Files dialog box, open file & read contents into combobox
def FileSave():
    
    
    DemoWindow.filename = filedialog.asksaveasfilename(parent=DemoWindow,
        initialdir=os.getcwd(),
        title="Please create a file name for your new file.",
        filetypes = (("Text Files", "*.txt"), ("All Files", "*.*")))
    fileContents = DemoWindow.filename + ".txt"
    global newFile
    newFile = open(fileContents, "w")
    lblList.configure(text = fileContents)   
 
#Function to save data to a new file
def SaveNewFile():
    DemoWindow.filename = filedialog.asksaveasfilename(parent=DemoWindow,
                                                       initialdir=os.getcwd(),
                                                       title="Please create a file name for your new file.",
                                                       filetypes=(("Text Files", "*.txt"), ("All Files", "*.*")))
    fileContents = DemoWindow.filename + ".txt"
    if DemoWindow.filename:
        wage = float(txtWage.get())  
        weekHours = float(txtWeekHours.get())  
        grossPay = weekHours * wage  
        overTime = wage * 1.5
        if weekHours > 40:
            grossPay += (weekHours - 40) * overTime
        
        lName = txtLname.get()
        fName = txtFname.get()
        
        with open(fileContents, "w") as file:
            file.write(f"{weekHours}, {wage}, {fName}, {lName}, {grossPay}\n")
            
        lblList.configure(text=fileContents)
  
    
#function to save all input info to an existing file

def SaveSameFile():
    filePath = filedialog.askopenfilename(parent=DemoWindow,
                                           initialdir=os.getcwd(),
                                           title="Please select an existing file to save text unto",
                                           filetypes=(("Text Files", "*.txt"), ("All Files", "*.*")))
    if filePath:
        wage = float(txtWage.get())  # Collects the contents of the wage textbox
        weekHours = float(txtWeekHours.get())  # Collects the contents of the hours textbox
        grossPay = weekHours * wage  # Calculates the pay
        overTime = wage * 1.5
        if weekHours > 40:
            grossPay += (weekHours - 40) * overTime
        
        lName = txtLname.get()
        fName = txtFname.get()
        
        with open(filePath, "a") as file:
            file.write(f"{weekHours}, {wage}, {fName}, {lName}, {grossPay}\n")


#clear function
def ClearFirstName():
    txtFname.delete(0, END)

#clear
def ClearLastName():
    txtLname.delete(0, END)


#clear
def ClearHoursText():
    txtWeekHours.delete(0, END)
    
#clear
def ClearWageText():
    txtWage.delete(0, END)

    
#Function to Exit program
def ExitProg():
    newFile.close()
    DemoWindow.destroy()

#'''Below is the main program.
#First the program windows is created, next the GUI objects to be
#placed in the window are defined, and last there is code that runs when the
#window is initialized and started.'''

#Creates and sizes program main window
DemoWindow = Tk() #Creates the GIU Window object and names it
DemoWindow.title("Gross Pay Calculator") #Creates a title for the GUI window
DemoWindow.geometry("800x400") #Specifies the window size

#Create labels
#Label to display content in list form
lblList = Label(DemoWindow, text = "Hello World!!!",relief = SUNKEN, width = 20, height = 10, wraplength = 100, anchor
= NW, justify = LEFT)
lblList.grid(column = 0, row = 10) #label position

#Label for Wage textbox
lblWage = Label(DemoWindow, text = "Please enter your hourly wage:",relief = SUNKEN, width = 36, justify
=RIGHT)
lblWage.grid(column = 0, row = 4)

#Label for Week hours textbox
lblWeekHours = Label(DemoWindow, text = "Please enter the hours worked weekly:",relief = SUNKEN, width = 36, justify = RIGHT)
lblWeekHours.grid(column = 0, row = 3)

#Label for Last Name textbox
lblLastName = Label(DemoWindow, text = "Please enter your last name:",relief = SUNKEN, width = 36, justify = RIGHT)
lblLastName.grid(column = 0, row = 2)

#Label for First Name textbox
lblFirstName = Label(DemoWindow, text = "Please enter your first name:",relief = SUNKEN, width = 36, justify = RIGHT)
lblFirstName.grid(column = 0, row = 1)

#Create Textboxes
#Textbox to collect wage amount
txtWage = Entry(DemoWindow, width = 20)

#Textbox to collect week hours 
txtWeekHours = Entry(DemoWindow, width = 20)

#Textbox to collect first name 
txtFname = Entry(DemoWindow, width = 20)

#Textbox to collect last name 
txtLname = Entry(DemoWindow, width = 20)

#Textbox positions
txtWage.grid(column = 10, row= 4)
txtWeekHours.grid(column = 10, row = 3)
txtLname.grid(column = 10, row = 2)
txtFname.grid(column = 10, row = 1)


#Create Command Buttons
#Button to calculate gross pay
#Buttons included that will also clear text boxes and save files in two different ways
btnGrossPay = Button(DemoWindow, text = "Gross Pay", command = CalcGrossPay)
btnGrossPay.grid(column = 10, row = 7)

btnClearFname = Button(DemoWindow, text = "Clear", command = ClearFirstName)
btnClearFname.grid(column = 15, row = 1)

btnClearLname = Button(DemoWindow, text = "Clear", command = ClearLastName)
btnClearLname.grid(column = 15, row = 2)

btnClearHours = Button(DemoWindow, text = "Clear", command = ClearHoursText)
btnClearHours.grid(column = 15, row = 3)

btnClearWage = Button(DemoWindow, text = "Clear", command = ClearWageText)
btnClearWage.grid(column = 15, row = 4)

btnSaveInfo = Button(DemoWindow, text = "Save New File", command = SaveNewFile)
btnSaveInfo.grid(column = 15, row = 32)

btnSaveInfo = Button(DemoWindow, text = "Save to Existing File", command = SaveSameFile)
btnSaveInfo.grid(column = 15, row = 25)


#Button to exit program and close the file
btnExit = Button(DemoWindow, text = "Exit Program", command = ExitProg)
btnExit.grid(column = 15, row = 40)
#'''After the window is cerated and mainloop is called, this code executes once the
#window objects are created. The window is created, the focus is set to a textbox,
#and the file save function is called.'''

#Sets focus on the hours textbox
txtWeekHours.focus()

#Creates a file after window is opened, by calling the FileSave function
DemoWindow.after(1,FileSave) #The after method runs 1 millisecond after the window is created

#'''This starts the program by invoking the main window's main loop above.'''
DemoWindow.mainloop()

