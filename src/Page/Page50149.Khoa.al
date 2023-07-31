/// <summary>
/// Page Khoa (ID 50149).
/// </summary>
page 50149 Khoa
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Khoa;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(MaKhoa; Rec.MaKhoa)
                {

                }
                field(TenKhoa; Rec.TenKhoa)
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
        area(Navigation)
        {
            // Adds the action called "My Navigate" to the Navigate menu. 
            // action("NavigateToSinhVienPage")
            // {
            //     ApplicationArea = All;
            //     RunObject = page "Customer Card";
            // }
            action(NewAction)
            {
                ApplicationArea = All;
                RunObject = codeunit "Document Totals";
            }
        }
    }
    trigger OnOpenPage()
    var
        MyCodeUnit: Codeunit MyCodeunit;
    begin
        Message(Format(MyCodeUnit.MyProcedure()));// using Format to convert from any type to text type
        MyCodeUnit.CheckPhoneNo();
        MyProcedure();
    end;

    var
        myInt: Integer;

    [IntegrationEvent(true, false)]
    local procedure MyProcedure()
    begin
    end;

}