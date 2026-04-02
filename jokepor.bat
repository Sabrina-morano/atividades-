@echo off
title jogo de joke-por
color 0d
set vitorias=0
set derrotas=0
set empates=0
:inicio
cls
echo.
echo =========☻=☻============
echo  Jogo de joken-po
echo =========☻=☻=============
echo.
set /p nome=digite seu nome: 

:menu
cls
echo.
echo ======================
echo bem vindo(a) %nome%
echo =======================
echo [1] Jogar
echo [2] regras
echo [3] sair
echo.
set /p op=escolha uma opcao: 

if /i %op% equ 1 (goto:jogo)
if /i %op% equ 2 (goto:regras)
if /i %op% equ 3 (goto:exit) else (
echo.
echo ===========♥♥==============
echo  OPCAO INVALIDA
echo ===========♥♥==============
echo.
goto:inicio
)
:regras
cls
echo.
echo Pedra:
echo     empata com pedra; ganha de tesoura e lagarto; perde de papel e spock
echo papel:
echo     empata com papel; ganha de pedra e spock; perde de tesoura e lagarto
echo tesoura:
echo       empata com tesoura; ganha de lagarto e papel; perde de pedra e spock
echo lagarto:
echo       empata com lagarto; ganha de papel e spock; perde de pedra e tesoura;
echo spock:
echo     empata com spock; ganha de pedra  e tesoura; perde de lagarto e papel
echo.
set /p resp= deseja volta para o  menu? [s] [n]:
if /i %resp% equ s (goto:menu) else (goto:regras)

:jogo
cls 
echo.
echo ===========♥♥===================
echo ola,%nome%
echo ===========♥♥==================
echo.
echo ============================
echo Placar
echo Vitorias: %vitorias%
echo Derrotas: %derrotas%
echo Empates: %empates%
echo ============================
echo.
echo escolha uma das opcao %nome%
echo [1] pedra
echo [2] papel
echo [3] tesoura
echo [4] lagarto
echo [5] spock
echo.
set /p jogador=Digite sua escolha: 

if %jogador%==6 exit

set /a pc=%random% %%5 +1

echo.
echo Computador escolheu: %pc%
echo.

if %jogador%==%pc% (
echo Empate!
set /a empates+=1
goto fim
)

if %jogador%==1 if %pc%==3 goto venceu
if %jogador%==1 if %pc%==4 goto venceu
if %jogador%==2 if %pc%==1 goto venceu
if %jogador%==2 if %pc%==5 goto venceu
if %jogador%==3 if %pc%==2 goto venceu
if %jogador%==3 if %pc%==4 goto venceu
if %jogador%==4 if %pc%==2 goto venceu
if %jogador%==4 if %pc%==5 goto venceu
if %jogador%==5 if %pc%==1 goto venceu
if %jogador%==5 if %pc%==3 goto venceu

echo Voce perdeu!
set /a derrotas+=1
goto fim

:venceu
echo Voce venceu!
set /a vitorias+=1
:fim
echo.
set /p resp=deseja continuar jogando?[s][n]:
if /i %resp% == s (goto:jogo) else (goto:inicio)

goto fim

:erro
echo Opcao invalida!
pause
goto inicio

