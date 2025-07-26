# Переменные
SOURCE_DIR = .\src
OUTPUT_DIR = .\out
MAIN_CLASS0 = com\simple\Main
MAIN_CLASS = com.simple.Main
JAVADOC_DIR = .\doc\test01

# Команды компиляции
compile:
	javac -sourcepath $(SOURCE_DIR) -d $(OUTPUT_DIR) $(SOURCE_DIR)\$(MAIN_CLASS0).java

# Команда запуска
run:
	java -classpath $(OUTPUT_DIR) $(MAIN_CLASS)

# Генерация JavaDoc
javadoc:
	javadoc -d $(JAVADOC_DIR) -sourcepath $(SOURCE_DIR) -subpackages com

# Очистка скомпилированных файлов
clean:
	del /s $(OUTPUT_DIR)\*

# Очистка JavaDoc
cleanjavadoc:
	del /s $(JAVADOC_DIR)\*

# Правило по умолчанию (компилировать и запустить)
default: compile run

# Помощь (вывести доступные команды)
help:
	@echo Доступные команды:
	@echo   nmake compile  - Компиляция исходного кода
	@echo   nmake run      - Запуск программы
	@echo   nmake clean    - Очистка скомпилированных файлов
	@echo   nmake          - Компиляция и запуск по умолчанию
	@echo   nmake help     - Вывести это сообщение с доступными командами

# Запуск команды `nmake help` по умолчанию при вызове nmake без параметров
.PHONY: default help
