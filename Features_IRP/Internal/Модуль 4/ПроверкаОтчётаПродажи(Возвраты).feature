﻿#language: ru

@tree

Функционал: Проверка отображения возвратов в отчёте

Как инженер по финансовому контроллингу я хочу
Проверить отчёт "Продажи"
чтобы убедиться в корректности отображения возвратов

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю "Отчеты" "D2001 Продажи"
И я нажимаю на кнопку с именем 'FormLoadVariant'
И в таблице 'OptionsList' я активизирую поле с именем 'OptionsListReportOption'
И в таблице "OptionsList" я выбираю текущую строку
И я нажимаю на кнопку с именем 'FormGenerate'
И в табличном документе "Result" я перехожу к ячейке содержащей текст "*Возврат товаров от покупателя*" по шаблону
И в табличном документе "Result" я перехожу к ячейке содержащей текст "*Возврат от розничного покупателя*" по шаблону




 
 