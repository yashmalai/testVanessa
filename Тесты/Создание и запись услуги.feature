﻿#language: ru

@tree

Функционал: Создание, заполнение и запись услуг

Как Администратор я хочу
создать, заполнить и записать услугу 
чтобы проверить работу иерархии   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание, заполнение и запись услуг

И В командном интерфейсе я выбираю 'Закупки' 'Товар'
Тогда открылось окно 'Товар (создание)'
И я нажимаю кнопку выбора у поля с именем "Родитель"
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Наименование' |
	| 'Услуги'       |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Товар (создание) *'
И в поле с именем 'Наименование' я ввожу текст 'Доставка еды'
И я меняю значение переключателя с именем 'Вид' на 'Услуга'
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна 'Товар (создание) *' в течение 20 секунд


