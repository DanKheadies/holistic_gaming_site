import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// import 'package:holistic_gaming_site/widgets/widgets.dart';

class ResearchArticle extends Equatable {
  final String shortTitle;
  final String refTitle;
  final String realTitle;
  final String articleLink;
  final String authors;
  final String publishedDate;
  final String postedDate;
  final String tldr;
  final String eli5;
  final Widget elevatorSum;
  final Widget dissertation;

  const ResearchArticle({
    required this.shortTitle,
    required this.refTitle,
    required this.realTitle,
    required this.articleLink,
    required this.authors,
    required this.publishedDate,
    required this.postedDate,
    required this.tldr,
    required this.eli5,
    required this.elevatorSum,
    required this.dissertation,
  });

  @override
  List<Object> get props => [
        shortTitle,
        refTitle,
        realTitle,
        articleLink,
        authors,
        publishedDate,
        postedDate,
        tldr,
        eli5,
        elevatorSum,
        dissertation,
      ];

  static List<ResearchArticle> articles = [
    const ResearchArticle(
      shortTitle: 'Adolescents and Loot Boxes',
      refTitle: 'adolescents-loot-boxes',
      realTitle:
          'Adolescents and loot boxes: links with problem gambling and motivations for purchase',
      articleLink: 'https://royalsocietypublishing.org/doi/10.1098/rsos.190049',
      authors: 'David Zendle, Rachel Meyer, and Harriet Over',
      publishedDate: 'Jun 2019',
      postedDate: 'Mar 2021',
      tldr:
          'There is a relationship between loot box spending and gambling behavior problems.',
      eli5:
          'If you eat too much of a good thing, you can get sick. The problem occurs when your mouth says “more" and your stomach says “no more” and only one of them can be the winner. Having too much of a good thing can happen in video games where you can buy things. Your brain thinks “more” and your wallet says “no more” and again, there can only be one winner. Loot boxes in video games trick kids brains into thinking they are a good thing when really they can cause problems.',
      elevatorSum: Column(
        children: [
          Text(
            'The microtransactionization of video games have a sweeping affect on players, and a number of adolescents have become susceptible to their effects. Loot boxes are a prime example of microtransactions that mirror gambling tendencies, and while the types and versions of loot boxes differ amongst and within games, their central premise remains constant: adolescents who spend money on loot boxes exhibit symptoms of problem gambling behaviors. It is unclear if adolescents with gambling problems are more susceptible to devices like loot boxes or if features like loot boxes lead to problem gambling, but a relationship between the two exists.',
          ),
          SizedBox(height: 15),
          Text(
            'This study looked at adolescent behaviors and purchases of loot boxes, and through their various hypotheses and online-survey questions, they concluded that 1) a relationship exists and 2) the more they spend, the worse their problem gaming behaviors are. The researchers suggest conducting more research, i.e. repeating, breadth, and depth, in this area to be assured of their conclusions.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            'A loot box is a “randomized," pay-for-goods video game enticement. By paying small amounts of real money for a random enhancement in-game, players gamble on receiving a specific, rare, and/or prestigious reward, or they end up with commonly average rewards. Players do not know what the loot boxes contain when they purchase them, and several international regulatory authorities have likened this behavior to gambling. The main concern is children and adolescents falling into a pattern of “problem gambling” which is linked to depression, anxiety, bankruptcy, and suicide. Exposure to problem gambling and gambling activities in childhood and adolescence is an important predictor of adult gambling problems. The various types of loot boxes can affect the specifics of how or why a player purchases it, but the fundamental concerns circle back to the nature of loot boxes mirroring gambling.',
          ),
          SizedBox(height: 15),
          Text(
            'A loot box is a “randomized," pay-for-goods video game enticement. By paying small amounts of real money for a random enhancement in-game, players gamble on receiving a specific, rare, and/or prestigious reward, or they end up with commonly average rewards. Players do not know what the loot boxes contain when they purchase them, and several international regulatory authorities have likened this behavior to gambling. The main concern is children and adolescents falling into a pattern of “problem gambling” which is linked to depression, anxiety, bankruptcy, and suicide. Exposure to problem gambling and gambling activities in childhood and adolescence is an important predictor of adult gambling problems. The various types of loot boxes can affect the specifics of how or why a player purchases it, but the fundamental concerns circle back to the nature of loot boxes mirroring gambling.',
          ),
          SizedBox(height: 15),
          Text(
            'This research investigated the links between loot box spending and problem gambling in adolescents. Using an online survey, 1155 responses from 16-18 year olds were collected with 88% identifying as male. Participants indicated when they opened loot boxes and if real-world money was involved in the last month. For example, less than 5% indicated that they purchased their first loot box one day or one week after playing a new game, and 80% indicated that they purchased their first loot box more than a month after starting a new game. The researchers transformed the monetary amount into US dollars and applied a rank transformation pre-analysis to help handle outliers. Participants were asked about the frequency of their problem-gambling-related behaviors through the Canadian Adolescent Gambling Inventory’s (CAGI) Problem Gambling subscale. Impulsivity and measured along with frequency and immediacy of loot box purchasing as well as questions about purchased loot box features. Finally, motivation to buy loot boxes was measured.',
          ),
          SizedBox(height: 15),
          Text(
            'The researchers hypothesized several outcomes of opening loot boxes, specifically the features inherent to them, as well as impulsivity. Using several tests, e.g. Spearman rank correlation and Mann-Whitney U-test, across their different hypotheses, e.g. there will be a significant positive correlation between loot box spending and problem gambling, the researchers found that there was a statistically significant effect of problem gambling on loot box spending. Moderation analysis was used to test the specific loot box features hypotheses, and only two features significantly strengthened the links between loot box spending and problem gambling: loot box contents limited time availability and free loot box giveaways.',
          ),
          SizedBox(height: 15),
          Text(
            'Image w/ description',
          ),
          SizedBox(height: 15),
          Text(
            'A Spearman rank correlation result showed some correlation between loot box spending and impulsivity as well as a significant relationship between microtransactions spending and problem gambling; however, there are some caveats for both results. The researchers conducted a qualitative analysis of the motivations behind participants who purchased a loot box in the past month, i.e. 468, and below is a table of their motivations to purchase a loot box as well as their frequency.',
          ),
          SizedBox(height: 15),
          Text(
            'Image w/ description',
          ),
          SizedBox(height: 15),
          Text(
            'The evidence establishes a link between loot box spending and problem gambling in older adolescents. While these results are statistically significant, their true importance lies in the effect size associated with them, i.e. the relationship between loot box spending and problem gambling is of moderate-to-large magnitude which is an order of magnitude larger than the relationship between problem gambling and risk factors such as alcohol dependence. The effect size is what commonly indicates practical, real-world significance. The researchers also point out that the severity of this relationship appears larger than in adult populations. Ultimately, this is correlational analysis, and experimental and longitudinal work is needed to understand the ‘chicken-or-the-egg’ relationship between spending on loot boxes and problem gambling behaviors. The researchers also suggest ways to mitigate problem gambling risks, such as through rating agency restrictions or national and federal authorities placing regulations on loot boxes.',
          ),
        ],
      ),
    ),
    const ResearchArticle(
      shortTitle: 'Video Game Expertise and Fluid Intelligence',
      refTitle: 'vg-expertise-fluid',
      realTitle:
          'Exploring the relationship between video game expertise and fluid intelligence',
      articleLink:
          'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0186621',
      authors:
          'Athanasios V. Kokkinakis, Peter I. Cowling, Anders Drachen & Alex R. Wade',
      publishedDate: 'Nov 2017',
      postedDate: 'May 2020',
      tldr:
          'MOBA performance is a good proxy to logical thinking & solving novel problems.',
      eli5:
          'Different games emphasize different abilities, like American football emphasizes size or power and international fútbol emphasizes speed or agility. Depending on the game, you’ll want to develop your muscles differently, like big muscles to push someone back vs light muscles to be quick and fast. One type of video game, MOBAs, showcase players that think logically and solve novel problems well.',
      elevatorSum: Column(
        children: [
          Text(
            'Do you want to think logically? Want to solve novel problems well? If so, you should be playing a multiplayer online battle arena—aka MOBA—and be good at it. High ranking MOBA players, i.e. League of Legends & Defense of the Ancients 2, have shown higher levels of working memory and with that, higher levels of fluid intelligence. In other words, higher ranks in those games correlated with higher scores in tests that measured those players\' thinking and working memory skills. Age also plays into those measurements. Games with strong foundations in reaction skills and hand-eye coordination, like first person shooters, have a wide range of top performers between 13 and 27, whereas games with high logical thinking and novel problem solving, like MOBAs, tend to cluster their top performers in the early-to-mid 20s range. There are several caveats worth digging into and discussing, but MOBAs—and even video games in general—offer a robust insight into cognitive functions, and they may be useful for studying cognitive epidemiology at a global scale.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            'The authors examine the potential link between intelligence and performance in video games, specifically Multiplayer Online Battle Arenas aka MOBAs. Through a number of previous studies looking at the relationship between skill performance in games and general intelligence, the authors assert that a similar link between intelligence and performance can be established through widely-played, commercially available, team-based video games that are available globally. MOBAs are an action-strategy game that rely heavily on memory, tactics, and strategy over hand-eye coordination, like First Person Shooters (FPS). Using MOBAs and FPS, the researchers conducted two studies.',
          ),
          SizedBox(height: 15),
          Text(
            'The first study used data—specifically player rank—from a popular MOBA ‘League of Legends’ (LoL), and they looked to see if fluid intelligence, which was reflected as scores on the WASI-II Matrix Test correlated with LoL rank. Along with their game rank, participants were also subjected to a number of working memory tasks along with a theory of mind test, i.e. MITE, to see how emotional processing correlated with intelligence. They found that fluid intelligence correlated significantly with rank, but they found no significant correlation between rank and MITE task scores as well as a weak correlation between rank and visuospatial working memory tests.',
          ),
          SizedBox(height: 15),
          Text(
            'In the second study, the researchers used a larger dataset to see if performance in MOBAs followed age profile maps for fluid intelligence, which follows a similar trajectory in population-level raw IQ where scores peak in the early-to-mid twenties. Using two MOBAs—LoL & Defense of the Ancients 2 (Dota 2)—and two FPS—Destiny & Battlefield 3, the researchers could compare games that prioritized speed and targeting accuracy over memory and multifactorial decision making. The researchers gathered ‘Matchmaking Ranking’ (MMR) scores for each game as well as participant age.',
          ),
          SizedBox(height: 15),
          Text(
            'Image w/ description',
          ),
          SizedBox(height: 15),
          Text(
            'The researchers found different age trajectories between rank and game type. Age groups were divided into 3: first being 13-21, second being 22-27, and third being 28-40. Both types showed significant differences between the second and third groups, which indicated that performance, i.e. rank, falls in general after the mid-to-late 20s. However, MOBAs showed a significant increase between first and second age groups, whereas FPS showed more equal performance between first and second. This is consistent with the authors’ hypothesis that performance in MOBAs (and not FPS games) is correlated with fluid intelligence, which also exhibits this age profile.',
          ),
          SizedBox(height: 15),
          Text(
            'Image w/ description',
          ),
          SizedBox(height: 15),
          Text(
            'While the data indicates a link between intelligence and video game performance, the authors point out that the relationship is correlational with unclear causality. Similar results have been noted by other researchers, but the study’s authors point out that factors such as age and adult responsibilities, MMR being tied to team performance, and a mildred of underlying cognitive factors as being points of contention and concern. However, if video games—MOBAs in particular—offer a robust insight into cognitive function, they may be used to study cognitive epidemiology at a massive scale—instantly overcoming existing issues with small sample sizes and potentially allowing researchers to examine dynamic changes in performance at a population level in almost real time.',
          ),
        ],
      ),
    ),
    const ResearchArticle(
      shortTitle: 'AI to Relieve Symptoms of Depresssion and Anxiety',
      refTitle: 'ai-depression-anxiety',
      realTitle:
          'Using Psychological Artificial Intelligence (Tess) to Relieve Symptoms of Depression and Anxiety: Randomized Controlled Trial',
      articleLink:
          'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0186621',
      authors:
          'Russell Fulmer, PhD; Angela Joerin, MS; Breanna Gentile, MS, MA; Lysanne Lakerink; Michiel Rauws, MBA',
      publishedDate: 'Feb 2018',
      postedDate: 'August 2022',
      tldr:
          'Artificial intelligence treatment shows promise for psychological aid.',
      eli5:
          'People get sad and upset for a number of reasons. It\'s helpful to talk to someone who knows how people think and who can help provide insight on how they can get better and happier. As technology gets better, it can help people get better. Technology can act like a person to talk to someone who is sad and upset, and we have some good research showing that this helps people be happier.',
      elevatorSum: Column(
        children: [
          Text(
            'Mental health issues and awareness around these problems has been increasing in the last several decades. As people struggle with their mental issues, they are struggling to find an intervention, e.g. therapist or program, that is accessible, cost-effective, and provides the degree of care that they need individually. Fortunately, there is promising research that uses artificial intelligence (AI) and technological advancements to reach patients in need.',
          ),
          SizedBox(height: 15),
          Text(
            'Using an AI called Tess for 2-4 weeks, participants in a study were able to text a “concerned friend” that helped them during their depressive and anxious moments. Their new friend provided insights, resources, and intervention techniques to combat their depression, and it made a difference on several metrics of personal and emotion well-being.',
          ),
          SizedBox(height: 15),
          Text(
            'AI-assisted interventions show a lot of promise, and we should be investigating more ways to utilize this technology to reach the millions of people that are struggling with depression and related mental health issues.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            'A large number of Americans suffer from mental illness of one form or another, specifically college students reporting symptoms of depression and anxiety. A majority of them do not receive adequate health care. Accessibility, cost-effective, and degree of care are all important factors for these patients. This study looks at the use of self-help computer-based cognitive and behavioral interventions, i.e. cognitive behavioral therapy, to reduce a smaller, sub-set of mood disorders experienced by college students, i.e. non-clinical patients.',
          ),
          SizedBox(height: 15),
          Text(
            'The study consisted of 74 participants who averaged 23 years old with over two-thirds of them female. Participants were put into 1 of 3 groups: an experimental group that used an integrative psychological artificial intelligence—Tess—to deliver personalized conversations over 2 weeks via an instant messenger app, a second group that used Tess for 4 weeks, and a control group that was given the National Institute of Mental Health\'s (NIMH) eBook. Participants were given a set of questionnaires before and after the experiment windows, which included a health questionnaire, anxiety disorder, positive and negative affect schedule, and satisfaction and engagement during the study.',
          ),
          SizedBox(height: 15),
          Text(
            'Tess is a well developed technology that experienced professionals, i.e. mental health and emotion experts, crafted for use by the broader scientific community. Tess if configurable and works like existing chatbots, but its focus is towards emotional support and mental health interventions. These interventions have been shown to reduce symptoms of depression and anxiety like cognitive behavioral therapy (CBT). It is not meant to replace the role of a trained therapist; however, it can deliver a variety of clinically proven therapies, similar to CBT. In this study, Tess delivered intervention techniques rooted in CBT, mindfulness-based therapy, emotionally focused therapy, acceptance and commitment therapy, motivational interviewing, self-compassion therapy, and interpersonal psychotherapy, such as journaling and relaxation strategies. Similarly, the control group\'s NIMH eBook provided similar information and strategies.',
          ),
          SizedBox(height: 15),
          Text(
            'The results show a difference towards reduced symptoms of depression in the experimental and control groups. The findings suggest that Tess was helpful in decreasing depressive symptoms and anxiety symptoms, in effecting positive and negative affect schedule (i.e. emotions and feelings) scores, and learning something new about their situation as opposed to the control group. Participant engagement was tracked via messages sent and exchanged, but it was not possible to track the control group\'s engagement; however, the majority reported being satisfied with the content supplied.',
          ),
          SizedBox(height: 15),
          Text(
            'Participants who interacted with Tess displayed higher levels of engagement and overall satisfaction than those in the control. The researchers note that additional research is recommended before introducing Tess to individuals with clinical levels of depression and anxiety as well as more direct comparisons between the delivery of content coupled with tech-based solutions. The psychological AI used in this study was limited to text conversations only, i.e. it lacked assessment of facial expressions, tone, etc. Additionally, the lack of engagement from the control group, i.e. reading an eBook instead of texting, may have a larger impact on the results and should be assessed.',
          ),
          SizedBox(height: 15),
          Text(
            'Overall, this study reveals that AI offers a cost-effective and accessible mental health solution that could scale as a complementary tool to traditional treatment methods.',
          ),
        ],
      ),
    ),
    // const ResearchArticle(
    //   shortTitle: '',
    //   refTitle: '',
    //   realTitle: '',
    //   articleLink: '',
    //   authors: '',
    //   publishedDate: '',
    //   postedDate: '',
    //   tldr: '',
    //   eli5: '',
    //   elevatorSum: Column(
    //     children: [
    //       Text(
    //         '',
    //       ),
    //       SizedBox(height: 15),
    //       Text(
    //         '',
    //       ),
    //     ],
    //   ),
    //   dissertation: Column(
    //     children: [
    //       Text(
    //         '',
    //       ),
    //       SizedBox(height: 15),
    //       Text(
    //         '',
    //       ),
    //     ],
    //   ),
    // ),
  ];
}
