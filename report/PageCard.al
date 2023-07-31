// /// <summary>
// /// Page MyPageCard (ID 50121).
// /// </summary>
// page 50121 MyPageCard
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = TableName;

//     layout
//     {
//         area(Content)
//         {
//             group(GroupName)
//             {
//                 field(Name; NameSource)
//                 {
//                     ApplicationArea = All;

//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 begin

//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }