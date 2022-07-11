pageextension 50102 "BAC Purchase Order Subform" extends "Purchase Order Subform"
{
    layout
    {
        addafter("Prod. Order No.")
        {
            field("BAC Prod. Order"; Rec."BAC Prod. Order")
            {
                ApplicationArea = All;
            }
            field("BAC Prod. Order Line"; Rec."BAC Prod. Order Line")
            {
                ApplicationArea = All;
            }
            field("BAC Operation No."; Rec."BAC Operation No.")
            {
                ApplicationArea = All;
            }
        }
        modify("Prod. Order No.")
        {
            Visible = false;
            Enabled = false;
        }
        modify("Prod. Order Line No.")
        {
            Visible = false;
            Enabled = false;
        }
        modify("Operation No.")
        {
            Visible = false;
            Enabled = false;
        }
    }
}