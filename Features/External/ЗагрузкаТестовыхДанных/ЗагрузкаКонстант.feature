﻿#language: ru

@ExportScenarios
@IgnoreOnCIMainBuld

Функционал: ЗагрузкаКонстант
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: ЗагрузкаКонстант(ТестовыеДанные)
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
	И я перезаполняю константу "УчетПоСкладам" значением "True"

