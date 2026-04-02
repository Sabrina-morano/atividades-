@echo off
setlocal enabledelayedexpansion
title JOGO DE ADIVINHACAO
color 0B
mode con: cols=60 lines=25

:inicio
cls
echo ==================================================
echo                  JOGO DE ADIVINHACAO
echo ==================================================
echo.
set /p nome=Digite seu nome: 
cls

set /a numero=%random% %% 51
set tentativas=0
set max=5

echo ==================================================
echo  Seja bem-vindo(a), !nome!
echo ==================================================
echo.
echo  Tente adivinhar o numero entre 0 e 50
echo  Voce tem 5 tentativas
echo.

:jogo
set /a restantes=%max% - %tentativas%
echo --------------------------------------------------
echo !nome!, voce tem !restantes! tentativa(s).
echo --------------------------------------------------

set /p palpite=Digite seu numero: 

:: Validacao simples (aceita apenas numeros)
echo !palpite!| findstr /r "^[0-9][0-9]*$" >nul
if errorlevel 1 (
    echo.
    echo  Digite apenas numeros!
    timeout /t 2 >nul
    cls
    goto jogo
)

set /a tentativas+=1

if !palpite! EQU !numero! (
    cls
    echo ==================================================
    echo  PARABENS, !nome! VOCE ACERTOU!
    echo O numero era !numero!
    echo ==================================================
    goto fim
)

if !tentativas! GEQ !max! (
    cls
    echo ==================================================
    echo  QUE PENA, !nome! VOCE PERDEU!
    echo O numero era !numero!
    echo ==================================================
    goto fim
)

if !palpite! LSS !numero! (
    echo.
    echo  O numero eh MAIOR!
) else (
    echo.
    echo  O numero eh MENOR!
)

timeout /t 2 >nul
cls
goto jogo

:fim
echo.
pause
choice /m "Deseja jogar novamente?"
if errorlevel 2 exit
goto inicio