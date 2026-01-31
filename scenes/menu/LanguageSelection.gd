extends OptionButton

var _languages: Array[String] = []

func _get_lang_array() -> Array[String]:
  var arr: Array[String] = ["en"]
  for locale in TranslationServer.get_loaded_locales():
    if locale != "en":
      arr.append(locale)
  return arr

func _ready() -> void:
  GlobalMenuEvents.set_language.connect(_on_set_language)

  _languages = _get_lang_array()
  for i in range(1, len(_languages)):
    add_item(TranslationServer.get_language_name(_languages[i]))

  var locale: String = LanguageManager.get_locale()
  var idx: int = _languages.find(locale)
  if idx >= 0:
    select(idx)
  item_selected.connect(_on_language_item_selected)

func _on_language_item_selected(index: int) -> void:
  var locale: String = _languages[index]
  LanguageManager.set_locale(locale)

func _on_set_language(language_code: String) -> void:
  var idx: int = _languages.find(language_code)
  if idx >= 0 and selected != idx:
    select(idx)
