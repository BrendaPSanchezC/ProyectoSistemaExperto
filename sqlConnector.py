import mysql.connector

#conexión con la base de datos
acceso_bd = {"host" : "localhost",
            "user" : "root",
            "password" : "Huevos12",
            "database" : "Flores",
            "port" : "3306"
            }

#clase para trabajar con bases de datos
class BaseDatos:
    def __init__(self, **kwargs):
        self.conector= mysql.connector.connect(**kwargs)
        
    def consulta(self, sql):
        self.cursor = self.conector.cursor()
        self.cursor.execute(sql)
        return self.cursor
    
    def insertarRamo(self, ramo, evento, temporada, tema, horario, explicacion):
        self.cursor = self.conector.cursor()
        self.cursor.execute("INSERT INTO flores (ramo, evento, temporada, tema, horario, explicacion) VALUES ( '"+ramo+"', '"+evento+"', '"+temporada+"', '"+tema+"', '"+horario+"', '"+explicacion+"');")
        self.conector.commit()
        
    
    def buscarRamo(self, evento, temporada, horario, tema):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT ramo, explicacion FROM flores WHERE "+
                            "evento LIKE '"+evento+
                            "' AND temporada LIKE '"+temporada+
                            "' AND horario LIKE '"+horario+
                            "' AND tema LIKE '"+tema+"'")
        return self.cursor
    
    def buscarRamo2(self, evento, temporada, horario, tema):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT ramo, explicacion FROM flores WHERE "+
                            "evento LIKE '"+evento+
                            "' AND temporada LIKE '"+temporada+
                            "' AND horario LIKE '"+horario+
                            "' AND tema LIKE '"+tema+"'")
        return self.cursor
    
    def buscarNombre(self, ramo):
        a=False
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT ramo FROM flores WHERE "+
                            "ramo LIKE '"+ramo+"'")
        if(self.cursor.fetchall().__len__()>0):
            a = True
        return a
    
    def getFlores(self):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT * FROM flores")
        array = []
        arraya = []
        for ramo, evento, temporada, tema, horario, explicacion in self.cursor:
            arraya = [ramo.__str__(), evento.__str__(), temporada.__str__(), tema.__str__(), horario.__str__(), explicacion.__str__()]
            array.append(arraya)
        array = self.tratarArray2(array)
        return array
    
    def getEvento(self):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT * FROM Eventos")
        array = []
        for evento in self.cursor:
            array.append(evento.__str__())
        array = self.tratarArray(array)
        return array
    
    def getTemporada(self):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT * FROM Temporada")
        array = []
        for temporada in self.cursor:
            array.append(temporada.__str__())
        array = self.tratarArray(array)
        return array
    
    def getTema(self):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT * FROM Tema")
        array = []
        for tema in self.cursor:
            array.append(tema.__str__())
        array = self.tratarArray(array)
        return array

    
    def getHorario(self):
        self.cursor = self.conector.cursor()
        self.cursor.execute("SELECT * FROM Horario")
        array = []
        for horario in self.cursor:
            array.append(horario.__str__())
        array = self.tratarArray(array)
        return array
    
    def tratarArray(self, Array):
        cars = ["{", "}", "(", ")", "'", ","]
        ArrayTratado = []
        for item in Array:
            str = item
            for char in cars:
                #print("tratando " + str + " con "+char)
                str = str.replace(char,"")
            ArrayTratado.append(str)

        return ArrayTratado
    
    def tratarArray2(self, Array):
        cars = ["{", "}", "(", ")", "'", ","]
        ArrayTratado = []
        for array in Array:
            a = array
            ArrayTratado2 = []
            for item in a:
                str = item
                for char in cars:
                    #print("tratando " + str + " con "+char)
                    str = str.replace(char,"")
                ArrayTratado2.append(str)
            ArrayTratado.append(ArrayTratado2)
            

        return ArrayTratado
    
    def insertarEvento(self, evento):
        self.cursor = self.conector.cursor()
        self.cursor.execute("INSERT INTO Eventos (evento) VALUES ( '"+evento+"');")
        self.conector.commit()
    
    def insertarTemporada(self, temporada):
        self.cursor = self.conector.cursor()
        self.cursor.execute("INSERT INTO Temporada (temporada) VALUES ( '"+temporada+"');")
        self.conector.commit()
    
    def insertarTema(self, tema):
        self.cursor = self.conector.cursor()
        self.cursor.execute("INSERT INTO Tema (tema) VALUES ( '"+tema+"');")
        self.conector.commit()
    
    def insertarHorario(self, horario):
        self.cursor = self.conector.cursor()
        self.cursor.execute("INSERT INTO Horario (horario) VALUES ( '"+horario+"');")
        self.conector.commit()
    
