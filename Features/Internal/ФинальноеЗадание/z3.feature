﻿#language: ru

@tree

Функционал: Проверка документа "Продажа"
Как QA-Инженер я хочу
Проверить документ "Продажа" и его движения, печатные формы
чтобы убедиться в корректности отрабатывания функционала заложенного в документ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
*Создание номенклатуры 1 и 2 для теста
	И я удаляю все переменные
	И В командном интерфейсе я выбираю "Товарные запасы" "Товары"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И я запоминаю случайное число в диапазоне от "1000" до "250000" в переменную "ИмяТестНоменклатуры"
	И в поле с именем 'Наименование' я ввожу текст "Номенклатура "+"$ИмяТестНоменклатуры$"
	И я запоминаю значение поля с именем "Наименование" как "ИмяНоменклатуры"
	И в поле с именем 'ВТ_Вес' я ввожу текст '$ИмяТестНоменклатуры$'
	И я запоминаю значение поля "Вес" как "ВесНМ"
	И Я запоминаю значение выражения 'Число($ВесНМ$)' в переменную "ВесНМч"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Наименование" как "ИмяНоменклатуры"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Test (Товар)" в течение 20 секунд
	И В командном интерфейсе я выбираю "Товарные запасы" "Товары"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И я запоминаю случайное число в диапазоне от "250000" до "300000" в переменную "ИмяТестНоменклатуры2"
	И в поле с именем 'Наименование' я ввожу текст "Номенклатура "+"$ИмяТестНоменклатуры2$"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Наименование" как "ИмяНоменклатуры2"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "Test (Товар)" в течение 20 секунд
*Создание документа прихода
	И В командном интерфейсе я выбираю "Закупки" "Поступления товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И из выпадающего списка с именем 'Организация' я выбираю "*"
	И я запоминаю значение поля "Организация" как "Организация"
	И из выпадающего списка с именем 'Склад' я выбираю по строке "Большой"
	И я запоминаю значение поля "Склад" как "Склад1"
	Если элемент с заголовком "Валюта взаиморасчетов" присутствует на форме Тогда
		И из выпадающего списка с именем 'Валюта' я выбираю по строке "Ру"
	И из выпадающего списка с именем 'Поставщик' я выбираю "*"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" в текущее поле я ввожу текст "$ИмяТестНоменклатуры$"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "250,00"
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "$ИмяТестНоменклатуры$"
	И в таблице 'Товары' я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровести'
* Создание документа расхода
	И В командном интерфейсе я выбираю "Продажи" "Документы продаж"
	И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруРасходТовара'
	И из выпадающего списка с именем 'Организация' я выбираю "$Организация$"
	И из выпадающего списка с именем 'Покупатель' я выбираю "*"
	И из выпадающего списка с именем 'Склад' я выбираю по строке "$Склад1$"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице  'Товары' я начинаю редактирование строки
	И в таблице "Товары" в текущее поле я ввожу текст "$ИмяТестНоменклатуры$"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "250,00"
	И я запоминаю случайное число в диапазоне от "1" до "1000" в переменную "РандомКол-во1"
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "$РандомКолво1$"
	И в таблице 'Товары' я завершаю редактирование строки
	Если поле с именем 'Валюта' присутствует на форме Тогда
		И из выпадающего списка с именем 'Валюта' я выбираю по строке "ру"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я запоминаю значение поля "Номер" как "НомерДокумента"
	И я запоминаю значение поля "Покупатель" как "Покупатель"
* Проверка документа расхода
	*Блок 1 - Проверка вкладки "Основное"
		*1.1 Проверка поля "Номер"
			И поле "Номер" заполнено
		*1.2 Проверка поля "Дата"
			И поле "Дата" заполнено		
		*1.3 Проверка поля "Организация"
			И я нажимаю на кнопку открытия поля с именем 'Организация'
			И я запоминаю значение поля с именем 'ВалютныйУчет' как "ВалютныйУчёт"
			Если переменная "ВалютныйУчёт" имеет значение "Нет" Тогда
				И я устанавливаю флаг "Валютный учет"
				и Пауза 2			
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'	
			И из выпадающего списка с именем 'Организация' я выбираю "ООО Все для"	
			И из выпадающего списка с именем 'Организация' я выбираю "$Организация$"		
			И элемент формы с именем 'Валюта' присутствует на форме
			И я нажимаю на кнопку открытия поля с именем 'Организация'
			И я снимаю флаг 'Валютный учет'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И элемент формы с именем 'Валюта' отсутствует на форме		
		*1.4 Проверка поля "Покупатель"
			И я запоминаю значение поля с именем 'Покупатель' как "Покупатель"
			И я нажимаю на кнопку открытия поля с именем 'Покупатель'
			И в поле с именем 'ВидЦен' я ввожу текст 'Мелкооптовая'
			И я перехожу к следующему реквизиту
			И я запоминаю значение поля "Вид цен" как "ВидЦеныПокупатель"
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И из выпадающего списка с именем 'Покупатель' я выбираю по строке "$Покупатель$"
			И поле с именем 'ВидЦен' равно переменной "ВидЦеныПокупатель"
			И я нажимаю на кнопку открытия поля с именем 'Покупатель'
			И в поле с именем 'ВидЦен' я ввожу текст 'Оптовая'
			И я перехожу к следующему реквизиту
			И я запоминаю значение поля "Вид цен" как "ВидЦеныПокупатель"
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И из выпадающего списка с именем 'Покупатель' я выбираю по строке "$Покупатель$"
			И поле с именем 'ВидЦен' равно переменной "ВидЦеныПокупатель"
		*1.5 Проверка поля "Склад"
			И я нажимаю на кнопку открытия поля с именем 'Склад'
			И я изменяю флаг с именем 'НеИспользовать'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			попытка
				И из выпадающего списка с именем 'Склад' я выбираю точное значение "$Склад1$"
		    Исключение
			И я жду закрытия окна "Склад отдела продаж (Склад) *" в течение 2 секунд
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
		*1.6 Проверка табличной части "Товары"			
			И я запоминаю значение поля с именем 'ТоварыИтогКоличество' как "КоличествоИтогИзначальное"
			И я запоминаю значение поля с именем 'ТоварыИтогСумма' как "ИтогСуммаИзначальное"
			И в таблице 'Товары' я выбираю текущую строку
			И я запоминаю случайное число в диапазоне от "1" до "999" в переменную "РандомКол-во"
			И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "$РандомКол-во$"
			И в таблице 'Товары' я завершаю редактирование строки
			И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "$РандомКол-во$"
			И я завершаю редактирование строки
			И я нажимаю на кнопку с именем 'ФормаПровести'	
			попытка
				И поле с именем 'ТоварыИтогКоличество' не равно переменной "КоличествоИтогИзначальное"
				И поле с именем 'ТоварыИтогСумма' не равно переменной "ИтогСуммаИзначальное"
			Исключение			
			И я запоминаю значение поля с именем "ТоварыИтогСумма" как "ИтогСуммы"
			И я запоминаю значение поля с именем 'ТоварыИтогКоличество' как "ИтогКоличества"
			И в таблице 'Товары' я нажимаю на кнопку с именем 'КомандаПодбор'
			Тогда открылось окно "Подбор товара"
			И я активизирую дополнение формы с именем 'Дополнение1'
			И я выбираю пункт контекстного меню с именем 'СписокТоваровКонтекстноеМенюКопироватьВБуферОбмена' на элементе формы с именем 'СписокТоваров'
			И я активизирую дополнение формы с именем 'Дополнение1'
			И в дополнение формы с именем 'Дополнение1' я ввожу текст '$ИмяНоменклатуры2$'
			И я закрываю текущее окно
			И я запоминаю значение поля с именем "ТоварыИтогСумма" как '$СуммаТоваров$'	
			И Я запоминаю значение выражения 'Число($СуммаТоваров$)' в переменную "СуммаТоваровЧ"
 			Когда открылось окно "Продажа * от *"
			И я нажимаю на кнопку с именем 'ФормаПровести'
			
	*2 Проверка движений по регистрам
		*2.1 Проверка движения по регистру "Взаиморасчеты с контрагентами"
			И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
			И я нажимаю на кнопку с именем 'ВсеВзаиморасчеты'
			И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем 'Список'
			И из выпадающего списка с именем 'FieldSelector' я выбираю точное значение "Регистратор"
			И я меняю значение переключателя с именем 'CompareType' на "По части строки"
			И в поле с именем 'Pattern' я ввожу текст "$НомерДокумента$"
			И я нажимаю на кнопку с именем 'Find'
			И Пауза 2			
			И в таблице "Список" 1 строк	
			И таблица  "Список" содержит строки:
				| 'Период' | 'Регистратор' | 'Номер строки' | 'Контрагент' | 'Сумма'          | 'Валюта' |
				| '*'      | '*'           | '*'            | '*'          | '$СуммаТоваров$,00'| '*'      |
			И я закрываю текущее окно
			И В текущем окне я нажимаю кнопку командного интерфейса "Основное"		
			Если элемент "Валюта взаиморасчетов" не присутствует на форме Тогда"
				И я нажимаю на кнопку открытия поля с именем 'Организация'
				И я изменяю флаг с именем 'ВалютныйУчет'
				И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
				И я нажимаю кнопку выбора у поля с именем 'Валюта'
				И из выпадающего списка с именем 'Валюта' я выбираю по строке "ру"
				И я нажимаю на кнопку с именем 'ФормаПровести'
				И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
				И в таблице 'Список' поле "Валюта" имеет значение "Рубли"
				И В текущем окне я нажимаю кнопку командного интерфейса "Основное"
			Если поле с именем 'Валюта' присутствует на форме Тогда
				И я нажимаю на кнопку открытия поля с именем 'Организация'
				И я изменяю флаг с именем 'ВалютныйУчет'
				И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
				И я нажимаю на кнопку с именем 'ФормаПровести'
				И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
				Попытка 
					И в таблице 'Список' поле "Валюта" имеет значение ""
					И я регистрирую ошибку "Описание ошибки" по данным исключения
				Исключение	
				И В текущем окне я нажимаю кнопку командного интерфейса "Основное"
		*3 Проверка печатных форм
			*3.1 Проверка печатной формы "Печать расходной накладной"				
				И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
				И в табличном документе "SpreadsheetDocument" ячейка с адресом "R1C2" равна "Расход товара"
				И в табличном документе "SpreadsheetDocument" ячейка с адресом "R3C3" равна "$НомерДокумента$"
				И в табличном документе "SpreadsheetDocument" ячейка с адресом "R5C3" равна "$Покупатель$"
				И в табличном документе "SpreadsheetDocument" ячейка с адресом "R6C3" равна "$Склад1$"
			*3.1.1 Проверка суммы ПФ
				И Я запоминаю значение выражения 'ЧислоПрописью($СуммаТоваровЧ$,,",,,,,,,,0")' в переменную "Пропись"
				И Я запоминаю значение выражения '$СуммаТоваров$+" "+"рублей"+" "+"("+$Пропись$+"рублей"+")"' в переменную "ПрописьПолная"
				Попытка 
					И в табличном документе "SpreadsheetDocument" ячейка с адресом "R7C3" равна "$ПрописьПолная$"
				Исключение 
				И Я запоминаю значение выражения 'СТРОКА($ВесНМч$)' в переменную "ВесНМТ"
				Попытка 
					И в табличном документе "SpreadsheetDocument" ячейка с адресом "R8C3" равна "$ВесНМТ$"
					И я вызываю исключение "Некорректное отображение Веса номенклатуры !"
					И я закрываю текущее окно
				Исключение 
				Попытка
					И в табличном документе "SpreadsheetDocument" ячейка с адресом "R11C2" равна "$ИмяНоменклатуры$"
				Исключение
				И в табличном документе "SpreadsheetDocument" ячейка с адресом "R11C4" равна "$ИтогКоличества$"
				И в табличном документе "SpreadsheetDocument" ячейка с адресом "R11C5" равна "$ИтогСуммы$"
									
				
								

				
								
				
				
																
							
			
																
						
		
		
		
				
		