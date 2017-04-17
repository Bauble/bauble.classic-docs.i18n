��          �            x  �   y    X     Z  �   m  �   �      �  �   �  _   �  �   �  f  �  q   �  �   p     	     6	  �   U	  "  T
  3  w  �  �     p  �   �  +  ~  *   �  3  �  �   	  2  �  �   �  �   �  L  v  <   �  -      H  .                          	                                                 
    Alternatively you can download the `archive <http://www.apache.org/dist/xmlgraphics/fop/binaries/>`_.  After extracting the archive you must add the directory you extracted the archive to to your PATH environment variable. Creating reports with Mako is similar in the way that you would create a web page from a template.  It is much simpler than the XSL Formatter(see below) and should be relatively easy to create template for anyone with a little but of programming experience. Generating reports If the query does not have a search domain then the values could all be of a different type and the Mako template should prepared to handle them. If using Linux, Apache FOP should be installable using your package manager.  On Debian/Ubuntu it is installable as ``fop`` in Synaptic or using the following command:: Installing Apache FOP on Windows The Mako report formatter uses the Mako template language for generating reports. More information about Mako and its language can be found at `makotemplates.org <http://www.makotemplates.org>`_. The Mako templating system should already be installed on your computer if Bauble is installed. The XSL report formatter requires an XSL to PDF renderer to convert the data to a PDF file. Apache FOP is is a free and open-source XSL->PDF renderer and is recommended. The template generator will use the same file extension as the template which should indicate the type of output the template with create.  For example, to generate an HTML page from your template you should name the template something like `report.html`.  If the template will generate a comma seperated value file you should name the template `report.csv`. The template will receive a variable called `values` which will contain the list of values in the current search. The type of each value in `values` will be the same as the search domain used in the search query.  For more information on search domains see :ref:`search-domains`. Using the Mako Report Formatter Using the XSL Report Formatter You have two options for installing FOP on Windows. The easiest way is to download the prebuilt `ApacheFOP-0.95-1-setup.exe <http://code.google.com/p/apache-fop-installer/downloads/detail?name=ApacheFOP-0.95-1-setup.exe&can=2&q=#makechanges>`_ installer. Project-Id-Version: Bauble 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-09-08 17:07-0500
PO-Revision-Date: 2017-04-17 15:08+0000
Last-Translator: Володимир Бриняк <bardvv@gmail.com>
Language-Team: Ukrainian <https://hosted.weblate.org/projects/bauble/documentation-report/uk/>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Weblate 2.14-dev
 В якості альтернативи ви можете скачати `archive <http://www.apache.org/dist/xmlgraphics/fop/binaries/>`_. Після вилучення архіву ви повинні додати каталог, розпакував архів в змінну PATH середовища. Створення звітів за допомогою Мако аналогічна тому, як ви можете створити веб-сторінку за допомогою шаблону. Це набагато простіше, ніж XSL Formatter (див нижче) і  відносно легко буде створити шаблон для тих, хто хоча б з невеликим досвідом програмування. Створення звітів Якщо запит не має пошукового домену, то всі значення можуть бути різного типу і шаблон Мако повинен бути готовий впоратися з ними. При використанні Linux, Apache FOP повинен бути встановлений за допомогою менеджера пакетів. В Debian/Ubuntu це встановлювана як ``fop`` в Synaptic або за допомогою наступної команди :: Установка Apache FOP на Windows Форматер звіту Mako використовує мову шаблонів Mako для генерації звітів. Більш детальну інформацію про Мако і його мову можна знайти на сайті `makotemplates.org <http://www.makotemplates.org>`_. Система шаблонів Mako вже повинна бути встановлена на вашому комп'ютері, якщо встановлено Bauble. XSL форматер звітів  вимагає представляти XSL в PDF для перетворення даних в PDF файл. Apache FOP є безкоштовним і з відкритим вихідним кодом XSL->PDF визуализатор що рекомендується. Генератор шаблонів буде використовувати таке ж розширення файлу як шаблон, який повинен вказати тип вихідного шаблону створення. Шаблон буде отримувати змінну `values`, яка буде містити список значень в поточному пошуку. Тип кожного значення в `values` буде таким же, як область пошуку, що використовується в пошуковому запиті. Для отримання додаткової інформації про пошукові домени дивитися: :ref:`search-domains`. Використання  форматера звіту Mako Використання XSL Report Formatter У вас є два варіанти установки  FOP на Windows. Найпростіший спосіб це завантажити скомпільований `ApacheFOP-0.95-1-setup.exe <http://code.google.com/p/apache-fop-installer/downloads/detail?name=ApacheFOP-0.95-1-setup.exe&can=2&q=#makechanges>`_ installer. 