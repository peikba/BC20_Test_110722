tableextension 50101 "BAC Customer" extends Customer
{
    fields
    {
        field(50101; "BAC ShoeSize"; Decimal)
        {
             Caption='ShoeSize';
             DataClassification = AccountData;
             ObsoleteState=Pending;
             ObsoleteReason='Moved to field 50102';
        }
        field(50102; "BAC New ShoeSize"; Integer)
        {
             Caption='ShoeSize';
             DataClassification = AccountData;
        }

    }
}