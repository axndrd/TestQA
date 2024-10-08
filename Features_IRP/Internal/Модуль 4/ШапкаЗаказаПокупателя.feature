﻿#language: ru

@tree

Функционал: Проверка заполнения заказа покупателя

Как инженер по продажам я хочу
Протестировать заполнение документа заказ покупателя
чтобы проверить корректное заполнение и отображение полей в шапке документа

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения шапки заказа покупателя
*Проверка "Партнера" "Соглашения" ""	
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование" |
		| "*"   | "*"            |
	И в таблице 'List' я выбираю текущую строку
	Если открылось окно "Табличная часть товаров будет обновлена" Тогда
		Тогда я нажимаю на кнопку с именем 'FormOK'
	И я нажимаю кнопку выбора у поля с именем 'LegalName'
	И в таблице 'List' я выбираю текущую строку
	Если открылось окно "Табличная часть товаров будет обновлена" Тогда
		Тогда я нажимаю на кнопку с именем 'FormOK'
	И я нажимаю на кнопку с именем 'FormPost'
*Проверка блокировки "Контрагента" если не выбран партнер
	И в поле с именем 'Partner' я ввожу текст ""
	Если элемент "LegalName" доступен для редактирования Тогда
		Тогда я вызываю исключение "Поле Контрагент не должно быть доступно для редактирования, не указан партнер !"
	И я закрываю все окна клиентского приложения
		
	
			
