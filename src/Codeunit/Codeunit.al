/// <summary>
/// Codeunit MyCodeunit (ID 50110).
/// </summary>
codeunit 50110 MyCodeunit
{
    trigger OnRun()
    begin
        if MyProcedure() > 1 then
            Message('abc');

    end;

    var
        myInt: Integer;

    /// <summary>
    /// MyProcedure.
    /// </summary>
    /// <returns>Return variable ReturnValue of type Decimal.</returns>
    procedure MyProcedure() ReturnValue: Decimal
    begin
        myInt := 2;
        ReturnValue := myInt;
    end;
    /// <summary>
    /// MyProcedure2.
    /// </summary>
    /// <returns>Return variable ReturnValue of type Decimal.</returns>
    procedure MyProcedure2(): Decimal
    begin
        myInt := 2;
        exit(myInt)
    end;

    /// <summary>
    /// CheckPhoneNo.
    /// </summary>
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterValidateEvent', 'Phone No.', true, true)]
    procedure CheckPhoneNo()
    begin
        Message('you can not ');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"UI Helper Triggers", 'AutoFormatTranslate', '', false, false)]
    local procedure AutoFormatTranslate(AutoFormatType: Integer; AutoFormatExpr: Text[80]; var Translation: Text[80]);
    begin
    end;

    [EventSubscriber(ObjectType::Page, Page::"Khoa", 'MyProcedure', '', false, false)]
    local procedure MyProcedure1()
    begin
        Message('abc');
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterLookupCity', '', false, false)]
    local procedure AfterLookupCity(var Customer: Record Customer; var PostCodeRec: Record "Post Code");
    begin
    end;



}
