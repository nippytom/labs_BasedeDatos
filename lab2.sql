

CREATE TABLE Estaciones(
    id_estacion varchar(4) NOT NULL,
    nombre varchar(30) NOT NULL,
    fecha_inauguracion date,
    linea varchar(3) NOT NULL,
    FOREIGN KEY (linea) REFERENCES Lineas(linea),
    color_estacion varchar(5),
    PRIMARY KEY (id_estacion)
);

create table Lineas (
	linea VARCHAR(3) NOT NULL,
	PRIMARY KEY(linea),
	color VARCHAR(20) NOT NULL,
	año date NOT NULL
);
create table Codigos (
	id_codigo VARCHAR(10) NOT NULL,
	PRIMARY KEY(id_codigo),
	descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE Reportadores (
    rut VARCHAR(10) NOT NULL,
    PRIMARY KEY(rut),
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    sueldo INT NOT NULL
);
CREATE TABLE Reporte(
    id_reporte SERIAL NOT NULL,
    PRIMARY KEY(id_reporte),
    id_crea VARCHAR(10) NOT NULL,
    FOREIGN KEY(id_crea) REFERENCES Reportadores(rut) ,
    fecha_hora TIMESTAMP NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    FOREIGN KEY(codigo) REFERENCES Codigos (id_codigo),
    comentario VARCHAR(255) NOT NULL
);
CREATE TABLE reporte_estaciones(
    id_reporte_estaciones SERIAL NOT NULL,
    PRIMARY KEY(id_reporte_estaciones),
    id_reporte int NOT NULL,
    FOREIGN KEY(id_reporte) REFERENCES Reporte(id_reporte),
    id_estacion_afectada VARCHAR(4) NOT NULL,
    FOREIGN KEY(id_estacion_afectada) REFERENCES Estaciones(id_estacion) ,
    fecha_hora timestamp NOT NULL,
    id_crea VARCHAR(10) NOT NULL,
    FOREIGN KEY(id_crea) REFERENCES Reportadores(rut)
);

INSERT INTO Lineas (linea,color,año) VALUES
  ('1','Rojo','1975-09-15'),
  ('2','Amarillo','1978-03-31'),
  ('3','Cafe','2019-01-22'),
  ('4','Azul','2005-11-10'),
  ('4A','Celeste','2006-05-16'),
  ('5','Verde','1997-04-5'),
  ('6','Morado','2017-11-2');

INSERT INTO Estaciones(id_estacion,nombre,fecha_inauguracion,linea,color_estacion) VALUES
('101', 'San Pablo', '1975/09/15', '1', NULL),
('102', 'Neptuno', '1975/09/15', '1', NULL),
('103', 'Pajaritos', '1975/09/15', '1', NULL),
('104', 'Las Rejas', '1975/09/15', '1', NULL),
('105', 'Ecuador', '1975/09/15', '1', NULL),
('106', 'San Alberto Hurtado', '1975/09/15', '1', NULL),
('107', 'Universidad de Santiago', '1975/09/15', '1', NULL),
('108', 'Estación Central', '1975/09/15', '1', NULL),
('109', 'Unión Latinoamericana', '1975/09/15', '1', NULL),
('110', 'República', '1975/09/15', '1', NULL),
('111', 'Los Héroes', '1975/09/15', '1', NULL),
('112', 'La Moneda', '1975/09/15', '1', NULL),
('113', 'Universidad de Chile', '1977/03/31', '1', NULL),
('114', 'Santa Lucía', '1977/03/31', '1', NULL),
('115', 'Universidad Católica', '1977/03/31', '1', NULL),
('116', 'Baquedano', '1977/03/31', '1', NULL),
('117', 'Salvador', '1977/03/31', '1', NULL),
('118', 'Manuel Montt', '1980/08/22', '1', NULL),
('119', 'Pedro de Valdivia', '1980/08/22', '1', NULL),
('120', 'Los Leones', '1980/08/22', '1', NULL),
('121', 'Tobalaba', '1980/08/22', '1', NULL),
('122', 'El Golf', '1980/08/22', '1', NULL),
('123', 'Alcántara', '1980/08/22', '1', NULL),
('124', 'Escuela Militar', '1980/08/22', '1', NULL),
('125', 'Manquehue', '2010/01/07', '1', NULL),
('126', 'Hernando de Magallanes', '2010/01/07', '1', NULL),
('127', 'Los Dominicos', '2010/01/07', '1', NULL),
('201', 'Vespucio Norte', '2006/12/21', '2', 'Comun'),
('202', 'Zapadores', '2006/12/21', '2', 'Comun'),
('203', 'Dorsal', '2006/12/21', '2', 'Rojo'),
('204', 'Einstein', '2005/11/25', '2', 'Verde'),
('205', 'Cementerios', '2004/12/22', '2', 'Rojo'),
('206', 'Cerro Blanco', '2004/09/08', '2', 'Verde'),
('207', 'Patronato', '2004/09/08', '2', 'Rojo'),
('208', 'Puente Cal y Canto', '1987/09/15', '2', 'Comun'),
('209', 'Santa Ana', '1986/07/15', '2', 'Comun'),
('210', 'Los Héroes', '1978/03/31', '2', 'Comun'),
('211', 'Toesca', '1978/03/31', '2', 'Verde'),
('212','Parque OHiggins', '1978/03/31', '2', 'Rojo'),
('213', 'Rondizzoni', '1978/03/31', '2', 'Verde'),
('214', 'Franklin', '1978/03/31', '2', 'Comun'),
('215', 'El Llano', '1978/12/21', '2', 'Rojo'),
('216', 'San Miguel', '1978/12/21', '2', 'Verde'),
('217', 'Lo Vial', '1978/12/21', '2', 'Rojo'),
('218', 'Departamental', '1978/12/21', '2', 'Verde'),
('219', 'Ciudad del Niño', '1978/12/21', '2', 'Rojo'),
('220', 'Lo Ovalle', '1978/12/21', '2', 'Comun'),
('221', 'El Parrón', '2004/12/22', '2', 'Verde'),
('222', 'La Cisterna', '2004/12/22', '2', 'Comun'),
('223', 'El Bosque', '2023/10/01', '2', NULL),
('224', 'Observatorio', '2023/10/01', '2', NULL),
('225', 'Copa Lo Martínez', '2023/10/01', '2', NULL),
('226', 'Hospital El Pino', '2023/10/01', '2', NULL),
('301', 'Plaza Quilicura', '2023/09/25', '3', NULL),
('302', 'Lo Cruzat', '2023/09/25', '3', NULL),
('303', 'Ferrocarril', '2023/09/25', '3', NULL),
('304', 'Los Libertadores', '2019/01/22', '3', NULL),
('305', 'Cardenal Caro', '2019/01/22', '3', NULL),
('306', 'Vivaceta', '2019/01/22', '3', NULL),
('307', 'Conchalí', '2019/01/22', '3', NULL),
('308', 'Plaza Chacabuco', '2019/01/22', '3', NULL),
('309', 'Hospitales', '2019/01/22', '3', NULL),
('310', 'Puente Cal y Canto', '2019/01/22', '3', NULL),
('311', 'Plaza de Armas', '2019/01/22', '3', NULL),
('312', 'Universidad de Chile', '2019/01/22', '3', NULL),
('313', 'Parque Almagro', '2019/01/22', '3', NULL),
('314', 'Matta', '2019/01/22', '3', NULL),
('315', 'Irarrázaval', '2019/01/22', '3', NULL),
('316', 'Monseñor Eyzaguirre', '2019/01/22', '3', NULL),
('317', 'Ñuñoa', '2019/01/22', '3', NULL),
('318', 'Chile España', '2019/01/22', '3', NULL),
('319', 'Villa Frei', '2019/01/22', '3', NULL),
('320', 'Plaza Egaña', '2019/01/22', '3', NULL),
('321', 'Fernando Castillo Velasco', '2019/01/22', '3', NULL),
('401', 'Tobalaba', '2005/11/30', '4', 'Comun'),
('402', 'Cristóbal Colón', '2005/11/30', '4', 'Verde'),
('403', 'Francisco Bilbao', '2005/11/30', '4', 'Comun'),
('404', 'Príncipe de Gales', '2005/11/30', '4', 'Rojo'),
('405', 'Simón Bolívar', '2005/11/30', '4', 'Verde'),
('406', 'Plaza Egaña', '2005/11/30', '4', 'Comun'),
('407', 'Los Orientales', '2005/11/30', '4', 'Rojo'),
('408', 'Grecia', '2005/11/30', '4', 'Verde'),
('409', 'Los Presidentes', '2006/03/02', '4', 'Rojo'),
('410', 'Quilín', '2006/03/02', '4', 'Verde'),
('411', 'Las Torres', '2006/03/02', '4', 'Rojo'),
('412', 'Macul', '2006/03/02', '4', 'Comun'),
('413', 'Vicuña Mackenna', '2006/03/02', '4', 'Comun'),
('414', 'Vicente Valdés', '2005/11/30', '4', 'Comun'),
('415', 'Rojas Magallanes', '2005/11/30', '4', 'Verde'),
('416', 'Trinidad', '2005/11/30', '4', 'Rojo'),
('417', 'San José de la Estrella', '2009/11/05', '4', 'Verde'),
('418', 'Los Quillayes', '2005/11/30', '4', 'Rojo'),
('419', 'Elisa Correa', '2005/11/30', '4', 'Comun'),
('420', 'Hospital Sótero del Río', '2005/11/30', '4', 'Comun'),
('421', 'Protectora de la Infancia', '2005/11/30', '4', 'Verde'),
('422', 'Las Mercedes', '2005/11/30', '4', 'Rojo'),
('423', 'Plaza de Puente Alto', '2005/11/30', '4', 'Comun'),
('491', 'La Cisterna', '2006/08/16', '4A', NULL),
('492', 'San Ramón', '2006/08/16', '4A', NULL),
('493', 'Santa Rosa', '2006/08/16', '4A', NULL),
('494', 'La Granja', '2006/08/16', '4A', NULL),
('495', 'Santa Julia', '2006/08/16', '4A', NULL),
('496', 'Vicuña Mackenna', '2006/08/16', '4A', NULL),
('501', 'Plaza de Maipú', '2011/02/03', '5', 'Comun'),
('502', 'Santiago Bueras', '2011/02/03', '5', 'Rojo'),
('503', 'Del Sol', '2011/02/03', '5', 'Verde'),
('504', 'Monte Tabor', '2011/02/03', '5', 'Rojo'),
('505', 'Las Parcelas', '2011/02/03', '5', 'Verde'),
('506', 'Laguna Sur', '2011/02/03', '5', 'Comun'),
('507', 'Barrancas', '2011/02/03', '5', 'Rojo'),
('508', 'Pudahuel', '2010/01/12', '5', 'Comun'),
('509', 'San Pablo', '2010/01/12', '5', 'Comun'),
('510', 'Lo Prado', '2010/01/12', '5', 'Verde'),
('511', 'Blanqueado', '2010/01/12', '5', 'Rojo'),
('512', 'Gruta de Lourdes', '2010/01/12', '5', 'Verde'),
('513', 'Quinta Normal', '2004/03/31', '5', 'Rojo'),
('514', 'Cumming', '2004/03/31', '5', 'Verde'),
('515', 'Santa Ana', '2000/03/04', '5', 'Comun'),
('516', 'Plaza de Armas', '2000/03/04', '5', 'Comun'),
('517', 'Bellas Artes', '2000/03/04', '5', 'Comun'),
('518', 'Baquedano', '1997/04/05', '5', 'Comun'),
('519', 'Parque Bustamante', '1997/04/05', '5', 'Rojo'),
('520', 'Santa Isabel', '1997/04/05', '5', 'Verde'),
('521', 'Irarrázaval', '1997/04/05', '5', 'Comun'),
('522', 'Ñuble', '1997/04/05', '5', 'Comun'),
('523', 'Rodrigo de Araya', '1997/04/05', '5', 'Rojo'),
('524', 'Carlos Valdovinos', '1997/04/05', '5', 'Verde'),
('525', 'Camino Agrícola', '1997/04/05', '5', 'Rojo'),
('526', 'San Joaquín', '1997/04/05', '5', 'Comun'),
('527', 'Pedrero', '1997/04/05', '5', 'Verde'),
('528', 'Mirador', '1997/04/05', '5', 'Rojo'),
('529', 'Bellavista de La Florida', '1997/04/05', '5', 'Comun'),
('530', 'Vicente Valdés', '2005/11/30', '5', 'Comun'),
('601', 'Cerrillos', '2017/11/02', '6', NULL),
('602', 'Lo Valledor', '2017/11/02', '6', NULL),
('603', 'Presidente Pedro Aguirre Cerda', '2017/11/02', '6', NULL),
('604', 'Franklin', '2017/11/02', '6', NULL),
('605', 'Bío Bío', '2017/11/02', '6', NULL),
('606', 'Ñuble', '2017/11/02', '6', NULL),
('607', 'Estadio Nacional', '2017/11/02', '6', NULL),
('608', 'Ñuñoa', '2017/11/02', '6', NULL),
('609', 'Inés de Suárez', '2017/11/02', '6', NULL),
('610', 'Los Leones', '2017/11/02', '6', NULL);



INSERT INTO reportadores(rut,nombres,apellidos,sueldo) 
VALUES('18.020.677','Manuel','Alba','0');

INSERT INTO reportadores(rut,nombres,apellidos,sueldo) 
VALUES('19.933.118','Brian','Bastias','100');


INSERT INTO codigos (id_codigo,descripcion) VALUES ('96','Un repentino corte de luz dejó a los trenes en un estado de caos total.
	La confusión se apoderó de todos, y la estación se sumió en el caos.
	La falta de energía dejó a los trenes pirilocos, causando retrasos y desconcierto entre los viajeros.');

INSERT INTO reporte ( id_crea,fecha_hora, codigo, comentario) values ('18.020.677','2023/11/07 20:33:11','96','Un repentino corte de luz dejó a los trenes en un
	estado de caos total. La confusión se apoderó de todos, y la estación se sumió en el caos. 
	La falta de energía dejó a los trenes pirilocos, causando retrasos y desconcierto entre los viajeros.');


INSERT INTO reporte_estaciones (id_reporte, id_estacion_afectada, fecha_hora, id_crea)
SELECT '3', generate_series, '2023-11-07 20:33:11', '19.933.118'
FROM generate_series(101, 127);


DELETE FROM Estaciones WHERE Estaciones.linea = '4';

DELETE FROM Lineas WHERE Lineas.linea = '4';


SELECT Estaciones.nombre FROM (SELECT MAX(COUNT) FROM (SELECT COUNT(*) FROM reporte_estaciones) as t1)
as t2 JOIN (SELECT id_estacion_afectada, COUNT(*) FROM reporte_estaciones GROUP BY id_estacion_afectada)
as t3 ON t3.COUNT = t2.MAX JOIN Estaciones ON Estaciones.id_estacion = t3.id_estacion_afectada GROUP BY Estaciones.nombre;



