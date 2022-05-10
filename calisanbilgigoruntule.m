function varargout = calisanbilgigoruntule(varargin)
% CALISANBILGIGORUNTULE MATLAB code for calisanbilgigoruntule.fig
%      CALISANBILGIGORUNTULE, by itself, creates a new CALISANBILGIGORUNTULE or raises the existing
%      singleton*.
%
%      H = CALISANBILGIGORUNTULE returns the handle to a new CALISANBILGIGORUNTULE or the handle to
%      the existing singleton*.
%
%      CALISANBILGIGORUNTULE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALISANBILGIGORUNTULE.M with the given input arguments.
%
%      CALISANBILGIGORUNTULE('Property','Value',...) creates a new CALISANBILGIGORUNTULE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calisanbilgigoruntule_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calisanbilgigoruntule_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calisanbilgigoruntule

% Last Modified by GUIDE v2.5 10-Jun-2020 22:47:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calisanbilgigoruntule_OpeningFcn, ...
                   'gui_OutputFcn',  @calisanbilgigoruntule_OutputFcn, ...
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


% --- Executes just before calisanbilgigoruntule is made visible.
function calisanbilgigoruntule_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calisanbilgigoruntule (see VARARGIN)
set(handles.figure1,'name','BABAOÐLU ÝNÞAAT-Çalýþan Bilgileri')
[handles.sayi,handles.str,handles.tum] = xlsread('calisanlist.xlsx',1)
set(handles.uitable1,'Data',handles.tum)
set(handles.uitable1,'ColumnName',{'Ad','Soyad'})
set(handles.uitable1,'Visible','On')
% Choose default command line output for calisanbilgigoruntule
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calisanbilgigoruntule wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calisanbilgigoruntule_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected cell(s) is changed in uitable1.
function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
