﻿#language: ru

@tree

Функционал: функциолнальность документа заказ

Как Администратор я хочу
протестировать работу документа Заказ 
чтобы проверить его функциональность

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: функциолнальность документа заказ

* открытие документа 
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
		
* заполнение шапки
	Когда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Шлюзовая ООО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
		
* заполнение табличной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000006' | 'Ботинки'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
	И я перехожу к следующему реквизиту

* проверка заполнения суммы
	Тогда таблица "Товары" стала равной:
		| 'Товар'   | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Ботинки' | '2 100,00' | '10'         | '21 000,00' |
		
* запись документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'	
	И я запоминаю значение поля "Номер" как "$Номер$"
		
* проведение документа
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
		
* проверка записи документа
	Тогда таблица "Список" содержит строки:
		| 'Номер'   |
		| '$Номер$' |

	
		
