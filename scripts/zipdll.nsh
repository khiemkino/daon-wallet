;ZipDLL include file for NSIS
;Written by Tim Kosse (mailto:tim.kosse@gmx.de)
;some improvements by deguix

;Supported languages with their translators in alphabetical order:

;Arabic translation by asdfuae
;Brazilian Portuguese translation by "deguix"
;Chinese, Simplified translation by Kii Ali <kiiali@cpatch.org>
;Chinese, Traditional traslation by "matini" and Kii Ali <kiiali@cpatch.org>
;Croatian translation by "iostriz"
;Danish translation by Claus Futtrup
;French translation by "veekee"
;German translation by Tim Kosse
;Hungarian translation by Toth Laszlo
;Korean translation by Seongab Kim
;Lithuanian translation by Vytautas Krivickas
;Polish translation by Krzysztof Galuszka
;Russion translation by Sergey
;Spanish translation by "dark_boy"

!ifndef ZIPDLL_USED

!define ZIPDLL_USED

!macro ZIPDLL_EXTRACT SOURCE DESTINATION FILE

  !define "FILE_${FILE}"

  !ifndef FILE_<ALL>
    Push "${FILE}"
  !endif

  IfFileExists "${DESTINATION}" +2
    CreateDirectory "${DESTINATION}"

  Push "${DESTINATION}"

  IfFileExists "${SOURCE}" +2
    SetErrors

  Push "${SOURCE}"

  ;The strings that will be translated are (ready to copy,
  ;remove leading semicolons in your language block):

  !ifdef LANG_ENGLISH

    ;English is default language of ZipDLL, no need to push the untranslated strings

    ;StrCmp $LANGUAGE ${LANG_ENGLISH} 0 +1

      ;Push "  Error: %s"
      ;Push "Could not get file attributes."
      ;Push "Error: Could not get file attributes."
      ;Push "Could not extract %s"
      ;Push "  Error: Could not extract %s"

      ;!ifdef FILE_<ALL>
        ;Push "  Extract: %s"
        ;Push "  Extracting %d files and directories"
        ;Push "Extracting contents of %s to %s"
      ;!else
        ;Push "Specified file does not exist in archive."
        ;Push "Error: Specified file does not exist in archive."
        ;Push "Extracting the file %s from %s to %s"
      ;!endif

      ;Push "/TRANSLATE"

  !endif

  !ifdef LANG_HUNGARIAN

    StrCmp $LANGUAGE ${LANG_HUNGARIAN} 0 +10

      Push "  Hiba: %s"
      Push "Nem olvashat?a f?l attrib?umai."
      Push "Hiba: Nem olvashat?a f?l attrib?umai."
      Push "Nem siker?t kicsomagolni a(z) %s"
      Push "  Hiba: Nem siker?t kicsomagolni a(z) %s"

      !ifdef FILE_<ALL>
        Push "  Kicsomagol?: %s"
        Push "  %d f?l ? mappa kicsomagol?a"
        Push "%s tartalom kicsomagol?a a %s helyre"
      !else
        Push "A megadott f?l nem tal?hat?az arh?umban."
        Push "Hiba: A megadott f?l nem tal?hat?az arh?umban."
        Push "%s f?l kcsomagol?a a(z) %s f?lb? a %s helyre"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef LANG_FRENCH

    StrCmp $LANGUAGE ${LANG_FRENCH} 0 +10

      Push "  Erreur : %s"
      Push "Impossible de r?up?er les informations sur le fichier."
      Push "Erreur : Impossible de r?up?er les informations sur le fichier."
      Push "Impossible de d?ompresser %s."
      Push "  Erreur : Impossible de d?ompresser %s."

      !ifdef FILE_<ALL>
        Push "  D?ompression : %s"
        Push "  D?ompression de %d fichiers et r?ertoires"
        Push "D?ompression des donn?s de %s vers %s"
      !else
        Push "Le fichier sp?ifi?n'existe pas dans l'archive"
        Push "Erreur : Le fichier sp?ifi?n'existe pas dans l'archive"
        Push "D?ompression du fichier %s depuis %s vers %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef LANG_GERMAN

    StrCmp $LANGUAGE ${LANG_GERMAN} 0 +10

      Push "  Fehler: %s"
      Push "Dateiattribute konnten nicht ermittelt werden."
      Push "Fehler: Dateiattribute konnten nicht ermittelt werden."
      Push "%s konnte nicht dekomprimiert werden."
      Push "  Fehler: %s konnte nicht dekomprimiert werden."

      !ifdef FILE_<ALL>
        Push "  Dekomprimiere: %s"
        Push "  Dekomprimiere %d Dateien und Verzeichnisse"
        Push "Dekomprimiere Inhalt von %s nach %s"
      !else
        Push "Die angegebene Datei existiert nicht im Archiv"
        Push "Fehler: Die angegebene Datei existiert nicht im Archiv"
        Push "Dekomprimiere Datei %s von %s nach %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef LANG_SPANISH

    StrCmp $LANGUAGE ${LANG_SPANISH} 0 +10

      Push "  Error: %s"
      Push "No se obtuvieron atributos del archivo"
      Push "Error: No se obtuvieron atributos del archivo"
      Push "No se pudo extraer %s"
      Push "  Error: No se pudo extraer %s"

      !ifdef FILE_<ALL>
        Push "  Extraer: %s"
        Push "  Extrayendo %d archivos y directorios"
        Push "Extraer archivos de %s a %s"
      !else
        Push "Archivo especificado no existe en el ZIP"
        Push "Error: El archivo especificado no existe en el ZIP"
        Push "Extrayendo el archivo %s de %s a %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef LANG_PORTUGUESEBR

    StrCmp $LANGUAGE ${LANG_PORTUGUESEBR} 0 +10

      Push "  Erro: %s"
      Push "N? se pode ler os atributos do arquivo"
      Push "Error: N? se pode ler os atributos do arquivo"
      Push "N? se pode extrair %s"
      Push "  Erro: N? se pode extrair %s"

      !ifdef FILE_<ALL>
        Push "  Extraindo: %s"
        Push "  Extraindo %d arquivos e diret?ios"
        Push "Extraindo arquivos de %s a %s"
      !else
        Push "O arquivo especificado n? existe no ZIP"
        Push "Erro: O arquivo especificado n? existe no ZIP"
        Push "Extraindo o arquivo %s de %s a %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef LANG_TRADCHINESE

  StrCmp $LANGUAGE ${LANG_TRADCHINESE} 0 +11

    Push "  월?: %s"
    Push "킠챞¾켹읠?콜㈙좧"
    Push "월?: 킠챞¾켹읠?콜㈙좧"
    Push "킠챞먈웰햊 %s"
    Push "  월?좬킠챞먈웰햊 %s"
    
    !ifdef FILE_<ALL>
      Push "  먈웰햊좬%s"
      Push "  ?쫇먈웰햊 %d 읠?팒Ω웡"
      Push "?쫇먈웰햊 %s ずㅊ췦⑥ %s"
    !else
      Push "?쯹ず읠?㉲ㄳ쫟쫇⒀웰햊?좧"
      Push "월?좬?쯹ず읠?㉲ㄳ쫟쫇⒀웰햊?좧"
      Push "?쫇먈웰햊읠? %s 좥켻 %s ⑥ %s"
    !endif
    
    Push "/TRANSLATE"

  !endif

  !ifdef LANG_SIMPCHINESE

  StrCmp $LANGUAGE ${LANG_SIMPCHINESE} 0 +11

    Push "  댄轎: %s"
    Push "轟랬혤돤匡숭橄昑。"
    Push "댄轎: 轟랬혤돤匡숭橄昑。"
    Push "轟랬썩箕鍵 %s"
    Push "  댄轎：轟랬썩箕鍵 %s"
    
    !ifdef FILE_<ALL>
      Push "  썩箕鍵：%s"
      Push "  攣瞳썩箕鍵 %d 匡숭宅커쩌"
      Push "攣瞳썩箕鍵 %s 돨코휭돕 %s"
    !else
      Push "寧땍돨匡숭깻꼇닸瞳黨箕鍵관。"
      Push "댄轎：寧땍돨匡숭깻꼇닸瞳黨箕鍵관。"
      Push "攣瞳썩箕鍵匡숭 %s ，닒 %s 돕 %s"
    !endif
    
    Push "/TRANSLATE"

  !endif

  !ifdef LANG_LITHUANIAN

    StrCmp $LANGUAGE ${LANG_LITHUANIAN} 0 +10

      Push "  Klaida: %s"
      Push "Negaleta gauti bylos nuorodu."
      Push "Klaida: Negaleta gauti bylos nuorodu."
      Push "Negaleta i쉞raukti %s"
      Push "  Klaida: Negaleta i쉞raukti %s"

      !ifdef FILE_<ALL>
        Push "  I쉞raukiam : %s"
        Push "  I쉞raukiame %d bylas ir katalogus"
        Push "I쉞raukiame viska is %s i %s"
      !else
        Push "Parinkta byla nesurasta 쉏ame archyve."
        Push "Klaida: Parinkta byla nesurasta 쉏ame archyve."
        Push "I쉞raukiame byla %s i?%s i %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef "LANG_POLISH"

    strcmp $LANGUAGE ${LANG_POLISH} 0 +10

      Push "  B낱d: %s"
      Push "Nie mo풽 pobra?atrybutu pliku."
      Push "B낱d: Nie mo풽 pobra?atrybutu pliku."
      Push "Nie mo풽 rozpakowa?%s."
      Push "  B낱d: Nie mo풽 rozpakowa?%s."

      !ifdef FILE_<ALL>
        Push "  Rozpakuj: %s"
        Push "  Rozpakowywanie %d plik? i katalog?"
        Push "Rozpakowywanie zawarto쐁i %s do %s"
      !else
        Push "Plik nie istnieje w archiwum"
        Push "B낱d: Plik nie istnieje w archiwum"
        Push "Rozpakowywanie pliku %s z %s do %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef "LANG_KOREAN"
    strcmp $LANGUAGE ${LANG_KOREAN} 0 +10
      Push "  오류 : %s"
      Push "화일 속성을 얻어올 수 없습니다."
      Push "오류: 화일 속성을 얻어올 수 없습니다."
      Push "%s을(를) 풀 수 없습니다."
      Push "  오류: %s을(를) 풀 수 없습니다."

      !ifdef FILE_<ALL>
        Push "  풀기 : %s"
        Push "  %d개의 파일과 폴더를 푸는 중"
        Push "%s의 내용을 %s에 푸는 중"
      !else
        Push "지정된 파일이 압축 파일 안에 없습니다."
        Push "오류: 지정된 파일이 압축 파일 안에 없습니다."
        Push "%s 파일을 %s에서 %s로 푸는 중"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef "LANG_RUSSIAN"

    strcmp $LANGUAGE ${LANG_RUSSIAN} 0 +10

      Push "  丘矮魏: %s"
      Push "袞 溢身 禎懿婆潗 城鳥修執 牒雨?"
      Push "丘矮魏: 袞 溢身 禎懿婆潗 城鳥修執 牒雨?"
      Push "袞 溢身 了瞬円?%s"
      Push "  丘矮魏: 袞 溢身 了瞬円?%s"

      !ifdef LANG_<ALL>
        Push "  흔瞬焉筬 : %s"
        Push "  흔瞬円孼猥 %d 牒雨荻 ?檉禎?
        Push "爛尿適 了瞬焉齧荏?牒雨荻 了 %s ?%s"
      !else
        Push "흔瞬焉齧荏?牒雨 張 翟壯宗蓮??燮筑橓."
        Push "丘矮魏: S흔瞬焉齧荏?牒雨 張 翟壯宗蓮??燮筑橓."
        Push "흔瞬円孼猥 牒雨?%s 了 %s ?%s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef LANG_ARABIC

    StrCmp $LANGUAGE ${LANG_ARABIC} 0 +10

      Push "  拐프: %s"
      Push "率 雀量 伴?壞픗?햐信?"
      Push "拐프: 率 雀量 伴?壞픗?햐信?"
      Push "簫 帳色 핥干饑?%s"
      Push " 拐프: 簫 帳色 핥干饑?%s"
  
      !ifdef FILE_<ALL>
        Push "  핥干饑?: %s"
        Push "  핥干饑?詩遡필 ?信奮?%d"
        Push "핥干饑?諡竭灼?%s 텼?%s"
      !else
        Push "햐信?凡?新競?枇 햐畓?"
        Push "拐프: 햐信?凡?新競?枇 햐畓?"
        Push "핥干饑?햐信?%s 宸 %s 텼?%s"
      !endif

      Push "/TRANSLATE"

  ;!endif

  !ifdef LANG_DANISH

    StrCmp $LANGUAGE ${LANG_DANISH} 0 +10

      Push "  Fejl: %s"
      Push "Kunne ikke l?e fil attributter."
      Push "Fejl: Kunne ikke l?e fil attributter."
      Push "Kunne ikke udpakke %s"
      Push "  Fejl: Kunne ikke udpakke %s"

      !ifdef FILE_<ALL>
        Push "  Udpakker: %s"
        Push "  Udpakker %d filer og mapper"
        Push "Udpakker indhold fra %s til %s"
      !else
        Push "Specificeret fil eksisterer ikke i filarkivet"
        Push "Fejl: Specificeret fil eksisterer ikke i filarkivet"
        Push "Udpakker fil %s fra %s til %s"
      !endif

      Push "/TRANSLATE"

  !endif 

  !ifdef LANG_CROATIAN

    StrCmp $LANGUAGE ${LANG_CROATIAN} 0 +10

      Push "  Gre쉓a: %s"
      Push "Ne mogu dohvatiti atribute datoteke."
      Push "Gre쉓a: Ne mogu dohvatiti atribute datoteke."
      Push "Ne mogu ekstrahirati %s"
      Push "  Gre쉓a: Ne mogu ekstrahirati %s"

      !ifdef FILE_<ALL>
        Push "  Ekstrakcija: %s"
        Push "  Ekstrakcija %d datoteka i mapa"
        Push "Ekstrakcija sadr얷ja %s u %s"
      !else
        Push "Tra엁na datoteka ne postoji u arhivi."
        Push "Gre쉓a: Tra엁na datoteka ne postoji u arhivi."
        Push "Ekstrakcija datoteke %s iz %s u %s"
      !endif

      Push "/TRANSLATE"

  !endif

  !ifdef FILE_<ALL>
    ZipDLL::extractall
  !else
    ZipDLL::extractfile
  !endif

  !undef "FILE_${FILE}"

!macroend

!endif
