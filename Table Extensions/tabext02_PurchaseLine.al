tableextension 50102 "BAC Purchase Line" extends "Purchase Line"
{
    fields
    {
        field(50101; "BAC Prod. Order"; Code[20])
        {
            Caption = 'Prod. Order';
            DataClassification = AccountData;
            TableRelation = "Production Order"."No." where(Status = const(Released));

            trigger OnValidate()
            begin
                "Prod. Order No." := "BAC Prod. Order";
            end;
        }
        field(50102; "BAC Prod. Order Line"; Integer)
        {
            Caption = 'Prod. Order Line';
            DataClassification = AccountData;
            TableRelation = "Prod. Order Line" where(Status = const(Released), "Prod. Order No." = field("BAC Prod. Order"));
            trigger OnValidate()
            begin
                "Prod. Order Line No." := "BAC Prod. Order Line";
            end;

        }
        field(50103; "BAC Operation No."; Code[20])
        {
            Caption = 'Operation No.';
            DataClassification = AccountData;
            TableRelation = "Prod. Order Routing Line" where(Status = const(Released), "Prod. Order No." = field("BAC Prod. Order"), "Routing Reference No." = field("BAC Prod. Order Line"));
            trigger OnValidate()
            begin
                "Operation No." := "BAC Operation No.";
            end;

        }
    }
}