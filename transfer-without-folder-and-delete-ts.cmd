@echo off
:: �����Ιn�����F���Y�ϊA�е����� .TS �n�����Kʹ�� ffmpeg �M���D�Q����ݔ���n�����浽�F���Y�ϊA���K��TS�n�h����
:: ݔ���n���������cݔ��n����ͬ�ęn����

for %%f in (".\*.TS") do (
    :: �� .TS �n���M���D�Q���K���Y������������ͬ�n���� .mp4 �n�����K�h��in�Y�ϊA�ȵęn��
    ffmpeg -i "%%f" -c copy -map 0:v -map 0:a -bsf:a aac_adtstoasc ".\%%~nf.mp4" & del "%%f"
)

:: ����D�Q�K�˳�
exit