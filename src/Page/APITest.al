/// <summary>
/// Page Id.
/// </summary>
page 50102 APISinhvien
{
    PageType = API;
    Caption = 'apiPageName';
    APIPublisher = 'testing';
    APIGroup = 'testing';
    APIVersion = 'v2.0';
    EntityName = 'Sinhvien';
    EntitySetName = 'Sinhvien';
    SourceTable = Sinhvien;
    DelayedInsert = true;
    ODataKeyFields = MaSV;
    // ModifyAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(fieldName; rec.MaSV)
                {
                    Caption = 'fieldCaption';

                }
                field(GioiTinh; Rec.GioiTinh) { }
                field(NgaySinh; Rec.NgaySinh) { }
                field(MaKhoa; Rec.MaKhoa) { }
            }

        }
    }
}
//https://api.businesscentral.dynamics.com/v2.0/<environmentName>/api/<API publisher>/<API group>/<API version>/entityDefinitions