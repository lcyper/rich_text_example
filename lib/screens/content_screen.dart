import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  final ScrollController _scrollController = ScrollController();

  final String appBarTitle = 'חיי שרה';

  final String content =
      "יגלה לן טעמיה כו'. הנה מילוי ה' היא בה' אחרת והיא בחי' כפילא כנודע מענין מערת המכפלה שהיא ה' אחרונה דשם ב\"ן כו'. והענין יובן בהקדים להבין ענין האכילה כי הנה עיקר האכילה להיות כי מן המאכל נעשה חלב ודם והדם הוא הנפש וחיות האדם שמקבל הכבד הדם מן המאכל ושולח ללב ולמוח דתלת שליטין אינון בעלמא כבדא ולבא ומוחא כו'. ועי\"ז מתעלה המאכל שנעשה ממנו לב ומוח האדם ועי\"ז מתחזק לבו ומוחו בעבודת ה' שבלבו בהתלהבו' כרשפי אש שנעשה בכח האכילה שבלא אכילה הי' מתחלש כו'. וגם מוחו נעשה חזק להתבונן בגדולת ה' כו' וזהו ענין בירור שמן המאכל נעשה אדם. אך כ\"ז הוא בימות החול אבל בשבת בורר אסור אלא האכילה היא יותר עליונה בבחי' המשכה מלמעלה וקראת לשבת ענג. אז תתענג על הוי\"ה. כי הנה כתיב אחור וקדם צרתני אחור למע\"ב כו' שהמאכל כמו שהוא למטה בירידתו בשבה\"כ הנה האדם הוא בבחי' קדם שהמאכל הוא מתברר ע\"י האדם אבל בשרשו למעלה הוא מעולם התהו לפני מלך מלך לבנ\"י אלא שאח\"כ וימלך וימת. וימת וימלך כו'. אך מ\"מ נראה ששרשו יותר גבוה מהאדם שהרי המאכל הוא המחי' את האדם. והאדם הוא מקבל החיות מן המאכל לפי שהוא בבחי' אחור למע\"ב כו' ובשבת שהוא זמן עליית העולמות מתעלה המאכל כמו שהוא בשרשו ונמשך ממנו חיות להנפש מלמעלה למטה ע\"י י\"ב לחמים כו' וזהו ענין צדיק אוכל לשובע נפשו כי יש ב' אכילות הא' הוא לשובע נפשו. והב' הוא ובטן רשעים תחסר. לשובע נפשו הוא חיות הנפש הבאה מלמעלה. ובטן רשעים כו' היינו כי רשעים הם החיצונים וע\"י האכילה מבררים מהם חיל בלע ויקיאנו כי בכל מאכל יש תאוה שהוא שרש הקליפה וע\"י שנכלל בגוף האדם ונעשה ממנו דם הנשלח ללב ומוח מתהפך לטוב בקדושה ע\"י חיזוק הלב ומוח בעבודת ה' ועי\"ז לוקח ממנו החיות שבזלעו\"ז וזהו ובטן רשעים תחסר שנחסר החיות שבלעו. ומבטנו יורישנו אל. והנה האכילה שבחול שהיא בבחי' בירור הוא להיות ובטן רשעים תחסר. אבל האכילה שבשבת היא המשכה מלמעלה לשובע נפשו מחמת המאכל כמו שהוא בשרשו למעלה קודם שנפל בשבה\"כ שאין בו בירור. וכמ\"ש בזוהר פרש שבתכם לא קאמר שמה שנעשה מלמטה למעלה ע\"י בירור כמו בימות החול יש בו פרש שהוא פסולת שהמובחר שולח ללב ולמוח והפסולת יורד למטה בקרביים ובני מעיים כו' וזהו הבירור אבל בשבת שהוא נעשה מלמעלה למטה אין בו פסולת כלל כי הפסולת הוא מעה\"ד טו\"ר ולמטה נעשה טו\"ר בכל הבחי' ע\"י אכילת אדה\"ר מעה\"ד טו\"ר וגם בכל אדם יש תערובת טו\"ר כו' רק שאינו שוה בכל נפש יש שטוב שלו מרובה כו' וכן יש שטוב שלו הוא בבחי' זו כו' אבל בשבת אז תתענג על ה' למעלה מעה\"ד ולא יגורך רע כלל. רק ביו\"ט כתיב פרש חגיכם לפי שביו\"ט יש בו קצת בירור שהרי הותרה בו מלאכת אוכל נפש כאפיה ובישול כו' ואינו אסור רק קצירה וזריעה וחרישה כו' ולפי שהותרו קצת מלאכות באוכל נפש יש בו בירור ושייך פסולת והתקון הוא למחדי למסכני. כי שעת שמחה היא לשמח את הכל וכמ\"ש ושמחת בחגך אתה והלוי והגר כו' לפי שהשמחה היא בחי' המתקת הדינין וצריך לשמח את כולם שיהיו כולם נכללים בבחי' שמחה. וכנודע ממי שהוא בשעת שמחה שאז רוצה שיהיו כולם שמחים שבזה נמתק הדין מאחר שמשוה את כולם. אבל מאן דלא יהיב למסכני כו' אין הדין נמתק ונשאר הפרש ולכן העונש הוא מדה כנגד מדה שנותנין לו הפרש כי הוא גרם שישאר פסולת הפרש בעבור שלא המתיק הדין. וזהו ביו\"ט אבל בשבת אע\"ג דלא יהיב למסכני אין עונשו רב כי בשבת אין פרש כלל לפי שהוא רק בחי' המשכה שמלמעלה דלא יגורך רע כלל. והנה המשכה זו היא בב' בחי' כפילא וקלישא. פי' קלישא היא המשכת יודי\"ן ווי\"ן שמיו\"ד נעשה וי\"ו שהיו\"ד עצמה נמשכה ונעשית וי\"ו. כי לפי שהיו\"ד הוא בחי' צמצום לכן יכול להיות ממנה המשכה בבחי' וי\"ו מן היו\"ד עצמה אבל הה' שהיא התפשטות אורך ורוחב. ואין התפשטו' אורך ורוחב שלמעלה יכולה להתגלות למטה כמו שהוא למעלה בבחי' אורך ורוחב עד אין קץ כו' אלא ההמשכה היא בבחי' ה' אחרת למטה והיא בחי' המילוי של ה' דהיינו כח הה' שהי' בהעלם למעלה. כי לעולם המילוי הוא מה שבהעלם ומה שבהעלם למעלה יצא מההעלם אל הגילוי למטה. והיינו בחי' כפיל' שהיא בחי' מילוי ההי\"ן כנודע מענין המכפלה. אך כ\"ז הוא שאנו מקבלים ההשפעה ע\"י י\"ב לחמים בזמן הזה אבל לע\"ל יגלה לן טעמיה דבתריסר נהמי כו' ואזי לא יהיה בחי' כפילא כו' רק הה' עצמה שלמעלה יהי' לה גילוי למטה ג\"כ ע\"י כי יגלה לן טעמיה כו' וכמ\"ש ביום ההוא יהיה כו':";

  late double _scrollControllerOffset;
  late SharedPreferences prefs;
  @override
  void initState() {
    initSharedPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      _scrollControllerOffset = _scrollController.offset;
      print('guardando en localStorage');
      prefs.setDouble('offset', _scrollControllerOffset);
      // _scrollController.animateTo();
      // print(_scrollController.offset);
    });
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'תורה אור',
              style: GoogleFonts.getFont('Frank Ruhl Libre'),
            ),
            Text(
              appBarTitle,
              style: GoogleFonts.getFont('Frank Ruhl Libre'),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Scrollbar(
        scrollbarOrientation: ScrollbarOrientation.left,
        // isAlwaysShown: true,
        interactive: true,
        controller: _scrollController,
        radius: const Radius.circular(25),
        thickness: 10,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          controller: _scrollController,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: content.split(' ')[0],
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: content.substring(content.split(' ')[0].length),
                    ),
                  ],
                ),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    print('levantando dato de localStorage');
    _scrollControllerOffset = prefs.getDouble('offset') ?? 0.0;
    if (_scrollControllerOffset != 0.0) {
      _scrollController.animateTo(
        _scrollControllerOffset,
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
    }
  }
}
