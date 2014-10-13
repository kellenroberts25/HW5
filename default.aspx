<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="css_style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="appborder">
    
        <h1>Kellen's Mortgage Calculator</h1>
        
        <br />
     
        *Loan Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <span class="errormessage">
                <asp:RequiredFieldValidator ID="tbLoanAmount" runat="server"
                    ControltoValidate ="tbLoanAmt"
                    ErrorMessage ="Please enter a valid Loan Amount">

                </asp:RequiredFieldValidator>
                  
            </span>
                  

        <br /><br />      
        
        *Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        &nbsp;&nbsp;
            <span class="errormessage">
                <asp:RequiredFieldValidator ID="tbAnnInt" runat="server"
                    ControltoValidate ="tbAnnualInterest"
                    ErrorMessage ="Please enter a valid Annual Interest %">

                </asp:RequiredFieldValidator>
                  
            </span>

        <br /><br />

        *Loan Term (Yrs):&nbsp;&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;

            <span class="errormessage">
                <asp:RequiredFieldValidator ID="tbTerm" runat="server"
                    ControltoValidate ="tbLoanTerm"
                    ErrorMessage ="Please enter a valid Loan Term">

                </asp:RequiredFieldValidator>
                  
            </span>
        
        <br />
        <br />
        <div style="color:red;">*Required Fields</div>
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" CssClass="button" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt0" runat="server" Text="Clear" EnableTheming="True" Width="100px" CssClass="button" />
        
        <br /><br />
                
        <asp:Label ID="lblMonthlyPmt" runat="server" CssClass="bold">Welcome to my mortgage calculator.  Please complete the fields about to have your monthly payment and loan repayment schedule calculated for you.</asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
