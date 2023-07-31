/// <summary>
/// TableExtension MyExtension (ID 50149) extends Record Customer.
/// </summary>
tableextension 50149 MyExtension extends Customer
{
    fields
    {
        field(50100; shoesize; Integer) { }
    }
    var
        myInt: Integer;

    trigger OnAfterDelete()
    begin

    end;

    trigger OnBeforeInsert()
    begin
        Message('run trigger onbeforeInsert');
    end;
}