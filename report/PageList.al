// /// <summary>
// /// Page MyPageList (ID 50120).
// /// </summary>
// page 50120 MyPageList
// {
//     PageType = List;
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