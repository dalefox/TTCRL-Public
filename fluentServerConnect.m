function [iFluentTuiInterpreter, iCoFluentUnit] = fluentServerConnect
%   Connects to fluent running AAS on localhost
%   user = name of user running fluent server, for retrieval of the Fluent
%   aaS ID

%  Initialize aaS
orb=initialize_orb();

%   Connect to ANSYS product

iCoFluentUnit=actfluentserver(orb,'aaS_FluentId.txt');
iFluentTuiInterpreter=iCoFluentUnit.getSchemeControllerInstance();
