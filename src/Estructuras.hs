module Estructuras where
import PdePreludat


-- Listas
analizarLista [] = "es vacia"
analizarLista [x] = "un elemento cualquiera"
analizarLista [1,2,3] = "del 1 al 3"
analizarLista [1,x,3] = "1 y 3 y algo en el medio"
analizarLista (cabeza:cola) = "separo la lista en dos"
--analizarLista lista = "lista comun"

funcioncabeza (cabeza:cola) = cabeza
funcioncola (cabeza:cola) = cola
funcionsegundo (cabeza:cola) = funcioncabeza cola
funciontercero (cabeza:cola) = funcioncabeza (funcioncola cola)


--Tuplas

sumaRara (0, seg) = 0
sumaRara (pri, "hola") = 5000
sumaRara (pri, seg) = pri + length seg
--sumaRara tupla = fst tupla + length (snd tupla)

siguiente (eldeadelante, eldeatras) = (eldeadelante + 1, eldeatras ++ eldeatras)

f (x,y,z) = 3

--type String = [Char]
--type Persona = (String, Number, [(String,String,Bool)])

--edad::Persona -> Number
--edad (_, ed, _) = ed

amigos (_, _, ams) = ams
nombreAmigo ( nombre, lugar, tipo) = nombre
tipoRel ( nombre, lugar, tipo) = tipo

festejarCumple :: Persona -> Number
festejarCumple alguien = length (relaciones alguien)* 100


-- Definición de tipos de datos
data Persona = UnaPersona { 
    nombre:: String,
    edad::Number,
    relaciones:: [Amistad]
} deriving Show

data Amistad = UnaAmistad {
    apodo:: String,
    origen:: String,
    tipo:: Bool
} deriving Show

juan,ana::Persona
juan = UnaPersona "juan Perez" 34 [UnaAmistad "cacho" "trabajo" True ,UnaAmistad "tito" "facu" True]
ana = UnaPersona "ana" 45 [UnaAmistad "tita" "trabajo" False]

hijo :: Persona -> Persona -> Persona
hijo (UnaPersona n1 _ r1) (UnaPersona n2 _ r2) = UnaPersona ( n1 ++ " r. " ++ n2)  0  (take 2 r1 ++ r2 )
--hijo alguien otro = UnaPersona ( nombre alguien ++ " r. " ++ nombre otro)  0  (take 2 (relaciones alguien) ++ relaciones otro )
