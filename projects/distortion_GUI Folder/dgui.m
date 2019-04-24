function varargout = dgui(varargin)


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dgui_OpeningFcn, ...
                   'gui_OutputFcn',  @dgui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before dgui is made visible.
function dgui_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for dgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = dgui_OutputFcn(hObject, eventdata, handles)

varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)

usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor',[.9 .9 .9]);
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)



% --- Executes on button press in PLAY.
function PLAY_Callback(hObject, eventdata, handles)





% --- Executes on button press in bypass.
function bypass_Callback(hObject, eventdata, handles)


% Hint: get(hObject,'Value') returns toggle state of bypass


% --- Executes on button press in v.
function v_Callback(hObject, eventdata, handles)



% --- Executes on button press in IOgraph.
function IOgraph_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function display_CreateFcn(hObject, eventdata, handles)

if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end




function display_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'display') returns contents of display as text
%        str2double(get(hObject,'display')) returns contents of display as a double


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
 
fs = 44100;

bigass = get(handles.togglesound,'Value');
ass = get(handles.bypass,'Value');
slider = get(handles.slider,'Value');

if bigass == 1
    

if ass == 1
          y = wavread('colbyguitar.wav');
          sound(y,fs);
     
%--------Distortion 1 ---------          
elseif slider == 0
          y = wavread('distortion1_guitar.wav');
          sound(y,fs);
          image = imread('distortion1io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion1fig.jpg','jpg');
          set(handles.v,'CData',image2);           
          set(handles.display,'String','y = x, threshold = 0.5');
          
%--------Distortion 2 ----------   
elseif slider == 0.2
          y = wavread('distortion2_guitar.wav');
          sound(y,fs);
          image = imread('distortion2io.jpg','jpg');
          set(handles.IOgraph,'CData',image);          
          image2 = imread('distortion2fig.jpg','jpg');
          set(handles.v,'CData',image2);           
          set(handles.display,'String','y = x - x^3/3, threshold = 0.5');
       
 %--------Distortion 2.5 ----------   
elseif slider == 0.4
          y = wavread('distortion25_guitar.wav');
          sound(y,fs);
          image = imread('distortion2_5io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion2_5fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'String','y = 0.966 * x +  0.253 * x^2 - 0.519 * x^3; Threshold = .65                           1.132 * x +  1.565 * x^2 +  0.732 * x^3; Threshold = -.275'); 
  
  
          
  %--------Distortion 3 ----------   
elseif slider == 0.6
          y = wavread('distortion3_guitar.wav');
          sound(y,fs);
          image = imread('distortion3io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion3fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'Value',slider);            
          
          
          %--------Distortion 4 ----------   
 elseif slider == 0.8
          y = wavread('distortion4_guitar.wav');
          sound(y,fs);
          image = imread('distortion4io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion4fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'String','y = x  - 2.04*((x^3)/3) - 1.08*((x^5)/5) + 4*((x^7)/7) - .5*((x^9)/9) - ((x^11)/9); Threshold = .5'); 
          

  
   %--------Distortion 5 ----------   
else %slider == 1.0
          y = wavread('distortion5_guitar.wav');
          sound(y,fs);
          image = imread('distortion5io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion5fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'String','y = 1.2184282362 * x (+ -)  0.9501690887510261 * x^2 +   0.23203241629306653 * x^3; Threshold = .5');         
       
          
          

end
end

if bigass == 0

if ass == 1
          y = wavread('sinewave.wav');
          sound(y,fs);
     
%--------Distortion 1 ---------          
elseif slider == 0
          y = wavread('distortion1.wav');
          sound(y,fs);
          image = imread('distortion1io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion1fig.jpg','jpg');
          set(handles.v,'CData',image2);           
          set(handles.display,'String','y = x, threshold = 0.5');
          
%--------Distortion 2 ----------   
elseif slider == 0.2
          y = wavread('distortion2.wav');
          sound(y,fs);
          image = imread('distortion2io.jpg','jpg');
          set(handles.IOgraph,'CData',image);          
          image2 = imread('distortion2fig.jpg','jpg');
          set(handles.v,'CData',image2);           
          set(handles.display,'String','y = x - x^3/3, threshold = 0.5');
       
 %--------Distortion 2.5 ----------   
elseif slider == 0.4
          y = wavread('distortion2_5.wav');
          sound(y,fs);
          image = imread('distortion2_5io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion2_5fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'String','y = 0.966 * x +  0.253 * x^2 - 0.519 * x^3; Threshold = .65                           1.132 * x +  1.565 * x^2 +  0.732 * x^3; Threshold = -.275'); 
          
 
 %--------Distortion 3 ----------   
elseif slider == 0.6
          y = wavread('distortion3.wav');
          sound(y,fs);
          image = imread('distortion3io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion3fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'Value',slider);  
          
          
          %--------Distortion 4 ----------   
 elseif slider == 0.8
          y = wavread('distortion4.wav');
          sound(y,fs);
          image = imread('distortion4io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion4fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'String','y = x  - 2.04*((x^3)/3) - 1.08*((x^5)/5) + 4*((x^7)/7) - .5*((x^9)/9) - ((x^11)/9); Threshold = .5'); 
          

  
   %--------Distortion 5 ----------   
else %slider == 1.0
          y = wavread('distortion5.wav');
          sound(y,fs);
          image = imread('distortion5io.jpg','jpg');
          set(handles.IOgraph,'CData',image);
          image2 = imread('distortion5fig.jpg','jpg');
          set(handles.v,'CData',image2);             
          set(handles.display,'String','y = 1.2184282362 * x (+ -)  0.9501690887510261 * x^2 +   0.23203241629306653 * x^3; Threshold = .5');         
     
                     
end

end


% --- Executes on button press in togglesound.
function togglesound_Callback(hObject, eventdata, handles)
% hObject    handle to togglesound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglesound

%'String','y = 1.1333 * x (+ -)  0.53334 * x^2; Threshold = .5')