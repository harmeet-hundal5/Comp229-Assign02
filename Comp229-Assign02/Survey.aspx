<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Comp.Master" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        input[type=radio],
        input.radio {
            float: left;
            clear: none;
            margin: 2px 0 0 2px;
        }

        input[type=checkbox],
        input.checkbox {
            float: left;
            clear: none;
            margin: 2px 0 0 2px;
        }
    </style>
     <section id="Section1">
        <nav id="nav-wrap">
            <ul id="nav" class="nav">
                <img src="Assets/Images/SoftDrinks.jpg" style="width: 100px; height: 56px; float: left; margin: 10px;" />
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Survey.aspx">Survey</a></li>
            </ul>
        </nav>
    </section>
    <section id="about">
        <div style="margin-top: 20px">
            <form id="form1" runat="server">
                <center>    <table><tr>
                      <td></td>
            <td><asp:ValidationSummary ID="ValSummary" runat="server" ForeColor="#FF6600"></asp:ValidationSummary></td></tr>
                <tr>
                      <td></td>
                    <td>1. Which category below includes your age?
                        <br />
                        <asp:DropDownList ID="DdlQ1" runat="server">
                            <asp:ListItem value="" Text="17 or younger"></asp:ListItem>
                            <asp:ListItem value="" Text="18-20"></asp:ListItem>
                            <asp:ListItem value="" Text="21-29"></asp:ListItem>
                            <asp:ListItem value="" Text="30-39"></asp:ListItem>
                            <asp:ListItem value="" Text="40-49"></asp:ListItem>
                            <asp:ListItem value="" Text="50-59"></asp:ListItem>
                            <asp:ListItem value="" Text="60 or older"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                  
                </tr>
                <tr>
                     <td>
                       
                    </td>
                    <td>2.When do you consume Himalaya beverages the most? (multiple answers are possible)
                         <asp:CheckBoxList ID="ChkQ2" runat="server">
                            <asp:ListItem Text="To compliment with a meal"></asp:ListItem>
                            <asp:ListItem Text="When eating out"></asp:ListItem>
                            <asp:ListItem Text="Whenever thirsty"> </asp:ListItem>
                            <asp:ListItem Text="Together with family"></asp:ListItem>
                            <asp:ListItem Text="At party"></asp:ListItem>
                            <asp:ListItem Text="In combination with alcohol"></asp:ListItem>
                            <asp:ListItem Text="Other (please specify)"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                   
                </tr>
                <tr>
                         <td></td>
                    <td>3. You mentioned that you consume Himalaya beverages, how often do you consume them?
                        <asp:RadioButtonList ID="RblQ3" runat="server">
                            <asp:ListItem Text="Over 2 times a week"> </asp:ListItem>
                            <asp:ListItem Text="1-2 times a week"> </asp:ListItem>
                            <asp:ListItem Text="1-2 times a month"> </asp:ListItem>
                            <asp:ListItem Text="Less than 1 time a month"> </asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
               
                </tr>
                <tr>
                     <td></td>
                    <td>4. What kind of Himalaya beverages do you consume? (multiple answers are possible)
                        <asp:RadioButtonList ID="RblQ4" runat="server">
                            <asp:ListItem>Soft drinks</asp:ListItem>
                            <asp:ListItem>Juice(Minute maid, Simply, Fuze, Odwalla)</asp:ListItem>
                            <asp:ListItem>Tea(Nestea, Nestea cool, Nestea zero)</asp:ListItem>
                            <asp:ListItem>Energy drink(Monster, NOS, Powerade)</asp:ListItem>
                            <asp:ListItem>Water(Smart water, Dasani, Vitamin water)</asp:ListItem>
                        </asp:RadioButtonList></td>
                   
                </tr>
            <tr>
                <td></td><td>5. Which Flavor you like the most?

  <asp:RadioButtonList ID="RblQ5" runat="server">
                            <asp:ListItem Text="Apple"></asp:ListItem>
                            <asp:ListItem Text="Cola"> </asp:ListItem>
                            <asp:ListItem Text="Cherry"></asp:ListItem>
                            <asp:ListItem Text="Guava"></asp:ListItem>
                            <asp:ListItem Text="Lemon"></asp:ListItem>
                        </asp:RadioButtonList></td>
            </tr>
                    <tr>
                        <td></td><td>6. How satisfied are you with the pricing of Our products in this category?
<asp:RadioButtonList ID="RblQ6" runat="server">
                            <asp:ListItem>Extremely Satisfied</asp:ListItem>
                            <asp:ListItem>Very Satisfied</asp:ListItem>
                            <asp:ListItem>Moderately Satisfied</asp:ListItem>
                            <asp:ListItem>Not so Satisfied</asp:ListItem>
                            <asp:ListItem>Not at all Satisfied</asp:ListItem>
                        </asp:RadioButtonList>

                                 </td>
                    </tr>
                    <tr><td></td><td>7.How likely is it that you would recommend Himalaya Products to a friend or colleague?
                        <asp:RadioButtonList ID="RblQ7" runat="server">
                            <asp:ListItem>Not at all likely</asp:ListItem>
                            <asp:ListItem>likely</asp:ListItem>
                            <asp:ListItem>Very likely</asp:ListItem>
                        </asp:RadioButtonList>
                                 </td></tr>
                <tr>
                  
                      <td></td>
                    <td>
                      Your Name  <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="ReqValiName" runat="server" ErrorMessage="Enter Your Name." ControlToValidate="txtName" ForeColor="#FF6600"></asp:RequiredFieldValidator></td>
                  
                </tr>
                 <tr>
                       <td></td>
                    <td>
                      Your Email  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegExpValiEmail" runat="server" ErrorMessage="Invalid Email." ControlToValidate="txtEmail" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ForeColor="#FF6600"></asp:RegularExpressionValidator></td>
                  
                </tr>
            <tr>
                       <td></td>
                    <td>
                      Comment  <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                  
                </tr>
            <tr><td></td><td><asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click"></asp:Button></td></tr>
            </table>
            </center>
            </form>
        </div>
    </section>
</asp:Content>
