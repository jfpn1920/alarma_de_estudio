Algoritmo alarma_de_estudio
	Definir opcion, totalEstudios Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Definir siguienteID Como Entero
	Dimension id[100]
	Dimension materia[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension duracion[100]
	Dimension tema[100]
	Dimension prioridad[100]
	Dimension estado[100]
	totalEstudios <- 0
	siguienteID <- 1
	//--------------------------------------//
	//--|menu_principal_alarma_de_estudio|--//
	//--------------------------------------//
	Repetir
		Escribir "menu principal alarma de estudio"
		Escribir "1) registrar estudio"
		Escribir "2) editar estudio"
		Escribir "3) eliminar estudio"
		Escribir "4) buscar estudio"
		Escribir "5) listar estudios"
		Escribir "6) ver detalles del estudio"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_estudio|--//
			//-----------------------//
			1:
				Escribir "registrar alarma de estudio"
				id[totalEstudios + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalEstudios + 1]
				Escribir "ingrese la materia:"
				Leer materia[totalEstudios + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalEstudios + 1]
				Escribir "ingrese la hora:"
				Leer hora[totalEstudios + 1]
				Escribir "ingrese la duración:"
				Leer duracion[totalEstudios + 1]
				Escribir "ingrese el tema:"
				Leer tema[totalEstudios + 1]
				Escribir "ingrese la prioridad:"
				Leer prioridad[totalEstudios + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalEstudios + 1]
				totalEstudios <- totalEstudios + 1				
				Escribir "estudio registrado correctamente."
			//--------------------//
			//--|editar_estudio|--//
			//--------------------//
			2:
				Escribir "editar estudio"
				Si totalEstudios = 0 Entonces
					Escribir "no hay estudios registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalEstudios Hacer
						Escribir id[i], " | ", materia[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", tema[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del estudio:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva materia:"
							Leer materia[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora:"
							Leer hora[i]
							Escribir "ingrese la nueva duración:"
							Leer duracion[i]
							Escribir "ingrese el nuevo tema:"
							Leer tema[i]
							Escribir "ingrese la nueva prioridad:"
							Leer prioridad[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "estudio editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudio con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_estudio|--//
			//----------------------//
			3:
				Escribir "eliminar estudio"
				Si totalEstudios = 0 Entonces
					Escribir "no hay estudios registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalEstudios Hacer
						Escribir id[i], " | ", materia[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", tema[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del estudio:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalEstudios Entonces
								Para j <- i Hasta totalEstudios - 1 Hacer
									id[j] <- id[j + 1]
									materia[j] <- materia[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									duracion[j] <- duracion[j + 1]
									tema[j] <- tema[j + 1]
									prioridad[j] <- prioridad[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalEstudios <- totalEstudios - 1
							Escribir "estudio eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudio con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_estudio|--//
			//--------------------//
			4:
				Escribir "buscar estudio"
				Si totalEstudios = 0 Entonces
					Escribir "no hay estudios registrados."
				SiNo
					Escribir "ingrese el id del estudio:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", materia[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", tema[i], " | ", prioridad[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudio con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_estudios|--//
			//---------------------//
			5:
				Escribir "listar estudios"
				Si totalEstudios = 0 Entonces
					Escribir "no hay estudios registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalEstudios Hacer
						Escribir id[i], " | ", materia[i], " | ", fecha[i], " | ", hora[i], " | ", duracion[i], " | ", tema[i], " | ", prioridad[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------//
			//--|ver_detalles_estudio|--//
			//--------------------------//
			6:
				Escribir "ver detalles del estudio"
				Si totalEstudios = 0 Entonces
					Escribir "no hay estudios registrados."
				SiNo
					Escribir "ingrese el id del estudio:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudios Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del estudio"
							Escribir "id: ", id[i]
							Escribir "materia: ", materia[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "duración: ", duracion[i]
							Escribir "tema: ", tema[i]
							Escribir "prioridad: ", prioridad[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudio con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|salir_menu_principal|--//
			//--------------------------//
			7:
				Escribir "gracias por utilizar la alarma de estudio."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo