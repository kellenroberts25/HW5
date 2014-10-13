﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Mike's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <span>
                <asp:RegularExpressionValidator ID="tbLoanAmount" runat="server"
                    ControltoValidate ="tbLoanAmt"
                    ErrorMessage ="Please enter a valid Loan Amount"
                    ValidationExpression ="^\d{1,10}$">

                </asp:RegularExpressionValidator>
            </span>
                  

        <asp:Label ID="LoanAmountErrorlbl" runat="server"></asp:Label>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;
        <asp:Label ID="LoanInterestlbl" runat="server"></asp:Label>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;
        <asp:Label ID="LoanTermErrorlbl" runat="server"></asp:Label>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt0" runat="server" Text="Clear" EnableTheming="True" Width="100px" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        </div>
    </form>
</body>
</html>
