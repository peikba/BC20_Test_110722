tableextension 50101 "BAC Customer" extends Customer
{
    fields
    {
        field(50101; "BAC ShoeSize"; Decimal)
        {
             Caption='ShoeSize';
             DataClassification = AccountData;
        }
    }
}