import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ko', 'es', 'zh_Hans'];

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
    String? enText = '',
    String? koText = '',
    String? esText = '',
    String? zh_HansText = '',
  }) =>
      [enText, koText, esText, zh_HansText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // AskUserAccount
  {
    'pj9lx88d': {
      'en': 'Join Us & Get Exclusive Contents',
      'es': 'Únase a nosotros y obtenga contenidos exclusivos',
      'ko': '저희와 함께 하시고 독점 콘텐츠를 받아보세요',
      'zh_Hans': '加入我们并获取独家内容',
    },
    'wc00cxs7': {
      'en': 'Login for external users',
      'es': 'Inicio de sesión para usuarios externos',
      'ko': '외부 사용자를 위한 로그인',
      'zh_Hans': '外部用户登录',
    },
    'np72upe8': {
      'en': 'Log in for internal users',
      'es': 'Iniciar sesión para usuarios internos',
      'ko': '내부 사용자를 위해 로그인하세요',
      'zh_Hans': '内部用户登录',
    },
    'zq5dyw1z': {
      'en': 'Use Without Account',
      'es': 'Usar sin cuenta',
      'ko': '계정 없이 사용',
      'zh_Hans': '无需账户即可使用',
    },
    '64x992v5': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // SignUp
  {
    'dsyp0s43': {
      'en': 'Founders League',
      'es': 'Liga de Fundadores',
      'ko': '창립자 리그',
      'zh_Hans': '创始人联盟',
    },
    'ehcvxy7m': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'ko': '로그인',
      'zh_Hans': '登入',
    },
    'e3l8ge4j': {
      'en': 'For Students',
      'es': 'Para estudiantes',
      'ko': '학생들을 위해',
      'zh_Hans': '对于学生',
    },
    'u8frn5bd': {
      'en': 'Let\'s begin by filling up the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'ko': '우선 아래 양식을 작성해 보겠습니다.',
      'zh_Hans': '让我们从填写下面的表格开始。',
    },
    '9z2r1pyr': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'ko': '이메일',
      'zh_Hans': '电子邮件',
    },
    'vtrfacu8': {
      'en': 'Password',
      'es': 'Contraseña',
      'ko': '비밀번호',
      'zh_Hans': '密码',
    },
    'e48i7n5s': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'ko': '비밀번호 확인',
      'zh_Hans': '确认密码',
    },
    'xqnbocb7': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'ko': '계정 생성',
      'zh_Hans': '创建账户',
    },
    '2sty83pn': {
      'en': 'Or sign up with',
      'es': 'O regístrate con',
      'ko': '또는 가입하세요',
      'zh_Hans': '或注册',
    },
    'r8q8d1pi': {
      'en': 'Google Account',
      'es': 'Cuenta de Google',
      'ko': '구글 계정',
      'zh_Hans': 'Google 帐户',
    },
    'qaoqe5o7': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'ko': '가입하기',
      'zh_Hans': '报名',
    },
    'vveo75ll': {
      'en': 'For Faculty',
      'es': 'Para la facultad',
      'ko': '교수진을 위해',
      'zh_Hans': '对于教师',
    },
    'corvdpx7': {
      'en': 'Let\'s begin by filling up the form below.',
      'es': 'Comencemos llenando el formulario a continuación.',
      'ko': '우선 아래 양식을 작성해 보겠습니다.',
      'zh_Hans': '让我们从填写下面的表格开始。',
    },
    'ti05lsjv': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'ko': '이메일',
      'zh_Hans': '电子邮件',
    },
    'cz43uwus': {
      'en': 'Password',
      'es': 'Contraseña',
      'ko': '비밀번호',
      'zh_Hans': '密码',
    },
    'hqwzlvdy': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'ko': '비밀번호 확인',
      'zh_Hans': '确认密码',
    },
    'zprm2sa1': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'ko': '계정 생성',
      'zh_Hans': '创建账户',
    },
    'r2ktfe76': {
      'en': 'Or sign up with',
      'es': 'O regístrate con',
      'ko': '또는 가입하세요',
      'zh_Hans': '或注册',
    },
    'yx2n85dw': {
      'en': 'Google Account',
      'es': 'Cuenta de Google',
      'ko': '구글 계정',
      'zh_Hans': 'Google 帐户',
    },
    'hb5hs4c6': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // Latest
  {
    'hgnuhew8': {
      'en': 'Founders League',
      'es': 'Liga de Fundadores',
      'ko': '창립자 리그',
      'zh_Hans': '创始人联盟',
    },
    'emmcrds8': {
      'en': 'Latest Videos',
      'es': 'Últimos vídeos',
      'ko': '최신 영상',
      'zh_Hans': '最新影片',
    },
    'v6z0xifj': {
      'en': 'More Videos',
      'es': 'Más vídeos',
      'ko': '더 많은 영상',
      'zh_Hans': '更多视频',
    },
    'rz8t5ba6': {
      'en': 'Latest News & Articles ',
      'es': 'Últimas noticias y artículos',
      'ko': '최신 뉴스 및 기사',
      'zh_Hans': '最新新闻和文章',
    },
    'ti115n6p': {
      'en': 'More Articles',
      'es': 'Más artículos',
      'ko': '더 많은 기사',
      'zh_Hans': '更多文章',
    },
    't7i35lpx': {
      'en': 'Latest',
      'es': 'El último',
      'ko': '최신',
      'zh_Hans': '最新的',
    },
  },
  // FL
  {
    '42t686ux': {
      'en': 'Founders League',
      'es': 'Liga de Fundadores',
      'ko': '창립자 리그',
      'zh_Hans': '创始人联盟',
    },
    '5kapljds': {
      'en': 'Read & Watch',
      'es': 'Leer y mirar',
      'ko': '읽고 시청하기',
      'zh_Hans': '阅读和观看',
    },
    'o216pkm3': {
      'en': 'About the Founders League',
      'es': 'Acerca de la Liga de Fundadores',
      'ko': '창립자 리그 소개',
      'zh_Hans': '关于创始人联盟',
    },
    '0onnqlhz': {
      'en': 'Open Webpage',
      'es': 'Abrir página web',
      'ko': '웹페이지 열기',
      'zh_Hans': '打开网页',
    },
    'a380dit2': {
      'en': 'FL',
      'es': 'Florida',
      'ko': '플.',
      'zh_Hans': '佛罗里达州',
    },
  },
  // WelcomePage
  {
    'wzipcdrn': {
      'en': 'Welcome to the Founders League',
      'es': 'Bienvenidos a la Liga de Fundadores',
      'ko': 'Founders League에 오신 것을 환영합니다',
      'zh_Hans': '欢迎加入创始人联盟',
    },
    'oqo0t0q2': {
      'en':
          'We are nationally recognized as one of the most competitive and respected leagues in the country.',
      'es':
          'Somos reconocidos a nivel nacional como una de las ligas más competitivas y respetadas del país.',
      'ko': '우리는 전국적으로 가장 경쟁력 있고 존경받는 리그 중 하나로 인정받고 있습니다.',
      'zh_Hans': '我们被全国公认为全国最具竞争力和最受尊敬的联盟之一。',
    },
    'ij0xxqnj': {
      'en': 'Personalized Sports Contents',
      'es': 'Contenidos deportivos personalizados',
      'ko': '개인화된 스포츠 콘텐츠',
      'zh_Hans': '个性化体育内容',
    },
    '8y7488ft': {
      'en':
          'Enjoy each contents specialized only for each Founders League students.',
      'es':
          'Disfruta de cada contenido especializado solo para cada alumno de Founders League.',
      'ko': '파운더스 리그 각 학생만을 위해 특화된 콘텐츠를 즐겨보세요.',
      'zh_Hans': '享受仅为每个创始人联盟学生专门提供的每个内容。',
    },
    '7rpu0e28': {
      'en': 'Everything about Athletics',
      'es': 'Todo sobre el atletismo',
      'ko': '육상에 관한 모든 것',
      'zh_Hans': '关于田径的一切',
    },
    'bt0rs9xg': {
      'en': 'Enjoy. ',
      'es': 'Disfrutar.',
      'ko': '즐기다.',
      'zh_Hans': '享受。',
    },
    'pulhj7tx': {
      'en': 'Next',
      'es': 'Próximo',
      'ko': '다음',
      'zh_Hans': '下一个',
    },
    '7nung07t': {
      'en': 'Skip',
      'es': 'Saltar',
      'ko': '건너뛰다',
      'zh_Hans': '跳过',
    },
    'twcypvku': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // Table
  {
    'mjra6w1t': {
      'en': 'FL',
      'es': 'Florida',
      'ko': '플.',
      'zh_Hans': '佛罗里达州',
    },
    'eg3ytnuw': {
      'en': 'M.D.',
      'es': 'MARYLAND.',
      'ko': '의학 박사',
      'zh_Hans': '医学博士',
    },
    '9cyk5wi9': {
      'en': 'Tab View 2',
      'es': 'Vista de pestaña 2',
      'ko': '탭 보기 2',
      'zh_Hans': '标签视图 2',
    },
    '36evcr2j': {
      'en': 'Archibald',
      'es': 'Archibaldo',
      'ko': '아치볼드',
      'zh_Hans': '阿奇博尔德',
    },
    'w9lfmpa0': {
      'en': 'Tab View 3',
      'es': 'Vista de pestaña 3',
      'ko': '탭 보기 3',
      'zh_Hans': '标签视图 3',
    },
    'exfamsce': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // Results
  {
    'wycke26f': {
      'en': 'Results',
      'es': 'Resultados',
      'ko': '결과',
      'zh_Hans': '结果',
    },
    'j413kldk': {
      'en': 'Fall',
      'es': 'Caer',
      'ko': '떨어지다',
      'zh_Hans': '落下',
    },
    'lprjtypa': {
      'en': 'Football',
      'es': 'Fútbol americano',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'nrzashc6': {
      'en': 'Soccer',
      'es': 'Fútbol',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    '9s0ldecz': {
      'en': 'Cross Country',
      'es': 'A campo traviesa',
      'ko': '크로스컨트리',
      'zh_Hans': '越野',
    },
    '6nv1wloq': {
      'en': 'Select a Sport...',
      'es': 'Seleccione un deporte...',
      'ko': '스포츠를 선택하세요...',
      'zh_Hans': '选择一项运动...',
    },
    'a6g3tizc': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'wjjnrgyn': {
      'en': 'Avon Old Farms',
      'es': 'Antiguas granjas de Avon',
      'ko': '에이번 올드 팜',
      'zh_Hans': '雅芳旧农场',
    },
    '4dqolzs5': {
      'en': 'Choate',
      'es': 'Choate',
      'ko': '초트',
      'zh_Hans': '乔特',
    },
    'm7wsd2bo': {
      'en': 'Kent',
      'es': 'Kent',
      'ko': '켄트',
      'zh_Hans': '肯特',
    },
    'r52risme': {
      'en': 'Miss Porter\'s',
      'es': 'De la señorita Porter',
      'ko': '미스 포터',
      'zh_Hans': '波特小姐',
    },
    'xfm4i9bf': {
      'en': 'Taft',
      'es': 'Taft',
      'ko': '태프트',
      'zh_Hans': '塔夫脱',
    },
    'l82oci6q': {
      'en': 'Westminster',
      'es': 'Westminster',
      'ko': '영국 국회 의사당',
      'zh_Hans': '威斯敏斯特',
    },
    'tohdzxb7': {
      'en': 'Hotchkiss',
      'es': 'Beso caliente',
      'ko': '호치키스',
      'zh_Hans': '霍奇基斯',
    },
    'tgtqk5y3': {
      'en': 'Ethel Walker',
      'es': 'Ethel Walker',
      'ko': '에델 워커',
      'zh_Hans': '埃塞尔·沃克',
    },
    'sylvahdi': {
      'en': 'Kingswood Oxford',
      'es': 'Oxford de Kingswood',
      'ko': '킹스우드 옥스포드',
      'zh_Hans': '牛津金斯伍德',
    },
    'wwvcxc7s': {
      'en': 'Select a School...',
      'es': 'Seleccione una escuela...',
      'ko': '학교를 선택하세요...',
      'zh_Hans': '选择一所学校...',
    },
    '492sya0a': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    '4zjr5eds': {
      'en': 'Winter',
      'es': 'Invierno',
      'ko': '겨울',
      'zh_Hans': '冬天',
    },
    '6w8rpg1n': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
    'v189sv61': {
      'en': 'Basketball',
      'es': 'Baloncesto',
      'ko': '농구',
      'zh_Hans': '篮球',
    },
    '2cgyr6sf': {
      'en': 'Squash',
      'es': 'Calabaza',
      'ko': '스쿼시',
      'zh_Hans': '壁球',
    },
    '9uxfkyu0': {
      'en': 'Swimming',
      'es': 'Nadar',
      'ko': '수영',
      'zh_Hans': '游泳',
    },
    'vrc2im6n': {
      'en': 'Wrestling',
      'es': 'Lucha',
      'ko': '레슬링',
      'zh_Hans': '摔角',
    },
    'qz0t2g0i': {
      'en': 'Select a Sport...',
      'es': 'Seleccione un deporte...',
      'ko': '스포츠를 선택하세요...',
      'zh_Hans': '选择一项运动...',
    },
    'rizhd16t': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'hq25kqsa': {
      'en': 'Avon Old Farms',
      'es': 'Antiguas granjas de Avon',
      'ko': '에이번 올드 팜',
      'zh_Hans': '雅芳旧农场',
    },
    'sa591w5s': {
      'en': 'Choate',
      'es': 'Choate',
      'ko': '초트',
      'zh_Hans': '乔特',
    },
    'tf3vbyvr': {
      'en': 'Kent',
      'es': 'Kent',
      'ko': '켄트',
      'zh_Hans': '肯特',
    },
    '2we9jp05': {
      'en': 'Miss Porter\'s',
      'es': 'De la señorita Porter',
      'ko': '미스 포터',
      'zh_Hans': '波特小姐',
    },
    'kf8wo05g': {
      'en': 'Taft',
      'es': 'Taft',
      'ko': '태프트',
      'zh_Hans': '塔夫脱',
    },
    '3vhmi8i3': {
      'en': 'Westminster',
      'es': 'Westminster',
      'ko': '영국 국회 의사당',
      'zh_Hans': '威斯敏斯特',
    },
    'f43j3vst': {
      'en': 'Hotchkiss',
      'es': 'Beso caliente',
      'ko': '호치키스',
      'zh_Hans': '霍奇基斯',
    },
    'nrw7tr5b': {
      'en': 'Ethel Walker',
      'es': 'Ethel Walker',
      'ko': '에델 워커',
      'zh_Hans': '埃塞尔·沃克',
    },
    'hw56piys': {
      'en': 'Kingswood Oxford',
      'es': 'Oxford de Kingswood',
      'ko': '킹스우드 옥스포드',
      'zh_Hans': '牛津金斯伍德',
    },
    'oa6so5ii': {
      'en': 'Select a School...',
      'es': 'Seleccione una escuela...',
      'ko': '학교를 선택하세요...',
      'zh_Hans': '选择一所学校...',
    },
    'rq8mc14x': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'ixab9izo': {
      'en': 'Spring',
      'es': 'Primavera',
      'ko': '봄',
      'zh_Hans': '春天',
    },
    '5fj26oyy': {
      'en': 'Baseball',
      'es': 'Béisbol',
      'ko': '야구',
      'zh_Hans': '棒球',
    },
    'mxb1bx3k': {
      'en': 'Lacrosse',
      'es': 'Lacrosse',
      'ko': '라크로스',
      'zh_Hans': '长曲棍球',
    },
    'fxihi5p8': {
      'en': 'Golf',
      'es': 'Golf',
      'ko': '골프',
      'zh_Hans': '高尔夫球',
    },
    '94v46l0o': {
      'en': 'Track and Field',
      'es': 'Atletismo',
      'ko': '육상 경기',
      'zh_Hans': '田径',
    },
    'k37iquqn': {
      'en': 'Tennis',
      'es': 'Tenis',
      'ko': '테니스',
      'zh_Hans': '网球',
    },
    'yd4dh934': {
      'en': 'Select a Sport...',
      'es': 'Seleccione un deporte...',
      'ko': '스포츠를 선택하세요...',
      'zh_Hans': '选择一项运动...',
    },
    'axso0wap': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'kxn9zzsu': {
      'en': 'Avon Old Farms',
      'es': 'Antiguas granjas de Avon',
      'ko': '에이번 올드 팜',
      'zh_Hans': '雅芳旧农场',
    },
    '4l2n89w3': {
      'en': 'Choate',
      'es': 'Choate',
      'ko': '초트',
      'zh_Hans': '乔特',
    },
    'vbgzlmv1': {
      'en': 'Kent',
      'es': 'Kent',
      'ko': '켄트',
      'zh_Hans': '肯特',
    },
    'ip999alx': {
      'en': 'Miss Porter\'s',
      'es': 'De la señorita Porter',
      'ko': '미스 포터',
      'zh_Hans': '波特小姐',
    },
    'x6pijlfq': {
      'en': 'Taft',
      'es': 'Taft',
      'ko': '태프트',
      'zh_Hans': '塔夫脱',
    },
    'dhelzi45': {
      'en': 'Westminster',
      'es': 'Westminster',
      'ko': '영국 국회 의사당',
      'zh_Hans': '威斯敏斯特',
    },
    'q2t9xiu5': {
      'en': 'Hotchkiss',
      'es': 'Beso caliente',
      'ko': '호치키스',
      'zh_Hans': '霍奇基斯',
    },
    'lu35l93s': {
      'en': 'Ethel Walker',
      'es': 'Ethel Walker',
      'ko': '에델 워커',
      'zh_Hans': '埃塞尔·沃克',
    },
    'q1og0dt3': {
      'en': 'Kingswood Oxford',
      'es': 'Oxford de Kingswood',
      'ko': '킹스우드 옥스포드',
      'zh_Hans': '牛津金斯伍德',
    },
    'lzabss4g': {
      'en': 'Select a School...',
      'es': 'Seleccione una escuela...',
      'ko': '학교를 선택하세요...',
      'zh_Hans': '选择一所学校...',
    },
    '219v5a9d': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'iccb991g': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // schoolList
  {
    'nll0pxcs': {
      'en': 'Founders League Schools ',
      'es': 'Escuelas de la Liga de Fundadores',
      'ko': '창립자 리그 학교',
      'zh_Hans': '创始人联盟学校',
    },
    'z8qqnzmx': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // EachSchoolProfile
  {
    'ozztud4r': {
      'en': 'Overview',
      'es': 'Descripción general',
      'ko': '개요',
      'zh_Hans': '概述',
    },
    'n3e7zgbm': {
      'en': 'Athletics',
      'es': 'Atletismo',
      'ko': '체육 실기',
      'zh_Hans': '竞技',
    },
    '4r5zbjmh': {
      'en': 'Tab View 2',
      'es': 'Vista de pestaña 2',
      'ko': '탭 보기 2',
      'zh_Hans': '标签视图 2',
    },
    'cv80c6wj': {
      'en': 'Fixtures',
      'es': 'Accesorios',
      'ko': '비품',
      'zh_Hans': '固定装置',
    },
    'wdri7jj6': {
      'en': 'Tab View 3',
      'es': 'Vista de pestaña 3',
      'ko': '탭 보기 3',
      'zh_Hans': '标签视图 3',
    },
    '77oouqd8': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // Profiles
  {
    'lu0l8qf4': {
      'en': 'My Profile',
      'es': 'Mi perfil',
      'ko': '내 프로필',
      'zh_Hans': '我的个人资料',
    },
    '3quryo3s': {
      'en': 'My Profile',
      'es': 'Mi perfil',
      'ko': '내 프로필',
      'zh_Hans': '我的个人资料',
    },
    '38ip6pnc': {
      'en': 'My Account Information',
      'es': 'Información de mi cuenta',
      'ko': '내 계정 정보',
      'zh_Hans': '我的帐户信息',
    },
    '67f3sf5s': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'ko': '알림',
      'zh_Hans': '通知',
    },
    'scuw66is': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'ko': '프로필 편집',
      'zh_Hans': '編輯資料',
    },
    'k5035thz': {
      'en': 'Support',
      'es': 'Apoyo',
      'ko': '지원하다',
      'zh_Hans': '支持',
    },
    'e42oj859': {
      'en': 'Tutorial',
      'es': 'Tutorial',
      'ko': '지도 시간',
      'zh_Hans': '教程',
    },
    '9sk5i6ky': {
      'en': 'Submit a Bug',
      'es': 'Enviar un error',
      'ko': '버그 제출',
      'zh_Hans': '提交 Bug',
    },
    'tl4fh754': {
      'en': 'My Team',
      'es': 'Mi equipo',
      'ko': '내 팀',
      'zh_Hans': '我的团队',
    },
    'oa0tia3e': {
      'en': 'Log Out',
      'es': 'Finalizar la sesión',
      'ko': '로그아웃',
      'zh_Hans': '登出',
    },
    'b95j5wa1': {
      'en': 'My Profile',
      'es': 'Mi perfil',
      'ko': '내 프로필',
      'zh_Hans': '我的个人资料',
    },
    'phyulawp': {
      'en': 'My Account Information',
      'es': 'Información de mi cuenta',
      'ko': '내 계정 정보',
      'zh_Hans': '我的帐户信息',
    },
    '5ikk48tb': {
      'en': 'Notification',
      'es': 'Notificación',
      'ko': '공고',
      'zh_Hans': '通知',
    },
    '4rh79537': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'ko': '프로필 편집',
      'zh_Hans': '編輯資料',
    },
    'ht4g5uxr': {
      'en': 'Support',
      'es': 'Apoyo',
      'ko': '지원하다',
      'zh_Hans': '支持',
    },
    'rbururij': {
      'en': 'Tutorial',
      'es': 'Tutorial',
      'ko': '지도 시간',
      'zh_Hans': '教程',
    },
    'djdv36qt': {
      'en': 'Submit a Bug',
      'es': 'Enviar un error',
      'ko': '버그 제출',
      'zh_Hans': '提交 Bug',
    },
    '2m47jp4f': {
      'en': 'Admin Activity',
      'es': 'Actividad de administración',
      'ko': '관리자 활동',
      'zh_Hans': '管理员活动',
    },
    'v8pmddug': {
      'en': 'Log Out',
      'es': 'Finalizar la sesión',
      'ko': '로그아웃',
      'zh_Hans': '登出',
    },
    '1tgtm5nh': {
      'en': 'Please Crate an Account to Get Full Access to All Features of FL!',
      'es':
          '¡Crea una cuenta para obtener acceso completo a todas las funciones de FL!',
      'ko': 'FL의 모든 기능을 사용하려면 계정을 만드세요!',
      'zh_Hans': '请创建一个帐户以获取 FL 的所有功能的完全访问权限！',
    },
    '2hsmtwd3': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'ko': '계정 생성',
      'zh_Hans': '创建账户',
    },
    'x6k5qfvs': {
      'en': 'School Profile',
      'es': 'Perfil de la escuela',
      'ko': '학교 프로필',
      'zh_Hans': '学校简介',
    },
    'v3ylgnr4': {
      'en': 'admissions@avonoldfarms.com',
      'es': 'admisiones@avonoldfarms.com',
      'ko': 'admissions@avonoldfarms.com',
      'zh_Hans': 'admissions@avonoldfarms.com',
    },
    'gpqwqlpj': {
      'en': 'Your Account',
      'es': 'Su cuenta',
      'ko': '귀하의 계정',
      'zh_Hans': '您的帐户',
    },
    'htyu5u2d': {
      'en': 'Edit My School',
      'es': 'Editar mi escuela',
      'ko': '내 학교 편집',
      'zh_Hans': '编辑我的学校',
    },
    'f0c62ztw': {
      'en': 'Notification Settings',
      'es': 'Configuración de notificaciones',
      'ko': '알림 설정',
      'zh_Hans': '通知设置',
    },
    'jqiu1ijv': {
      'en': 'Athletics',
      'es': 'Atletismo',
      'ko': '체육 실기',
      'zh_Hans': '竞技',
    },
    'fj6o8bnz': {
      'en': 'Meet the Athletics Office',
      'es': 'Conozca la Oficina de Atletismo',
      'ko': '운동 사무실을 만나보세요',
      'zh_Hans': '了解体育办公室',
    },
    'qfqwcrly': {
      'en': 'View Athletics Team',
      'es': 'Ver equipo de atletismo',
      'ko': '육상팀 보기',
      'zh_Hans': '查看田径队',
    },
    'ud65csbf': {
      'en': 'View Official Social Media',
      'es': 'Ver redes sociales oficiales',
      'ko': '공식 소셜 미디어 보기',
      'zh_Hans': '查看官方社交媒体',
    },
    '7v22udik': {
      'en': 'Please Crate an Account to Get Full Access to all Features of FL!',
      'es':
          '¡Crea una cuenta para obtener acceso completo a todas las funciones de FL!',
      'ko': 'FL의 모든 기능을 사용하려면 계정을 만드세요!',
      'zh_Hans': '请创建一个帐户以获取 FL 的所有功能的完全访问权限！',
    },
    'yyt5ncqr': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'ko': '계정 생성',
      'zh_Hans': '创建账户',
    },
    '9go324ko': {
      'en': 'Profiles',
      'es': 'Perfiles',
      'ko': '프로필',
      'zh_Hans': '个人资料',
    },
  },
  // NotificationSettings
  {
    '872ge8se': {
      'en': 'Settings Page',
      'es': 'Página de configuración',
      'ko': '설정 페이지',
      'zh_Hans': '设置页面',
    },
    'c5kcoj4k': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'es':
          'Elija qué notificaciones desea recibir a continuación y actualizaremos la configuración.',
      'ko': '아래에서 어떤 알림을 받고 싶은지 선택하면 설정이 업데이트됩니다.',
      'zh_Hans': '选择您想要接收的通知，我们将更新设置。',
    },
    's1x8b7ch': {
      'en': 'Push Notifications',
      'es': 'Notificaciones push',
      'ko': '푸시 알림',
      'zh_Hans': '推送通知',
    },
    'v8ajxbh3': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'es':
          'Recibe notificaciones Push de nuestra aplicación de forma semi regular.',
      'ko': '정기적으로 당사 애플리케이션에서 푸시 알림을 받으세요.',
      'zh_Hans': '定期从我们的应用程序接收推送通知。',
    },
    'piljihjp': {
      'en': 'Match Reminders',
      'es': 'Recordatorios de partidos',
      'ko': '경기 알림',
      'zh_Hans': '比赛提醒',
    },
    'jf9j2u4q': {
      'en': 'Receive a match reminder 1 hour before kick off.',
      'es': 'Recibe un recordatorio del partido 1 hora antes del inicio.',
      'ko': '경기 시작 1시간 전에 경기 알림을 받으세요.',
      'zh_Hans': '开赛前1小时收到比赛提醒。',
    },
    'yd1of7uh': {
      'en': 'Commitment Notification',
      'es': 'Notificación de compromiso',
      'ko': '약속 알림',
      'zh_Hans': '承诺通知',
    },
    'pzfzi8hv': {
      'en':
          'Recieve notifications relevant to your athletic team like alternation in meeting time and match dates. ',
      'es':
          'Recibe notificaciones relevantes para tu equipo deportivo como cambios en horarios de encuentros y fechas de partidos.',
      'ko': '경기 일정 및 미팅 시간 변경 등, 소속 운동팀과 관련된 알림을 받아보세요.',
      'zh_Hans': '接收与您的运动队相关的通知，如会议时间和比赛日期的变更。',
    },
    'yl9tocta': {
      'en': 'Change Changes',
      'es': 'Cambiar Cambios',
      'ko': '변경 변경',
      'zh_Hans': '更改变更',
    },
    '89po6m2m': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // UploadArticle
  {
    'mm9182q2': {
      'en': 'Upload Your Article',
      'es': 'Sube tu artículo',
      'ko': '기사를 업로드하세요',
      'zh_Hans': '上传您的文章',
    },
    'gowq6zk4': {
      'en': 'Select the categories of your article below to get started. ',
      'es':
          'Seleccione las categorías de su artículo a continuación para comenzar.',
      'ko': '시작하려면 아래에서 기사 카테고리를 선택하세요.',
      'zh_Hans': '选择下面您的文章的类别即可开始。',
    },
    'nvz8a4fy': {
      'en': 'General',
      'es': 'General',
      'ko': '일반적인',
      'zh_Hans': '一般的',
    },
    'd4oxgrzj': {
      'en': 'Soccer',
      'es': 'Fútbol',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'bxbvb1eu': {
      'en': 'Cross Country',
      'es': 'A campo traviesa',
      'ko': '크로스컨트리',
      'zh_Hans': '越野',
    },
    '6kvwdkzc': {
      'en': 'Football',
      'es': 'Fútbol americano',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'bdx2jo22': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
    'a24wdign': {
      'en': 'Basketball',
      'es': 'Baloncesto',
      'ko': '농구',
      'zh_Hans': '篮球',
    },
    'cbp7m384': {
      'en': 'Swimming',
      'es': 'Nadar',
      'ko': '수영',
      'zh_Hans': '游泳',
    },
    '2pqtfxoe': {
      'en': 'Sqaush',
      'es': 'Aplastar',
      'ko': '스쿼시',
      'zh_Hans': '壁球',
    },
    'c6dgd8ub': {
      'en': 'Wrestling',
      'es': 'Lucha',
      'ko': '레슬링',
      'zh_Hans': '摔角',
    },
    '6cgl1c9g': {
      'en': 'Baseball',
      'es': 'Béisbol',
      'ko': '야구',
      'zh_Hans': '棒球',
    },
    'o94oqe1h': {
      'en': 'Golf',
      'es': 'Golf',
      'ko': '골프',
      'zh_Hans': '高尔夫球',
    },
    'fr67e2u8': {
      'en': 'Lacrosse',
      'es': 'Lacrosse',
      'ko': '라크로스',
      'zh_Hans': '长曲棍球',
    },
    'hpara0tl': {
      'en': 'Track and Field',
      'es': 'Atletismo',
      'ko': '육상 경기',
      'zh_Hans': '田径',
    },
    '0r3rng9i': {
      'en': 'For You',
      'es': 'Para ti',
      'ko': '당신을 위한',
      'zh_Hans': '为你',
    },
    '27lcqlhg': {
      'en':
          'Write down your article and upload the relevant images to share with the school community. ',
      'es':
          'Escribe tu artículo y sube las imágenes relevantes para compartir con la comunidad escolar.',
      'ko': '여러분의 기사를 쓰고 관련 이미지를 업로드해서 학교 커뮤니티와 공유해 보세요.',
      'zh_Hans': '写下您的文章并上传相关图片以与学校社区分享。',
    },
    'a3n055u1': {
      'en': 'Title',
      'es': 'Título',
      'ko': '제목',
      'zh_Hans': '标题',
    },
    'd1xeiiwc': {
      'en': 'Enter the title of your article',
      'es': 'Introduce el título de tu artículo',
      'ko': '기사 제목을 입력하세요',
      'zh_Hans': '输入文章标题',
    },
    'm7nr5spo': {
      'en': 'Subtitle 1',
      'es': 'Subtítulo 1',
      'ko': '자막 1',
      'zh_Hans': '字幕 1',
    },
    'cb0vpmn5': {
      'en': 'Enter the the subtitle',
      'es': 'Introduzca el subtítulo',
      'ko': '자막을 입력하세요',
      'zh_Hans': '输入字幕',
    },
    'ewp5fw09': {
      'en': 'Content 1',
      'es': 'Contenido 1',
      'ko': '내용 1',
      'zh_Hans': '内容 1',
    },
    '6p35z8bv': {
      'en': 'Write your first paragraph here...',
      'es': 'Escribe tu primer párrafo aquí...',
      'ko': '여기에 첫 번째 문단을 작성하세요...',
      'zh_Hans': '在这里写下你的第一段...',
    },
    '3pz8f0xk': {
      'en': 'Upload Thumbnail Image',
      'es': 'Subir imagen en miniatura',
      'ko': '썸네일 이미지 업로드',
      'zh_Hans': '上传缩略图',
    },
    'lmryl6fk': {
      'en': 'Delete Paragraph',
      'es': 'Eliminar párrafo',
      'ko': '문단 삭제',
      'zh_Hans': '删除段落',
    },
    'aqmgjmlf': {
      'en': 'Subtitle 2',
      'es': 'Subtítulo 2',
      'ko': '자막 2',
      'zh_Hans': '字幕 2',
    },
    'xfi28y9l': {
      'en': 'Enter the the subtitle',
      'es': 'Introduzca el subtítulo',
      'ko': '자막을 입력하세요',
      'zh_Hans': '输入字幕',
    },
    '55xw0cnm': {
      'en': 'Content 2',
      'es': 'Contenido 2',
      'ko': '내용 2',
      'zh_Hans': '内容 2',
    },
    'ef1msusr': {
      'en': 'Write your first paragraph here...',
      'es': 'Escribe tu primer párrafo aquí...',
      'ko': '여기에 첫 번째 문단을 작성하세요...',
      'zh_Hans': '在这里写下你的第一段...',
    },
    'u1gsl0nn': {
      'en': 'Upload Image',
      'es': 'Subir imagen',
      'ko': '이미지 업로드',
      'zh_Hans': '上传图片',
    },
    '3408ne90': {
      'en': 'Delete Paragraph',
      'es': 'Eliminar párrafo',
      'ko': '문단 삭제',
      'zh_Hans': '删除段落',
    },
    '99vbnrkz': {
      'en': 'Subtitle 3',
      'es': 'Subtítulo 3',
      'ko': '자막 3',
      'zh_Hans': '字幕 3',
    },
    'x68yo8eo': {
      'en': 'Enter the the subtitle',
      'es': 'Introduzca el subtítulo',
      'ko': '자막을 입력하세요',
      'zh_Hans': '输入字幕',
    },
    'auohc6xd': {
      'en': 'Content 3',
      'es': 'Contenido 3',
      'ko': '내용 3',
      'zh_Hans': '内容 3',
    },
    '1r90x0b8': {
      'en': 'Write your first paragraph here...',
      'es': 'Escribe tu primer párrafo aquí...',
      'ko': '여기에 첫 번째 문단을 작성하세요...',
      'zh_Hans': '在这里写下你的第一段...',
    },
    'tzq8txhu': {
      'en': 'Upload Image',
      'es': 'Subir imagen',
      'ko': '이미지 업로드',
      'zh_Hans': '上传图片',
    },
    '9o6jm45v': {
      'en': 'Add a Paragraph',
      'es': 'Agregar un párrafo',
      'ko': '문단 추가',
      'zh_Hans': '添加段落',
    },
    '1o15k06q': {
      'en': 'Submit',
      'es': 'Entregar',
      'ko': '제출하다',
      'zh_Hans': '提交',
    },
  },
  // ArticleDetails
  {
    'fx15jglt': {
      'en': '#ux',
      'es': '#ux',
      'ko': '#유엑스',
      'zh_Hans': '#用户体验',
    },
    'qxu1xxjx': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // BugReport
  {
    'abtrbok9': {
      'en': 'Report a Bug ',
      'es': 'Reportar un error',
      'ko': '버그 신고',
      'zh_Hans': '报告错误',
    },
    'j6btnq3c': {
      'en':
          'Fill out the form below to submit a bug. Thank you for your concern.',
      'es':
          'Complete el formulario a continuación para informarnos sobre un error. Gracias por su preocupación.',
      'ko': '버그를 제출하려면 아래 양식을 작성하세요. 관심을 가져주셔서 감사합니다.',
      'zh_Hans': '填写下面的表格来提交错误。感谢您的关注。',
    },
    'tn27tbx8': {
      'en': 'Bug Name...',
      'es': 'Nombre del error...',
      'ko': '버그 이름...',
      'zh_Hans': '错误名称...',
    },
    '0y9vcyev': {
      'en': 'Short Description of what is going on...',
      'es': 'Breve descripción de lo que está pasando...',
      'ko': '무슨 일이 일어나고 있는지에 대한 간략한 설명...',
      'zh_Hans': '简要描述正在发生的事情...',
    },
    'oy71kvo8': {
      'en': 'Upload Screenshot',
      'es': 'Subir captura de pantalla',
      'ko': '스크린샷 업로드',
      'zh_Hans': '上传截图',
    },
    'd9vd61m4': {
      'en': 'Submit Ticket',
      'es': 'Enviar ticket',
      'ko': '티켓 제출',
      'zh_Hans': '提交工单',
    },
    'awm26er0': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // TeamOverview
  {
    '4o2g39sr': {
      'en': 'Team Preview',
      'es': 'Vista previa del equipo',
      'ko': '팀 미리보기',
      'zh_Hans': '球队预览',
    },
    '8kj4putq': {
      'en': 'At',
      'es': 'En',
      'ko': '~에',
      'zh_Hans': '在',
    },
    'zrk0c3rk': {
      'en': 'Team Info',
      'es': 'Información del equipo',
      'ko': '팀 정보',
      'zh_Hans': '团队信息',
    },
    'qssq6o65': {
      'en': 'Overview',
      'es': 'Descripción general',
      'ko': '개요',
      'zh_Hans': '概述',
    },
    'btmnxzb0': {
      'en': 'Official',
      'es': 'Oficial',
      'ko': '공식적인',
      'zh_Hans': '官方的',
    },
    '8m9iyrhu': {
      'en': 'Games',
      'es': 'Juegos',
      'ko': '계략',
      'zh_Hans': '游戏',
    },
    '6mqaiy4v': {
      'en': '2024-2025',
      'es': '25/08/2025 04:00:00Z',
      'ko': '2025-08-25T04:00:00Z',
      'zh_Hans': '2025-08-25T04：00：00Z',
    },
    'dqfiu9p9': {
      'en': '2023-2024',
      'es': '2024-08-24T04:00:00Z',
      'ko': '2024-08-24T04:00:00Z',
      'zh_Hans': '2024-08-24T04：00：00Z',
    },
    'xmsbssky': {
      'en': '2022-2023',
      'es': '23/08/2023 04:00:00Z',
      'ko': '2023-08-23T04:00:00Z',
      'zh_Hans': '2023-08-23T04：00：00Z',
    },
    '9zqntnwh': {
      'en': '2022-2023',
      'es': '23/08/2023 04:00:00Z',
      'ko': '2023-08-23T04:00:00Z',
      'zh_Hans': '2023-08-23T04：00：00Z',
    },
    '65tcdaog': {
      'en': '2021-2022',
      'es': '2022-08-22T04:00:00Z',
      'ko': '2022-08-22T04:00:00Z',
      'zh_Hans': '2022-08-22T04：00：00Z',
    },
    'tpj45v4r': {
      'en': '2020-2021',
      'es': '2021-08-21T04:00:00Z',
      'ko': '2021-08-21T04:00:00Z',
      'zh_Hans': '2021-08-21T04：00：00Z',
    },
    'ik1o6q6g': {
      'en': '2019-2020',
      'es': '2020-08-20T04:00:00Z',
      'ko': '2020-08-20T04:00:00Z',
      'zh_Hans': '2020-08-20T04：00：00Z',
    },
    'yqxs3owr': {
      'en': '2018-2019',
      'es': '19/08/2019 04:00:00Z',
      'ko': '2019-08-19T04:00:00Z',
      'zh_Hans': '2019-08-19T04：00：00Z',
    },
    '9c0nsu4h': {
      'en': '2017-2018',
      'es': '18/08/2018 04:00:00Z',
      'ko': '2018-08-18T04:00:00Z',
      'zh_Hans': '2018-08-18T04：00：00Z',
    },
    'gfc9ot3z': {
      'en': '2016-2017',
      'es': '17/08/2017 04:00:00Z',
      'ko': '2017-08-17T04:00:00Z',
      'zh_Hans': '2017-08-17T04：00：00Z',
    },
    'd18ogkyv': {
      'en': '2015-2016',
      'es': '16/08/2016 04:00:00Z',
      'ko': '2016-08-16T04:00:00Z',
      'zh_Hans': '2016-08-16T04：00：00Z',
    },
    '4w1re01k': {
      'en': 'Select Season...',
      'es': 'Seleccione temporada...',
      'ko': '시즌을 선택하세요...',
      'zh_Hans': '选择季节...',
    },
    'bz9ft7fi': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'xwrknjto': {
      'en': 'Teams',
      'es': 'Equipos',
      'ko': '팀',
      'zh_Hans': '团队',
    },
    'q9apyg6j': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // MatchPreview
  {
    'doxu6qks': {
      'en': 'Related',
      'es': 'Relacionado',
      'ko': '관련된',
      'zh_Hans': '有关的',
    },
    'ppz7qh1r': {
      'en': 'Related Videos',
      'es': 'Videos relacionados',
      'ko': '관련 동영상',
      'zh_Hans': '相关视频',
    },
    '2et59a2g': {
      'en': 'Related News',
      'es': 'Noticias relacionadas',
      'ko': '관련 뉴스',
      'zh_Hans': '相关新闻',
    },
    '3v436616': {
      'en': 'Stats',
      'es': 'Estadísticas',
      'ko': '통계',
      'zh_Hans': '统计资料',
    },
    '4kjdrbpv': {
      'en': 'Previous Matches',
      'es': 'Partidos anteriores',
      'ko': '이전 경기',
      'zh_Hans': '先前比赛',
    },
    'hufyekyp': {
      'en': 'More Articles',
      'es': 'Más artículos',
      'ko': '더 많은 기사',
      'zh_Hans': '更多文章',
    },
    '4rqcy4xk': {
      'en': 'This Season Overview',
      'es': 'Resumen de esta temporada',
      'ko': '이번 시즌 개요',
      'zh_Hans': '本赛季概览',
    },
    '21zzak5o': {
      'en': 'More',
      'es': 'Más',
      'ko': '더',
      'zh_Hans': '更多的',
    },
    '09nthsoz': {
      'en': 'Comments',
      'es': 'Comentarios',
      'ko': '댓글',
      'zh_Hans': '评论',
    },
    '1cnjzfr2': {
      'en': 'Leave a comment here...',
      'es': 'Deja un comentario aquí...',
      'ko': '여기에 댓글을 남겨주세요...',
      'zh_Hans': '在这里发表评论...',
    },
    'xxo9iwol': {
      'en': 'Send',
      'es': 'Enviar',
      'ko': '보내다',
      'zh_Hans': '发送',
    },
    '8j2jeq06': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AthleticTeams
  {
    'o2kqn1kq': {
      'en': 'Fall',
      'es': 'Caer',
      'ko': '떨어지다',
      'zh_Hans': '落下',
    },
    '4ds0vfe1': {
      'en': 'Football',
      'es': 'Fútbol americano',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    '3xtmptdf': {
      'en': 'Soccer',
      'es': 'Fútbol',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'cii2um1p': {
      'en': 'Cross Country',
      'es': 'A campo traviesa',
      'ko': '크로스컨트리',
      'zh_Hans': '越野',
    },
    '295z0bv9': {
      'en': 'Winter',
      'es': 'Invierno',
      'ko': '겨울',
      'zh_Hans': '冬天',
    },
    'jtgn0otr': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
    'snj8fn26': {
      'en': 'Basketball',
      'es': 'Baloncesto',
      'ko': '농구',
      'zh_Hans': '篮球',
    },
    '9heor8q0': {
      'en': 'Squash',
      'es': 'Calabaza',
      'ko': '스쿼시',
      'zh_Hans': '壁球',
    },
    '8k2j0kul': {
      'en': 'Swimming',
      'es': 'Nadar',
      'ko': '수영',
      'zh_Hans': '游泳',
    },
    'c5mpvhrf': {
      'en': 'Wrestling',
      'es': 'Lucha',
      'ko': '레슬링',
      'zh_Hans': '摔角',
    },
    'ho1kplb7': {
      'en': 'Spring',
      'es': 'Primavera',
      'ko': '봄',
      'zh_Hans': '春天',
    },
    'fkmf4txz': {
      'en': 'Baseball',
      'es': 'Béisbol',
      'ko': '야구',
      'zh_Hans': '棒球',
    },
    'fbbda9fq': {
      'en': 'Golf',
      'es': 'Golf',
      'ko': '골프',
      'zh_Hans': '高尔夫球',
    },
    'c9u69xvx': {
      'en': 'Lacrosse',
      'es': 'Lacrosse',
      'ko': '라크로스',
      'zh_Hans': '长曲棍球',
    },
    '8nt8elmg': {
      'en': 'Tennis',
      'es': 'Tenis',
      'ko': '테니스',
      'zh_Hans': '网球',
    },
    'sybexlm8': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // MatchOverview
  {
    'vbykdern': {
      'en': 'Overview',
      'es': 'Descripción general',
      'ko': '개요',
      'zh_Hans': '概述',
    },
    '1z6dl061': {
      'en': 'Match Highlights ',
      'es': 'Lo más destacado del partido',
      'ko': '경기 하이라이트',
      'zh_Hans': '比赛亮点',
    },
    'dsfami68': {
      'en': 'Official',
      'es': 'Oficial',
      'ko': '공식적인',
      'zh_Hans': '官方的',
    },
    '7mkzv01t': {
      'en': 'Community',
      'es': 'Comunidad',
      'ko': '지역 사회',
      'zh_Hans': '社区',
    },
    '1jshr5zd': {
      'en': 'Comments',
      'es': 'Comentarios',
      'ko': '댓글',
      'zh_Hans': '评论',
    },
    '7gg3cfzd': {
      'en': 'Leave a comment here...',
      'es': 'Deja un comentario aquí...',
      'ko': '여기에 댓글을 남겨주세요...',
      'zh_Hans': '在这里发表评论...',
    },
    'ozq7zkw1': {
      'en': 'Send',
      'es': 'Enviar',
      'ko': '보내다',
      'zh_Hans': '发送',
    },
    '9ddprixy': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // Fixtures
  {
    'i4a8sqaw': {
      'en': 'Fixtures',
      'es': 'Accesorios',
      'ko': '비품',
      'zh_Hans': '固定装置',
    },
    'xlp3l6ij': {
      'en': 'Fall',
      'es': 'Caer',
      'ko': '떨어지다',
      'zh_Hans': '落下',
    },
    'x8rzv0kg': {
      'en': 'Winter',
      'es': 'Invierno',
      'ko': '겨울',
      'zh_Hans': '冬天',
    },
    'kdf4e9e4': {
      'en': 'Spring',
      'es': 'Primavera',
      'ko': '봄',
      'zh_Hans': '春天',
    },
    '7nsb9twa': {
      'en': 'Select a Season...',
      'es': 'Seleccione una temporada...',
      'ko': '시즌을 선택하세요...',
      'zh_Hans': '选择一个季节...',
    },
    'nobv9cne': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'rst3b0ao': {
      'en': 'Football',
      'es': 'Fútbol americano',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'vl1nvk9j': {
      'en': 'Soccer',
      'es': 'Fútbol',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'xli8dhzt': {
      'en': 'Cross Country',
      'es': 'A campo traviesa',
      'ko': '크로스컨트리',
      'zh_Hans': '越野',
    },
    'h2hkem3d': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
    'mtep7as1': {
      'en': 'Basketball',
      'es': 'Baloncesto',
      'ko': '농구',
      'zh_Hans': '篮球',
    },
    'k9er8cf4': {
      'en': 'Squash',
      'es': 'Calabaza',
      'ko': '스쿼시',
      'zh_Hans': '壁球',
    },
    'bxog58im': {
      'en': 'Swimming',
      'es': 'Nadar',
      'ko': '수영',
      'zh_Hans': '游泳',
    },
    'vmviyvyx': {
      'en': 'Wrestling',
      'es': 'Lucha',
      'ko': '레슬링',
      'zh_Hans': '摔角',
    },
    'lz6rh06o': {
      'en': 'Baseball',
      'es': 'Béisbol',
      'ko': '야구',
      'zh_Hans': '棒球',
    },
    'ha8ae6us': {
      'en': 'Golf',
      'es': 'Golf',
      'ko': '골프',
      'zh_Hans': '高尔夫球',
    },
    'z3n58zbv': {
      'en': 'Lacrosse',
      'es': 'Lacrosse',
      'ko': '라크로스',
      'zh_Hans': '长曲棍球',
    },
    '2h1ypyt3': {
      'en': 'Tennis',
      'es': 'Tenis',
      'ko': '테니스',
      'zh_Hans': '网球',
    },
    'cpw9q9si': {
      'en': 'Select a Sport...',
      'es': 'Seleccione un deporte...',
      'ko': '스포츠를 선택하세요...',
      'zh_Hans': '选择一项运动...',
    },
    '29xmt5qu': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'ko': '항목을 검색하세요...',
      'zh_Hans': '搜索商品...',
    },
    'tnbzwpo5': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // Statistics
  {
    'bf1dyjkx': {
      'en': 'Statistics',
      'es': 'Estadística',
      'ko': '통계',
      'zh_Hans': '统计数据',
    },
    'wjvjc21s': {
      'en': '2023/2024 Top Stats',
      'es': 'Principales estadísticas 2023/2024',
      'ko': '2023/2024 최고 통계',
      'zh_Hans': '2023/2024 热门统计数据',
    },
    '1z8hfnka': {
      'en': 'Most Wins',
      'es': 'Mayoría de victorias',
      'ko': '가장 많은 승리',
      'zh_Hans': '获胜次数最多',
    },
    'nbemuuts': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
    'o9kg3wtn': {
      'en': 'This Week\'s Athlete',
      'es': 'El atleta de esta semana',
      'ko': '이번 주의 선수',
      'zh_Hans': '本周运动员',
    },
    'hsx5jdqi': {
      'en': 'Sean Park',
      'es': 'Parque Sean',
      'ko': '숀 파크',
      'zh_Hans': '肖恩·帕克',
    },
    'pjc29qnq': {
      'en': 'Most offensive',
      'es': 'Más ofensivo',
      'ko': '가장 공격적',
      'zh_Hans': '最具攻击性',
    },
    'dbr4b4rw': {
      'en': 'JV Baskeball',
      'es': 'Baloncesto JV',
      'ko': 'JV 농구',
      'zh_Hans': '初级篮球',
    },
    '2et49th5': {
      'en': 'Most Defensive',
      'es': 'Más defensivo',
      'ko': '가장 방어적',
      'zh_Hans': '最具防御力',
    },
    'y0gicnmn': {
      'en': 'Thirds Lacrosse',
      'es': 'Lacrosse de tercios',
      'ko': '서드 라크로스',
      'zh_Hans': '三分之一曲棍球',
    },
    'xxfvbjey': {
      'en': 'Related',
      'es': 'Relacionado',
      'ko': '관련된',
      'zh_Hans': '有关的',
    },
    'ymzrcp1f': {
      'en': 'Official',
      'es': 'Oficial',
      'ko': '공식적인',
      'zh_Hans': '官方的',
    },
    'y8bucn3t': {
      'en': 'View More in Instagram',
      'es': 'Ver más en Instagram',
      'ko': 'Instagram에서 더 보기',
      'zh_Hans': '在 Instagram 上查看更多',
    },
    'g1glg5bt': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminActivity
  {
    'azxpidlx': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // UserOnboarding
  {
    'ji2m63ke': {
      'en': 'Welcome!',
      'es': '¡Bienvenido!',
      'ko': '환영!',
      'zh_Hans': '欢迎！',
    },
    'xr2estzh': {
      'en':
          'Congrats for creating your account for FL! I am thrilled to get to know you more! ',
      'es':
          '¡Felicitaciones por crear tu cuenta en FL! ¡Estoy muy emocionada de conocerte más!',
      'ko': 'FL 계정을 만들어 주셔서 축하드립니다! 여러분을 더 알게 되어 기쁩니다!',
      'zh_Hans': '恭喜您创建了 FL 帐户！我很高兴能进一步了解您！',
    },
    'muhym9mr': {
      'en': 'Express Yourself!',
      'es': '¡Exprésate!',
      'ko': '자신을 표현하세요!',
      'zh_Hans': '表达你自己！',
    },
    'iiiyu0z3': {
      'en':
          'Please Tell About yourself so that we provide high-quality service.',
      'es':
          'Cuéntenos algo sobre usted para que podamos brindarle un servicio de alta calidad.',
      'ko': '고품질의 서비스를 제공할 수 있도록 본인에 대한 정보를 알려주세요.',
      'zh_Hans': '请介绍一下您自己，以便我们提供高质量的服务。',
    },
    'xu9mps4s': {
      'en': 'Last Step',
      'es': 'Último paso',
      'ko': '마지막 단계',
      'zh_Hans': '最后一步',
    },
    'ki1en7xe': {
      'en': 'Let\'s finish the onboarding by confirming your details below. ',
      'es':
          'Terminemos la incorporación llenando el formulario a continuación.',
      'ko': '아래 양식을 작성하여 온보딩을 마무리해 보세요.',
      'zh_Hans': '让我们通过填写下面的表格来完成入职培训。',
    },
    'yz3xhs2k': {
      'en': 'Please confirm if your information.',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'w4ily0cn': {
      'en': 'Yes',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'uor4jn5s': {
      'en': 'No',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'bsz0relg': {
      'en': 'Continue',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'mvxxkf2k': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminMatchSchedule
  {
    'd91s2eal': {
      'en': 'Month',
      'es': 'Mes',
      'ko': '월',
      'zh_Hans': '月',
    },
    'jed5fxzl': {
      'en': 'Coming Up',
      'es': 'Próximamente',
      'ko': '다가올 것',
      'zh_Hans': '接下来',
    },
    'qymz4nii': {
      'en': 'Week',
      'es': 'Semana',
      'ko': '주',
      'zh_Hans': '星期',
    },
    'w1k9ks9m': {
      'en': 'Coming Up',
      'es': 'Próximamente',
      'ko': '다가올 것',
      'zh_Hans': '接下来',
    },
    '60t912io': {
      'en': 'Schedule a Game',
      'es': 'Programar un juego',
      'ko': '게임 일정 잡기',
      'zh_Hans': '安排比赛',
    },
    '71xomomr': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AddGame
  {
    'wme2xxg0': {
      'en': 'Choate Rosemary Hall',
      'es': 'Salón de romero Choate',
      'ko': '초트 로즈메리 홀',
      'zh_Hans': '乔特罗斯玛丽中学',
    },
    'kt9ov7kb': {
      'en': 'The Taft School',
      'es': 'La escuela Taft',
      'ko': '태프트 학교',
      'zh_Hans': '塔夫脱学校',
    },
    '5a5escba': {
      'en': 'The Ethel Walker School',
      'es': 'La escuela Ethel Walker',
      'ko': '에델 워커 학교',
      'zh_Hans': '埃塞尔·沃克学校',
    },
    'bwlzixa7': {
      'en': 'The Hotchkiss School',
      'es': 'La escuela Hotchkiss',
      'ko': '호치키스 학교',
      'zh_Hans': '霍奇基斯学校',
    },
    'h6za7nx7': {
      'en': 'Kent School',
      'es': 'Escuela Kent',
      'ko': '켄트 스쿨',
      'zh_Hans': '肯特学校',
    },
    'f92t35pu': {
      'en': 'Kingswood Oxford School',
      'es': 'Escuela Kingswood Oxford',
      'ko': '킹스우드 옥스포드 스쿨',
      'zh_Hans': '金斯伍德牛津学校',
    },
    'wtjt67b2': {
      'en': 'Loomis Chaffee School',
      'es': 'Escuela Loomis Chaffee',
      'ko': '루미스 채피 스쿨',
      'zh_Hans': '洛米斯查菲学校',
    },
    's125iq9d': {
      'en': 'Miss Porter\'s School',
      'es': 'La escuela de la señorita Porter',
      'ko': '미스 포터스 스쿨',
      'zh_Hans': '波特小姐学校',
    },
    'f2y80a0h': {
      'en': 'Westminster School',
      'es': 'Escuela Westminster',
      'ko': '웨스트민스터 학교',
      'zh_Hans': '威斯敏斯特学校',
    },
    '1ivfbmoh': {
      'en': 'Trinity-Pawling School',
      'es': 'Escuela Trinity-Pawling',
      'ko': '트리니티-폴링 학교',
      'zh_Hans': '三一保林学校',
    },
    'x7cni26n': {
      'en': 'Select Opponent..',
      'es': 'Seleccionar oponente..',
      'ko': '상대를 선택하세요.',
      'zh_Hans': '选择对手..',
    },
    'de1am76i': {
      'en': 'Search a School..',
      'es': 'Buscar una escuela..',
      'ko': '학교 검색..',
      'zh_Hans': '搜索学校..',
    },
    'gccqz285': {
      'en': 'Location',
      'es': 'Ubicación',
      'ko': '위치',
      'zh_Hans': '地点',
    },
    'gunn74ag': {
      'en': 'Write a Description..',
      'es': 'Escribe una descripción.',
      'ko': '설명을 작성하세요.',
      'zh_Hans': '写一个描述..',
    },
    'r0p93p3m': {
      'en': 'Select a Time',
      'es': 'Seleccione una hora',
      'ko': '시간을 선택하세요',
      'zh_Hans': '选择时间',
    },
    'ftyet1wv': {
      'en': 'Schedule a Game',
      'es': 'Programar un juego',
      'ko': '게임 일정 잡기',
      'zh_Hans': '安排比赛',
    },
    '9l15rqrk': {
      'en': 'Schedule a Game',
      'es': 'Programar un juego',
      'ko': '게임 일정 잡기',
      'zh_Hans': '安排比赛',
    },
    '8pg64o3t': {
      'en': 'Please fill out the form below to continue.',
      'es': 'Por favor, rellene el siguiente formulario para continuar.',
      'ko': '계속하려면 아래 양식을 작성해 주세요.',
      'zh_Hans': '请填写下面的表格以继续。',
    },
    'fy516q1k': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminUpdateScore
  {
    'woijh09z': {
      'en': 'Update Game Score',
      'es': 'Actualizar la puntuación del juego',
      'ko': '게임 점수 업데이트',
      'zh_Hans': '更新游戏分数',
    },
    '4rw0toot': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminUpdateScore2
  {
    'pb99lnfy': {
      'en':
          'You can update the scores of the game so that it can be shared with everyone in the community. You can also enter players who gained points to celebrate their contribution.',
      'es':
          'Puedes actualizar las puntuaciones del juego para que se compartan con todos los miembros de la comunidad. También puedes incluir a los jugadores que obtuvieron puntos para celebrar su contribución.',
      'ko':
          '게임 점수를 업데이트하여 커뮤니티의 모든 사람과 공유할 수 있습니다. 또한 기여를 기념하기 위해 포인트를 획득한 플레이어를 입력할 수도 있습니다.',
      'zh_Hans': '您可以更新游戏得分，以便与社区中的每个人分享。您还可以输入获得积分的玩家来庆祝他们的贡献。',
    },
    'sotabjxa': {
      'en': 'Enter Score Here',
      'es': 'Introduzca la puntuación aquí',
      'ko': '여기에 점수를 입력하세요',
      'zh_Hans': '在此输入分数',
    },
    'nfmu4ugb': {
      'en': 'Enter Score..',
      'es': 'Introducir puntuación..',
      'ko': '점수를 입력하세요.',
      'zh_Hans': '输入分数..',
    },
    'r2qei1up': {
      'en': 'VS',
      'es': 'Contra',
      'ko': '대',
      'zh_Hans': '对比',
    },
    '7k13fowg': {
      'en': 'Enter Score..',
      'es': 'Introducir puntuación..',
      'ko': '점수를 입력하세요.',
      'zh_Hans': '输入分数..',
    },
    'x9j32bnf': {
      'en': 'Select the MVP of the match here. ',
      'es': 'Selecciona aquí el MVP del partido.',
      'ko': '여기에서 경기의 MVP를 선택하세요.',
      'zh_Hans': '在此选择比赛的 MVP。',
    },
    '5domak1q': {
      'en': 'Click Here to Select Player',
      'es': 'Haga clic aquí para seleccionar el jugador',
      'ko': '여기를 클릭하여 플레이어를 선택하세요',
      'zh_Hans': '单击此处选择玩家',
    },
    'aq3o09aj': {
      'en': 'Players Selected!',
      'es': '¡Jugadores seleccionados!',
      'ko': '플레이어가 선택되었습니다!',
      'zh_Hans': '选手已选定！',
    },
    'knhcxoi0': {
      'en': 'Update Score',
      'es': 'Actualizar puntuación',
      'ko': '점수 업데이트',
      'zh_Hans': '更新分数',
    },
    'x4xbtjze': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdmineTeamPlayerList
  {
    'goz711jg': {
      'en': 'Manage your team below.',
      'es': 'Gestiona tu equipo a continuación.',
      'ko': '아래에서 팀을 관리하세요.',
      'zh_Hans': '管理下面您的团队。',
    },
    'a9xx56tx': {
      'en': 'My Team',
      'es': 'Mi equipo',
      'ko': '내 팀',
      'zh_Hans': '我的团队',
    },
    'ppqc5znl': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminAddPlayers
  {
    'kgdhh9kf': {
      'en': 'Add Members',
      'es': 'Agregar miembros',
      'ko': '멤버 추가',
      'zh_Hans': '添加成员',
    },
    'wloa90zb': {
      'en': 'Search through name and team...',
      'es': 'Buscar por nombre y equipo...',
      'ko': '이름과 팀으로 검색하세요...',
      'zh_Hans': '通过姓名和团队搜索...',
    },
    'eshgmjg8': {
      'en': 'You can add members also in Veracross.',
      'es': 'También puedes agregar miembros en Veracross.',
      'ko': 'Veracross에서도 멤버를 추가할 수 있습니다.',
      'zh_Hans': '您也可以在 Veracross 中添加成员。',
    },
    'o7a3uf1e': {
      'en': 'Go to Veracross',
      'es': 'Ir a Veracross',
      'ko': 'Veracross로 이동',
      'zh_Hans': '前往 Veracross',
    },
    'yvub63ik': {
      'en': 'Click the logo to redirect',
      'es': 'Haga clic en el logotipo para redirigir',
      'ko': '로고를 클릭하면 리디렉션됩니다.',
      'zh_Hans': '点击徽标进行重定向',
    },
    'q4sexp1b': {
      'en': 'Add Members',
      'es': 'Agregar miembros',
      'ko': '멤버 추가',
      'zh_Hans': '添加成员',
    },
    'ycd4yr6i': {
      'en': 'Add',
      'es': 'Agregar',
      'ko': '추가하다',
      'zh_Hans': '添加',
    },
    'plkd9ia6': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // chat_ai_Screen
  {
    'msy4pvjv': {
      'en': 'AI Assisstance',
      'es': 'Asistencia de IA',
      'ko': 'AI 지원',
      'zh_Hans': '人工智能辅助',
    },
    '70da92p8': {
      'en': 'Beta',
      'es': 'Beta',
      'ko': '베타',
      'zh_Hans': '测试版',
    },
    'ajk4eib3': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // notifications_List
  {
    'ecl3z3qp': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'ko': '알림',
      'zh_Hans': '通知',
    },
    'bmsc2kxm': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // notification_Create
  {
    'lpo6i8hk': {
      'en': 'Send Out Notifications',
      'es': 'Enviar notificaciones',
      'ko': '알림 보내기',
      'zh_Hans': '发送通知',
    },
    'h00p8722': {
      'en':
          'You can fill out the elemements below to send out notifications to your players.',
      'es':
          'Puedes completar los elementos a continuación para enviar notificaciones a tus jugadores.',
      'ko': '플레이어에게 알림을 보내려면 아래 요소를 입력하세요.',
      'zh_Hans': '您可以填写以下元素来向您的玩家发送通知。',
    },
    'hodnleix': {
      'en': 'Announcement Name...',
      'es': 'Anuncio Nombre...',
      'ko': '공지사항 이름...',
      'zh_Hans': '公告名称...',
    },
    'kgm63op7': {
      'en': 'Short Description of what is going on...',
      'es': 'Breve descripción de lo que está pasando...',
      'ko': '무슨 일이 일어나고 있는지에 대한 간략한 설명...',
      'zh_Hans': '简要描述正在发生的事情...',
    },
    'm7k3yyrx': {
      'en': 'Activity Type',
      'es': 'Tipo de actividad',
      'ko': '활동 유형',
      'zh_Hans': '活动类型',
    },
    'y3b3283q': {
      'en': 'General Announcement',
      'es': 'Anuncio general',
      'ko': '일반 공지',
      'zh_Hans': '一般公告',
    },
    'jz8xlqdh': {
      'en': 'Practice Time Update',
      'es': 'Actualización del tiempo de práctica',
      'ko': '연습 시간 업데이트',
      'zh_Hans': '练习时间更新',
    },
    'ghdniwmf': {
      'en': 'Match Time Update',
      'es': 'Actualización de la hora del partido',
      'ko': '경기 시간 업데이트',
      'zh_Hans': '比赛时间更新',
    },
    'x6xi2i74': {
      'en': 'General Announcement',
      'es': 'Anuncio general',
      'ko': '일반 공지',
      'zh_Hans': '一般公告',
    },
    'c9kejmyb': {
      'en': 'Upload Screenshot',
      'es': 'Subir captura de pantalla',
      'ko': '스크린샷 업로드',
      'zh_Hans': '上传截图',
    },
    '4jogujhw': {
      'en': 'Assign Player',
      'es': 'Asignar jugador',
      'ko': '플레이어 지정',
      'zh_Hans': '指派玩家',
    },
    'a2ylvn1t': {
      'en': 'Click Here to Add Player',
      'es': 'Haga clic aquí para agregar un jugador',
      'ko': '여기를 클릭하여 플레이어를 추가하세요',
      'zh_Hans': '单击此处添加玩家',
    },
    'jx9u25xi': {
      'en': 'Players Selected!',
      'es': '¡Jugadores seleccionados!',
      'ko': '플레이어가 선택되었습니다!',
      'zh_Hans': '选手已选定！',
    },
    'v1r8a38k': {
      'en': 'Send out Notifications',
      'es': 'Enviar notificaciones',
      'ko': '알림 보내기',
      'zh_Hans': '发送通知',
    },
    'pz0da9hg': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // ArticleLists
  {
    'diuzfwrf': {
      'en': 'Stay up to date with the latest articles below.',
      'es': 'Manténgase actualizado con los últimos artículos a continuación.',
      'ko': '아래에서 최신 기사를 읽어보세요.',
      'zh_Hans': '关注下面的最新文章即可了解最新动态。',
    },
    'jp961c7i': {
      'en': 'Search all articles...',
      'es': 'Buscar todos los artículos...',
      'ko': '모든 기사 검색...',
      'zh_Hans': '搜索所有文章...',
    },
    'ak5gx43l': {
      'en': '24',
      'es': '24',
      'ko': '24',
      'zh_Hans': '24',
    },
    '8btpzhmg': {
      'en': 'For You',
      'es': 'Para ti',
      'ko': '당신을 위한',
      'zh_Hans': '为你',
    },
    '9bfigiu1': {
      'en': 'General',
      'es': 'General',
      'ko': '일반적인',
      'zh_Hans': '一般的',
    },
    'ha0a3z8l': {
      'en': 'Soccer',
      'es': 'Fútbol',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'z0t94z2q': {
      'en': 'Cross Country',
      'es': 'A campo traviesa',
      'ko': '크로스컨트리',
      'zh_Hans': '越野',
    },
    'ammvr2k5': {
      'en': 'Football',
      'es': 'Fútbol americano',
      'ko': '축구',
      'zh_Hans': '足球',
    },
    'hzl3pt74': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
    'falf9hd5': {
      'en': 'Basketball',
      'es': 'Baloncesto',
      'ko': '농구',
      'zh_Hans': '篮球',
    },
    'tdcrtkgu': {
      'en': 'Swimming',
      'es': 'Nadar',
      'ko': '수영',
      'zh_Hans': '游泳',
    },
    '8zw1hzw5': {
      'en': 'Sqaush',
      'es': 'Aplastar',
      'ko': '스쿼시',
      'zh_Hans': '壁球',
    },
    'cgxpaf42': {
      'en': 'Wrestling',
      'es': 'Lucha',
      'ko': '레슬링',
      'zh_Hans': '摔角',
    },
    '8z5w1w9k': {
      'en': 'Baseball',
      'es': 'Béisbol',
      'ko': '야구',
      'zh_Hans': '棒球',
    },
    '8ju450me': {
      'en': 'Golf',
      'es': 'Golf',
      'ko': '골프',
      'zh_Hans': '高尔夫球',
    },
    '7qrihnap': {
      'en': 'Lacrosse',
      'es': 'Lacrosse',
      'ko': '라크로스',
      'zh_Hans': '长曲棍球',
    },
    'cyvw2e50': {
      'en': 'For You',
      'es': 'Para ti',
      'ko': '당신을 위한',
      'zh_Hans': '为你',
    },
    '4bjghthx': {
      'en': 'Popular Today',
      'es': 'Popular hoy',
      'ko': '오늘의 인기',
      'zh_Hans': '今日热门',
    },
    'rwv61k4b': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminStatisticsUpdate
  {
    '5zjiwfoe': {
      'en': 'Update Statistics',
      'es': 'Actualizar estadísticas',
      'ko': '통계 업데이트',
      'zh_Hans': '更新统计信息',
    },
    '40lo75g9': {
      'en': 'Update the main four cathegories of the school\'s athletics. ',
      'es':
          'Actualizar las cuatro categorías principales de atletismo escolar.',
      'ko': '학교 운동의 4가지 주요 종목을 업데이트합니다.',
      'zh_Hans': '更新学校体育活动的四大主要类别。',
    },
    'ogs490mv': {
      'en': 'Related',
      'es': 'Relacionado',
      'ko': '관련된',
      'zh_Hans': '有关的',
    },
    'z526azbk': {
      'en': 'Official',
      'es': 'Oficial',
      'ko': '공식적인',
      'zh_Hans': '官方的',
    },
    't58m0aow': {
      'en': 'View More in Instagram',
      'es': 'Ver más en Instagram',
      'ko': 'Instagram에서 더 보기',
      'zh_Hans': '在 Instagram 上查看更多',
    },
    'o3100dwi': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // VideoPlayer
  {
    'jr3om0gs': {
      'en': 'Sports Highlight Video',
      'es': 'Vídeo destacado de deportes',
      'ko': '스포츠 하이라이트 영상',
      'zh_Hans': '体育精彩视频',
    },
    '8z5p3780': {
      'en': 'Date Taken: ',
      'es': 'Fecha de la toma:',
      'ko': '촬영 날짜:',
      'zh_Hans': '拍摄日期：',
    },
    'q1eug2xj': {
      'en': 'May 12, 2021',
      'es': '12 de mayo de 2021',
      'ko': '2021년 5월 12일',
      'zh_Hans': '2021 年 5 月 12 日',
    },
    'hv75rxqt': {
      'en': 'Rating',
      'es': 'Clasificación',
      'ko': '평가',
      'zh_Hans': '等级',
    },
    'sqdubchx': {
      'en': 'Video by: ',
      'es': 'Vídeo de:',
      'ko': '비디오 제공:',
      'zh_Hans': '视频来源：',
    },
    '7mxpi4ao': {
      'en': 'John Doe',
      'es': 'Juan Pérez',
      'ko': '존 도',
      'zh_Hans': '约翰·多伊',
    },
    'c0hxzq93': {
      'en':
          'An amazing highlight reel showcasing the best moments of the match.',
      'es':
          'Un increíble video destacado que muestra los mejores momentos del partido.',
      'ko': '경기의 최고의 순간을 보여주는 놀라운 하이라이트 영상입니다.',
      'zh_Hans': '令人惊叹的精彩片段展现了比赛的最精彩时刻。',
    },
    'ztwr15ee': {
      'en': 'Page Title',
      'es': 'Título de la página',
      'ko': '페이지 제목',
      'zh_Hans': '页面标题',
    },
  },
  // VideoPlaying
  {
    'vglelfhd': {
      'en': 'Videos',
      'es': 'Vídeos',
      'ko': '비디오',
      'zh_Hans': '视频',
    },
    'k1fh13ik': {
      'en': 'Sports Highlights',
      'es': 'Lo más destacado de los deportes',
      'ko': '스포츠 하이라이트',
      'zh_Hans': '体育亮点',
    },
    'tafpak8j': {
      'en': 'Date: ',
      'es': 'Fecha:',
      'ko': '날짜:',
      'zh_Hans': '日期：',
    },
    'unhrxb0f': {
      'en': 'May 12, 2021',
      'es': '12 de mayo de 2021',
      'ko': '2021년 5월 12일',
      'zh_Hans': '2021 年 5 月 12 日',
    },
    'hn8p8ukh': {
      'en': 'Rating',
      'es': 'Clasificación',
      'ko': '평가',
      'zh_Hans': '等级',
    },
    'erlvg1hn': {
      'en': 'Video provided by: ',
      'es': 'Vídeo proporcionado por:',
      'ko': '비디오 제공:',
      'zh_Hans': '视频提供者：',
    },
    'i3hw4vis': {
      'en': 'Sports Network',
      'es': 'Red de deportes',
      'ko': '스포츠 네트워크',
      'zh_Hans': '体育网络',
    },
    'xsvqerbw': {
      'en':
          'Watch the latest sports highlights from your favorite teams. Stay updated with the best moments from the game.',
      'es':
          'Mira los últimos momentos destacados de tus equipos favoritos. Mantente al día con los mejores momentos del juego.',
      'ko': '좋아하는 팀의 최신 스포츠 하이라이트를 시청하세요. 경기의 최고의 순간을 최신 상태로 유지하세요.',
      'zh_Hans': '观看您最喜爱的球队的最新体育精彩片段。随时了解比赛的精彩时刻。',
    },
  },
  // AdminVideoUpload
  {
    '8gicxv5m': {
      'en': 'Upload Sports Highlight Video',
      'es': 'Subir video de momentos destacados de un deporte',
      'ko': '스포츠 하이라이트 영상 업로드',
      'zh_Hans': '上传体育赛事精彩视频',
    },
    '3jd1rk58': {
      'en': 'Click to upload video',
      'es': 'Haga clic para cargar el vídeo',
      'ko': '비디오를 업로드하려면 클릭하세요',
      'zh_Hans': '点击上传视频',
    },
    'ubompbuf': {
      'en': 'Video Title',
      'es': 'Título del vídeo',
      'ko': '비디오 제목',
      'zh_Hans': '视频标题',
    },
    'yf2iuvnm': {
      'en': 'Enter video title...',
      'es': 'Introduzca el título del vídeo...',
      'ko': '비디오 제목을 입력하세요...',
      'zh_Hans': '输入视频标题...',
    },
    'ocpmkgno': {
      'en': 'Description',
      'es': 'Descripción',
      'ko': '설명',
      'zh_Hans': '描述',
    },
    'l5fttk34': {
      'en': 'Enter video description...',
      'es': 'Introduzca la descripción del vídeo...',
      'ko': '비디오 설명을 입력하세요...',
      'zh_Hans': '输入视频描述...',
    },
    'iv920f1y': {
      'en': 'Upload',
      'es': 'Subir',
      'ko': '업로드',
      'zh_Hans': '上传',
    },
    'aa10x8nr': {
      'en': 'Page Title',
      'es': 'Título de la página',
      'ko': '페이지 제목',
      'zh_Hans': '页面标题',
    },
  },
  // EditProfile
  {
    '3xxuz3s8': {
      'en': 'Your Name',
      'es': 'Su nombre',
      'ko': '당신의 이름',
      'zh_Hans': '您的名字',
    },
    '73mhoibm': {
      'en': 'Your Email',
      'es': 'Tu correo electrónico',
      'ko': '귀하의 이메일',
      'zh_Hans': '您的電子郵件',
    },
    'jzu7hc36': {
      'en': 'Your Team',
      'es': 'Tu equipo',
      'ko': '당신의 팀',
      'zh_Hans': '你的团队',
    },
    '2y8jjgte': {
      'en': 'Your Team',
      'es': 'Tu equipo',
      'ko': '당신의 팀',
      'zh_Hans': '你的团队',
    },
    '00traows': {
      'en': 'Avon Old Farms School',
      'es': 'Escuela de la antigua granja de Avon',
      'ko': '에이번 올드 팜스 스쿨',
      'zh_Hans': '雅芳旧农场学校',
    },
    'o09cnd9o': {
      'en': 'Choate Rosemary Hall',
      'es': 'Salón de romero Choate',
      'ko': '초트 로즈메리 홀',
      'zh_Hans': '乔特罗斯玛丽中学',
    },
    '1cr6xk02': {
      'en': 'The Taft School',
      'es': 'La escuela Taft',
      'ko': '태프트 학교',
      'zh_Hans': '塔夫脱学校',
    },
    'knt04qrr': {
      'en': 'The Ethel Walker School',
      'es': 'La escuela Ethel Walker',
      'ko': '에델 워커 학교',
      'zh_Hans': '埃塞尔·沃克学校',
    },
    'h0xrvio6': {
      'en': 'The Hotchkiss School',
      'es': 'La escuela Hotchkiss',
      'ko': '호치키스 학교',
      'zh_Hans': '霍奇基斯学校',
    },
    'l7bwgcan': {
      'en': 'Kent School',
      'es': 'Escuela Kent',
      'ko': '켄트 스쿨',
      'zh_Hans': '肯特学校',
    },
    'f0wbzbin': {
      'en': 'Kingswood Oxford School',
      'es': 'Escuela Kingswood Oxford',
      'ko': '킹스우드 옥스포드 스쿨',
      'zh_Hans': '金斯伍德牛津学校',
    },
    'wzr6xkze': {
      'en': 'Loomis Chaffee School',
      'es': 'Escuela Loomis Chaffee',
      'ko': '루미스 채피 스쿨',
      'zh_Hans': '洛米斯查菲学校',
    },
    'zswafwha': {
      'en': 'Miss Porter\'s School',
      'es': 'La escuela de la señorita Porter',
      'ko': '미스 포터스 스쿨',
      'zh_Hans': '波特小姐学校',
    },
    'x0mx11a9': {
      'en': 'Trinity-Pawling School',
      'es': 'Escuela Trinity-Pawling',
      'ko': '트리니티-폴링 학교',
      'zh_Hans': '三一保林学校',
    },
    'mqojw1dt': {
      'en': 'Westminster School',
      'es': 'Escuela Westminster',
      'ko': '웨스트민스터 학교',
      'zh_Hans': '威斯敏斯特学校',
    },
    'rc34znhk': {
      'en': 'Select School',
      'es': 'Seleccione Escuela',
      'ko': '학교 선택',
      'zh_Hans': '选择学校',
    },
    'o986oxz6': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'ko': '변경 사항 저장',
      'zh_Hans': '保存更改',
    },
    'u9h3u7x9': {
      'en': 'Create your Profile',
      'es': 'Crea tu perfil',
      'ko': '프로필을 만드세요',
      'zh_Hans': '创建您的个人资料',
    },
  },
  // AdminUpdateBanner
  {
    'josm1ieo': {
      'en': 'Update Real-time Banner',
      'es': 'Actualizar banner en tiempo real',
      'ko': '실시간 배너 업데이트',
      'zh_Hans': '更新实时横幅',
    },
    '3nimuq6x': {
      'en': 'Write the title...',
      'es': 'Escribe el título...',
      'ko': '제목을 써주세요...',
      'zh_Hans': '写标题...',
    },
    'ot22f8nc': {
      'en': 'Write the description here...',
      'es': 'Escribe la descripción aquí...',
      'ko': '여기에 설명을 작성하세요...',
      'zh_Hans': '在此处写下描述...',
    },
    'pgrnwphk': {
      'en': 'Upload Screenshot',
      'es': 'Subir captura de pantalla',
      'ko': '스크린샷 업로드',
      'zh_Hans': '上传截图',
    },
    'ktpt4oqp': {
      'en': 'Update Banner',
      'es': 'Banner de actualización',
      'ko': '배너 업데이트',
      'zh_Hans': '更新横幅',
    },
    'm6dmwxub': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // AdminDashBoard
  {
    'eslyecva': {
      'en': 'check.io',
      'es': 'cheque.io',
      'ko': '체크.아이오',
      'zh_Hans': '检查',
    },
    '0dca9pn1': {
      'en': 'Andrew D.',
      'es': 'Andrés D.',
      'ko': '앤드류 디',
      'zh_Hans': '安德鲁·D.',
    },
    'of6fktio': {
      'en': 'admin@gmail.com',
      'es': 'admin@gmail.com',
      'ko': '관리자@gmail.com',
      'zh_Hans': 'admin@gmail.com',
    },
    '8rj6nicg': {
      'en': 'Dashboard',
      'es': 'Panel',
      'ko': '계기반',
      'zh_Hans': '仪表板',
    },
    's1jea9m8': {
      'en': 'Chats',
      'es': 'Charlas',
      'ko': '채팅',
      'zh_Hans': '聊天',
    },
    'u4yrkub7': {
      'en': 'Projects',
      'es': 'Proyectos',
      'ko': '프로젝트',
      'zh_Hans': '项目',
    },
    'kani6ewv': {
      'en': 'Explore',
      'es': 'Explorar',
      'ko': '탐구하다',
      'zh_Hans': '探索',
    },
    'qp16n5cn': {
      'en': 'Team Overview',
      'es': 'Descripción general del equipo',
      'ko': '팀 개요',
      'zh_Hans': '团队概况',
    },
    'spit582x': {
      'en': 'Review the details below of your recent projects.',
      'es': 'Revise a continuación los detalles de sus proyectos recientes.',
      'ko': '최근 프로젝트에 대한 자세한 내용을 아래에서 살펴보세요.',
      'zh_Hans': '查看以下您最近的项目的详细信息。',
    },
    'dmkjfujm': {
      'en': 'Assign',
      'es': 'Asignar',
      'ko': '양수인',
      'zh_Hans': '分配',
    },
    'x8jogxxb': {
      'en': 'Create Task',
      'es': 'Crear tarea',
      'ko': '작업 생성',
      'zh_Hans': '创建任务',
    },
    'e6rwrlza': {
      'en': 'Tasks Completed',
      'es': 'Tareas completadas',
      'ko': '완료된 작업',
      'zh_Hans': '已完成的任务',
    },
    'phet6oer': {
      'en': '255',
      'es': '255',
      'ko': '255',
      'zh_Hans': '255',
    },
    'cejajlqt': {
      'en': '32.2%',
      'es': '32,2%',
      'ko': '32.2%',
      'zh_Hans': '32.2％',
    },
    'brywdvq0': {
      'en': 'Upcoming Tasks',
      'es': 'Tareas futuras',
      'ko': '다가올 작업',
      'zh_Hans': '即将进行的任务',
    },
    'shpja6d2': {
      'en': '67',
      'es': '67',
      'ko': '67',
      'zh_Hans': '67',
    },
    'n46xvn9w': {
      'en': '45.5%',
      'es': '45,5%',
      'ko': '45.5%',
      'zh_Hans': '45.5％',
    },
    '5ggo7qdt': {
      'en': 'Recent Activity',
      'es': 'Actividad reciente',
      'ko': '최근 활동',
      'zh_Hans': '最近活动',
    },
    '10ztsc7v': {
      'en': 'Below is an overview of tasks & activity completed.',
      'es':
          'A continuación se muestra una descripción general de las tareas y actividades completadas.',
      'ko': '완료된 작업 및 활동의 개요는 다음과 같습니다.',
      'zh_Hans': '以下是已完成的任务和活动的概述。',
    },
    '218r102y': {
      'en': 'Tasks',
      'es': 'Tareas',
      'ko': '작업',
      'zh_Hans': '任务',
    },
    '7em2svc0': {
      'en': 'Completed',
      'es': 'Terminado',
      'ko': '완전한',
      'zh_Hans': '完全的',
    },
    '3jf1rorw': {
      'en': 'Upcoming Milestones',
      'es': 'Próximos hitos',
      'ko': '다가올 이정표',
      'zh_Hans': '即将到来的里程碑',
    },
    'uwvj6bo6': {
      'en': 'Below are some of the upcoming tasks for your team.',
      'es':
          'A continuación se presentan algunas de las próximas tareas para su equipo.',
      'ko': '여러분의 팀이 앞으로 해야 할 몇 가지 작업은 다음과 같습니다.',
      'zh_Hans': '以下是您的团队即将执行的一些任务。',
    },
    '78hlftm1': {
      'en': 'Add New',
      'es': 'Agregar nuevo',
      'ko': '새로 추가',
      'zh_Hans': '添加新',
    },
    'td950cdu': {
      'en': 'Assigned User',
      'es': 'Usuario asignado',
      'ko': '할당된 사용자',
      'zh_Hans': '指定用户',
    },
    'asw5d8gm': {
      'en': 'Due Date',
      'es': 'Fecha de vencimiento',
      'ko': '마감일',
      'zh_Hans': '到期日',
    },
    '3rsi1f9e': {
      'en': 'Status',
      'es': 'Estado',
      'ko': '상태',
      'zh_Hans': '地位',
    },
    'vlzlg43d': {
      'en': 'Actions',
      'es': 'Comportamiento',
      'ko': '행위',
      'zh_Hans': '操作',
    },
    'am5ufm87': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'ko': '랜디 피터슨',
      'zh_Hans': '兰迪·彼得森',
    },
    'd74c50zg': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'ko': '사업체 이름',
      'zh_Hans': '公司名称',
    },
    'yptda6jo': {
      'en': 'Fri. Aug 11th',
      'es': 'Viernes 11 de agosto',
      'ko': '금요일 8월 11일',
      'zh_Hans': '8 月 11 日，周五',
    },
    'w8ju81hf': {
      'en': 'High',
      'es': 'Alto',
      'ko': '높은',
      'zh_Hans': '高的',
    },
    'ldb71bx4': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'ko': '랜디 피터슨',
      'zh_Hans': '兰迪·彼得森',
    },
    'r8l5i1c4': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'ko': '사업체 이름',
      'zh_Hans': '公司名称',
    },
    'sog52nns': {
      'en': 'Fri. Aug 11th',
      'es': 'Viernes 11 de agosto',
      'ko': '금요일 8월 11일',
      'zh_Hans': '8 月 11 日，周五',
    },
    '7d4ww59q': {
      'en': 'High',
      'es': 'Alto',
      'ko': '높은',
      'zh_Hans': '高的',
    },
    'e2y81ip0': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'ko': '랜디 피터슨',
      'zh_Hans': '兰迪·彼得森',
    },
    '9xsigfgg': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'ko': '사업체 이름',
      'zh_Hans': '公司名称',
    },
    '6wp7f2zp': {
      'en': 'Fri. Aug 11th',
      'es': 'Viernes 11 de agosto',
      'ko': '금요일 8월 11일',
      'zh_Hans': '8 月 11 日，周五',
    },
    'crg3d3p0': {
      'en': 'Medium',
      'es': 'Medio',
      'ko': '중간',
      'zh_Hans': '中等的',
    },
    'iq9nwete': {
      'en': 'Randy Peterson',
      'es': 'Randy Peterson',
      'ko': '랜디 피터슨',
      'zh_Hans': '兰迪·彼得森',
    },
    'cjcyixdm': {
      'en': 'Business Name',
      'es': 'Nombre de la empresa',
      'ko': '사업체 이름',
      'zh_Hans': '公司名称',
    },
    '4gejlz46': {
      'en': 'Fri. Aug 11th',
      'es': 'Viernes 11 de agosto',
      'ko': '금요일 8월 11일',
      'zh_Hans': '8 月 11 日，周五',
    },
    'wf68zqpy': {
      'en': 'Medium',
      'es': 'Medio',
      'ko': '중간',
      'zh_Hans': '中等的',
    },
    'glgt73ov': {
      'en': 'Activity',
      'es': 'Actividad',
      'ko': '활동',
      'zh_Hans': '活动',
    },
    '31kpj3f5': {
      'en': 'Recent completed tasks from your team.',
      'es': 'Tareas recientes completadas por su equipo.',
      'ko': '팀에서 최근 완료한 작업입니다.',
      'zh_Hans': '您的团队最近完成的任务。',
    },
    'xhok2h19': {
      'en': 'Rudy Fernandez',
      'es': 'Rudy Fernández',
      'ko': '루디 페르난데스',
      'zh_Hans': '鲁迪·费尔南德斯',
    },
    '50dcbfb2': {
      'en': '4m ago',
      'es': 'Hace 4 min',
      'ko': '4분 전',
      'zh_Hans': '4分钟前',
    },
    'voaor30y': {
      'en': 'Completed ',
      'es': 'Terminado',
      'ko': '완전한',
      'zh_Hans': '完全的',
    },
    'iyurhsuk': {
      'en': 'Marketing Plan',
      'es': 'Plan de marketing',
      'ko': '마케팅 계획',
      'zh_Hans': '营销计划',
    },
    'd4c1uupc': {
      'en': 'Rudy Fernandez',
      'es': 'Rudy Fernández',
      'ko': '루디 페르난데스',
      'zh_Hans': '鲁迪·费尔南德斯',
    },
    '7ajqpfut': {
      'en': '4m ago',
      'es': 'Hace 4 min',
      'ko': '4분 전',
      'zh_Hans': '4分钟前',
    },
    'h1ola7ui': {
      'en': 'Started ',
      'es': 'Comenzó',
      'ko': '시작하다',
      'zh_Hans': '已开始',
    },
    'v43xp4uw': {
      'en': 'Marketing Plan',
      'es': 'Plan de marketing',
      'ko': '마케팅 계획',
      'zh_Hans': '营销计划',
    },
    'akgkpn70': {
      'en': 'Abigail Rojas',
      'es': 'Abigail Rojas',
      'ko': '아비가일 로하스',
      'zh_Hans': '阿比盖尔·罗哈斯',
    },
    'jehnbbid': {
      'en': '4m ago',
      'es': 'Hace 4 min',
      'ko': '4분 전',
      'zh_Hans': '4分钟前',
    },
    'ym8neox5': {
      'en': 'Assigned  ',
      'es': 'Asignado',
      'ko': '할당된',
      'zh_Hans': '已分配',
    },
    'ruknskwu': {
      'en': 'Rudy Fernandez ',
      'es': 'Rudy Fernández',
      'ko': '루디 페르난데스',
      'zh_Hans': '鲁迪·费尔南德斯',
    },
    'it5ooanx': {
      'en': 'to ',
      'es': 'a',
      'ko': '에게',
      'zh_Hans': '到',
    },
    'yx7irsxm': {
      'en': 'Marketing Plan',
      'es': 'Plan de marketing',
      'ko': '마케팅 계획',
      'zh_Hans': '营销计划',
    },
    's8rcbblt': {
      'en': 'Abigail Rojas',
      'es': 'Abigail Rojas',
      'ko': '아비가일 로하스',
      'zh_Hans': '阿比盖尔·罗哈斯',
    },
    'gcnecu2r': {
      'en': '4m ago',
      'es': 'Hace 4 min',
      'ko': '4분 전',
      'zh_Hans': '4分钟前',
    },
    'cywczvld': {
      'en': 'Created a project: ',
      'es': 'Creó un proyecto:',
      'ko': '프로젝트를 생성했습니다:',
      'zh_Hans': '创建了一个项目：',
    },
    'bgmoh7y2': {
      'en': 'Marketing Plan',
      'es': 'Plan de marketing',
      'ko': '마케팅 계획',
      'zh_Hans': '营销计划',
    },
    '0m8upt5q': {
      'en': 'Liz Ambridge',
      'es': 'Liz Ambridge',
      'ko': '리즈 앰브릿지',
      'zh_Hans': '利兹·安布里奇',
    },
    'euanwzj0': {
      'en': '4m ago',
      'es': 'Hace 4 min',
      'ko': '4분 전',
      'zh_Hans': '4分钟前',
    },
    'ay2iqrgm': {
      'en': 'Sent a plan update for ',
      'es': 'Envió una actualización del plan para',
      'ko': '계획 업데이트를 보냈습니다',
      'zh_Hans': '发送了计划更新',
    },
    'gvlhpbkz': {
      'en': 'Marketing Plan',
      'es': 'Plan de marketing',
      'ko': '마케팅 계획',
      'zh_Hans': '营销计划',
    },
    '3tvqqq60': {
      'en': 'Project Started',
      'es': 'Proyecto iniciado',
      'ko': '프로젝트 시작',
      'zh_Hans': '项目已启动',
    },
    'p9m73wzh': {
      'en': '12d ago',
      'es': 'Hace 12 días',
      'ko': '12일 전',
      'zh_Hans': '12天前',
    },
    '5keyly5b': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // LivestreamVideos
  {
    'qbupjzte': {
      'en': 'Live Sports Videos',
      'es': 'Vídeos de deportes en directo',
      'ko': '라이브 스포츠 비디오',
      'zh_Hans': '现场体育视频',
    },
    '076gxatx': {
      'en': 'Basketball Game',
      'es': 'Partido de baloncesto',
      'ko': '농구 경기',
      'zh_Hans': '篮球比赛',
    },
    'aaftmy72': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'o69mifos': {
      'en': 'Soccer Match',
      'es': 'Partido de fútbol',
      'ko': '축구 경기',
      'zh_Hans': '足球比赛',
    },
    'gu9mvofc': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    '0p2e18u6': {
      'en': 'Baseball Game',
      'es': 'Juego de béisbol',
      'ko': '야구 경기',
      'zh_Hans': '棒球比赛',
    },
    'oo1t01ec': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'bggsrr2d': {
      'en': 'Track and Field',
      'es': 'Atletismo',
      'ko': '육상 경기',
      'zh_Hans': '田径',
    },
    'vdb1ezmt': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'apezdpbu': {
      'en': 'Swimming Competition',
      'es': 'Competición de natación',
      'ko': '수영 경기',
      'zh_Hans': '游泳比赛',
    },
    '869y1pvi': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'zzx5w0ql': {
      'en': 'Volleyball Game',
      'es': 'Partido de voleibol',
      'ko': '배구 경기',
      'zh_Hans': '排球比赛',
    },
    'nm73extg': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'wji92n2m': {
      'en': 'Tennis Match',
      'es': 'Partido de tenis',
      'ko': '테니스 경기',
      'zh_Hans': '网球比赛',
    },
    'nr6irvd1': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'm64lz24v': {
      'en': 'Wrestling Match',
      'es': 'Combate de lucha libre',
      'ko': '레슬링 경기',
      'zh_Hans': '摔跤比赛',
    },
    '8v2rhj4c': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    '6cjfh313': {
      'en': 'Gymnastics Event',
      'es': 'Evento de gimnasia',
      'ko': '체조 이벤트',
      'zh_Hans': '体操项目',
    },
    'h1lvwiz5': {
      'en': 'Live Now',
      'es': 'Vive ahora',
      'ko': '지금 라이브',
      'zh_Hans': '現在',
    },
    'pmk6xwm2': {
      'en': 'Live Sports',
      'es': 'Deportes en vivo',
      'ko': '라이브 스포츠',
      'zh_Hans': '直播体育赛事',
    },
  },
  // AdminAskGoogleCalendar
  {
    'd4lcm4me': {
      'en': 'Add to Google Calendar?',
      'es': '¿Añadir a Google Calendar?',
      'ko': 'Google 캘린더에 추가하시겠습니까?',
      'zh_Hans': '添加到 Google 日历？',
    },
    '8vhya2wj': {
      'en':
          'Would you like us to add the your match schedule to your Google Calendar?',
      'es':
          '¿Quieres que añadamos el calendario de tus partidos a tu Google Calendar?',
      'ko': '귀하의 경기 일정을 Google 캘린더에 추가하시겠습니까?',
      'zh_Hans': '您希望我们将您的比赛日程添加到您的 Google 日历中吗？',
    },
    'vti47427': {
      'en': 'Yes',
      'es': 'Sí',
      'ko': '예',
      'zh_Hans': '是的',
    },
    'i3rgr4ot': {
      'en': 'No',
      'es': 'No',
      'ko': '아니요',
      'zh_Hans': '不',
    },
  },
  // LivestreamLists
  {
    'a4nuqs31': {
      'en': 'Available Lists of Streams below. ',
      'es': 'Listas de transmisiones disponibles a continuación.',
      'ko': '사용 가능한 스트림 목록은 아래와 같습니다.',
      'zh_Hans': '下面是可用的流列表。',
    },
    'inlifpwj': {
      'en': 'Streams',
      'es': 'Arroyos',
      'ko': '스트림',
      'zh_Hans': '流',
    },
    'njepmhkn': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // LiveStreamPage
  {
    'kqbtfpex': {
      'en': 'Live',
      'es': 'Vivir',
      'ko': '살다',
      'zh_Hans': '居住',
    },
    'ilco9hn9': {
      'en': 'Live',
      'es': 'Vivir',
      'ko': '살다',
      'zh_Hans': '居住',
    },
    'yjnx44c4': {
      'en': 'Start Stream',
      'es': 'Iniciar transmisión',
      'ko': '스트림 시작',
      'zh_Hans': '开始流',
    },
    'b71niuha': {
      'en': 'Live Streaming',
      'es': 'Transmisión en vivo',
      'ko': '라이브 스트리밍',
      'zh_Hans': '直播',
    },
    'jccio4zn': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // LiveStreamViewer
  {
    'chzd2hb7': {
      'en': 'Archived Videos',
      'es': 'Videos archivados',
      'ko': '보관된 비디오',
      'zh_Hans': '存档视频',
    },
    '836hpx24': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // LoginSuccessful
  {
    'zfrs31zp': {
      'en': 'Login Successful!',
      'es': '¡Inicio de sesión exitoso!',
      'ko': '로그인 성공!',
      'zh_Hans': '登录成功！',
    },
    'w8zyjxso': {
      'en':
          'Welcome back to your account. You\'re now ready to explore and enjoy all the features.',
      'es':
          'Bienvenido nuevamente a tu cuenta. Ya estás listo para explorar y disfrutar de todas las funciones.',
      'ko': '계정에 다시 오신 것을 환영합니다. 이제 모든 기능을 탐색하고 즐길 준비가 되었습니다.',
      'zh_Hans': '欢迎返回您的帐户。您现在可以探索并享受所有功能。',
    },
    'qxi2j5pn': {
      'en': 'What would you like to do next?',
      'es': '¿Qué te gustaría hacer a continuación?',
      'ko': '다음에 무엇을 하고 싶으신가요?',
      'zh_Hans': '您接下来想做什么？',
    },
    'doyr15cn': {
      'en': 'Go to Home',
      'es': 'Ir a Inicio',
      'ko': '홈으로 이동',
      'zh_Hans': '转至主页',
    },
    'i1k8rgdj': {
      'en': 'View Profile',
      'es': 'Ver perfil',
      'ko': '프로필보기',
      'zh_Hans': '查看个人资料',
    },
    'y54rlgkf': {
      'en': 'Browse FL',
      'es': 'Explorar FL',
      'ko': 'FL 탐색',
      'zh_Hans': '浏览 FL',
    },
  },
  // RosterDetail
  {
    'hra78my9': {
      'en': 'Our Players',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'ej5tuwo4': {
      'en': 'Mike Conley JR.',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'qx2ab9ex': {
      'en': '6\' 3\" Point Guard',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '39vn64c5': {
      'en': 'Bio',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'spuffcw8': {
      'en':
          'John Doe is a talented, versatile shooting guard standing at 6\'5\", known for his exceptional ball-handling skills and ability to score from beyond the arc. Defensively, his quick reflexes and teamwork make him an essential player on the court, contributing to his team\'s overall success.',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '4vo1va4v': {
      'en': 'Season Stat Highlights',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'l3uhbo6n': {
      'en': '16.2',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'se6d2drw': {
      'en': 'PPG',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'ul125qq2': {
      'en': '3.0',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'wrtco26w': {
      'en': 'REB',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '806id2e6': {
      'en': '5.3',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'wefh8z5b': {
      'en': 'AST',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'n5oafkpt': {
      'en': 'Jordan Clarkson',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'srhlz2lq': {
      'en': '6\' 4\" Point Guard',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'drqcyy33': {
      'en': 'Bio',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'yenkxlks': {
      'en':
          'John Doe is a talented, versatile shooting guard standing at 6\'5\", known for his exceptional ball-handling skills and ability to score from beyond the arc. Defensively, his quick reflexes and teamwork make him an essential player on the court, contributing to his team\'s overall success.',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '25dk9bt1': {
      'en': 'Season Stat Highlights',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'kxze1tqu': {
      'en': '16.0',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'hj0abqiu': {
      'en': 'PPG',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'pdu8b3mj': {
      'en': '3.5',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'e4vlg1xq': {
      'en': 'REB',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'buk0sn8o': {
      'en': '2.5',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '1t553jkd': {
      'en': 'AST',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'idw7mo2h': {
      'en': 'Rudy Gay',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '6ka6ot9f': {
      'en': '6\' 9\" Small Forward',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '0un4eqv6': {
      'en': 'Bio',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '0wqn08oe': {
      'en':
          'John Doe is a talented, versatile shooting guard standing at 6\'5\", known for his exceptional ball-handling skills and ability to score from beyond the arc. Defensively, his quick reflexes and teamwork make him an essential player on the court, contributing to his team\'s overall success.',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '1jwahq01': {
      'en': 'Season Stat Highlights',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'xqspbkio': {
      'en': '8.3',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '4w65f3ia': {
      'en': 'PPG',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'i7844pjb': {
      'en': '5.4',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '0ljqv45n': {
      'en': 'REB',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '5ulcmvy7': {
      'en': '2.5',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '6y8zfrbp': {
      'en': 'AST',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '1wfzf0af': {
      'en': 'Home',
      'es': 'Hogar',
      'ko': '집',
      'zh_Hans': '家',
    },
  },
  // LatestNews
  {
    '924ol2sa': {
      'en': 'FL News',
      'es': 'Noticias de Florida',
      'ko': 'FL 뉴스',
      'zh_Hans': 'FL 新闻',
    },
    's8q4n8wn': {
      'en': '16 friends viewed',
      'es': '16 amigos lo vieron',
      'ko': '16명의 친구가 봤습니다',
      'zh_Hans': '16 位朋友查看',
    },
    '9n5qh0v8': {
      'en': 'View related topics',
      'es': 'Ver temas relacionados',
      'ko': '관련 주제 보기',
      'zh_Hans': '查看相关主题',
    },
  },
  // LatestReaction
  {
    'kpiehl0e': {
      'en': '[Username]',
      'es': '[Nombre de usuario]',
      'ko': '[사용자 이름]',
      'zh_Hans': '[用户名]',
    },
    'lpe9bvfg': {
      'en': '2h',
      'es': '2 horas',
      'ko': '2시간',
      'zh_Hans': '2小时',
    },
    'q8rd8c1w': {
      'en':
          'Nice outdoor courts, solid concrete and good hoops for the neighborhood.',
      'es':
          'Bonitas canchas al aire libre, concreto solido y buenos aros para el barrio.',
      'ko': '좋은 야외 코트, 견고한 콘크리트, 그리고 주변 지역에 좋은 농구장이 있습니다.',
      'zh_Hans': '漂亮的室外球场、坚固的混凝土和适合社区的优质篮球架。',
    },
    'ska2xdwz': {
      'en': '4',
      'es': '4',
      'ko': '4',
      'zh_Hans': '4',
    },
    'fj7ocbit': {
      'en': '4',
      'es': '4',
      'ko': '4',
      'zh_Hans': '4',
    },
  },
  // LatestVideo
  {
    't5cw4b6y': {
      'en': 'AOF Media',
      'es': 'Medios de comunicación de AOF',
      'ko': 'AOF 미디어',
      'zh_Hans': 'AOF 媒体',
    },
  },
  // LatestArticles
  {
    '1r2ok02m': {
      'en': 'Andrew Daniels',
      'es': 'Andrés Daniels',
      'ko': '앤드류 다니엘스',
      'zh_Hans': '安德鲁·丹尼尔斯',
    },
    '0i85bknd': {
      'en': 'Tuesday, Jan. 29',
      'es': 'Martes 29 de enero',
      'ko': '1월 29일 화요일',
      'zh_Hans': '1 月 29 日，星期二',
    },
    'j5feylo7': {
      'en': 'What a great product!',
      'es': '¡Que gran producto!',
      'ko': '정말 좋은 제품이에요!',
      'zh_Hans': '多棒的产品啊！',
    },
    '5mrgviyh': {
      'en': '5',
      'es': '5',
      'ko': '5',
      'zh_Hans': '5',
    },
    'anq9jl9l': {
      'en':
          'A product designer is a creative professional who is responsible for designing and developing products from the initial concept stage to final production...',
      'es':
          'Un diseñador de productos es un profesional creativo que se encarga de diseñar y desarrollar productos desde la etapa de concepto inicial hasta la producción final...',
      'ko':
          '제품 디자이너는 초기 컨셉 단계부터 최종 생산 단계까지 제품을 디자인하고 개발하는 책임을 맡는 창의적인 전문가입니다...',
      'zh_Hans': '产品设计师是一位创意专业人士，负责从最初的概念阶段到最终生产的产品的设计和开发......',
    },
  },
  // UpcomingMatches
  {
    'frzujhq8': {
      'en': 'Lacrosse',
      'es': 'Lacrosse',
      'ko': '라크로스',
      'zh_Hans': '长曲棍球',
    },
    'buuerlyg': {
      'en': 'VS',
      'es': 'Contra',
      'ko': '대',
      'zh_Hans': '对比',
    },
  },
  // FLTable
  {
    'dzzz32my': {
      'en': 'Tables',
      'es': 'Tablas',
      'ko': '테이블',
      'zh_Hans': '表格',
    },
    'ahtzpw02': {
      'en': 'Tap to View Founders League Tables.',
      'es': 'Toque para ver las tablas de posiciones de los fundadores.',
      'ko': '창립자 리그 표를 보려면 탭하세요.',
      'zh_Hans': '点击查看创始人排行榜。',
    },
  },
  // schoolEachList
  {
    '1iqxe8fl': {
      'en': 'Choose Your School ',
      'es': 'Elige tu escuela',
      'ko': '학교를 선택하세요',
      'zh_Hans': '选择你的学校',
    },
    'mi5y92gw': {
      'en': 'Avon Old Farms School ',
      'es': 'Escuela de la antigua granja de Avon',
      'ko': '에이번 올드 팜스 스쿨',
      'zh_Hans': '雅芳旧农场学校',
    },
    'ziui8w3z': {
      'en': 'Choate Rosemary Hall',
      'es': 'Salón de romero Choate',
      'ko': '초트 로즈메리 홀',
      'zh_Hans': '乔特罗斯玛丽中学',
    },
    'xoxjatyt': {
      'en': 'The Taft School',
      'es': 'La escuela Taft',
      'ko': '태프트 학교',
      'zh_Hans': '塔夫脱学校',
    },
    'panl6ko6': {
      'en': 'The Ethel Walker School ',
      'es': 'La escuela Ethel Walker',
      'ko': '에델 워커 학교',
      'zh_Hans': '埃塞尔·沃克学校',
    },
    'mtkh5bp5': {
      'en': 'The Hotchkiss School',
      'es': 'La escuela Hotchkiss',
      'ko': '호치키스 학교',
      'zh_Hans': '霍奇基斯学校',
    },
    '36qudnni': {
      'en': 'Kent School',
      'es': 'Escuela Kent',
      'ko': '켄트 스쿨',
      'zh_Hans': '肯特学校',
    },
    'xi1fxcqt': {
      'en': 'Kingswood Oxford School',
      'es': 'Escuela Kingswood Oxford',
      'ko': '킹스우드 옥스포드 스쿨',
      'zh_Hans': '金斯伍德牛津学校',
    },
    'totibb6s': {
      'en': 'Loomis Chaffee School',
      'es': 'Escuela Loomis Chaffee',
      'ko': '루미스 채피 스쿨',
      'zh_Hans': '洛米斯查菲学校',
    },
    'ry87b9g4': {
      'en': 'Miss Porter\'s School',
      'es': 'La escuela de la señorita Porter',
      'ko': '미스 포터스 스쿨',
      'zh_Hans': '波特小姐学校',
    },
    '4i3f5wn8': {
      'en': 'Trinity-Pawling School',
      'es': 'Escuela Trinity-Pawling',
      'ko': '트리니티-폴링 학교',
      'zh_Hans': '三一保林学校',
    },
    'ltfhc8h2': {
      'en': 'Westminster School',
      'es': 'Escuela Westminster',
      'ko': '웨스트민스터 학교',
      'zh_Hans': '威斯敏斯特学校',
    },
  },
  // TentativeInstagramView
  {
    'dtcheee5': {
      'en': 'Button',
      'es': 'Botón',
      'ko': '단추',
      'zh_Hans': '按钮',
    },
    'u9jtwfp2': {
      'en': '2 replies',
      'es': '2 respuestas',
      'ko': '2개의 답변',
      'zh_Hans': '2 条回复',
    },
    'hkpubxux': {
      'en': '·',
      'es': '·',
      'ko': '·',
      'zh_Hans': '·',
    },
    '0lu0g3ib': {
      'en': 'Like by ',
      'es': 'Me gusta por',
      'ko': '좋아요',
      'zh_Hans': '点赞',
    },
  },
  // AdminBanner
  {
    '21ij41sr': {
      'en': 'Hello,',
      'es': 'Hola,',
      'ko': '안녕하세요,',
      'zh_Hans': '你好，',
    },
    'tr6sebu6': {
      'en': 'How can I help you today?',
      'es': '¿Cómo puedo ayudarte hoy?',
      'ko': '오늘은 무엇을 도와드릴까요?',
      'zh_Hans': '今天我可以为您做些什么？',
    },
  },
  // AdminDashboard
  {
    '3eev2lrw': {
      'en': 'Admin Dashboard',
      'es': 'Panel de administración',
      'ko': '관리자 대시보드',
      'zh_Hans': '管理仪表板',
    },
    'e37g5cnd': {
      'en': 'Your Team',
      'es': 'Tu equipo',
      'ko': '당신의 팀',
      'zh_Hans': '你的团队',
    },
    '6bn7njhq': {
      'en': 'Upcomming Games',
      'es': 'Próximos juegos',
      'ko': '예정된 게임',
      'zh_Hans': '即将推出的游戏',
    },
  },
  // AdminSchedule
  {
    'ntmcu5n2': {
      'en': 'Due',
      'es': 'Pendiente',
      'ko': '로 인한',
      'zh_Hans': '到期的',
    },
    'kp7mur1u': {
      'en': 'Edit',
      'es': 'Editar',
      'ko': '편집하다',
      'zh_Hans': '编辑',
    },
    'u357hm3f': {
      'en': '1',
      'es': '1',
      'ko': '1',
      'zh_Hans': '1',
    },
  },
  // AdminSelectSport
  {
    '1f7grqn2': {
      'en': 'Choose Your Team ',
      'es': 'Elige tu equipo',
      'ko': '팀을 선택하세요',
      'zh_Hans': '选择你的团队',
    },
    'jfke1ld9': {
      'en': 'Varsity Soccer',
      'es': 'Fútbol universitario',
      'ko': '대학 축구',
      'zh_Hans': '校队足球',
    },
    '64stxir5': {
      'en': 'JV Soccer',
      'es': 'Fútbol JV',
      'ko': 'JV 축구',
      'zh_Hans': '合资足球',
    },
    '42c8oyw0': {
      'en': 'Thirds Soccer',
      'es': 'Fútbol de Tercera División',
      'ko': '서드 축구',
      'zh_Hans': '三分之一足球',
    },
    'i8hhy84m': {
      'en': 'Fourths Soccer',
      'es': 'Cuartos de fútbol',
      'ko': '4군 축구',
      'zh_Hans': '第四届足球',
    },
    'dltntkfy': {
      'en': 'Varsity Football',
      'es': 'Fútbol universitario',
      'ko': '대학 풋볼',
      'zh_Hans': '校队足球',
    },
    '3ksunyj8': {
      'en': 'JV Football',
      'es': 'Fútbol JV',
      'ko': 'JV 풋볼',
      'zh_Hans': '合资足球',
    },
    'k3i3cj8w': {
      'en': 'Thirds Football',
      'es': 'Fútbol de Terceros',
      'ko': '서드 풋볼',
      'zh_Hans': '三分之一足球',
    },
    'gig6u0m5': {
      'en': 'Cross Country',
      'es': 'A campo traviesa',
      'ko': '크로스컨트리',
      'zh_Hans': '越野',
    },
    'epg9wrv0': {
      'en': 'Varsity Hockey',
      'es': 'Hockey universitario',
      'ko': '대학 하키',
      'zh_Hans': '校队曲棍球',
    },
    'pqb1cbh2': {
      'en': 'Varsity B Hockey',
      'es': 'Equipo de hockey universitario B',
      'ko': '대학 B 하키',
      'zh_Hans': '校队 B 冰球',
    },
    'ik5lv04z': {
      'en': 'JV Hockey',
      'es': 'Hockey JV',
      'ko': 'JV 하키',
      'zh_Hans': '初级曲棍球',
    },
    'ldb4udx9': {
      'en': 'Thirds Hockey',
      'es': 'Hockey de tercios',
      'ko': '서드 하키',
      'zh_Hans': '三分之一曲棍球',
    },
    'u1jhbqwj': {
      'en': 'Varsity Basketball',
      'es': 'Baloncesto universitario',
      'ko': '대학 농구',
      'zh_Hans': '校队篮球',
    },
    '4fm3i4au': {
      'en': 'JV Basketball',
      'es': 'Baloncesto JV',
      'ko': 'JV 농구',
      'zh_Hans': '合资篮球',
    },
    'px40qxza': {
      'en': 'Thirds (Blue) Basketball',
      'es': 'Baloncesto de tercera categoría (azul)',
      'ko': '3번째(파란색) 농구',
      'zh_Hans': '第三 (蓝色) 篮球',
    },
    'p3kevr3a': {
      'en': 'Thirds (Red) Basketball',
      'es': 'Baloncesto de tercera categoría (rojo)',
      'ko': '3번째(빨간색) 농구',
      'zh_Hans': '三分球（红色）篮球',
    },
    'lfnfy3to': {
      'en': 'Varsity Squash',
      'es': 'Squash universitario',
      'ko': '대학 스쿼시',
      'zh_Hans': '校队壁球',
    },
    '2ahhthn7': {
      'en': 'JV Squash',
      'es': 'Equipo de squash JV',
      'ko': 'JV 스쿼시',
      'zh_Hans': '合资壁球',
    },
    'cnkmmn3t': {
      'en': 'Thirds Squash',
      'es': 'Tercios de squash',
      'ko': '서드 스쿼시',
      'zh_Hans': '三分之一挤压',
    },
    'uqdfco53': {
      'en': 'Swimming',
      'es': 'Nadar',
      'ko': '수영',
      'zh_Hans': '游泳',
    },
    'wbxpnx85': {
      'en': 'Wrestling',
      'es': 'Lucha',
      'ko': '레슬링',
      'zh_Hans': '摔角',
    },
    'e8vum8bi': {
      'en': 'Varsity Baseball',
      'es': 'Béisbol universitario',
      'ko': '대학 야구',
      'zh_Hans': '大学棒球',
    },
    '5y03jdbj': {
      'en': 'JV Baseball',
      'es': 'Béisbol JV',
      'ko': 'JV 야구',
      'zh_Hans': '合资棒球',
    },
    'qp1hoqje': {
      'en': 'Thirds Baseball',
      'es': 'Terceros de béisbol',
      'ko': '서드 야구',
      'zh_Hans': '三分之一棒球',
    },
    'aszs7859': {
      'en': 'Varsity Golf',
      'es': 'Golf universitario',
      'ko': '대학 골프',
      'zh_Hans': '大学高尔夫',
    },
    '1jd24qo9': {
      'en': 'JV Golf',
      'es': 'Golf de empresa conjunta',
      'ko': 'JV 골프',
      'zh_Hans': '合资高尔夫',
    },
    'hy7mg8k0': {
      'en': 'Varsity Lacrosse',
      'es': 'Lacrosse universitario',
      'ko': '대학 라크로스',
      'zh_Hans': '校队曲棍球队',
    },
    'rq983phc': {
      'en': 'Varisty B Lacrosse',
      'es': 'Lacrosse de la variedad B',
      'ko': 'Varisty B 라크로스',
      'zh_Hans': 'Varisty B 长曲棍球',
    },
    'l1r5pmsx': {
      'en': 'JV Lacrosse',
      'es': 'Lacrosse JV',
      'ko': 'JV 라크로스',
      'zh_Hans': '合资长曲棍球',
    },
    'n6p5j8cm': {
      'en': 'Thirds Lacrosse',
      'es': 'Lacrosse de tercios',
      'ko': '서드 라크로스',
      'zh_Hans': '三分之一曲棍球',
    },
  },
  // AdminAddPlayerComp2
  {
    'dhwskq6t': {
      'en': 'Add',
      'es': 'Agregar',
      'ko': '추가하다',
      'zh_Hans': '添加',
    },
  },
  // emptyList
  {
    '3vrfnmou': {
      'en': 'Ai Chat Active!',
      'es': '¡Ai Chat activo!',
      'ko': 'Ai 채팅이 활성화되었습니다!',
      'zh_Hans': '愛聊活跃！',
    },
    'nxg4u6dw': {
      'en':
          'Ask anything about FL! Powered by ChatGPT-4o, the FL AI provides seamless user experience for all.',
      'es':
          '¡Pregunte lo que quiera sobre FL! Con la tecnología de ChatGPT-4o, la IA de FL ofrece una experiencia de usuario perfecta para todos.',
      'ko':
          'FL에 대해 무엇이든 물어보세요! ChatGPT-4o로 구동되는 FL AI는 모든 사람에게 매끄러운 사용자 경험을 제공합니다.',
      'zh_Hans': '询问有关 FL 的任何问题！由 ChatGPT-4o 提供支持，FL AI 为所有人提供无缝的用户体验。',
    },
  },
  // aiChat_Component
  {
    'fcm0bqd2': {
      'en': 'Copy response',
      'es': 'Copiar respuesta',
      'ko': '응답 복사',
      'zh_Hans': '复制回复',
    },
    'ahsahy4m': {
      'en': 'Type something...',
      'es': 'Escribe algo...',
      'ko': '뭔가를 입력하세요...',
      'zh_Hans': '输入一些内容...',
    },
  },
  // user_List
  {
    'hnoxn2rm': {
      'en': 'Assign Player',
      'es': 'Asignar jugador',
      'ko': '플레이어 지정',
      'zh_Hans': '指派玩家',
    },
    'qsf1mqry': {
      'en': 'Select players from the list below to continue.',
      'es': 'Seleccione jugadores de la lista a continuación para continuar.',
      'ko': '계속하려면 아래 목록에서 플레이어를 선택하세요.',
      'zh_Hans': '从下面的列表中选择玩家以继续。',
    },
    'o0r50bj0': {
      'en': 'Select All',
      'es': 'Seleccionar todo',
      'ko': '모두 선택',
      'zh_Hans': '选择全部',
    },
    'vjz4zuis': {
      'en': 'Selected Players:',
      'es': 'Jugadores seleccionados:',
      'ko': '선택된 플레이어:',
      'zh_Hans': '选定的球员：',
    },
    'bkc2iejf': {
      'en': 'Deselect All',
      'es': 'Deseleccionar todo',
      'ko': '모두 선택 해제',
      'zh_Hans': '取消全部选择',
    },
    'yltpyge3': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'ko': '확인하다',
      'zh_Hans': '确认',
    },
    'o6zknnpf': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'ko': '취소',
      'zh_Hans': '取消',
    },
  },
  // ArticleDetails2
  {
    '1lmvklkz': {
      'en': '24',
      'es': '24',
      'ko': '24',
      'zh_Hans': '24',
    },
    'x9y9fa54': {
      'en': 'Read Now',
      'es': 'Leer ahora',
      'ko': '지금 읽기',
      'zh_Hans': '立即阅读',
    },
  },
  // StatisticsCards
  {
    '6d13c0it': {
      'en': 'Most Wins',
      'es': 'Mayoría de victorias',
      'ko': '가장 많은 승리',
      'zh_Hans': '获胜次数最多',
    },
    '7xf0ujo5': {
      'en': 'Hockey',
      'es': 'Hockey',
      'ko': '하키',
      'zh_Hans': '曲棍球',
    },
  },
  // ChooseBestPlayers
  {
    'sfl3pa27': {
      'en': 'Choose Player',
      'es': 'Elegir jugador',
      'ko': '플레이어 선택',
      'zh_Hans': '选择玩家',
    },
    'iaxmvg2v': {
      'en': 'Select players from the list below to continue.',
      'es': 'Seleccione jugadores de la lista a continuación para continuar.',
      'ko': '계속하려면 아래 목록에서 플레이어를 선택하세요.',
      'zh_Hans': '从下面的列表中选择玩家以继续。',
    },
    'edsldjjo': {
      'en': 'Select All',
      'es': 'Seleccionar todo',
      'ko': '모두 선택',
      'zh_Hans': '选择全部',
    },
    'dkvv3fqk': {
      'en': 'Selected Players:',
      'es': 'Jugadores seleccionados:',
      'ko': '선택된 플레이어:',
      'zh_Hans': '选定的球员：',
    },
    'bzb4kuo2': {
      'en': 'Deselect All',
      'es': 'Deseleccionar todo',
      'ko': '모두 선택 해제',
      'zh_Hans': '取消全部选择',
    },
    'dchom9oz': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'ko': '확인하다',
      'zh_Hans': '确认',
    },
    'f4vnlzdf': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'ko': '취소',
      'zh_Hans': '取消',
    },
  },
  // AdminPlayerOption
  {
    's63pdnhm': {
      'en': 'Options',
      'es': 'Opciones',
      'ko': '옵션',
      'zh_Hans': '选项',
    },
    'o8rnfaji': {
      'en': 'Attendence Check',
      'es': 'Control de asistencia',
      'ko': '출석 체크',
      'zh_Hans': '考勤',
    },
    '6mqs28ff': {
      'en': 'Send personalized notification',
      'es': 'Enviar notificación personalizada',
      'ko': '개인화된 알림 보내기',
      'zh_Hans': '发送个性化通知',
    },
    'bufrfwpm': {
      'en': 'Delete',
      'es': 'Borrar',
      'ko': '삭제',
      'zh_Hans': '删除',
    },
  },
  // CreateStream
  {
    'flafzr7u': {
      'en': 'Create a Stream',
      'es': 'Crear una transmisión',
      'ko': '스트림 만들기',
      'zh_Hans': '创建流',
    },
    'hzppwanu': {
      'en': 'Create your streams by filling the form below.',
      'es': 'Crea tus streams rellenando el formulario a continuación.',
      'ko': '아래 양식을 작성하여 스트림을 생성하세요.',
      'zh_Hans': '通过填写下面的表格来创建您的流。',
    },
    'i9jw1mjf': {
      'en': 'Write your title here...',
      'es': 'Escribe tu título aquí...',
      'ko': '여기에 제목을 입력하세요...',
      'zh_Hans': '在这里写下你的标题...',
    },
    '7zduolxf': {
      'en': 'Enter your description here...',
      'es': 'Introduce tu descripción aquí...',
      'ko': '여기에 설명을 입력하세요...',
      'zh_Hans': '在此处输入您的描述...',
    },
    'ce2s0wyf': {
      'en': 'Create Stream',
      'es': 'Crear transmisión',
      'ko': '스트림 생성',
      'zh_Hans': '创建流',
    },
  },
  // LanguageSelector
  {
    'ntb39lyq': {
      'en': 'Select Language',
      'es': 'Seleccione idioma',
      'ko': '언어 선택',
      'zh_Hans': '选择语言',
    },
    '1f0kjg0f': {
      'en': 'English',
      'es': 'English',
      'ko': 'English',
      'zh_Hans': 'English',
    },
    'cbnypdrl': {
      'en': 'Español',
      'es': 'Español',
      'ko': 'Español',
      'zh_Hans': 'Español',
    },
    'vbss7yxg': {
      'en': '中文',
      'es': '中文',
      'ko': '中文',
      'zh_Hans': '中文',
    },
    'qj9i6ro0': {
      'en': '한국어',
      'es': '한국어',
      'ko': '한국어',
      'zh_Hans': '한국어',
    },
  },
  // Miscellaneous
  {
    'rcr1oq0z': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'skkgm98n': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'snelq6le': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'qg76xgke': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'ukqkos00': {
      'en':
          'Would you like to get exclusive notifications from FL, such as private team notification from your coach?',
      'es':
          '¿Quieres recibir notificaciones exclusivas de FL, como notificaciones privadas del equipo de tu entrenador?',
      'ko': '코치로부터 개인 팀 알림 등 FL에서 보내는 특별 알림을 받으시겠습니까?',
      'zh_Hans': '您想获得 FL 的独家通知吗，例如来自教练的私人团队通知？',
    },
    'kjlzxw82': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '5s6gp17c': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'f3fuik5j': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'u2wtxeod': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'vvcqn13j': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '6up7qkys': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '129t05xw': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'qo8fw07w': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'wdhcoj0x': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '2mcx2p11': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'mujlgg1u': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'zfxr5h83': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'feofkv0f': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'wc0ibyc8': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'f0mn89gi': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'qgb7fmqo': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'tp0qacko': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'wpnoknvz': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'bp7m0187': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'x48uf7u5': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    '24ynb4vb': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'rbbuh6rw': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'feziasjx': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    'kgzal17p': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
    's9y0whfy': {
      'en': '',
      'es': '',
      'ko': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));
