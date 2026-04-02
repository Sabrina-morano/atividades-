dim audio,resp,nomes(20),n , name , perdeu , ganhou
call carregar_voz
function carregar_voz
    set audio=createobject("SAPI.SPVOICE")
        audio.volume=100
        audio.rate = 2
        call carregar_nomes    
end function  

function carregar_nomes()
    nomes(1) = "gato" 
    nomes(2) =  "cachorro"
    nomes(3) = "arroz" 
    nomes(4) = "feijão"
    nomes(5) = "lamparina"
    nomes(6) = "paralelepipado"
    nomes(7) = "abacaxi"
    nomes(8) = "escola"
    nomes(9) = "programas"
    nomes(10)  = "Inconstitucional"
    nomes(11) = "Extraordinário"
    nomes(12) = "Anticonstitucionalmente"
    nomes(13) = "Desproporcionalidade"
    nomes(14) =  "bicicleta"
    nomes(15) = "Imprescindível"
    nomes(16) = "Surpreendente"
    nomes(17) = "Aperfeiçoamento"
    nomes(18) = "Ascensão"
    nomes(19) = "Compartilhamento"
    'nivel impossivel so para brincar
    nomes(20) = "Pneumoultramicroscopicossilicovulcanoconiótico"
    
    for n=1 to 20 step 1
        audio.speak(nomes(n))  
         resp= msgbox("desejar repetir a palavra?" & vbnewline, vbquestion+vbyesno,"")
            if resp = vbyes then       
            end if
         resp = msgbox("desejar pular a palavra?" & vbnewline, vbquestion+vbyesno,"")
         if resp = vbno then
            name = inputbox("digite a palavra:")        
        end if                        
        if name = nomes(n) then
           ganhou = ganhou + 1 
        else
            perdeu = perdeu + 1   
        end if      
    next
    resp = msgbox("erros: " &perdeu&"" + vbnewline &_
                  "acertos: " &ganhou&"" + vbnewline &_ 
                "desejar reiniciar o jogo?", vbquestion+vbyesno, "")
                if resp = vbyes then
                    call carregar_nomes
                else
                    wscript.quit
                end if                  
end function
 
