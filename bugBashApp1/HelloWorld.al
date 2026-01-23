// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!
// new comment 123
pageextension 55000 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        ShowExtra: Boolean;
    begin
        Message('App published: Hello world');
        ShowExtra := false;
        if ShowExtra then
            DisplayExtraInfo();
    end;

    trigger OnAfterGetRecord();
    begin
        // This trigger won't be called by the test
        ValidateCustomerData();
    end;

    local procedure DisplayExtraInfo()
    begin
        Message('Extra info displayed');
        Message('More details here');
    end;

    local procedure ValidateCustomerData()
    var
        IsValid: Boolean;
    begin
        IsValid := true;
        if IsValid then
            Message('Customer data is valid')
        else
            Error('Customer data validation failed');
    end;

    local procedure UnusedProcedure()
    var
        Counter: Integer;
    begin
        // This procedure is never called
        Counter := 0;
        Counter := Counter + 1;
        Counter := Counter + 2;
        Message('Counter value: %1', Counter);
    end;
}
