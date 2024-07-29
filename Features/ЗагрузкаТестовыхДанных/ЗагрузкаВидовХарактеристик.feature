#language: ru

@ExportScenarios
@IgnoreOnCIMainBuld

Функционал: ЗагрузкаВидовХарактеристик
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: ЗагрузкаПланаВидовХарактеристик(ТестовыеДанные)

	И я проверяю или создаю для плана видов характеристик "ВидыХарактеристик" объекты:
		| 'Ссылка'                                                                                   | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'ТипЗначения'                                                                                                                                     | 'Назначение'                               |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=81248000600fe80011df45fdcbdd0627' | 'False'           | '000000009' | 'Размер по диагонали' | '<Type>xs:decimal</Type><NumberQualifiers><Digits>10</Digits><FractionDigits>0</FractionDigits><AllowedSign>Any</AllowedSign></NumberQualifiers>' | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d710082' | 'False'           | '000000003' | 'Материал'            | '<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type>'                              | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' | 'False'           | '000000004' | 'Жирность'            | '<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type>'                              | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca2000d8843cd1b11dc910e5100d885' | 'False'           | '000000005' | 'Мощность'            | '<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type>'                              | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab0' | 'False'           | '000000006' | 'Срочная'             | '<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type>'                              | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8d3a000d8843cd1b11dd321ba7a30ab3' | 'False'           | '000000007' | 'Стандартный'         | '<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type>'                              | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a05500195b8648b611df3d8facd8fca4' | 'False'           | '000000008' | 'Директор'            | '<Type>xs:string</Type><StringQualifiers><Length>1000</Length><AllowedLength>Variable</AllowedLength></StringQualifiers>'                         | 'Enum.НазначениеХарактеристик.Контрагенты' |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c4227' | 'False'           | '000000001' | 'Цвет'                | '<Type xmlns:d2p1="http://v8.1c.ru/8.1/data/enterprise/current-config">d2p1:CatalogRef.ЗначенияХарактеристик</Type>'                              | 'Enum.НазначениеХарактеристик.Товары'      |
		| 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=a9b000055d49b45e11db8c4c9d5c422b' | 'False'           | '000000002' | 'Размер'              | '<Type>xs:decimal</Type><NumberQualifiers><Digits>10</Digits><FractionDigits>0</FractionDigits><AllowedSign>Any</AllowedSign></NumberQualifiers>' | 'Enum.НазначениеХарактеристик.Товары'      |

