# Testanwendung SommerAkademie 2024
## Erklärung
Diese Anwendung ist dazu gedacht, dass ihr kontrollieren könnt, ob eure Installation von Ruby und Rails wie erwartet funktioniert.

Sie soll euch auch schon einmal einen kleinen Überblick über die Gems (Sammlungen von Funktionalitäten, die uns später helfen werden) verschaffen, die wir verwenden wollen. Wer mehr über diese wissen möchte, darf sie gerne googlen. Die entsprechenden Github Seiten sind ziemlich umfangreich und im Projekt verlinkt. Ich werde aber im Kurs auch nochmal genau erklären, wie die einzelnen Gems verwendet werden müssen. 

Ich hoffe, dass die Installation dieser Testanwendung bei jedem klappt, wünsche uns allen noch eine schöne Zeit bis zur SommerAkademie und einen interessanten und lehrreichen Kurs. 

## Setup
Ladet euch die Anwendung runter (und entpackt die ZIP-Datei) oder klont sie in einen Ordner eurer Wahl.
In einer Konsole navigiert ihr dann in diesen Ordner (das funktioniert im allgemeinen über `cd <ordnername>`).
Dort führt ihr folgende Befehle aus:

```
bundle install
rails db:drop
rails db:create
rails db:migrate
rails db:seed
bin/dev
```

Dann öffnet ihr `localhost:3000` im Browser.
Die Logindaten sind `user@cde.ev` oder `admin@cde.ev` jeweils mit dem Passwort `asdfasdf`.

## Tipps und Tricks
Hier werde ich nützliche Tipps und Tricks sowie Hinweise zu Fehlermeldungen, die anderen vor euch begegnet sind und die euch auch begegnen können, teilen.

### Ruby Version
Wenn ihr die Fehlermeldung
```
Your Ruby version is x.y.z, but your Gemfile specified 3.3.3
```
erhaltet, gibt es für euch zwei Möglichkeiten:
- Ihr könnt mit eurem Ruby Versionsmanager zusätzlich die Version `3.3.3` installieren, um die Testanwendung mit dieser zu starten. Wer rvm nutzt, verwendet im Projektordner erst `rvm install 3.1.2` und dann `rvm use 3.1.2`. Wer rbenv nutzt, führt erst `rbenv install 3.1.2` und dann `rbenv local 3.1.2` aus. Dann könnt ihr nochmal versuchen, das Projekt zu starten.
- Alternativ könnt ihr im `Gemfile`, die Datei im Projektordner, die Rubyversion von `3.3.3` auf `x.y.z` setzen. Das wird allerdings nicht klappen, wenn ihr `3.2.x` oder `2.x.y` installiert habt. Dann nutzt bitte die erste Möglichkeit
