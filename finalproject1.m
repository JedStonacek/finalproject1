function [] = finalproject1() 
global conversion;

conversion.fig = figure('numbertitle','off','name','Flux Converstion Calculator'); %GUI title
conversion.inputValueMessage = uicontrol('style','text','units','normalized','position',[.01 .78 .3 .095], 'string', 'Dynamic Viscocity (kg/m*s)','horizontalalignment','right'); %Calculator title
conversion.inputBox = uicontrol('style', 'edit', 'units', 'normalized', 'position',[.034 .71 .30 .05], 'string', 'Type Here'); %Edit Box with letters in it

conversion.conversionWithSeconds(1) = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position',[.35 .76 .30 .05], 'string', 'lbm/ft*h', 'callback', @Flux1); %pushbutton hours
conversion.conversionWithHours(2) = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position',[.35 .66 .30 .05], 'string', 'lbm/ft*s', 'callback', @Flux2); %pushbutton seconds

conversion.newValue(1) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.650 .76 .15 .05],'string', 'Converted Value', 'horizontalalignment', 'right'); %Displays "Converted Value" 1
conversion.newValue(2) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.650 .66 .15 .05],'string', 'Converted Value', 'horizontalalignment', 'right'); %Displays "Converted Value" 2

conversion.output(1) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.82 .76 .078 .06], 'string',num2str(conversion.hfluxlbh), 'horizontalalignment','right'); %output of conversion 1
conversion.output(2) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.83 .66 .078 .06], 'string',num2str(conversion.hfluxlbs), 'horizontalalignment','right'); %output of conversion 2
   
    function [hfluxlbh] = Flux1(~,~) 
   
        hflux = get(conversion.inputBox,'string'); %string to num for 1
        conversion.hfluxlbh = num2str(hflux*2419.1); %eqn for hours
       
        conversion.output(1).String = num2str(conversion.hfluxlbh)%sends this eqns answer up to output
    end
    function [hfluxlbs] = Flux2(~,~)
        
         hflux = get(conversion.inputBox,'string'); %string to num for 2
         conversion.hfluxlbs = num2str(hflux *0.67197); %eqn for seconds

         conversion.output(2).String = num2str(conversion.hfluxlbs)%sends this eqns answer up to output
    end
end
