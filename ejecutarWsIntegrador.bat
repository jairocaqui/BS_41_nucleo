@echo off
goto menu;
:menu 
set rutaBrancheLocalMytron=D:\SVN_MAPFRE\MyTron-branche
set rutaBrancheServerMytron=http://10.160.120.187:81/svn/EPSdesarrollo/MyTron

set rutaBrancheLocalMytronBack=D:\SVN_MAPFRE\MyTronBack-branche
set rutaBrancheServerMytronBack=http://10.160.120.187:81/svn/EPSdesarrollo/mytron-wsrmytron

set rutaBrancheLocalwsrSCTR=D:\SVN_MAPFRE\wsrSCTR-branche
set rutaBrancheServerwsrSCTR=http://10.160.120.187:81/svn/EPSdesarrollo/wsrsctr
set rutaBrancheLocalwsrAsegurado=D:\SVN_MAPFRE\wsrAsegurado-branche
set rutaBrancheServerwsrAsegurado=http://10.160.120.187:81/svn/EPSdesarrollo/wsrasegurado
set rutaBrancheLocalwsrGeneraDocumento=D:\SVN_MAPFRE\wsrGeneraDocumento-branche
set rutaBrancheServerwsrGeneraDocumento=http://10.160.120.187:81/svn/EPSdesarrollo/wsrgenerardocumento

set rutaBrancheLocalReferidos=D:\SVN_MAPFRE\referidos-branche
set rutaBrancheServerReferidos=http://10.160.120.187:81/svn/EPSdesarrollo/referidos
set rutaBrancheLocalReferidosBD=D:\SVN_MAPFRE\referidosBD-branche
set rutaBrancheServerReferidosBD=http://10.160.120.187:81/svn/EPSdesarrollo/referidos-scripts
set rutaBrancheLocalTronWeb=D:\SVN_MAPFRE\TronWeb-branche
set rutaBrancheServerTronWeb=http://10.160.120.187:81/svn/EPSdesarrollo/TronWeb

set rutaBrancheLocalOimTronScripts=D:\SVN_MAPFRE\OimTronScripts-branche
set rutaBrancheServerOimTronScripts=http://10.160.120.187:81/svn/EPSdesarrollo/oim-tron-scripts

set rutaBrancheLocalWebBD=D:\SVN_MAPFRE\WebBD-branche
set rutaBrancheServerWebBD=http://10.160.120.187:81/svn/EPSdesarrollo/pstweb-scripts

set rutaBrancheLocalEncuestaBD=D:\SVN_MAPFRE\EncuestaBD-branche
set rutaBrancheServerEncuestaBD=http://10.160.120.187:81/svn/EPSdesarrollo/encuesta-scripts


set rutaBrancheLocalPortalBD=D:\SVN_MAPFRE\PortalBD-branche
set rutaBrancheServerPortalBD=http://10.160.120.187:81/svn/EPSdesarrollo/portal-scripts

set rutaBrancheLocalWebsiteBD=D:\SVN_MAPFRE\WebSiteBD-branche
set rutaBrancheServerWebsiteBD=http://10.160.120.187:81/svn/EPSdesarrollo/website-scripts

set rutaBrancheLocalWebprocBD=D:\SVN_MAPFRE\WebProcBD-branche
set rutaBrancheServerWebprocBD=http://10.160.120.187:81/svn/EPSdesarrollo/webproc-scripts

set rutaBrancheLocalCubosBD=D:\SVN_MAPFRE\CubosBD-branche
set rutaBrancheServerCubosBD=http://10.160.120.187:81/svn/EPSdesarrollo/cubos-scripts

set rutaBrancheLocalDSoat=D:\SVN_MAPFRE\Unificados_DSoat-branche
set rutaBrancheServerDSoat=http://10.160.120.187:81/svn/EPSdesarrollo/dsoat

set rutaBrancheLocalWorksite=D:\SVN_MAPFRE\Unificados_Worksite-branche
set rutaBrancheServerWorksite=http://10.160.120.187:81/svn/EPSdesarrollo/worksite

set rutaBrancheLocalCGarantiaBD=D:\SVN_MAPFRE\CGaranticaBD-branche
set rutaBrancheServerCGarantiaBD=http://10.160.120.187:81/svn/EPSdesarrollo/cgarantia-scripts

set rutaBrancheLocalCorrectivoBD=D:\SVN_MAPFRE\CorrectivoBD-branche
set rutaBrancheServerCorrectivoBD=http://10.160.120.187:81/svn/EPSdesarrollo/correctivo-scripts

set rutaBrancheLocalOimCgw=D:\SVN_MAPFRE\OimCgw-branche
set rutaBrancheServerOimCgw=http://10.160.120.187:81/svn/EPSdesarrollo/oim-cgw
set rutaBrancheLocalOimCgwNg=D:\SVN_MAPFRE\OimCgwNg-branche
set rutaBrancheServerOimCgwNg=http://10.160.120.187:81/svn/EPSdesarrollo/oim-cgw-ng

set rutaBrancheLocalOrquestador=D:\SVN_MAPFRE\Orquestador-branche
set rutaBrancheServerOrquestador=http://10.160.120.187:81/svn/EPSdesarrollo/orquestador
set rutaBrancheLocalOimNet=D:\SVN_MAPFRE\MyTron-OimNet-descarga\
set rutaBrancheServerOimNet=http://10.160.120.187:81/svn/EPSdesarrollo/oim-net
set branches=2019-04;2019-05;2019-06;2019-07;2019-08;2019-09;2019-10;2019-11;2019-12;2020-01;2020-02;2020-03;2020-04;2020-05;2020-06
rem set branches=2020-01;2020-02;2020-03;2020-04;2020-05;2020-06
set nameBranche=00415631;00407257;00412564_v10;actualizar_git;vida_decesos;SD02006171;00408201_firma;int;10000026061;00412564_v10;merge0807;test_v9;test_v8;merge06;test_v7;test_v6;test_v5;test_v4;test_v3;test_v2;test_v1;SD02381383;
set nameBranche1=00415631_fixmerge_v2;00415631_fixmerge;SD02292809;10000025911;10000025911_backup;SD02289701_v2;00412564_v9;IM01094085;00408201_disma;00408201_disma_ant;integration2;integration;00424818;00412564_v8;
set nameBranche2=MU2019063134;MU2019063134_old;10000025578;10000025578_backup;063134;063134_old;00412564_v6;00412564_v5;00412564_v4;00412564_v3;00412564_v2;00412564;test_1;
set nameBranche3=00408201;00408201_ant;10000024887;Test_05_02;Test_31_01;00426512-8;prueba_1;SD01786066;00407260;00407260_anterior;SD01930949;00407250;00407250_20191124;00417871;TEST_20_11;
set nameBranche4=INT_20_11;INT_15_11;INT_14_11;INT_13_11;00405269_ant;INT_08_11;INT_28_10;00417871_v1;INT_EMERGENCY;10000024276;00417737_v6;
set nameBranche5=00417737_v5;00417737_v4;00417737_v3;oim_net_int_v7;00405269_10102019;00405269_03102019;oim_net_int_v1;oim_net_int_v6;00405269_25092019;00417737_v2;00417737_v1;
set nameBranche6=SD01714719;SD01714719_09092019;00417737;SD01714719_test;SD01714719_04092019;00417871_20092019;10000023413;10000023413_19092019;00417871_12092019;00417871_09092019;
set nameBranche7=00401314;00401314_09092019;00424818_09092019;00417737_04092019;00417871_04092019;00401314_04092019;00424818_04092019;oim_net_int_v5;SD01548235;oim-net-int-v4;oim_net_int_v3;branch-test-auto_autoB;
set nameBranche8=oim_net_int_2;oim_net_int;SD01619673;oim_net_int_v2;SD01580732;00424798_V3;00426468;oim_net_in;00405269;00405269_backup;00424818_backup;cambios_antes_myd;SD01786066_ant;00412564_v7;

set rutaBrancheLocalEcomSCTR=D:\SVN_MAPFRE\EcomSCTR-branche
set rutaBrancheServerEcomSCTR=http://10.160.120.187:81/svn/EPSdesarrollo/ecom-sctr-ng

set rutaBrancheLocalCotClinDigital=D:\SVN_MAPFRE\CotClinDigital-branche
set rutaBrancheServerCotClinDigital=http://10.160.120.187:81/svn/EPSdesarrollo/php/mapfredoc

set rutaBrancheLocalSegVidAhorro=D:\SVN_MAPFRE\SegVidAhorro-branche
set rutaBrancheServerSegVidAhorro=http://10.160.120.187:81/svn/EPSdesarrollo/php/segurodevidaconahorro

set rutaBrancheLocalSaludMapfre=D:\SVN_MAPFRE\SaludMapfre-branche
set rutaBrancheServerSaludMapfre=http://10.160.120.187:81/svn/EPSdesarrollo/php/saludmapfre2018

set rutaBrancheLocalCamSeguridad=D:\SVN_MAPFRE\CamSeguridad-branche
set rutaBrancheServerCamSeguridad=http://10.160.120.187:81/svn/EPSdesarrollo/php/camarasdeseguridad2018

set rutaBrancheLocalSegHogar=D:\SVN_MAPFRE\SegHogar-branche
set rutaBrancheServerSegHogar=http://10.160.120.187:81/svn/EPSdesarrollo/php/segurodehogar

set rutaBrancheLocalSegVehicular=D:\SVN_MAPFRE\SegVehicular-branche
set rutaBrancheServerSegVehicular=http://10.160.120.187:81/svn/EPSdesarrollo/php/segurovehicularmapfre

set rutaBrancheLocalSegVehicular=D:\SVN_MAPFRE\SegVehicular-branche
set rutaBrancheServerSegVehicular=http://10.160.120.187:81/svn/EPSdesarrollo/php/segurovehicularmapfre

set rutaBrancheLocalAlarmas=D:\SVN_MAPFRE\Alarmas-branche
set rutaBrancheServerAlarmas=http://10.160.120.187:81/svn/EPSdesarrollo/alarmas

set rutaBrancheLocalCamposanto=D:\SVN_MAPFRE\CampoSanto-branche
set rutaBrancheServerCamposanto=http://10.160.120.187:81/svn/EPSdesarrollo/camposanto

set rutaBrancheLocalEPS=D:\SVN_MAPFRE\EPS-branche
set rutaBrancheServerEPS=http://10.160.120.187:81/svn/EPSdesarrollo/eps

set rutaBrancheLocalFinisterre=D:\SVN_MAPFRE\FINISTERRE-branche
set rutaBrancheServerFinisterre=http://10.160.120.187:81/svn/EPSdesarrollo/finisterre

set rutaBrancheLocalFondoUni=D:\SVN_MAPFRE\FondoUni-branche
set rutaBrancheServerFondoUni=http://10.160.120.187:81/svn/EPSdesarrollo/fondo-universitario

set rutaBrancheLocalCert=D:\SVN_MAPFRE\CertiVida-branche
set rutaBrancheServerCert=http://10.160.120.187:81/svn/EPSdesarrollo/certivida

set rutaBrancheLocalSCTR=D:\SVN_MAPFRE\SCTR_LANDING-branche
set rutaBrancheServerSCTR=http://10.160.120.187:81/svn/EPSdesarrollo/sctr

set rutaBrancheLocalSSalud=D:\SVN_MAPFRE\SumarSalud-branche
set rutaBrancheServerSSalud=http://10.160.120.187:81/svn/EPSdesarrollo/sumar-salud

set rutaBrancheLocalTSalud=D:\SVN_MAPFRE\TrebolSalud-branche
set rutaBrancheServerTSalud=http://10.160.120.187:81/svn/EPSdesarrollo/trebol-salud

set rutaBrancheLocalPromoSegVe=D:\SVN_MAPFRE\PromoSegVehi-branche
set rutaBrancheServerPromoSegVe=http://10.160.120.187:81/svn/EPSdesarrollo/promocion-seguro-vehicular

set rutaBrancheLocalSegVidLey=D:\SVN_MAPFRE\SeguroVidaLey-branche
set rutaBrancheServerSegVidLey=http://10.160.120.187:81/svn/EPSdesarrollo/seguro-vida-ley

set rutaBrancheLocalMujIn=D:\SVN_MAPFRE\MujerIndependiente-branche
set rutaBrancheServerMujIn=http://10.160.120.187:81/svn/EPSdesarrollo/mujer-independiente

set rutaBrancheLocalCertIn=D:\SVN_MAPFRE\CertividaInversion-branche
set rutaBrancheServerCertIn=http://10.160.120.187:81/svn/EPSdesarrollo/certivida-inversion

set rutaBrancheLocalSegVeKi=D:\SVN_MAPFRE\SeguroVehicularKilometros-branche
set rutaBrancheServerSegVeKi=http://10.160.120.187:81/svn/EPSdesarrollo/seguros-vehiculares-kilometros

set rutaBrancheLocalEmpSeg=D:\SVN_MAPFRE\EmpresaSegura-branche
set rutaBrancheServerEmpSeg=http://10.160.120.187:81/svn/EPSdesarrollo/empresa-segura

set rutaBrancheLocalSVO=D:\SVN_MAPFRE\SVOSeguroVehicular-branche
set rutaBrancheServerSVO=http://10.160.120.187:81/svn/EPSdesarrollo/svo

set rutaBrancheLocalSVI=D:\SVN_MAPFRE\SVISeguroViajes-branche
set rutaBrancheServerSVI=http://10.160.120.187:81/svn/EPSdesarrollo/svi

set rutaBrancheLocalspeed400mf=D:\SVN_MAPFRE\speed400mf-branche
set rutaBrancheServerspeed400mf=http://10.160.120.187:81/svn/EPSdesarrollo/speed400mf-scripts

set rutaBrancheLocalSegViajes=D:\SVN_MAPFRE\SeguroViajes-branche
set rutaBrancheServerSegViajes=http://10.160.120.187:81/svn/EPSdesarrollo/seguro-viajes

set rutaBrancheLocalCredenciales=D:\SVN_MAPFRE\Credenciales-branche
set rutaBrancheServerCredenciales=http://10.160.120.187:81/svn/EPSdesarrollo/consultaagente

set rutaBrancheLocalCamote=D:\SVN_MAPFRE\CAMOTE-BD-branche
set rutaBrancheServerCamote=http://10.160.120.187:81/svn/EPSdesarrollo/camote-scripts

set rutaBrancheLocalCamoteBack=D:\SVN_MAPFRE\CAMOTE_BACK-branche
set rutaBrancheServerCamoteBack=http://10.160.120.187:81/svn/EPSdesarrollo/camote

set rutaBrancheLocalCamoteFront=D:\SVN_MAPFRE\CAMOTE_FRONT_NG-branche
set rutaBrancheServerCamoteFront=http://10.160.120.187:81/svn/EPSdesarrollo/camote-ng

set rutaBrancheLocalWsrPagos=D:\SVN_MAPFRE\WsrPagos_branche
set rutaBrancheServerWsrPagos=http://10.160.120.187:81/svn/EPSdesarrollo/wsrpagos

set rutaWsIntegradorMytron=D:\Proyecto\ws_Integrado
set rutaServerJbossMytron=D:\sw\server\jboss-eap-6.4\standalone
set fecha_actual=%date% %time%
set anio_mes=%date:~11,4%-%date:~8,2%
set usuario=extnang
set password=Mapfre.2022
set modulolocal=
echo Bienvenidos al BuildSoft WS_Integrador %fecha_actual%  ::: %anio_mes%
echo Menu:
rem https://subversion.apache.org/quick-start
rem echo 1.-EXPORTAR DESDE SVN
echo 1.-COPIAR DE CARPTA BRANCHE SVN MYTRON
echo 101-COPIAR DE CARPTA BRANCHE SVN MYTRON BACK
echo 2.-GENERAR BRANCHE TRONWEB
echo 3.-GENERAR BRANCHE MYTRON
echo 301.-GENERAR BRANCHE WSR-MYTRON
echo 4.-ELIMINAR BRANCHE TRONWEB
echo 5.-ELIMINAR BRANCHE MYTRON
echo 6.-COMPILAR AND DEPLOY BRANCHE MYTRON
echo 7.-COMPILAR AND DEPLOY BRANCHE BuildERP
echo 8.-GENERAR BRANCHE REFERIDOS
echo 88.-GENERAR BRANCHE REFERIDOS BD
echo 9.-GENERAR BRANCHE WebBD
echo 10.-GENERAR BRANCHE OimCgw BACK-END
echo 11.-GENERAR BRANCHE OimCgw NG FRONT-END
echo 12.-GENERAR BRANCHE OimCgw CGARANTIA BD
echo 13.-GENERAR BRANCHE wsrSCTR
echo 14.-GENERAR BRANCHE wsrAsegurado
echo 15.-GENERAR BRANCHE wsrGeneraDocumento
echo 16.-GENERAR BRANCHE ORQUESTADOR
echo 17.Descargar branchs oim
echo 18.GENERAR BRANCHE ENCUESTA
echo 19.GENERAR BRANCHE OIM TRON SCRIPTS
echo 20.GENERAR BRANCHE PORTAL
echo 21.GENERAR BRANCHE WEBSITE
echo 22.GENERAR BRANCHE WEBPROC
echo 23.GENERAR BRANCHE CUBOS
echo 24.GENERAR BRANCHE CORRECTIVO
echo 25.GENERAR BRANCHE UNIFICADOS DSOAT
echo 26.GENERAR BRANCHE UNIFICADOS WORKSITE
echo 27.GENERAR BRANCHE ECOM SCTR NG
echo 28.GENERAR BRANCHE COT. CLIN. DIGI. MAPFREDOC
echo 29.GENERAR BRANCHE SEG VIDA CON AHORRO
echo 30.GENERAR BRANCHE SALUD MAPFRE 2018
echo 31.GENERAR BRANCHE CAMARA SEGURIDAD
echo 32.GENERAR BRANCHE SEGURO HOGAR
echo 33.GENERAR BRANCHE SEGURO VEHICULAR
echo 34.GENERAR BRANCHE ALARMAS
echo 35.GENERAR BRANCHE CAMPOSANTO
echo 36.GENERAR BRANCHE EPS
echo 37.GENERAR BRANCHE FINISTERRE
echo 38.GENERAR BRANCHE FONDO UNI
echo 39.GENERAR BRANCHE CERTIVIDA
echo 40.GENERAR BRANCHE SCTR LANING .NET
echo 41.GENERAR BRANCHE SUMAR SALUD
echo 42.GENERAR BRANCHE TREBOL SALUD
echo 43.GENERAR BRANCHE PROMO SEGURO VEHICULAR
echo 44.GENERAR BRANCHE SEGURO VIDA LEY
echo 45.GENERAR BRANCHE MUJER INDEPENDIENTE
echo 46.GENERAR BRANCHE CERTIVIDA INVERSION
echo 47.GENERAR BRANCHE SEGURO VEHICULAR KILOMETROS - PLAN KM
echo 48.GENERAR BRANCHE LANDING TEO - EMPRESA SEGURA
echo 49.GENERAR BRANCHE SVO SEGURO VEHI
echo 50.GENERAR BRANCHE SVI SEGURO VIAJES
echo 51.GENERAR BRANCHE speed400mf BD
echo 52.GENERAR BRANCHE SEGURO VIAJES LANDING
echo 53.GENERAR BRANCHE CREDENCIALES LANDING
echo 54.GENERAR BRANCHE CAMOTE BD
echo 55.GENERAR BRANCHE CAMOTE BACKEND
echo 56.GENERAR BRANCHE CAMOTE FORNTEND NG
echo 57.GENERAR BRANCHE WsrPAGOS
echo 0.-Salir
set /p opcionMenu=
if %opcionMenu% equ 0 (

	call svn list --verbose http://10.160.120.187:81/svn/EPSdesarrollo/TronWeb/branches/2021-04/00417408_rptvdaley && (
		  echo yourCommand was successful
		) || (
		  echo yourCommand failed
		)
	pause
		cls;
		goto menu;
)
cls
if %opcionMenu% equ xx (
	echo elegiste:::::: EXPORTAR DESDE SVN %fecha_actual%  ::: %anio_mes%
	goto modulos;
)
if %opcionMenu% equ 1 (
		echo elegiste:::::: EXPORTAR DESDE SVN %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 101 (
		echo elegiste:::::: EXPORTAR DESDE SVN MYTRON BACK %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 2 (
		echo elegiste:::::: GENERAR BRANCHE TRONWEB %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 3 (
		echo elegiste:::::: GENERAR BRANCHE MYTRON %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 301 (
		echo elegiste:::::: GENERAR BRANCHE WSR - MYTRON %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 4 (
		echo elegiste:::::: ELIMINAR BRANCHE TRONWEB %fecha_actual%  ::: Ejemplo %anio_mes%/cod_brance
		goto modulos;
)
if %opcionMenu% equ 5 (
		echo elegiste:::::: ELIMINAR BRANCHE MYTRON %fecha_actual%  ::: Ejemplo %anio_mes%/cod_brance
		goto modulos;
)
if %opcionMenu% equ 6 (
		echo elegiste:::::: COMPILAR AND DEPLOY BRANCHE MYTRON %fecha_actual%  ::: Ejemplo %anio_mes%/cod_brance
		goto modulos;
)
if %opcionMenu% equ 7 (
		echo elegiste:::::: COMPILAR AND DEPLOY BRANCHE BuildERP %fecha_actual%  ::: Ejemplo %anio_mes%/cod_brance
		goto modulos;
)
if %opcionMenu% equ 8 (
		echo elegiste:::::: GENERAR BRANCHE REFERIDOS %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 88 (
		echo elegiste:::::: GENERAR BRANCHE REFERIDOS-BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 9 (
		echo elegiste:::::: GENERAR BRANCHE WebBD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 10 (
		echo elegiste:::::: GENERAR BRANCHE OimCgw BACK-END %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 11 (
		echo elegiste:::::: GENERAR BRANCHE OimCgw NG FRONT-END %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 12 (
		echo elegiste:::::: GENERAR BRANCHE OimCgw CGARANTIA BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 13 (
		echo elegiste:::::: GENERAR BRANCHE wsrSCTR %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 14 (
		echo elegiste:::::: GENERAR BRANCHE wsrAsegurado %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 15 (
		echo elegiste:::::: GENERAR BRANCHE wsrGeneraDocumento %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 16 (
		echo elegiste:::::: GENERAR BRANCHE ORQUESTADOR %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 17 (
		echo elegiste:::::: Descargar branchs oim  %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 18 (
		echo elegiste:::::: GENERAR BRANCHE EncuestaBD  %fecha_actual%  ::: %anio_mes%
)
if %opcionMenu% equ 19 (
		echo elegiste:::::: GENERAR BRANCHE OIM TRON SCRIPTS  %fecha_actual%  ::: %anio_mes%
)
if %opcionMenu% equ 20 (
		echo elegiste:::::: GENERAR BRANCHE PORTAL-BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 21 (
		echo elegiste:::::: GENERAR BRANCHE WEBSITE-BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 22 (
		echo elegiste:::::: GENERAR BRANCHE WEBPROC-BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 23 (
		echo elegiste:::::: GENERAR BRANCHE CUBOS-BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 24 (
		echo elegiste:::::: GENERAR BRANCHE CORRECTIVO-BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 25 (
		echo elegiste:::::: GENERAR BRANCHE UNIFICADOS DSOAT %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 26 (
		echo elegiste:::::: GENERAR BRANCHE UNIFICADOS WORKSITE %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 27 (
		echo elegiste:::::: GENERAR BRANCHE ECOM SCTR NG %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 28 (
		echo elegiste:::::: GENERAR BRANCHE COT CLINICAS DIJOTALES %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 29 (
		echo elegiste:::::: GENERAR BRANCHE SEG VIDA AHORRO %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 30 (
		echo elegiste:::::: GENERAR BRANCHE SALUD MAPFRE 2018 %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 31 (
		echo elegiste:::::: GENERAR BRANCHE CAMARA SEGURIDAD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 32 (
		echo elegiste:::::: GENERAR BRANCHE SEGURO HOGAR %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 33 (
		echo elegiste:::::: GENERAR BRANCHE SEGURO VEHICULAR %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 34 (
		echo elegiste:::::: GENERAR BRANCHE ALARMAS %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 35 (
		echo elegiste:::::: GENERAR BRANCHE CAMPOSANTO %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 36 (
		echo elegiste:::::: GENERAR BRANCHE EPS %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 37 (
		echo elegiste:::::: GENERAR BRANCHE FINISTERRE %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 38 (
		echo elegiste:::::: GENERAR BRANCHE FONDO UNI %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 39 (
		echo elegiste:::::: GENERAR BRANCHE CERTIVIDA %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 40 (
		echo elegiste:::::: GENERAR BRANCHE SCTR LANDING %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 41 (
		echo elegiste:::::: GENERAR BRANCHE SUMAR SALUD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 42 (
		echo elegiste:::::: GENERAR BRANCHE TREBOL SALUD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 43 (
		echo elegiste:::::: GENERAR BRANCHE PROMO SEG VEHICULAR %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 44 (
		echo elegiste:::::: GENERAR BRANCHE SEGURO VIDA LEY %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 45 (
		echo elegiste:::::: GENERAR BRANCHE MUJER INDEPENDIENTE %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 46 (
		echo elegiste:::::: GENERAR BRANCHE CERTIVIDA INVERSION %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 47 (
		echo elegiste:::::: GENERAR BRANCHE SEGURO VEHICULAR KILOMETROS %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 48 (
		echo elegiste:::::: GENERAR BRANCHE EMPRESA SEGURA - LANDING TEO %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 49 (
		echo elegiste:::::: GENERAR BRANCHE SVO SEG VEHICULAR %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 50 (
		echo elegiste:::::: GENERAR BRANCHE SVI SEG VIAJES %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 51 (
		echo elegiste:::::: GENERAR BRANCHE speed400mf BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 52 (
		echo elegiste:::::: GENERAR BRANCHE SEG VIAJES %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 53 (
		echo elegiste:::::: GENERAR BRANCHE CREDENCIALES %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 54 (
		echo elegiste:::::: GENERAR BRANCHE CAMOTE BD %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 55 (
		echo elegiste:::::: GENERAR BRANCHE BACKEND %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 56 (
		echo elegiste:::::: GENERAR BRANCHE FRONTEND NG %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 57 (
		echo elegiste:::::: GENERAR BRANCHE WSRPAGOS %fecha_actual%  ::: %anio_mes%
		goto modulos;
)
if %opcionMenu% equ 0 (
	echo Debe seleccionar una opcion valido de Menu %fecha_actual%  ::: %anio_mes%
		pause
		cls;
		goto menu;
)

	
:modulos
echo Ingrese codigo del Branche:
echo 0.- Salir
set/p opcionModulo=
set modulo=%opcionModulo%
set moduloBranche=%anio_mes%/%opcionModulo%
set opcionMenu2=%opcionMenu%
	echo elegiste codigo del Branche Ingresado  %opcionModulo% y Opcion %opcionMenu% 
	if %opcionMenu% equ xx ( 
		goto exportarDesdeSvn;
	) 
	if %opcionMenu% equ 1 ( 
		goto copiarDesdeExportado;
	)
	if %opcionMenu% equ 101 ( 
		goto copiarDesdeExportadoBACK;
	)
	if %opcionMenu% equ 2 ( 
	     goto generarBrancheTronWeb;	
    ) 
	if %opcionMenu% equ 3  (
		goto generarBrancheMytron;
	)
	if %opcionMenu% equ 301  (
		goto generarBrancheMytronBack;
	)
	if %opcionMenu% equ 4  (
	     echo Ingrese Codigo Local Branche
	     set /p modulolocal=
		goto eliminarBrancheTronWeb;
	)
	if %opcionMenu% equ 5  (
	     echo Ingrese Codigo Local Branche
	     set /p modulolocal=
		
		goto eliminarBrancheMytron;
	)
	if %opcionMenu% equ 6  (
		goto compilarAndDeployBrancheMytron;
	)
	if %opcionMenu% equ 7  (
		goto compilarAndDeployBrancheBuildErp;
	)
	if %opcionMenu% equ 8  (
		goto generarBrancheReferidos;
	)
	if %opcionMenu% equ 88  (
		goto generarBrancheReferidosBD;
	)
	if %opcionMenu% equ 9  (
		goto generarBrancheWebBD;
	)
	if %opcionMenu% equ 10  (
		goto generarBrancheOimCgw;
	)
	if %opcionMenu% equ 11  (
		goto generarBrancheOimCgwNg;
	)
	if %opcionMenu% equ 12  (
		goto generarBrancheCGarantiaBD;
	)
	if %opcionMenu% equ 13  (
		goto generarBranchewsrSCTR;
	)
	if %opcionMenu% equ 14  (
		goto generarBranchewsrAsegurado;
	)
	if %opcionMenu% equ 15  (
		goto generarBranchewsrGeneraDocumento;
	)
	if %opcionMenu% equ 16  (
		goto generarBrancheOrquestador;
	)
	if %opcionMenu% equ 17  (
		goto descargarBrancheOIM;
	)
	if %opcionMenu% equ 18  (
		goto generarBrancheEncuestabBD;
	)
	if %opcionMenu% equ 19  (
		goto generarBrancheOimTronScripts;
	)
	if %opcionMenu% equ 20  (
		goto generarBranchePortalBD;
	)
	if %opcionMenu% equ 21  (
		goto generarBrancheWebsiteBD;
	)
	if %opcionMenu% equ 22  (
		goto generarBrancheWebprocBD;
	)
	if %opcionMenu% equ 23  (
		goto generarBrancheCubosBD;
	)
	if %opcionMenu% equ 24  (
		goto generarBrancheCorrectivoBD;
	)
	if %opcionMenu% equ 25  (
		goto generarBrancheDSoat;
	)
	if %opcionMenu% equ 26  (
		goto generarBrancheWorksite;
	)
	if %opcionMenu% equ 27  (
		goto generarBrancheEcomSCTR;
	)
	if %opcionMenu% equ 28  (
		goto generarBrancheCotClinDigitales;
	)
	if %opcionMenu% equ 29  (
		goto generarBrancheSegVidAhorro;
	)
	if %opcionMenu% equ 30  (
		goto generarBrancheSaludMapfre;
	)
	if %opcionMenu% equ 31  (
		goto generarBrancheCamSeguridad;
	)
	if %opcionMenu% equ 32  (
		goto generarBrancheSegHogar;
	)
	if %opcionMenu% equ 33  (
		goto generarBrancheSegVehicular;
	)
	if %opcionMenu% equ 34  (
		goto generarBrancheAlarmas;
	)
	if %opcionMenu% equ 35  (
		goto generarBrancheCamposanto;
	)
	if %opcionMenu% equ 36  (
		goto generarBrancheEPS;
	)
	if %opcionMenu% equ 37  (
		goto generarBrancheFinisterre;
	)
	if %opcionMenu% equ 38  (
		goto generarBrancheFondoUni;
	)
	if %opcionMenu% equ 39  (
		goto generarBrancheCert;
	)
	if %opcionMenu% equ 40  (
		goto generarBrancheSCTR;
	)
	if %opcionMenu% equ 41  (
		goto generarBrancheSSalud;
	)
	if %opcionMenu% equ 42  (
		goto generarBrancheTSalud;
	)
	if %opcionMenu% equ 43  (
		goto generarBranchePromoSegVe;
	)
	if %opcionMenu% equ 44  (
		goto generarBrancheSegVidLey;
	)
	if %opcionMenu% equ 45  (
		goto generarBrancheMujIn;
	)
	if %opcionMenu% equ 46  (
		goto generarBrancheCertIn;
	)
	if %opcionMenu% equ 47  (
		goto generarBrancheSegVeKi;
	)
	if %opcionMenu% equ 48  (
		goto generarBrancheEmpSeg;
	)
	if %opcionMenu% equ 49  (
		goto generarBrancheSVO;
	)
	if %opcionMenu% equ 50  (
		goto generarBrancheSVI;
	)
	if %opcionMenu% equ 51  (
		goto generarBranchespeed400mf;
	)
	if %opcionMenu% equ 52  (
		goto generarBranchesSegViajes;
	)
	if %opcionMenu% equ 53  (
		goto generarBranchesCredenciales;
	)
	if %opcionMenu% equ 54  (
		goto generarBranchesCamote;
	)
	if %opcionMenu% equ 55  (
		goto generarBranchesCamoteBack;
	)
	if %opcionMenu% equ 56  (
		goto generarBranchesCamoteFront;
	)
	if %opcionMenu% equ 57  (
		goto generarBranchesWsrPagos;
	)
	if %opcionModulo% equ 0 ( 
		cls;
		goto menu;
	)

:generarBrancheTronWeb
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 2 (

		echo Primero verificando si existe el branch %modulo%...
		call svn list --verbose %rutaBrancheServerTronWeb%/branches/%moduloBranche% && (
			echo --------------------------------------------------------------------------------
			echo Al parecer si existe el branch, por favor ingrese otro nombre para el branch o  puede hacer checkout
			echo --------------------------------------------------------------------------------
		) || (
			echo -------------------------
			echo -- No existe el branch --
			echo -------------------------
			echo generarBrancheTronWeb Creando Branch %rutaBrancheServerTronWeb%/branches/%moduloBranche%
			call svn copy --username %usuario% --password  %password% %rutaBrancheServerTronWeb%/trunk %rutaBrancheServerTronWeb%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
			echo generarBrancheTronWeb checkout branch %rutaBrancheServerTronWeb%/branches/%moduloBranche%/scripts
			call svn checkout --username %usuario% --password  %password% %rutaBrancheServerTronWeb%/branches/%moduloBranche%/scripts %rutaBrancheLocalTronWeb%-%modulo%
			
		)
		pause
		cls;
		goto menu;
	)
	
)

:generarBrancheWebBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 9 (
	echo generarBrancheWebBD creando branch %rutaBrancheServerWebBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerWebBD%/trunk %rutaBrancheServerWebBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheWebBD checkout branch %rutaBrancheServerWebBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerWebBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalWebBD%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)

:generarBrancheCGarantiaBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 12 (
	echo generarBrancheCGarantiaBD creando branch %rutaBrancheServerCGarantiaBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCGarantiaBD%/trunk %rutaBrancheServerCGarantiaBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCGarantiaBD checkout branch %rutaBrancheServerCGarantiaBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCGarantiaBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalCGarantiaBD%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBrancheOimCgw
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 10 (
	echo generarBrancheOimCgw creando branch %rutaBrancheServerOimCgw%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerOimCgw%/trunk %rutaBrancheServerOimCgw%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheOimCgw checkout branch %rutaBrancheServerOimCgw%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimCgw%/branches/%moduloBranche% %rutaBrancheLocalOimCgw%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBrancheOimCgwNg
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 11 (
	echo generarBrancheOimCgwNg creando branch %rutaBrancheServerOimCgwNg%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerOimCgwNg%/trunk %rutaBrancheServerOimCgwNg%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheOimCgwNg checkout branch %rutaBrancheServerOimCgwNg%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimCgwNg%/branches/%moduloBranche% %rutaBrancheLocalOimCgwNg%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)

:eliminarBrancheTronWeb
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 4 (
	echo eliminarBrancheTronWeb creado branch %rutaBrancheServerTronWeb%/branches/%modulo%
	call svn delete  --username %usuario% --password  %password% %rutaBrancheServerTronWeb%/branches/%modulo% -m "Eliminar a private branch buildsoft"	  
	
	echo eliminarBrancheTronWeb carpeta local %rutaBrancheLocalTronWeb%-%modulolocal%\
    call rd/s/q %rutaBrancheLocalTronWeb%-%modulolocal%	
	)
	pause
	cls;
	goto menu;
)

:generarBrancheMytron
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 3 (
	echo Primero verificando si existe el branch %modulo%...
	call svn list --verbose %rutaBrancheServerMytron%/branches/%moduloBranche% && (
		echo --------------------------------------------------------------------------------
		echo Al parecer si existe el branch, por favor ingrese otro nombre para el branch o  puede hacer checkout
		echo --------------------------------------------------------------------------------
	) || (
		echo -------------------------
		echo -- No existe el branch --
		echo -------------------------
		echo generarBrancheMytron Creando Branch %rutaBrancheServerMytron%/branches/%moduloBranche%
		call svn copy --username %usuario% --password  %password% %rutaBrancheServerMytron%/trunk %rutaBrancheServerMytron%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
		echo generarBrancheMytron checkout branch %rutaBrancheServerMytron%/branches/%moduloBranche%	  
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerMytron%/branches/%moduloBranche% %rutaBrancheLocalMytron%-%modulo%
		
	)
	pause
	cls;
	goto menu;
	)
)
:generarBrancheMytronBack
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 301 (
	echo Primero verificando si existe el branch %modulo%...
	call svn list --verbose %rutaBrancheServerMytronBack%/branches/%moduloBranche% && (
		echo --------------------------------------------------------------------------------
		echo Al parecer si existe el branch, por favor ingrese otro nombre para el branch o  puede hacer checkout
		echo --------------------------------------------------------------------------------
	) || (
		echo -------------------------
		echo -- No existe el branch --
		echo -------------------------
		echo generarBrancheMytronBack Creando Branch %rutaBrancheServerMytronBack%/branches/%moduloBranche%
		call svn copy --username %usuario% --password  %password% %rutaBrancheServerMytronBack%/trunk %rutaBrancheServerMytronBack%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
		echo generarBrancheMytronBack checkout branch %rutaBrancheServerMytronBack%/branches/%moduloBranche%	  
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerMytronBack%/branches/%moduloBranche% %rutaBrancheLocalMytronBack%-%modulo%
		
	)
	pause
	cls;
	goto menu;
	)
)

:generarBrancheOrquestador
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 16 (
	echo generarBrancheOrquestador creando branch %rutaBrancheServerOrquestador%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerOrquestador%/trunk %rutaBrancheServerOrquestador%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheOrquestador checkout branch %rutaBrancheServerOrquestador%/branches/%moduloBranche%	  
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOrquestador%/branches/%moduloBranche% %rutaBrancheLocalOrquestador%-%modulo%
	)
	pause
	cls;
	goto menu;
)

:generarBranchewsrSCTR
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 13 (
	echo generarBranchewsrSCTR creando branch %rutaBrancheServerwsrSCTR%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerwsrSCTR%/trunk %rutaBrancheServerwsrSCTR%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchewsrSCTR checkout branch %rutaBrancheServerwsrSCTR%/branches/%moduloBranche%	  
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerwsrSCTR%/branches/%moduloBranche% %rutaBrancheLocalwsrSCTR%-%modulo%
	)
	pause
	cls;
	goto menu;
)

:generarBranchewsrAsegurado
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 14 (
	echo generarBranchewsrAsegurado creando branch %rutaBrancheServerwsrAsegurado%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerwsrAsegurado%/trunk %rutaBrancheServerwsrAsegurado%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchewsrAsegurado checkout branch %rutaBrancheServerwsrAsegurado%/branches/%moduloBranche%	  
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerwsrAsegurado%/branches/%moduloBranche% %rutaBrancheLocalwsrAsegurado%-%modulo%
	)
	pause
	cls;
	goto menu;
)

:generarBranchewsrGeneraDocumento
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 15 (
	echo generarBranchewsrGeneraDocumento creando branch %rutaBrancheServerwsrGeneraDocumento%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerwsrGeneraDocumento%/trunk %rutaBrancheServerwsrGeneraDocumento%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchewsrGeneraDocumento checkout branch %rutaBrancheServerwsrGeneraDocumento%/branches/%moduloBranche%	  
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerwsrGeneraDocumento%/branches/%moduloBranche% %rutaBrancheLocalwsrGeneraDocumento%-%modulo%
	)
	pause
	cls;
	goto menu;
)

:generarBrancheEncuestabBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 18 (
	echo generarBrancheEncuestabBD creando branch %rutaBrancheServerEncuestaBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerEncuestaBD%/trunk %rutaBrancheServerEncuestaBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheEncuestabBD checkout branch %rutaBrancheServerEncuestaBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerEncuestaBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalEncuestaBD%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBrancheOimTronScripts
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 19 (
	echo generarBrancheOimTronScripts creando branch %rutaBrancheServerOimTronScripts%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerOimTronScripts%/trunk %rutaBrancheServerOimTronScripts%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheOimTronScripts checkout branch %rutaBrancheServerOimTronScripts%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimTronScripts%/branches/%moduloBranche%/scripts %rutaBrancheLocalOimTronScripts%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBranchePortalBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 20 (
	echo generarBranchePortalBD creando branch %rutaBrancheServerPortalBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerPortalBD%/trunk %rutaBrancheServerPortalBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchePortalBD checkout branch %rutaBrancheServerPortalBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerPortalBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalPortalBD%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBrancheWebsiteBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 21 (
	echo generarBrancheWebsiteBD creando branch %rutaBrancheServerWebsiteBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerWebsiteBD%/trunk %rutaBrancheServerWebsiteBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheWebsiteBD checkout branch %rutaBrancheServerWebsiteBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerWebsiteBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalWebsiteBD%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBrancheWebprocBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 22 (
	echo generarBrancheWebprocBD creando branch %rutaBrancheServerWebprocBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerWebprocBD%/trunk %rutaBrancheServerWebprocBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheWebprocBD checkout branch %rutaBrancheServerWebprocBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerWebprocBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalWebprocBD%-%modulo%
		  
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCubosBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 23 (
	echo generarBrancheCubosBD creando branch %rutaBrancheServerCubosBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCubosBD%/trunk %rutaBrancheServerCubosBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCubosBD checkout branch %rutaBrancheServerCubosBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCubosBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalCubosBD%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCorrectivoBD
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 24 (
	echo generarBrancheCorrectivoBD creando branch %rutaBrancheServerCorrectivoBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCorrectivoBD%/trunk %rutaBrancheServerCorrectivoBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCorrectivoBD checkout branch %rutaBrancheServerCorrectivoBD%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCorrectivoBD%/branches/%moduloBranche%/scripts %rutaBrancheLocalCorrectivoBD%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheDSoat
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 25 (
	echo generarBrancheDSoat creando branch %rutaBrancheServerDSoat%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerDSoat%/trunk %rutaBrancheServerDSoat%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheDSoat checkout branch %rutaBrancheServerDSoat%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerDSoat%/branches/%moduloBranche% %rutaBrancheLocalDSoat%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheWorksite
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 26 (
	echo generarBrancheWorksite creando branch %rutaBrancheServerWorksite%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerWorksite%/trunk %rutaBrancheServerWorksite%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheWorksite checkout branch %rutaBrancheServerWorksite%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerWorksite%/branches/%moduloBranche% %rutaBrancheLocalWorksite%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheEcomSCTR
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 27 (
	echo generarBrancheEcomSCTR creando branch %rutaBrancheServerEcomSCTR%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerEcomSCTR%/trunk %rutaBrancheServerEcomSCTR%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheEcomSCTR checkout branch %rutaBrancheServerEcomSCTR%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerEcomSCTR%/branches/%moduloBranche% %rutaBrancheLocalEcomSCTR%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCotClinDigitales
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 28 (
	echo generarBrancheCotClinDigitales creando branch %rutaBrancheServerCotClinDigital%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCotClinDigital%/trunk %rutaBrancheServerCotClinDigital%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCotClinDigitales checkout branch %rutaBrancheServerCotClinDigital%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCotClinDigital%/branches/%moduloBranche% %rutaBrancheLocalCotClinDigital%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSegVidAhorro
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 29 (
	echo generarBrancheSegVidAhorro creando branch %rutaBrancheServerSegVidAhorro%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSegVidAhorro%/trunk %rutaBrancheServerSegVidAhorro%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSegVidAhorro checkout branch %rutaBrancheServerSegVidAhorro%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSegVidAhorro%/branches/%moduloBranche% %rutaBrancheLocalSegVidAhorro%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSaludMapfre
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 30 (
	echo generarBrancheSaludMapfre creando branch %rutaBrancheServerSaludMapfre%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSaludMapfre%/trunk %rutaBrancheServerSaludMapfre%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSaludMapfre checkout branch %rutaBrancheServerSaludMapfre%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSaludMapfre%/branches/%moduloBranche% %rutaBrancheLocalSaludMapfre%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCamSeguridad
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 31 (
	echo generarBrancheCamSeguridad creando branch %rutaBrancheServerCamSeguridad%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCamSeguridad%/trunk %rutaBrancheServerCamSeguridad%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCamSeguridad checkout branch %rutaBrancheServerCamSeguridad%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCamSeguridad%/branches/%moduloBranche% %rutaBrancheLocalCamSeguridad%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSegHogar
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 32 (
	echo generarBrancheSegHogar creando branch %rutaBrancheServerSegHogar%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSegHogar%/trunk %rutaBrancheServerSegHogar%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSegHogar checkout branch %rutaBrancheServerSegHogar%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSegHogar%/branches/%moduloBranche% %rutaBrancheLocalSegHogar%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSegVehicular
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 33 (
	echo generarBrancheSegVehicular creando branch %rutaBrancheServerSegVehicular%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSegVehicular%/trunk %rutaBrancheServerSegVehicular%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSegVehicular checkout branch %rutaBrancheServerSegVehicular%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSegVehicular%/branches/%moduloBranche% %rutaBrancheLocalSegVehicular%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheAlarmas
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 34 (
	echo generarBrancheAlarmas creando branch %rutaBrancheServerAlarmas%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerAlarmas%/trunk %rutaBrancheServerAlarmas%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheAlarmas checkout branch %rutaBrancheServerAlarmas%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerAlarmas%/branches/%moduloBranche% %rutaBrancheLocalAlarmas%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCamposanto
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 35 (
	echo generarBrancheCamposanto creando branch %rutaBrancheServerCamposanto%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCamposanto%/trunk %rutaBrancheServerCamposanto%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCamposanto checkout branch %rutaBrancheServerCamposanto%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCamposanto%/branches/%moduloBranche% %rutaBrancheLocalCamposanto%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheEPS
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 36 (
	echo generarBrancheEPS creando branch %rutaBrancheServerEPS%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerEPS%/trunk %rutaBrancheServerEPS%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheEPS checkout branch %rutaBrancheServerEPS%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerEPS%/branches/%moduloBranche% %rutaBrancheLocalEPS%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheFinisterre
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 37 (
	echo generarBrancheFinisterre creando branch %rutaBrancheServerFinisterre%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerFinisterre%/trunk %rutaBrancheServerFinisterre%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheFinisterre checkout branch %rutaBrancheServerFinisterre%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerFinisterre%/branches/%moduloBranche% %rutaBrancheLocalFinisterre%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheFondoUni
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 38 (
	echo generarBrancheFondoUni creando branch %rutaBrancheServerFondoUni%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerFondoUni%/trunk %rutaBrancheServerFondoUni%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheFondoUni checkout branch %rutaBrancheServerFondoUni%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerFondoUni%/branches/%moduloBranche% %rutaBrancheLocalFondoUni%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCert
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 39 (
	echo generarBrancheCert creando branch %rutaBrancheServerCert%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCert%/trunk %rutaBrancheServerCert%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCert checkout branch %rutaBrancheServerCert%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCert%/branches/%moduloBranche% %rutaBrancheLocalCert%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSCTR
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 40 (
	echo generarBrancheSCTR creando branch %rutaBrancheServerSCTR%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSCTR%/trunk %rutaBrancheServerSCTR%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSCTR checkout branch %rutaBrancheServerSCTR%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSCTR%/branches/%moduloBranche% %rutaBrancheLocalSCTR%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSSalud
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 41 (
	echo generarBrancheSSalud creando branch %rutaBrancheServerSSalud%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSSalud%/trunk %rutaBrancheServerSSalud%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSSalud checkout branch %rutaBrancheServerSSalud%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSSalud%/branches/%moduloBranche% %rutaBrancheLocalSSalud%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheTSalud
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 42 (
	echo generarBrancheTSalud creando branch %rutaBrancheServerTSalud%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerTSalud%/trunk %rutaBrancheServerTSalud%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheTSalud checkout branch %rutaBrancheServerTSalud%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerTSalud%/branches/%moduloBranche% %rutaBrancheLocalTSalud%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchePromoSegVe
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 43 (
	echo generarBranchePromoSegVe creando branch %rutaBrancheServerPromoSegVe%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerPromoSegVe%/trunk %rutaBrancheServerPromoSegVe%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchePromoSegVe checkout branch %rutaBrancheServerPromoSegVe%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerPromoSegVe%/branches/%moduloBranche% %rutaBrancheLocalPromoSegVe%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSegVidLey
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 44 (
	echo generarBrancheSegVidLey creando branch %rutaBrancheServerSegVidLey%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSegVidLey%/trunk %rutaBrancheServerSegVidLey%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSegVidLey checkout branch %rutaBrancheServerSegVidLey%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSegVidLey%/branches/%moduloBranche% %rutaBrancheLocalSegVidLey%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheMujIn
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 45 (
	echo generarBrancheMujIn creando branch %rutaBrancheServerMujIn%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerMujIn%/trunk %rutaBrancheServerMujIn%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheMujIn checkout branch %rutaBrancheServerMujIn%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerMujIn%/branches/%moduloBranche% %rutaBrancheLocalMujIn%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheCertIn
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 46 (
	echo generarBrancheCertIn creando branch %rutaBrancheServerCertIn%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCertIn%/trunk %rutaBrancheServerCertIn%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheCertIn checkout branch %rutaBrancheServerCertIn%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCertIn%/branches/%moduloBranche% %rutaBrancheLocalCertIn%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSegVeKi
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 47 (
	echo generarBrancheSegVeKi creando branch %rutaBrancheServerSegVeKi%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSegVeKi%/trunk %rutaBrancheServerSegVeKi%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSegVeKi checkout branch %rutaBrancheServerSegVeKi%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSegVeKi%/branches/%moduloBranche% %rutaBrancheLocalSegVeKi%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheEmpSeg
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 48 (
	echo generarBrancheEmpSeg creando branch %rutaBrancheServerEmpSeg%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerEmpSeg%/trunk %rutaBrancheServerEmpSeg%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheEmpSeg checkout branch %rutaBrancheServerEmpSeg%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerEmpSeg%/branches/%moduloBranche% %rutaBrancheLocalEmpSeg%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSVO
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 49 (
	echo generarBrancheSVO creando branch %rutaBrancheServerSVO%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSVO%/trunk %rutaBrancheServerSVO%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSVO checkout branch %rutaBrancheServerSVO%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSVO%/branches/%moduloBranche% %rutaBrancheLocalSVO%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBrancheSVI
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 50 (
	echo generarBrancheSVI creando branch %rutaBrancheServerSVI%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSVI%/trunk %rutaBrancheServerSVI%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheSVI checkout branch %rutaBrancheServerSVI%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSVI%/branches/%moduloBranche% %rutaBrancheLocalSVI%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchespeed400mf
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 51 (
	echo generarBranchespeed400mf creando branch %rutaBrancheServerspeed400mf%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerspeed400mf%/trunk %rutaBrancheServerspeed400mf%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchespeed400mf checkout branch %rutaBrancheServerspeed400mf%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerspeed400mf%/branches/%moduloBranche%/scripts %rutaBrancheLocalspeed400mf%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchesSegViajes
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 52 (
	echo generarBranchesSegViajes creando branch %rutaBrancheServerSegViajes%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerSegViajes%/trunk %rutaBrancheServerSegViajes%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchesSegViajes checkout branch %rutaBrancheServerSegViajes%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerSegViajes%/branches/%moduloBranche% %rutaBrancheLocalSegViajes%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchesCredenciales
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 53 (
	echo generarBranchesCredenciales creando branch %rutaBrancheServerCredenciales%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCredenciales%/trunk %rutaBrancheServerCredenciales%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchesCredenciales checkout branch %rutaBrancheServerCredenciales%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCredenciales%/branches/%moduloBranche% %rutaBrancheLocalCredenciales%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchesCamote
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 54 (
	echo generarBranchesCamote creando branch %rutaBrancheServerCamote%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCamote%/trunk %rutaBrancheServerCamote%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchesCamote checkout branch %rutaBrancheServerCamote%/branches/%moduloBranche%/scripts
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCamote%/branches/%moduloBranche%/scripts %rutaBrancheLocalCamote%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchesCamoteBack
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 55 (
	echo generarBranchesCamoteBack creando branch %rutaBrancheServerCamoteBack%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCamoteBack%/trunk %rutaBrancheServerCamoteBack%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchesCamoteBack checkout branch %rutaBrancheServerCamoteBack%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCamoteBack%/branches/%moduloBranche% %rutaBrancheLocalCamoteBack%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchesCamoteFront
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 56 (
	echo generarBranchesCamoteFront creando branch %rutaBrancheServerCamoteFront%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerCamoteFront%/trunk %rutaBrancheServerCamoteFront%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchesCamoteFront checkout branch %rutaBrancheServerCamoteFront%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerCamoteFront%/branches/%moduloBranche% %rutaBrancheLocalCamoteFront%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:generarBranchesWsrPagos
if %opcionModulo% equ 0 (
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 57 (
	echo generarBranchesWsrPagos creando branch %rutaBrancheServerWsrPagos%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerWsrPagos%/trunk %rutaBrancheServerWsrPagos%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBranchesWsrPagos checkout branch %rutaBrancheServerWsrPagos%/branches/%moduloBranche%
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerWsrPagos%/branches/%moduloBranche% %rutaBrancheLocalWsrPagos%-%modulo%
	)
	pause
	cls;
	goto menu;
)
:descargarBrancheOIM
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 13 (
	echo %rutaBrancheLocalOimNet%	
	echo %branches%
	
	for %%A in (%branches%) do (	
		for %%B in (%nameBranche%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche1%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche2%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche3%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche4%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche5%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche6%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche7%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
		for %%B in (%nameBranche8%) do (
		echo descargarBrancheOIM checkout branch %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper
		call svn checkout --username %usuario% --password  %password% %rutaBrancheServerOimNet%/branches/%%A/%%B/Mapfre.Common.Operation/DataHelper %rutaBrancheLocalOimNet%%%A-%%B
		)
	)
	   
   )
	pause
	cls;
	goto menu;
)

:generarBrancheReferidos
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 8 (
	echo generarBrancheReferidos creando branch %rutaBrancheServerReferidos%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerReferidos%/trunk %rutaBrancheServerReferidos%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheReferidos checkout branch %rutaBrancheServerReferidos%/branches/%moduloBranche%	  
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerReferidos%/branches/%moduloBranche% %rutaBrancheLocalReferidos%-%modulo%
	)
	pause
	cls;
	goto menu;
)

:generarBrancheReferidosBD
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 88 (
	echo generarBrancheReferidosBD creando branch %rutaBrancheServerReferidosBD%/branches/%moduloBranche%
	call svn copy --username %usuario% --password  %password% %rutaBrancheServerReferidosBD%/trunk %rutaBrancheServerReferidosBD%/branches/%moduloBranche% -m "Creating a private branch buildsoft"
	echo generarBrancheReferidosBD checkout branch %rutaBrancheServerReferidosBD%/branches/%moduloBranche%	  
	call svn checkout --username %usuario% --password  %password% %rutaBrancheServerReferidosBD%/branches/%moduloBranche% %rutaBrancheLocalReferidosBD%-%modulo%
	)
	pause
	cls;
	goto menu;
)

:eliminarBrancheMytron
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 5 (
	echo eliminarBrancheMytron creado branch %rutaBrancheServerMytron%/branches/%modulo%
	call svn delete  --username %usuario% --password  %password% %rutaBrancheServerMytron%/branches/%modulo% -m "Eliminar a private branch buildsoft"
	echo eliminarBrancheMytron carpeta local %rutaBrancheLocalMytron%-%modulolocal%\
    call rd/s/q %rutaBrancheLocalMytron%-%modulolocal%
	)
	pause
	cls;
	goto menu;
)

rem  exportarDesdeSvn  ya no es necesario 
:exportarDesdeSvn 
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
if %opcionMenu% equ xx (
	if %modulo% equ ninguno (
			echo Debe seleccionar una opcion valida
		) else (
			 REM if %modulo% equ seaceSelBuscardorPublicoNew.jmx (
			 rem echo Procesando en  D:\SVN_MAPFRE\Mytron-branche-%modulo%			
			 rem	echo Eliminando en D:\SVN_MAPFRE\Mytron-branche-%modulo%........
			 rem	call rd/s/q D:\SVN_MAPFRE\Mytron-branche-%modulo%\
			 rem	echo upgrade en D:\SVN_MAPFRE\Mytron-branche-%modulo%........
			 rem	CALL svn upgrade D:\SVN_MAPFRE\Mytron-branche-%modulo%
			 rem	echo export en D:\SVN_MAPFRE\Mytron-branche-%modulo%........
			 rem	CALL svn export D:\SVN_MAPFRE\Mytron-branche-%modulo% D:\SVN_MAPFRE\Mytron-branche-%modulo%\ --force
			 rem	set opcionMenu2=2
			 rem	echo Copiar archivo %opcionMenu2%  ..................
			 rem	goto copiarDesdeExportado;
			 REM )
	   )
		pause
		cls;
		goto menu;
	)
)
	
:copiarDesdeExportado 
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu2% equ 1 (
	  if %modulo% equ ninguno (
			echo Debe seleccionar una opcion valida
		) else (
			echo Eliminar archivos en pe.gob.mapfre.pwr.integration  src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.integration\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.integration\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.integration\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.integration src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.integration\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.integration\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.integration\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.integration\
					
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.be src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.be src..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.be\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.be\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.be.client src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be.client\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be.client\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be.client\target
				
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.be.client src..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.be.client\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be.client\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.be.client\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.be.client\
				
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.bp src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp\target		
					
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.bp src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.bp\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.bp\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.bp.client src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp.client\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp.client\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp.client\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.bp.client src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.bp.client\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp.client\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.bp.client\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.bp.client\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.ui.wd src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ui.wd\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ui.wd\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ui.wd\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.ui.wd src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.ui.wd\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ui.wd\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.ui.wd\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ui.wd\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.ws src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ws\src
			call del %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ws\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ws\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.ws src  ..................
			call XCOPY/E /I /C  %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.ws\src %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ws\src
			call XCOPY/E /I /C  %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.ws\pom.xml %rutaWsIntegradorMytron%\pe.gob.mapfre.pwr.rep.ws\
		)
		pause
		cls;
		goto menu;
	)
)

:copiarDesdeExportadoBACK 
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu2% equ 101 (
	  if %modulo% equ ninguno (
			echo Debe seleccionar una opcion valida
		) else (
			echo Eliminar archivos en pe.gob.mapfre.pwr.integration  src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.api\src
			call del %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.api\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.api\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.integration src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.api\src %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.api\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.api\pom.xml %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.api\
					
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.be src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.application\src
			call del %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.application\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.application\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.be src..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.application\src %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.application\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.application\pom.xml %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.application\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.be.client src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.domain\src
			call del %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.domain\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.domain\target
				
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.be.client src..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.domain\src %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.domain\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.domain\pom.xml %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.domain\
				
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.bp src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data\src
			call del %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data\target		
					
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.bp src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.infra.data\src %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.infra.data\pom.xml %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.bp.client src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data.webclient\src
			call del %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data.webclient\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data.webclient\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.bp.client src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.infra.data.webclient\src %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data.webclient\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.infra.data.webclient\pom.xml %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.data.webclient\
			
			echo Eliminar archivos en pe.gob.mapfre.pwr.rep.ui.wd src y target ..................
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.transversal.utilitario\src
			call del %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.transversal.utilitario\pom.xml
			call rd/s/q %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.transversal.utilitario\target
			
			echo Copiar archivos en pe.gob.mapfre.pwr.rep.ui.wd src ..................
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.infra.transversal.utilitario\src %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.transversal.utilitario\src
			call XCOPY/E /I /C %rutaBrancheLocalMytron%-%modulo%\pe.mapfre.mytron.core.infra.transversal.utilitario\pom.xml %rutaWsIntegradorMytron%\pe.mapfre.mytron.core.build\pe.mapfre.mytron.core.infra.transversal.utilitario\
			
		)
		pause
		cls;
		goto menu;
	)
)

:compilarAndDeployBrancheMytron
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 6 (
	echo COMPILAR AND DEPLOY BRANCHE MYTRON %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.install
	echo COMPILAR AND DEPLOY BRANCHE MYTRON MVN CLEAN.....
	call  mvn -f %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.install\pom.xml clean
	echo COMPILAR AND DEPLOY BRANCHE MYTRON MVN INSTALL....
    call mvn -f %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.install\pom.xml install
	echo COMPILAR AND DEPLOY BRANCHE MYTRON ELIMINANDO TEMP and EAR..
	
	echo Eliminar %rutaServerJbossMytron%\data ..................
	call rd/s/q %rutaServerJbossMytron%\data
	echo Eliminar %rutaServerJbossMytron%\log ..................
	call rd/s/q %rutaServerJbossMytron%\log
	echo Eliminar %rutaServerJbossMytron%\tmp ..................
	call rd/s/q %rutaServerJbossMytron%\tmp
	echo Eliminar %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear ..................
	call rd/s/q %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear 
	echo Eliminar %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app ..................
	call rd/s/q %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app 
	echo Eliminar %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear.deployed..................
	call rd/s/q %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear.deployed
	
	echo COMPILAR AND DEPLOY BRANCHE MYTRON COPIAR EAR..
	call COPY "%rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.app\target\pe.gob.mapfre.pwr.rep.app.ear" "%rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear"
	
	start  deploy_mytron_jboss.bat
	)
	pause
	cls;
	goto menu;
)

:compilarAndDeployBrancheBuildErp
if %opcionModulo% equ 0 ( 
	cls;
	goto menu;
) else (
	if %opcionMenu% equ 6 (
	echo COMPILAR AND DEPLOY BRANCHE MYTRON %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.install
	echo COMPILAR AND DEPLOY BRANCHE MYTRON MVN CLEAN.....
	call  mvn -f %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.install\pom.xml clean
	echo COMPILAR AND DEPLOY BRANCHE MYTRON MVN INSTALL....
    call mvn -f %rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.install\pom.xml install
	echo COMPILAR AND DEPLOY BRANCHE MYTRON ELIMINANDO TEMP and EAR..
	
	echo Eliminar %rutaServerJbossMytron%\data ..................
	call rd/s/q %rutaServerJbossMytron%\data
	echo Eliminar %rutaServerJbossMytron%\log ..................
	call rd/s/q %rutaServerJbossMytron%\log
	echo Eliminar %rutaServerJbossMytron%\tmp ..................
	call rd/s/q %rutaServerJbossMytron%\tmp
	echo Eliminar %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear ..................
	call rd/s/q %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear 
	echo Eliminar %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app ..................
	call rd/s/q %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app 
	echo Eliminar %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear.deployed..................
	call rd/s/q %rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear.deployed
	
	echo COMPILAR AND DEPLOY BRANCHE MYTRON COPIAR EAR..
	call COPY "%rutaBrancheLocalMytron%-%modulo%\pe.gob.mapfre.pwr.rep.app\target\pe.gob.mapfre.pwr.rep.app.ear" "%rutaServerJbossMytron%\deployments\pe.gob.mapfre.pwr.rep.app.ear"
	
	start  deploy_mytron_jboss.bat
	)
	pause
	cls;
	goto menu;
)

:salir
echo Gracias....
pause
