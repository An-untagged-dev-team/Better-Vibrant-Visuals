en_us = "Welcome to Better Vibrant Visuals"
fr_fr = "Bienvenu sur Better Vibrant Visuals"
close_warning = "This installer will close in 5 seconds"
pack_name = "Better Vibrant Visuals" # the mod's name
lang= input("What is you country ? 1) france or 2) england ?        :")

if lang == ("1"): # si le français est sélectionné
  print (fr_fr)
  print("choisissez votre opération")
  op = input("1. install 2. do nothing                        :")
  if op == ("install"):
   print ("done")
   print("Thanks for download" +" "+str(pack_name))
  else:
   print ("ok")
   
elif lang == ("2"): # sinon si c'est l'anglais
  print (en_us)
  print ("sellect your operation")
  op_en = input("1. install 2. do nothing                     :")
  if op_en == ("install"):
   print("done")
   print("Thanks for download" +" "+str(pack_name))
  else:
   print ('ok') 

input("press 'enter' for exit")

