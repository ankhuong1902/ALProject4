/// <summary>
/// Page Sinh Vien Card (ID 50131).
/// </summary>
page 50131 "Sinh Vien Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Sinhvien;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(MaSV; rec.MaSV)
                {
                    ApplicationArea = All;
                    Caption = 'Ma Sinh vien';
                }
                field(TenSV; Rec.TenSV)
                {
                    ApplicationArea = All;
                    Caption = 'Ten Sinh vien';
                }
                field(GioiTinh; Rec.GioiTinh)
                {
                    ApplicationArea = All;
                    Caption = 'Gioi tinh';
                }
                field(NgaySinh; Rec.NgaySinh)
                {
                    ApplicationArea = All;
                    Caption = 'Ngay sinh';
                }
                field(MaKhoa; Rec.MaKhoa)
                {
                    ApplicationArea = All;
                    Caption = 'Ma Khoa';
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
    }

    var
        myInt: Integer;
}