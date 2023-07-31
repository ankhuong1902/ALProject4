/// <summary>
/// PageExtension KhoaExtension (ID 50130) extends Record Khoa.
/// </summary>
pageextension 50130 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Statistics)
        {
            field("ShoeSize"; rec.shoesize)
            {
                ApplicationArea = basic;
                Caption = 'Shoe size';
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        Message('run trigger OnNewRecord');
    end;

    trigger OnOpenPage()
    var
        i: Integer;
    begin
        i := 20;
        rec.shoesize := i;
    end;
}