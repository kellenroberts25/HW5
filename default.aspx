<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

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
                <asp:RequiredFieldValidator ID="tbLoanAmount" runat="server"
                    ControltoValidate ="tbLoanAmt"
                    ErrorMessage ="Please enter a valid Loan Amount">

                </asp:RequiredFieldValidator>
                  
            </span>
                  

        <asp:Label ID="LoanAmountErrorlbl" runat="server"></asp:Label>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        &nbsp;&nbsp;
            <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControltoValidate ="tbLoanAmt"
                    ErrorMessage ="Please enter a valid Annual Interest %">

                </asp:RequiredFieldValidator>
                  
            </span>

        <asp:Label ID="LoanInterestlbl" runat="server"></asp:Label>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;

            <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControltoValidate ="tbLoanAmt"
                    ErrorMessage ="Please enter a valid Loan Term">

                </asp:RequiredFieldValidator>
                  
            </span>
        <asp:Label ID="LoanTermErrorlbl" runat="server"></asp:Label>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt0" runat="server" Text="Clear" EnableTheming="True" Width="100px" />
        
        <br /><br />
                
        <asp:Label ID="lblMonthlyPmt" runat="server">Welcome to my mortgage calculator.  Please complete th fields about to have your monthly payment and loan repayment schedule calculated for you.</asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        </div>
    </form>
</body>
</html>
