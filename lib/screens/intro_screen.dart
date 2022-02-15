import 'package:flutter/material.dart';
import 'package:ielts_app/widgets/title_paragraph.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static const routeName = '/intro-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to Ielts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'p1',
              child: Image.network(
                'http://www.omgeduservices.com/image/IELTS.jpg',
                fit: BoxFit.cover,
              ),
            ),
            TitleParagraph(
                title: 'What is IELTS',
                data:
                    '''IELTS, the International English Language Testing System, is a test of English language proficiency and one of the world’s most popular and respected forms of English in education and migration.

Intended for non-native speakers who are looking to study or work in an English-speaking environment, IELTS training is an internationally recognised system for testing English language ability in four categories.

IELTS is jointly owned by the British Council, IDP: IELTS Australia and Cambridge Assessment English.'''),
            TitleParagraph(
                title: 'Why take IELTS?',
                data:
                    '''If you are looking to work, live or study in an English-speaking country, then you must be able to demonstrate a high level of English language ability.

IELTS is the most popular test for those looking to migrate to Australia, Canada, New Zealand and the UK. '''),
            TitleParagraph(
                title: 'IELTS Test Types',
                data: '''There are two different types of IELTS test:

Academic IELTS is for international students who wish to study at a UK university or join an institute of higher education.

General IELTS classes focus on English survival skills and social and workplace language, ideal for those who are planning to migrate to English-speaking countries such as Australia, Canada and New Zealand.

Once graded, your IELTS score is valid for two years.'''),
            TitleParagraph(
                title: 'Test Format ',
                data: '''IELTS test is divided into the following four parts: 
1. Reading module (3 sections. Time: 60 minutes) 
2. Writing module (2 tasks. Time: 60 minutes 
3. Listening module (4 recordings. Time: 30 minutes)
 4. Speaking module (2 tasks. Time: 11 — 14 minutes) 

The reading test, writing test, and listening tests are conducted on the same day. The speaking test is conducted on a different day in the same week. 

The reading, writing, and listening tests is to be attempted in the answer-book provided to the candidates. On the other hand, in the speaking test, the candidate is interviewed by an interviewer. 
''')
          ],
        ),
      ),
    );
  }
}
