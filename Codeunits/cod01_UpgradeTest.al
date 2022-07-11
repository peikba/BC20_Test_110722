codeunit 50101 "BAC Upgrade Test"
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerCompany()
    var
        myInt: Integer;
    begin

    end;

    trigger OnUpgradePerCompany()
    var
        CurrentModuleInfo: ModuleInfo;
        CallerModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(CurrentModuleInfo);
        NavApp.GetCallerModuleInfo(CallerModuleInfo);
        case Format(CurrentModuleInfo.AppVersion) of
            '20.0.0.1':
                DoSomething();
            '20.0.0.2':
                DoSomethingElse();
        end;
    end;

    trigger OnValidateUpgradePerCompany()
    var
        myInt: Integer;
    begin

    end;

    local procedure DoSomething()
    var
        Cust: Record Customer;
    begin
        if Cust.FindSet(true, true) then
            repeat
                Cust."BAC New ShoeSize" := Round(Cust."BAC ShoeSize", 1);
                if Cust.Modify() then;
            until Cust.Next() = 0;
    end;

    local procedure DoSomethingElse()
    var
        myInt: Integer;
    begin

    end;
}