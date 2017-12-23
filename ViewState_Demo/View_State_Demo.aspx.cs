using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_State_Demo : System.Web.UI.Page
{

    int ClicksCount = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            TextBox1.Text = "0";
            
            
        }
    }

    protected void btnCount_Click(object sender, EventArgs e)
    {

        /* adding my own view state to the webform 
        if(ViewState["Clicks"] != null)
        {
            ClicksCount = (int) ViewState["Clicks"] + 1; //Pull it from ViewState
        }
        TextBox1.Text = ClicksCount.ToString();
        ViewState["Clicks"] = ClicksCount; //return it to ViewState
        ***/

        /** web controls also contain an internal view state and this can be leveraged ***/
        int ClicksCount = Convert.ToInt32(TextBox1.Text) + 1;
        TextBox1.Text = ClicksCount.ToString(); //store parameter in control view state
       // Text1.Value = ClicksCount.ToString();
        //Text2 does not exist in this context since it is a standard HTML control
    }
}