<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link  rel="stylesheet" href="StyleCalculator.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
       
       <div class="container">
             <div class="row align-items-center">
                <div class="col-12">
                 <h1> Calcultor</h1>
            
            <asp:Label ID="lableX" runat="server"> X  </asp:Label>
            <asp:TextBox ID="firstNumber" runat="server"></asp:TextBox> <br />
            <asp:Label ID="LabelY" runat="server"> Y </asp:Label>
            <asp:TextBox ID="secondNumber" runat="server"></asp:TextBox><br />
          
            <asp:Label ID="LabelOperation" runat="server"> Operations  </asp:Label>
            <asp:DropDownList ID="operation" runat="server" autopostback="true" >           
                <asp:ListItem  text="Add" Value="add"  ></asp:ListItem>
                <asp:ListItem text="Subtract" Value="subtract"></asp:ListItem>
                <asp:ListItem text="Multiply" Value="multiply"></asp:ListItem>
                <asp:ListItem text="Divide" Value="divide"></asp:ListItem>
            </asp:DropDownList><br />
          
            <asp:Button  class="btn btn-success" ID="Calculate" runat="server"  Text="calculate" OnClientClick="return Validate()" OnClick="calculate_Click"/> <br />
            <asp:Label ID="LabelAnswer" runat="server"> Answer </asp:Label>
            <asp:TextBox ID="answer" runat="server"></asp:TextBox> <br />
                </div>
   
              </div>
            
        </div>
           
    </form>
    <script>
        function Validate() {
            let firstNumber = document.getElementById("firstNumber").value;
            let secondNumber = document.getElementById("secondNumber").value;
            let operation = document.getElementById("operation").value
            
            try {
                if (isNaN(firstNumber)) throw "X is not a number";
                if (isNaN(secondNumber)) throw "Y is not a number";
                if (firstNumber == "") throw " Must Enter the value of X";
                if (secondNumber == "") throw " Must Enter the value of Y";
                if (operation == "") throw " Must Select any given operation";
            }
            catch (err) {
                alert(err);

            }
        }


    </script>
    <script src="JavaScriptCalculator.js"></script>
</body>
</html>
