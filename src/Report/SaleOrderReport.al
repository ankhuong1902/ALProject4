/// <summary>
/// Unknown extends (ID 50130).
/// </summary>
report 50130 SalesOrderReport
{
    DefaultLayout = RDLC;
    RDLCLayout = 'layouts/salesorder.rdl';
    ApplicationArea = All;
    Caption = 'Sales Order Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(Customer_Name;
            "Bill-to Name")
            {
            }
            column(Customer_Posting_Group; "Customer Posting Group")
            {
            }
            column(gDay; gDay)
            {

            }
            column(gMonth; gMonth)
            {

            }
            column(gYear; gYear)
            {

            }
            column(No_; "No.")
            {

            }
            column(gDebit; gDebit)
            {

            }
            column(gCredit; gCredit)
            {

            }
            column(Bill_to_Contact; "Bill-to Contact")
            {

            }
            column(Bill_to_Address; "Bill-to Address")
            {

            }
            column(Tax_Area_Code; "Tax Area Code")
            {

            }
            column(Ship_to_City; "Ship-to City")
            {

            }
            column(Invoice_Disc__Code; "Invoice Disc. Code")
            {

            }
            column(gTong; gTong)
            {

            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = field("No.");
                column(Description;
                Description)
                {

                }
                column(No_line; "No.")
                {

                }
                column(Unit_of_Measure; "Unit of Measure")
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Outstanding_Quantity; "Outstanding Quantity")
                {

                }
                column(Unit_Price; "Unit Price")
                {

                }
                column(Amount; Amount)
                {

                }

            }
            trigger OnAfterGetRecord()
            begin
                gDay := Date2DMY("Document Date", 1);
                gMonth := Date2DMY("Document Date", 2);
                gYear := Date2DMY("Document Date", 3);
                gDebit := 0;
                gCredit := 0;
                gTong := 'Hai trăm hai mươi tám nghìn đồng'
            end;
        }
    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            // area(content)
            // {
            //     group(Option)
            //     {
            //         Caption = 'Options';
            //         field()
            //         {
            //             ApplicationArea = Basic, Suite;
            //             Caption = 'Posting Date';
            //             ToolTip = 'Specifies the posting date for the invoice(s) that the batch job creates. This field must be filled in.';
            //         }
            //     }
            // }
        }
    }
    trigger OnPreReport()
    begin
        gNo := SalesHeader.GetFilter(SalesHeader."No.");
    end;

    var
        gDay: Integer;
        gMonth: Integer;
        gYear: Integer;
        gCount: Integer;
        gNo: Code[20];
        gCredit: Integer;
        gDebit: Integer;
        gTong: Text[50];

}
