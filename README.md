Шёпот на ветру
--------------

Репозиторий содержит текст книги Алана Маршала "Шепот на ветру", в виде tex документов, и скрипт для сборки в pdf для печати книги.

Для сбоки необходимы следующие пакеты:
* pdflatex
* ghostscript
* psutils

После сборки итоговый pdf будет лежать в .build/shepot.pdf
Если необходимо собрать только pdf с текстом, без разбития на брошюры - надо запустить ```make pdf```
