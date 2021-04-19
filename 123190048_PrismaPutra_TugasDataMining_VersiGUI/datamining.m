function varargout = datamining(varargin)
% DATAMINING MATLAB code for datamining.fig
%      DATAMINING, by itself, creates a new DATAMINING or raises the existing
%      singleton*.
%
%      H = DATAMINING returns the handle to a new DATAMINING or the handle to
%      the existing singleton*.
%
%      DATAMINING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATAMINING.M with the given input arguments.
%
%      DATAMINING('Property','Value',...) creates a new DATAMINING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before datamining_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to datamining_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help datamining

% Last Modified by GUIDE v2.5 19-Apr-2021 19:58:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @datamining_OpeningFcn, ...
                   'gui_OutputFcn',  @datamining_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before datamining is made visible.
function datamining_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to datamining (see VARARGIN)

% Choose default command line output for datamining
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes datamining wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = datamining_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.uitable2,'Data',cell(11,1));


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
training = [3.81 3.5 5; 
            3 7 1;
            3.67 4.1 3;
            3.32 3.8 5;
            3 5 2;
            3.20 4 4;
            2.75 6 3;
            3 5 5;
            2.52 7 0;
            3.47 4.6 3;
            3.9 4.2 2
];
group = [4; 2; 4; 3; 2; 3; 1; 2; 1; 3; 4];
set(handles.uitable1,'Data',training);
set(handles.uitable2,'Data',group);


% --- Executes during object creation, after setting all properties.
function uitable2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Data',cell(11:1));


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function editlulus_Callback(hObject, eventdata, handles)
% hObject    handle to editlulus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editlulus as text
%        str2double(get(hObject,'String')) returns contents of editlulus as a double


% --- Executes during object creation, after setting all properties.
function editlulus_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editlulus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cek.
function cek_Callback(hObject, eventdata, handles)
% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
training = [3.81 3.5 5; 
            3 7 1;
            3.67 4.1 3;
            3.32 3.8 5;
            3 5 2;
            3.20 4 4;
            2.75 6 3;
            3 5 5;
            2.52 7 0;
            3.47 4.6 3;
            3.9 4.2 2
];
sampel = [3.15 3.5 5];
group = [4; 2; 4; 3; 2; 3; 1; 2; 1; 3; 4];
classification = fitcknn(training,group,'NumNeighbors',3);
class = predict(classification,sampel);
set(handles.editlulus,'string',class);
