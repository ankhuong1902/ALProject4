/// <summary>
/// Table Student (ID 50100).
/// </summary>
table 50100 Sinhvien
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; MaSV; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; TenSV; text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; GioiTinh; text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; NgaySinh; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if (rec.NgaySinh > Today()) then begin
                    Error('Ngay Sinh khong the lon hon ngay hien tai');
                end;

            end;
        }
        field(5; MaKhoa; Integer)
        {
            TableRelation = Khoa.MaKhoa;
            ValidateTableRelation = true;
        }
    }

    keys
    {
        key(PK; MaSV)
        {
            Clustered = true;
        }
        key(FK; MaKhoa)
        {
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}