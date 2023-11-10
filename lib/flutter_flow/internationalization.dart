import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Busca
  {
    'kusz26v1': {
      'es': 'Buscar',
      'en': '',
    },
    '0ymzpihu': {
      'es': 'Receta por nombre',
      'en': '',
    },
    'gbtbi6ix': {
      'es': 'Receta por nombre',
      'en': '',
    },
    'zbhw34w6': {
      'es': 'Receta por ID',
      'en': '',
    },
    '29yrhg63': {
      'es': 'Ver recientes',
      'en': '',
    },
    'pqi5fvcj': {
      'es': 'Please select...',
      'en': '',
    },
    'ggogep9e': {
      'es': 'Search for an item...',
      'en': '',
    },
    'i9cgboso': {
      'es': 'Ingresa el nombre o ID',
      'en': '',
    },
    '5mfkfg78': {
      'es': 'Listado de resultados:  ',
      'en': '',
    },
    'su5ql03o': {
      'es': 'Takoyaki',
      'en': '',
    },
    'zotwk2fe': {
      'es': '• Takoyaki callejero',
      'en': '',
    },
    'h2r1at5h': {
      'es': ' -  Estilo japones.\n',
      'en': '',
    },
    'qvhu3hug': {
      'es': '\n• Takoyaki ',
      'en': '',
    },
    'owj1yuzs': {
      'es': ' -  Estilo cachanilla.',
      'en': '',
    },
    'htz5q8ls': {
      'es': 'Tiempo de preparacion:  25 minutos',
      'en': '',
    },
    'w52rm6kt': {
      'es': 'Una recomendacion para la \n preparacion:',
      'en': '',
    },
    '1qvsy6c4': {
      'es':
          'Nunc vitae ornare mauris. \nEtiam aliquet, elit sit amet \nsodales gravida, \nligula lectus consequat \npurus, iaculis sagittis \neros mi consectetur.',
      'en': '',
    },
    'efr3g5h4': {
      'es': 'Receta',
      'en': '',
    },
    'a0m8i84q': {
      'es': 'Nutrientes',
      'en': '',
    },
    'gjs3dz76': {
      'es': 'ReceBuddy',
      'en': '',
    },
    'niurwky8': {
      'es': 'Home',
      'en': '',
    },
  },
  // Landing
  {
    'c7gt910a': {
      'es': 'Bienvenido a\n ReceBuddy!',
      'en': '',
    },
    'ifj7bmix': {
      'es': 'Encontraras todas las recetas que puedas necesitar!!~',
      'en': '',
    },
    '2moiew3o': {
      'es': 'Login - Sing Up',
      'en': '',
    },
    'vp8654ta': {
      'es': 'Inicio',
      'en': '',
    },
    'vmf5tfv7': {
      'es': 'Home',
      'en': '',
    },
  },
  // Receta
  {
    'lr6kvm9a': {
      'es': 'Receta para: ',
      'en': '',
    },
    '08tjdy4a': {
      'es': 'Takoyaki Japones',
      'en': '',
    },
    '9qc9h4kw': {
      'es': 'Tiempo de preparacion:  25 minutos',
      'en': '',
    },
    'jrv0urxm': {
      'es':
          'Lo primero que tendrás que hacer es preparar los ingredientes sólidos de la receta: \n   Se corta el pulpo en pequeños trocitos (que puedan caber dentro de tus bolas de Takoyaki); se pica el repollo en trozos muy pequeños, la cebolla y el benishōga.\n\n',
      'en': '',
    },
    'ha3nehra': {
      'es':
          'Para el siguiente paso necesitarás un cuenco grande, en donde se añadirá la harina, los huevos y el agua.    \n   Se mezclan bien hasta que se obtenga una mezcla homogénea y cremosa, no tiene que quedar muy liquida (si ha quedado muy liquida puedes agregar un poco más de harina hasta que quede más cremosa).\n\n',
      'en': '',
    },
    'yvc1p3vq': {
      'es':
          'A la mezcla se le añade benishōga troceado, la cebolla y el repollo. \n    Sigue mezclando muy bien hasta que los ingredientes se encuentren bien distribuidos por toda la mezcla.\n\n',
      'en': '',
    },
    'b7t67hp0': {
      'es':
          'Ahora debes comenzar a calentar la plancha Takoyaki e ir añadiendo aceite de oliva o de girasol en cada uno de los huecos en los que colocaras un Takoyaki, para evitar que las bolitas queden pegadas y se rompan al despegarlas. \n',
      'en': '',
    },
    'crp7u5sz': {
      'es':
          'Cuando esté bien caliente se añade la mezcla a cada uno de los huecos y se pone un trocito de pulpo encima de ellas. Si queda un poco más de espacio, es recomendable echar más mezcla por encima.\n',
      'en': '',
    },
    'ed8ihwp0': {
      'es':
          'Después de unos minutos se verá que ese lado del buñuelo ha quedado listo, así que usando un pincho y con mucho cuidado tendremos que girar los Takoyaki. El movimiento tiene que ser suave y rápido. La idea es conseguir una bolita de pulpo dorada y perfecta. Es posible que al primer intento dañes un poco las bolitas, así que procura hacerlo con mucho cuidado y delicadeza.\n',
      'en': '',
    },
    'u8xqlmcy': {
      'es':
          'Cuando estén listos por ambos lados, las bolitas se colocan en un plato y se les echa encima mayonesa, Katsuoboshi, salsa Takoyaki (Tonkatsu) y Aonori. Les puedes echar a tu gusto y de una forma que el plato se vea bonito. Deja que tu creatividad aparezca y adorna el plato como mejor te parezca, pero lo más importante es que disfrutes el gran sabor de este plato típico de la cocina japonesa. ',
      'en': '',
    },
    'zmm71jlf': {
      'es': 'Receta',
      'en': '',
    },
    '9c92sur3': {
      'es': 'Nutrientes',
      'en': '',
    },
    'o491e0fx': {
      'es': 'ReceBuddy',
      'en': '',
    },
    'ghipbqx9': {
      'es': 'Home',
      'en': '',
    },
  },
  // Home
  {
    '14fd1zjh': {
      'es': 'Todo listo chef!',
      'en': '',
    },
    'vz05chmm': {
      'es': 'Su ultima receta magistral:',
      'en': '',
    },
    '4tyn2sa2': {
      'es': 'Tus recetas sugeridas para hoy:',
      'en': '',
    },
    '2k9chaw7': {
      'es': 'Nombre de receta',
      'en': '',
    },
    'hgzyr5v2': {
      'es': 'Flavor text',
      'en': '',
    },
    'm93iphy9': {
      'es': 'Calorias',
      'en': '',
    },
    'k4u8uli9': {
      'es': 'Nombre de receta',
      'en': '',
    },
    'we9fmhel': {
      'es': 'Flavor text',
      'en': '',
    },
    '3vtxlb19': {
      'es': 'Calorias',
      'en': '',
    },
    '30orr1zx': {
      'es': 'Nombre de receta',
      'en': '',
    },
    'cp2oi0wm': {
      'es': 'Flavor text',
      'en': '',
    },
    'qaosgwu3': {
      'es': 'Calorias',
      'en': '',
    },
    'n5n0zxab': {
      'es': 'Nombre de receta',
      'en': '',
    },
    's87d38cd': {
      'es': 'Flavor text',
      'en': '',
    },
    'cmp77mww': {
      'es': 'Calorias',
      'en': '',
    },
    'bfd9v8uq': {
      'es': 'Receta',
      'en': '',
    },
    '2yire2cu': {
      'es': 'Buscar',
      'en': '',
    },
    'b9r78dcn': {
      'es': 'ReceBuddy',
      'en': '',
    },
    'sgf2dus2': {
      'es': 'Home',
      'en': '',
    },
  },
  // Ingredientes
  {
    'afh85qly': {
      'es': 'Ingredientes para :  ',
      'en': '',
    },
    'c9fvva86': {
      'es': 'Takoyaki',
      'en': '',
    },
    'k4ep0fxt': {
      'es': 'Ingredientes:',
      'en': '',
    },
    'a5euy8yd': {
      'es':
          '    Huevos\n    Harina\n    Polvo de Dashi\n    Salsa de soja\n    Pulpo/Tako\n    Cebollas verdes\n    Tenkasu\n    Salsa Takoyaki\n    Mayonesa Kewpie\n    Copos de Bonito\n    Algas\nUna sartén Takoyaki\n    ',
      'en': '',
    },
    '47u8gz8w': {
      'es': 'Tiempo de preparacion:  25 minutos',
      'en': '',
    },
    'ee3k6eox': {
      'es': 'Una recomendacion para la \n preparacion:',
      'en': '',
    },
    'osclhjkf': {
      'es':
          'Nunc vitae ornare mauris. \nEtiam aliquet, elit sit amet \nsodales gravida, \nligula lectus consequat \npurus, iaculis sagittis \neros mi consectetur.',
      'en': '',
    },
    'uxknik56': {
      'es': 'Receta',
      'en': '',
    },
    '7p9aptib': {
      'es': 'Nutrientes',
      'en': '',
    },
    'fwga93pc': {
      'es': 'ReceBuddy',
      'en': '',
    },
    'zauw3iky': {
      'es': 'Home',
      'en': '',
    },
  },
  // Nutrientes
  {
    'lbs2ti1u': {
      'es': 'Nutrientes en: ',
      'en': '',
    },
    '74l8x7tn': {
      'es': 'Takoyaki Japones',
      'en': '',
    },
    'bl320sua': {
      'es': 'Calorias:',
      'en': '',
    },
    'y0csy0e3': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    '8ldvrrzv': {
      'es': 'Grasas:',
      'en': '',
    },
    'eembcrr1': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    'tgq973zz': {
      'es': 'Grasas Saturadas:',
      'en': '',
    },
    '5clc4296': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    'kxvhhm7g': {
      'es': 'Carbohidratos:',
      'en': '',
    },
    'h4ut94ce': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    'nhpjgefk': {
      'es': 'Colesterol:',
      'en': '',
    },
    '4lmb9x6h': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    'bdks7533': {
      'es': 'Sodio:',
      'en': '',
    },
    'iat9wz7n': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    '9q46d8wh': {
      'es': 'Azucar:',
      'en': '',
    },
    'wwfl0mor': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    '920ad68y': {
      'es': 'Proteína:',
      'en': '',
    },
    'tn0hmfdd': {
      'es': '\nPorcentaje necesario diario:',
      'en': '',
    },
    'lz8iduae': {
      'es': 'Receta',
      'en': '',
    },
    'frujlu8v': {
      'es': 'ReceBuddy',
      'en': '',
    },
    'gawci2nv': {
      'es': 'Home',
      'en': '',
    },
  },
  // Login
  {
    'x2fwbgz9': {
      'es': 'ReceBuddy',
      'en': '',
    },
    '67vxenv2': {
      'es': 'Sign In',
      'en': '',
    },
    '5gpce7gv': {
      'es': 'Correo electronico',
      'en': '',
    },
    'pcqhd25h': {
      'es': 'Password',
      'en': '',
    },
    'cikvov7l': {
      'es': 'Login',
      'en': '',
    },
    '8qfwfk2q': {
      'es': 'Forgot Password?',
      'en': '',
    },
    'i58e9itv': {
      'es': 'Or use a social account to login',
      'en': '',
    },
    'ay0ldfvr': {
      'es': 'Sign Up',
      'en': '',
    },
    'y2a7m8d1': {
      'es': 'Correo electronico',
      'en': '',
    },
    'vaqb9ibu': {
      'es': 'Password',
      'en': '',
    },
    'b1f7l7mx': {
      'es': 'Confirma tu Password',
      'en': '',
    },
    'x72tkds6': {
      'es': 'Create Account',
      'en': '',
    },
  },
  // ejemplo
  {
    'c465wpm2': {
      'es': 'Page Title',
      'en': '',
    },
    '7hfdmxux': {
      'es': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'g7q7fisf': {
      'es': '',
      'en': '',
    },
    'y086m8e2': {
      'es': '',
      'en': '',
    },
    'frvmjx46': {
      'es': '',
      'en': '',
    },
    '5kr5rr3w': {
      'es': '',
      'en': '',
    },
    'qvvouyo3': {
      'es': '',
      'en': '',
    },
    '2mfzg6qr': {
      'es': '',
      'en': '',
    },
    '0ps292k3': {
      'es': '',
      'en': '',
    },
    'dj2ynjci': {
      'es': '',
      'en': '',
    },
    '2tf034vu': {
      'es': '',
      'en': '',
    },
    'ywrf2xmf': {
      'es': '',
      'en': '',
    },
    '7x4pe94h': {
      'es': '',
      'en': '',
    },
    'dqj5smwc': {
      'es': '',
      'en': '',
    },
    '4z3b7978': {
      'es': '',
      'en': '',
    },
    's4reyqvy': {
      'es': '',
      'en': '',
    },
    'p9vmokh0': {
      'es': '',
      'en': '',
    },
    'vpixa8gm': {
      'es': '',
      'en': '',
    },
    '4rtqaya5': {
      'es': '',
      'en': '',
    },
    't6kukorg': {
      'es': '',
      'en': '',
    },
    'beqyis61': {
      'es': '',
      'en': '',
    },
    'ya3yh6q4': {
      'es': '',
      'en': '',
    },
    '0mdq642a': {
      'es': '',
      'en': '',
    },
    'qqjkbdwk': {
      'es': '',
      'en': '',
    },
    'dcw88n8n': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
