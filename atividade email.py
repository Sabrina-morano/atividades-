import pyautogui as py
import time as t

# 1 - abrir o Chrome
py.press('win')
t.sleep(2)

py.write('chrome')
t.sleep(2)

py.press('enter')
t.sleep(5)

# 2 - abrir guia anônima
py.hotkey('ctrl','shift','n')
t.sleep(3)

# 3 - acessar outlook
py.write('https://outlook.office.com/mail/inbox')
py.press('enter')
t.sleep(10)


# 5 - digitar email
py.write('lima.ste@outlook.com', interval=0.05)
py.press('enter')
t.sleep(10)

# 6 - senha
py.write('ste2020@', interval=0.05)
py.press('enter')
t.sleep(10)

# 7 - novo email
py.press('n')
t.sleep(5)

# 8 - destinatário
py.write('destinatario@email.com')
py.press('tab')
t.sleep(5)

# 9 - assunto
py.write('"Projeto de Automacao Python"')
py.press('tab')
t.sleep(5)

# 10 - corpo do email
py.write("Oi professor conseguimos, Alunos Stephanye , Gabriel Henrique , Gabriela , Sabrina e Natan", interval=0.05)
t.sleep(5)



# clicar em enviar
py.click(800,700)  # botão enviar
t.sleep(5)

# fechar navegador
py.hotkey("alt","f4")








