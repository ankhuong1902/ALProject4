/// <summary>
/// PageExtension Id.
/// </summary>
pageextension 50114 SalesOrderExtension extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addlast("processing")
        {
            group(MyNewActionGroup)
            {
                action(PrintAction)
                {
                    Caption = 'Print';

                    ApplicationArea = All;
                    // RunObject = report SalesOrderReport;
                    trigger OnAction()
                    var
                        lReport: Report "SalesOrderReport";
                        lRec_Sales: Record "Sales Header";
                    begin
                        // lRec_Sales.SetRange("No.", Rec."No.");
                        // lReport.SetTableView(lRec_Sales);
                        // lReport.Run();

                        lRec_Sales.SetRange("No.", Rec."No.");
                        lRec_Sales.FindSet();
                        REPORT.RunModal(Report::"SalesOrderReport", true, true, lRec_Sales);
                    end;
                }

            }

        }
    }

    var
        myInt: Integer;
}
