/// <summary>
/// PageExtension Item Card Extension (ID 50106) extends Record Item List.
/// </summary>
pageextension 50111 ItemExt extends "Item List"
{
    actions
    {
        addafter(History)
        {
            // action(ExportItems)
            // {
            //     Caption = 'Export Items';
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     Image = Export;
            //     ApplicationArea = All;
            //     trigger OnAction()
            //     begin
            //         Xmlport.Run(50100, true, false);
            //     end;
            // }
            action(ImportItems)
            {
                Caption = 'Import Items';
                Promoted = true;
                PromotedCategory = Process;
                Image = Import;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Xmlport.Run(50101, false, true);
                end;
            }
        }
    }

}
xmlport 50101 ImportItemsXmlPort
{
    Format = VariableText;
    Direction = Import;
    TextEncoding = UTF8;
    UseRequestPage = false;
    TableSeparator = '';//New line
    schema
    {
        textelement(Root)
        {
            tableelement(Item; Item)
            {
                XmlName = 'Item';
                fieldelement(No; Item."No.")
                {
                }
                fieldelement(Description; Item.Description)
                {
                }
                fieldelement(Type; Item.Type)
                {
                }
                fieldelement(Inventory; Item.Inventory)
                {
                    // trigger OnBeforePassField()
                    // var
                    //     UoM: Record "Unit of Measure";
                    // begin
                    //     uoM.SetRange(Code, Item."Base Unit of Measure");
                    //     if UoM.IsEmpty() then
                    //         Error('Import data failed')
                    //     else
                    //         Message('Import data successfully');
                    // end;
                }
                fieldelement(BaseUnitofMeasure; Item."Base Unit of Measure")
                {
                    trigger OnAfterAssignField()
                    var
                        UoM: Record "Unit of Measure";
                    begin
                        uoM.SetRange(Code, Item."Base Unit of Measure");
                        if UoM.IsEmpty() then
                            Error('Import data failed')
                        else
                            Message('Import data successfully');
                    end;
                }
                fieldelement(CostisAdjusted; Item."Cost is Adjusted")
                {
                }
                fieldelement(UnitCost; Item."Unit Cost")
                {
                }
                fieldelement(UnitPrice; Item."Unit Price")
                {
                }
                fieldelement(VendorNo; Item."Vendor No.")
                {
                }
            }
        }
    }

}
