��    	      d      �       �      �   �   �      �  +   �  v   �  
   r     }  K  �  �  �     �  d  �       .     �   H  
   �     �  �  �                     	                         Administration If you are using a real DBMS to hold your botanic data, then you need do something about database administration. While database adnimistration is far beyond the scope of this document, we make our users aware of it. MySQL Please refer to the official documentation. Please refer to the official documentation. A very thorough discussion of your backup options starts at `chapter_24`_. PostgreSQL SQLite SQLite is not what one would consider a real DBMS: each SQLite database is just in one file. Make safety copies and you will be fine. If you don't know where to look for your database files, consider that, per default, bauble puts its data in the ``~/.bauble/`` directory (in Windows it is somewhere in your ``AppData`` directory). Project-Id-Version: Bauble 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-09-07 07:14-0500
PO-Revision-Date: 2015-09-10 14:37+0200
Last-Translator: Mario Frasca <mariotomo@gmail.com>
Language-Team: Italian <https://hosted.weblate.org/projects/bauble/documentation-administration/it/>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.4-dev
 Amministrazione Nel caso si stia utilizzando un vero e proprio DBMS (sistema di gestione di basi di dati) per contenere le collezioni di Bauble, è importante prendere in considerazione l'amministrazione di questo DBMS. Una descrizione del compito di amministrare una base dati è qui assolutamente fuori luogo, ma è importante che un utente sia consapevole del problema. MySQL Prego riferirsi alla documentazione ufficiale. Prego riferirsi alla documentazione ufficiale. Una discussione molto approfondita sulle varie opzioni di backup inizia al `chapter_24`_. PostgreSQL SQLite SQLite offre una soluzione in quanto SQLite non è esattamente quanto si potrebbe definire un DMBS: ogni base dati SQLite è un file, farne copia di emergenza (backup) sarà sufficiente. Se si è creata la connessione alla base dati SQLite accettando i valori per difetto, il file relativo alla connessione si trova nella directory ``~/.bauble/`` (con Windows bisognerà trovare la ``AppData``). 