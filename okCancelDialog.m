function [accept] = okCancelDialog(titleStr,dispStr)
%   A dialog box for canceling an action within a GUI, given a str prompt
%   dispstr. Has Title titlestr
d = dialog('Position',[300 300 250 150],'Name',titleStr);

txt = uicontrol('Parent',d,...
    'Style','text',...
    'Position',[20 80 210 40],...
    'String',dispStr);

ok = uicontrol('Parent',d,...
    'Position',[50 20 70 25],...
    'String','Ok',...
    'Callback',@ok_callback);

cancel = uicontrol('Parent',d,...
    'Position',[130 20 70 25],...
    'String','Cancel',...
    'Callback',@cancel_callback);

uiwait(d);

    function ok_callback(ok,event)
        accept = 1;
        close(gcbf)
    end

    function cancel_callback(cancel,event)
        accept = 0;
        close(gcbf)
    end
end