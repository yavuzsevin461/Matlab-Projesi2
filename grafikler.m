function varargout = grafikler(varargin)
% GRAFIKLER MATLAB code for grafikler.fig
%      GRAFIKLER, by itself, creates a new GRAFIKLER or raises the existing
%      singleton*.
%
%      H = GRAFIKLER returns the handle to a new GRAFIKLER or the handle to
%      the existing singleton*.
%
%      GRAFIKLER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFIKLER.M with the given input arguments.
%
%      GRAFIKLER('Property','Value',...) creates a new GRAFIKLER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before grafikler_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to grafikler_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help grafikler

% Last Modified by GUIDE v2.5 12-Jun-2020 16:32:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @grafikler_OpeningFcn, ...
                   'gui_OutputFcn',  @grafikler_OutputFcn, ...
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


% --- Executes just before grafikler is made visible.
function grafikler_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to grafikler (see VARARGIN)

% Choose default command line output for grafikler
handles.output = hObject;
set(handles.figure1,'name','BABAOÐLU ÝNÞAAT-Grafikler ')
[handles.sayi,handles.str,handles.tum] = xlsread('calisanlist.xlsx',1)
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton8,'Value',0)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes grafikler wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = grafikler_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
meslek_gra = get(handles.radiobutton1,'Value');
maas_gra = get(handles.radiobutton2,'Value');
dal = get(handles.radiobutton8,'Value');
cubuk = get(handles.radiobutton9,'Value');
pasta = get(handles.radiobutton10,'Value');
merdiven = get(handles.radiobutton11,'Value');
uzunluk = length(handles.tum(:,3));
A = handles.tum(:,3);
papel = handles.tum(:,7);
isci_sayi=0;
formen_sayi=0;
mimar_sayi=0;
insmuh_sayi=0;
sansef_sayi=0;
promud_sayi=0;
genkoor_sayi=0;

for i=1:1:uzunluk
    C = A(i,1);
    if strcmp(C,'Ýþçi') ~= 0
        isci_sayi = isci_sayi + 1;
    end
    if strcmp(C,'Formen') ~= 0
        formen_sayi = formen_sayi + 1;
    end
    if strcmp(C,'Mimar') ~= 0
        mimar_sayi = mimar_sayi + 1 ;
    end
    if strcmp(C,'Ýnþaat Mühendisi') ~= 0
        insmuh_sayi = insmuh_sayi + 1; 
    end
    if strcmp(C,'Þantiye Þefi') ~= 0
        sansef_sayi = sansef_sayi + 1;
    end
    if strcmp(C,'Proje Müdürü') ~= 0
        promud_sayi = promud_sayi + 1;
    end
    if strcmp(C,'Genel Koordinatör') ~= 0
        genkoor_sayi = genkoor_sayi + 1;  
    end
end

isci_maas = 0;
formen_maas = 0;
mimar_maas = 0;
insmuh_maas = 0;
sansef_maas = 0;
promud_maas = 0;
genkoor_maas = 0;
for i=1:1:uzunluk
    C = A(i,1);
    if strcmp(C,'Ýþçi') ~= 0
        isci_maas = isci_maas + papel{i,1};
    end
    if strcmp(C,'Formen') ~= 0
        formen_maas= formen_maas +papel{i,1};
    end
    if strcmp(C,'Mimar') ~= 0
        mimar_maas = mimar_maas + papel{i,1} ;
    end
    if strcmp(C,'Ýnþaat Mühendisi') ~= 0
        insmuh_maas = insmuh_maas + papel{i,1}; 
    end
    if strcmp(C,'Þantiye Þefi') ~= 0
        sansef_maas = sansef_maas + papel{i,1};
    end
    if strcmp(C,'Proje Müdürü') ~= 0
        promud_maas = promud_maas + papel{i,1};
    end
    if strcmp(C,'Genel Koordinatör') ~= 0
        genkoor_maas = genkoor_maas + papel{i,1};  
    end
end
V = [isci_maas,formen_maas,mimar_maas,insmuh_maas,sansef_maas,promud_maas,genkoor_maas]
x = [isci_sayi,formen_sayi,mimar_sayi,insmuh_sayi,sansef_sayi,promud_sayi,genkoor_sayi];
meslekk = {'Ýþçi','Formen','Mimar','Ýnþaat Müh.','Þantiye Þefi','Proje Müdürü','Genel Koordinatör'};
y=1:1:7;
axes(handles.axes1)
D3 =get(handles.checkbox1,'Value')

if meslek_gra == 1
    if dal == 1
        D3==0
        stem(y,x,'r:s','LineWidth',2)
        set(handles.text2,'Visible','On')
        axis([0 8,0 10])
        grid on
        title('MESLEK-KÝÞÝ SAYISI DAL GRAFÝÐÝ')
        xlabel('Meslek')
        ylabel('Kiþi Sayýsý')
    elseif cubuk == 1 
        if D3 ~=0
            bar3(x)
            box on
            set(handles.text2,'Visible','On')
            title('MESLEK-KÝÞÝ SAYISI ÇUBUK GRAFÝÐÝ(3D)')
            xlabel('Meslek')
            ylabel('Kiþi Sayýsý')
        elseif D3==0
            bar(x)
            set(handles.text2,'Visible','On')
            axis([0 8,0 10])
            grid on
            title('MESLEK-KÝÞÝ SAYISI ÇUBUK GRAFÝÐÝ(2D)')
            xlabel('Meslek')
            ylabel('Kiþi Sayýsý')
            
        end
    elseif pasta == 1 
        if D3 ~=0
            pie3(x)
            legend('Ýþçi','Formen','Mimar','Ýnþaat Mühendisi','Þantiye Þefi','Proje Müdürü','Genel Koordinatör')
            set(handles.text2,'Visible','Off')
            title('MESLEK-KÝÞÝ SAYISI PASTA GRAFÝÐÝ(3D)')
        elseif D3==0
            pie(x)
            legend('Ýþçi','Formen','Mimar','Ýnþaat Mühendisi','Þantiye Þefi','Proje Müdürü','Genel Koordinatör')
            set(handles.text2,'Visible','Off')
            title('MESLEK-KÝÞÝ SAYISI PASTA GRAFÝÐÝ(2D)')
        end
    elseif merdiven == 1 
            stairs(y,x,'r-o','Linewidth',5)
            set(handles.text2,'Visible','On')
            axis([0 8 0 10])
            grid on 
            title('MESLEK-KÝÞÝ SAYISI MERDÝVEN GRAFÝÐÝ')
            xlabel('Meslek')
            ylabel('Kiþi Sayýsý')
    end

elseif maas_gra == 1
    if dal == 1
        stem(y,V,'r:s','LineWidth',2)
        set(handles.text2,'Visible','On')
        grid on
        title('MESLEKLERÝN ALDIÐI TOPLAM ÜCRET GRAFÝÐÝ(dal)')
        xlabel('Meslek')
        ylabel('Toplam Para')
    elseif cubuk == 1 
        if D3 ~=0
            bar3(V)
            set(handles.text2,'Visible','On')
            box on
            grid on
            title('MESLEKLERÝN ALDIÐI TOPLAM ÜCRET GRAFÝÐÝ(çubuk-3D)')
            xlabel('Meslek')
            ylabel('Toplam Para')
        elseif D3==0
            bar(V)
            set(handles.text2,'Visible','On')
            grid on
            title('MESLEKLERÝN ALDIÐI TOPLAM ÜCRET GRAFÝÐÝ(çubuk-2D)')
            xlabel('Meslek')
            ylabel('Toplam Para')
        end
    elseif pasta == 1
        if D3 ~=0
            pie3(V)
            legend('Ýþçi','Formen','Mimar','Ýnþaat Mühendisi','Þantiye Þefi','Proje Müdürü','Genel Koordinatör')
            set(handles.text2,'Visible','Off')
            title('MESLEKLERÝN ALDIÐI TOPLAM ÜCRET GRAFÝÐÝ(pasta-3D)')
        elseif D3==0
            pie(V)
            legend('Ýþçi','Formen','Mimar','Ýnþaat Mühendisi','Þantiye Þefi','Proje Müdürü','Genel Koordinatör')
            set(handles.text2,'Visible','Off')
            title('MESLEKLERÝN ALDIÐI TOPLAM ÜCRET GRAFÝÐÝ(pasta-2D)')
        end
    elseif merdiven == 1 
        stairs(y,V,'r-o','Linewidth',5)
        set(handles.text2,'Visible','On')
        grid on
        title('MESLEKLERÝN ALDIÐI TOPLAM ÜCRET GRAFÝÐÝ(Merdiven)')
        xlabel('Meslek')
        ylabel('Toplam Para')
    end
end
    


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.checkbox1,'Visible','off')
% Hint: get(hObject,'Value') returns toggle state of radiobutton11


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.checkbox1,'Visible','On')
% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.checkbox1,'Visible','On')
% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.checkbox1,'Visible','off')
% Hint: get(hObject,'Value') returns toggle state of radiobutton8
