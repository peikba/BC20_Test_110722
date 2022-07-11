pageextension 50101 "BAC Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("BAC ShoeSize"; Rec."BAC New ShoeSize")
            {
                ApplicationArea = All;
            }
        }
    }
}