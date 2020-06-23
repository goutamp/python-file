import os 
import os.path


def create_file_():
     
   path_ = os.getcwd()
   path_update_ = path_ + "/assets.yml"

   print(path_update_)
   if os.path.isfile(path_update_):
      print(" File found")
      f = open("assets.yml" , "a")
      print("Old file has been found and it is opened as append mode")
      print("......................")
      print("Closing the file")
      f.close()
   else:
      f = open("assets.yml", "w")
      print(" A new assets file has been created")
      print("......................")
      f.close()
      print("closing the file")


create_file_()    


