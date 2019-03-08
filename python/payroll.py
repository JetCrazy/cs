##################################
#
#   Program Name: Payroll
#   Author: Anthony Siemsen
#   Date: 2-1-19
#   Purpose: Calculate Payroll
#
##################################

def payroll(employee):
    firstName = employee[0]
    lastName = employee[1]
    employNumber = employee[2]
    employType = employee[3]
    hoursWorked = employee[4]
    wage = employee[5]
    deduct = employee[6]
    
    if employType == "M": # If employee is a manager it will not process
        print("We do not do Managers Payrolls")
    else:
        gp = gross_pay(hoursWorked, wage) # Calculates gross pay
        retirePlan = retirement(gp) # Calculates 401k
        ssmed = ss_medi(gp) # Calculates ss
        ft = federalTax(gp, deduct) # Calculates Federal tax
        st = stateTaxes(gp) # Calculates State Tax
        netp = netCalc(gp, retirePlan, ssmed, ft, st) # Calculates Net Pay
        
        employData = [firstName + ' ' + lastName, gp, netp, employNumber, retirePlan, ssmed, ft, st] # Puts Information In a list
        print employee
        print employData
    

def gross_pay(hoursWorked, wage):
    grossPay = hoursWorked * wage
    return grossPay

def retirement(grossPay):
    retire = grossPay * 0.05
    return retire

def ss_medi(grossPay):
    medi = grossPay * 0.0765
    return medi
    
def federalTax(grossPay, deduct):
    fedTax = 0.22 * (grossPay - (35.62 * deduct))
    return fedTax
    
def stateTaxes(grossPay):
    stateTax = 0.09 * grossPay
    return stateTax
    
def netCalc(grossPay, retire, medi, fedTax, stateTax):
    netPay = grossPay - (retire + medi + fedTax + stateTax)
    return netPay


employee1 = ("Bill", "Myers", "A1205", "S", 40.00, 75.00, 0)
employee2 = ("Adam", "Williams", "A1219", "S", 40.00, 35.00, 9)
employee3 = ("Paul", "Catalano", "A1211", "M", 40.00, 85.00, 0)
employee4 = ("Simon", "Bolivar", "A1221", "S", 35.00, 13.00, 2)
