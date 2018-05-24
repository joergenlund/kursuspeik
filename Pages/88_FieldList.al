page 123456788 "Field List 2"
{
    Caption = 'Field List 2';
    PageType = List;
    SourceTable = AllObjWithCaption;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Object ID";"Object ID")
                {
                    
                }
                field("Object Name";"Object Name")
                {

                }
                field("Object Type";"Object Type")
                {

                }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}