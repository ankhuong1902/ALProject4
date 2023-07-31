/// <summary>
/// Page SinhVien (ID 50130).
/// </summary>
page 50130 SinhVien
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = SinhVien;
    Caption = 'Sinh Viên';
    CardPageId = "Sinh Vien Card";
    layout
    {
        area(Content)
        {
            repeater(SinhVien)
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
