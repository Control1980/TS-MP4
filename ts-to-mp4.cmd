@echo off
:: �����Ιn������v "in" �Y�ϊA�е����� .TS �n�����Kʹ�� ffmpeg �M���D�Q����ݔ���n�����浽 "out" �Y�ϊA��
:: ݔ���n���������cݔ��n����ͬ�ęn����

for %%f in (".\in\*.TS") do (
    :: ����ǰ .TS �n���M���D�Q���K���Y������������ͬ�n���� .mp4 �n��
    ffmpeg -i "%%f" -c copy -map 0:v -map 0:a -bsf:a aac_adtstoasc ".\out\%%~nf.mp4"
)

:: ����D�Q�K�˳�
exit