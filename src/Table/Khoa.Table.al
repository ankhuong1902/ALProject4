/// <summary>
/// Table Khoa (ID 50101).
/// </summary>
table 50149 Khoa
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MaKhoa; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; TenKhoa; Text[30])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PrimaryKey; MaKhoa)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        CNTT: Record Khoa;

    trigger OnInsert()
    begin
        Message('Insert successfully');
    end;

    trigger OnModify()
    begin
        Message('Modify successfully');
    end;

    trigger OnDelete()
    begin
        Message('Delete successfully');
    end;

    trigger OnRename()
    begin
        Message('Rename successfully');
    end;
}