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
  final Map<String, Widget>? subsetLists;

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
    this.subsetLists,
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
    ResearchArticle(
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
      elevatorSum: const Column(
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
          const Text(
            'A loot box is a “randomized," pay-for-goods video game enticement. By paying small amounts of real money for a random enhancement in-game, players gamble on receiving a specific, rare, and/or prestigious reward, or they end up with commonly average rewards. Players do not know what the loot boxes contain when they purchase them, and several international regulatory authorities have likened this behavior to gambling. The main concern is children and adolescents falling into a pattern of “problem gambling” which is linked to depression, anxiety, bankruptcy, and suicide. Exposure to problem gambling and gambling activities in childhood and adolescence is an important predictor of adult gambling problems. The various types of loot boxes can affect the specifics of how or why a player purchases it, but the fundamental concerns circle back to the nature of loot boxes mirroring gambling.',
          ),
          const SizedBox(height: 15),
          const Text(
            'A loot box is a “randomized," pay-for-goods video game enticement. By paying small amounts of real money for a random enhancement in-game, players gamble on receiving a specific, rare, and/or prestigious reward, or they end up with commonly average rewards. Players do not know what the loot boxes contain when they purchase them, and several international regulatory authorities have likened this behavior to gambling. The main concern is children and adolescents falling into a pattern of “problem gambling” which is linked to depression, anxiety, bankruptcy, and suicide. Exposure to problem gambling and gambling activities in childhood and adolescence is an important predictor of adult gambling problems. The various types of loot boxes can affect the specifics of how or why a player purchases it, but the fundamental concerns circle back to the nature of loot boxes mirroring gambling.',
          ),
          const SizedBox(height: 15),
          const Text(
            'This research investigated the links between loot box spending and problem gambling in adolescents. Using an online survey, 1155 responses from 16-18 year olds were collected with 88% identifying as male. Participants indicated when they opened loot boxes and if real-world money was involved in the last month. For example, less than 5% indicated that they purchased their first loot box one day or one week after playing a new game, and 80% indicated that they purchased their first loot box more than a month after starting a new game. The researchers transformed the monetary amount into US dollars and applied a rank transformation pre-analysis to help handle outliers. Participants were asked about the frequency of their problem-gambling-related behaviors through the Canadian Adolescent Gambling Inventory\'s (CAGI) Problem Gambling subscale. Impulsivity and measured along with frequency and immediacy of loot box purchasing as well as questions about purchased loot box features. Finally, motivation to buy loot boxes was measured.',
          ),
          const SizedBox(height: 15),
          const Text(
            'The researchers hypothesized several outcomes of opening loot boxes, specifically the features inherent to them, as well as impulsivity. Using several tests, e.g. Spearman rank correlation and Mann-Whitney U-test, across their different hypotheses, e.g. there will be a significant positive correlation between loot box spending and problem gambling, the researchers found that there was a statistically significant effect of problem gambling on loot box spending. Moderation analysis was used to test the specific loot box features hypotheses, and only two features significantly strengthened the links between loot box spending and problem gambling: loot box contents limited time availability and free loot box giveaways.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/ado-loot-box-031521-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Moderation of the relationship between loot box spending and problem gambling by various factors.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'A Spearman rank correlation result showed some correlation between loot box spending and impulsivity as well as a significant relationship between microtransactions spending and problem gambling; however, there are some caveats for both results. The researchers conducted a qualitative analysis of the motivations behind participants who purchased a loot box in the past month, i.e. 468, and below is a table of their motivations to purchase a loot box as well as their frequency.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/ado-loot-box-031521-02.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Prevalence of motivations for buying loot boxes within the sample of older adolescents.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'The evidence establishes a link between loot box spending and problem gambling in older adolescents. While these results are statistically significant, their true importance lies in the effect size associated with them, i.e. the relationship between loot box spending and problem gambling is of moderate-to-large magnitude which is an order of magnitude larger than the relationship between problem gambling and risk factors such as alcohol dependence. The effect size is what commonly indicates practical, real-world significance. The researchers also point out that the severity of this relationship appears larger than in adult populations. Ultimately, this is correlational analysis, and experimental and longitudinal work is needed to understand the ‘chicken-or-the-egg\' relationship between spending on loot boxes and problem gambling behaviors. The researchers also suggest ways to mitigate problem gambling risks, such as through rating agency restrictions or national and federal authorities placing regulations on loot boxes.',
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
      postedDate: 'Aug 2022',
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
    const ResearchArticle(
      shortTitle: 'Anti-inflammatory Agents on Major Depressive Disorder',
      refTitle: 'anti-inflammatory-depression',
      realTitle:
          'Efficacy and safety of anti-inflammatory agents for the treatment of major depressive disorder: a systematic review and meta-analysis of randomised controlled trials',
      articleLink: 'https://jnnp.bmj.com/content/91/1/21',
      authors:
          'Shuang Bai, Wenliang Guo, Yangyang Feng, Hong Deng, Gaigai Li, Hao Nie, Guangyu Guo, Haihan Yu, Yang Ma, Jiahui Wang, Shiling Chen, Jie Jing, Jingfei Yang, Yingxin Tang & Zhouping Tang',
      publishedDate: 'Oct 2019',
      postedDate: 'Nov 2019',
      tldr: 'Reducing inflammation helps treat depression.',
      eli5:
          'If a highway gets damaged, construction crews come to fix it. Them fixing the highway causes traffic to build up and annoys people. By minimizing their presence on the highway while they fix the road, traffic can flow normally and people are less upset. Likewise, when your body gets damaged, inflammation and white blood cells work to repair the problem at the cost of your body working normally. Reducing the inflammation allows things to flow normally and your are less upset and depressed.',
      elevatorSum: Column(
        children: [
          Text(
            'Major depressive disorder is one of the most common mental diseases, and it affects roughly 6% of adults worldwide. A systematic review was conducted on the current research of anti-inflammatory drugs vs. a placebo on patients with major depressive disorder. A group of researchers found 30 randomized controlled trails that looked how out effective anti-inflammatory agents were at quantitatively changing patient depression as well as the qualitative response of the patient, remission rates, and overall quality of life. The studies were further broken down into sub-groups based on type of treatment, type of anti-inflammatory agent, sex, sponsor type, and the quality of the studies reviewed. The results of this meta-analysis indicate that anti-inflammatory drugs play a antidepressant role in patentors with major depressive disorders.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            '(from the paper\'s abstract)',
          ),
          SizedBox(height: 15),
          Text(
            'Objectives: To systematically review the efficacy and safety of anti-inflammatory agents for patients with major depressive disorders.',
          ),
          SizedBox(height: 15),
          Text(
            'Methods: We searched the literature to identify potentially relevant randomised controlled trials (RCTs) up to 1 January 2019. The primary outcome was efficacy, measured by mean changes in depression score from baseline to endpoint. Secondary outcomes included response and remission rates and quality of life (QoL). Safety was evaluated by incidence of classified adverse events. Heterogeneity was examined using the I2 and Q statistic. Pooled standard mean differences (SMDs) and risk ratios (RRs) were calculated. Subgroup meta-analyses were conducted based on type of treatment, type of anti-inflammatory agents, sex, sponsor type and quality of studies.',
          ),
          SizedBox(height: 15),
          Text(
            'Results: Thirty RCTs with 1610 participants were included in the quantitative analysis. The overall analysis pooling from 26 of the RCTs suggested that anti-inflammatory agents reduced depressive symptoms (SMD −0.55, 95% CI −0.75 to −0.35, I2=71%) compared with placebo. Higher response (RR 1.52, 95% CI 1.30 to 1.79, I2=29%) and remission rates (RR 1.79, 95% CI 1.29 to 2.49, I2=41%) were seen in the group receiving anti-inflammatory agents than in those receiving placebo. Subgroup analysis showed a greater reduction in symptom severity in both the monotherapy and adjunctive treatment groups. Subgroup analysis of non-steroidal anti-inflammatory drugs, omega-3 fatty acids, statins and minocyclines, respectively, disclosed significant antidepressant effects for major depressive disorder (MDD). For women-only trials, no difference in changes of depression severity was found between groups. Subanalysis stratified by sponsor type and study quality led to the same outcomes in favour of anti-inflammatory agents in both subgroups. Changes of QoL showed no difference between the groups. Gastrointestinal events were the only significant differences between groups in the treatment periods.',
          ),
          SizedBox(height: 15),
          Text(
            'Conclusions: Results of this systematic review suggest that anti-inflammatory agents play an antidepressant role in patients with MDD and are reasonably safe.',
          ),
        ],
      ),
    ),
    ResearchArticle(
      shortTitle:
          'Association of Video Gaming With Cognitive Performance Among Children',
      refTitle: 'vgs-cognitive-children',
      realTitle:
          'Association of Video Gaming With Cognitive Performance Among Children',
      articleLink:
          'https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2797596',
      authors:
          'Bader Chaarani, PhD; Joseph Ortigara, MS; DeKang Yuan, MS; Hannah Loso, PhD; Alexandra Potter, PhD; Hugh P. Garavan, PhD',
      publishedDate: 'Oct 2022',
      postedDate: 'Oct 2022',
      tldr:
          'Video gaming improves kids\' working memory and response inhibition.',
      eli5:
          'Games make you think about certain things. The more you play a game, then the more you get better at thinking a specific way. Like in red-light, green-light. You have to respond quickly and then hold back at certain times. The more you play red-light, green-light, the better you\'ll be at responding and purposefully waiting. On a big-picture scale, videos games do that too. We looked at peoples brains and we can SEE the differences.',
      elevatorSum: const Column(
        children: [
          Text(
            'Do you need to be able to inhibit extraneous stimuli and focus on a specific task? Do you need to be able to hold information in your head for longer and with more certainty? Well then you should be playing games, specifically, video games. But you may want to do it sooner rather than later. A study looking at 9-10 year olds found that kids who play video games appear to have a greater capacity to suppress or disregard irrelevant stimuli, and they do better on a range of cognitive tasks and intelligence measures. Using credible data from a large dataset, several analytical methods, and fMRI, the researchers have numerical and visual proof that video game players out perform their peers. Do you think you should step your game up too?',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'Children and adolescents undergo substantial brain development, and the activities they engage with play a large role in that development. Researchers have been investigating the associations between gaming, cognition, and mental health. Several studies suggest that video game training paradigms enhance cognitive control-related functions, like working memory. Task-based functional magnetic resonance imaging (fMRI) studies have shown physiological differences, e.g. more blood oxygen level-dependent (BOLD) activity in the prefrontal cortex, across multiple frontoparietal regions with different activation patterns across brain regions. However, the list of studies comparing video game players (VGs) against non-video game players (NVGs) continues to provide affirmative and contradictory evidence that video game play enhances cognitive control-related functions, like working memory, as well as activation changes in prefrontal areas, such as the prefrontal and orbitofrontal cortexes. To address concerns of sample size, methods, and a lack of replication across studies, this study uses a large data set of 9-10 year old children from the Adolescent Brain Cognitive Development (ABCD) study to assess the effect video games have on cognitive performance and brain activation—specifically during response inhibition and working memory tasks via task-based fMRI. The ABCD study is the largest long-term study of brain development and children\'s health in 21 sites across the US. The researchers hypothesize that VGs would perform better on tasks and show different neuronal activity from NVGs in brain areas involved with inhibition control and working memory.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Using data from the 2019 release of the ABCD study (2.0.1), the researchers analyzed 2217 records and grouped relevant datasets based on one main factor and two tasks: a Stop Signal task and n-Back task. For each task, the participant sample divided into NVGs with 0 gaming hours per week and VGs with 21+ hours per week. This data included neuroimaging and behavioral information on the children involved, and the quality and ethical review of the ABCD study is well reviewed and procedurally sound; so the data is trust-worthy and efficacious for this research project. The Stop Signal task is a test of inhibition, like a motor response. For example, there\'s a screen with a vanishing arrow that points left or right. Participants must tap left or right when the arrow appears and points. If they hear a beep before the arrow appears, they are to do nothing. The n-Back task is a continuous performance task to assess working memory. For example, there are a series of numbers, like 4-7-1-3, and the subject must identify the nth number back, for example the 3rd number back is 7. Numbers are added and n changes.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/ass-vgs-cog-102622-1.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Demographic Characteristics and Task Performance Measures in NVGs and VGs in the SST and n-Back Samples.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Presented above are the results of several statistical analysis methods comparing and presenting the demographic characteristics, task-specific BOLD signals, and other performance measures through variance, chi-squared tests, permutation analysis like PALM, and modeling with R software. The findings show that on the Stop Signal task VGs (679) our performed NVGs (1,128) and likewise on the n-Back task VGs (800) outperformed NVGs (1,278) too. The fMRI findings show greater BOLD signals in the VGs precuneus (superior parietal lobe) during the Stop Signal task, smaller BOLD signals in the VGs occipital cortex and calcimine sulcus during the n-Back task, and more activation in the cingulate, sub parietal, middle gyri, frontal gyri, and precuneus during the n-Back working memory task. These results show that VGs are less susceptible to attentional distraction and outperform NVGs on both selection-baed and response-based tasks. The researchers believe that the VGs may have a greater capacity to suppress or disregard irrelevant stimuli. This enhanced cognitive performance on both the Stop Signal and n-back tasks supports previous studies that show VGs outperforming NVGs on a range of cognitive tasks and on crystallized and fluid intelligence measures. However, some results contradict other studies with different design and outcome measures as well.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/ass-vgs-cog-102622-2.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Differences of Behavioral Task Performance and Child Behavior Checklist (CBCL) Measures Between Video Gamers and Non-Video Gamers in the Stop Signal Task and n-Back Task.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'The figure above reflects the Child Behavior Checklist (CBCL), which evaluates mental health symptoms, and task performance results for participants in the study. VGs are generally higher across the board on these than NVGs, which leave open the possibility that VGs may be on a trajectory to show larger effects with time and more exposure to video gaming.',
          ),
          const SizedBox(height: 15),
          const Text(
            'For the Stop Signal task, the increased brain activity in the fMRI results are consistent with previous response inhibition-task studies that show more activation in the VGs parietal areas, which supports an enhanced overall recruitment of a range of attentional control areas during response inhibition tasks. As for the n-Back task\'s decreased activation in VGs occipital areas, they agree with previous findings that suggest a reduction in viscometer cognitive costs as a consequence of video gaming practice.',
          ),
          const SizedBox(height: 15),
          const Text(
            'The main limitation the authors identify is a lack of clarity amongst time spent in various gaming categories, such as action-adventures vs puzzle solving and single vs multiplayer games. This specificity could drive deeper insight into neuronal activation and cognitive performance differences. They also note that a longitudinal design of the ABCD study would shift the connections from association towards causation.',
          ),
        ],
      ),
    ),
    ResearchArticle(
      shortTitle: 'Bad News\'s Effect on Psychological Resistance',
      refTitle: 'bad-news-resistance',
      realTitle:
          'Fake news game confers psychological resistance against online misinformation',
      articleLink: 'https://www.nature.com/articles/s41599-019-0279-9',
      authors: 'Jon Roozenbeek & Sander van der Linden',
      publishedDate: 'Jun 2019',
      postedDate: 'Jul 2019',
      tldr:
          'A game about fake news helps people identify and resist misinformation.',
      eli5:
          'Lies work like the flu. They can attack and hurt you without you knowing, and trying to treat them after they\'ve infected you can be hard and painful. People invented vaccines to help others avoid getting sick from the flu, and likewise, people have created a game to help others avoid getting attacked and misinformed by lies and fake news.',
      elevatorSum: const Column(
        children: [
          Text(
            'Like vaccinations, inoculation theory is being applied to misinformation and fake news. By exposing people to a weakened version of an argument with proper refutation and resolution, people are less likely to be influenced by misleading information and deceptive lies. Through the Bad News game, players learn about 6 techniques used to spread misinformation: impersonation, emotions, polarization, conspiracies, discrediting, and trolling. Almost 45,000 participants played and roughly 15,000 players consented to the research project and questions.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'The spread and effect of misinformation is vast and quick, and the current counter-measures—debunking and fact-finding tools—can only help so much to stem the flow of online misinformation. Rather than using external, “after-the-fact” approaches, personally preemptive and inoculative measures prevent false narratives from being accepted and believed. These inoculative techniques have shown preventative and climate change, but by focusing on the common tactics used to produce misinformation, researchers believe they can reduce the overall impact of misinformation across any domain.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Using a novel psychological intervention designed to instill cognitive resistance to fake news, players attempt to attract followers and maximize credibility in the game Bad News. As players move from social media noobies to fake news empires, the game focuses on 6 strategies commonly used to spread misinformation: impersonating people online, using emotional language, group polarization, floating conspiracy theories and building echo chambers, discrediting opponents, and trolling people online and false amplification. Using convenience sampling, i.e. anyone with internet connectivity and could reach the game website, the researchers recruited over 43,000 responses with 14,266 pre-post responses, i.e. the driver of their results below.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/bad-news-071419-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Bad News Game.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/bad-news-071419-02.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Example gameplay.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'The research shows that the gameplay activates inoculation toward online misinformation strategies.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/bad-news-071419-03.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Average player reported reliability towards tweets with no misinformation techniques (i.e. Control 1 & 2) vs. techniques (i.e. impersonation, conspiracy, deflection).',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/bad-news-071419-04.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Average player reported reliability towards tweets with no misinformation techniques (i.e. A) vs. techniques of impersonation, conspiracy, deflection (i.e. B, C, & D).',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'These small to moderate effects are consistent with other research that show small effects are common and meaningful across individuals over time. The more players play, the more effective they\'ll be at avoiding information strategies in the future.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Further research would investigate other gaming possibilities as an inoculating therapy, such as an immunology game improving awareness and decision-making for health and health-care.',
          ),
        ],
      ),
    ),
    const ResearchArticle(
      shortTitle: 'Dysregulated Gaming\'s Emotional and Psychosocial Effects',
      refTitle: 'dysregulated-gaming-effects',
      realTitle:
          'Investigating the Motivational and Psychosocial Dynamics of Dysregulated Gaming: Evidence From a Preregistered Cohort Study',
      articleLink:
          'https://journals.sagepub.com/doi/full/10.1177/2167702619859341',
      authors: 'Andrew K. Przybylski, Netta Weinstein',
      publishedDate: 'Feb 2021',
      postedDate: 'Aug 2019',
      tldr: 'Adolescents get just as frustrated at games as they do in life.',
      eli5:
          'When people get upset, they can act inappropriately and hurt others. Kids and young adults do this at school, during a game, and throughout their lives. When playing video games, they are just as likely to act out as if they were frustrated from a school assignment. While we don\'t need doctors to help correct this, we should try to be better about expressing our problems.',
      elevatorSum: Column(
        children: [
          Text(
            'Emotional instability and mis-managing emotional responses occurs in a variety of situations: school, home, sports field, online, etc. It\'s been a growing concern in video game communities and for parents who see their kids\' reactions to playing games. These researchers set out to determine if this emotional dysregulation as it relates to video games, i.e. dysregulated gaming, is worthy of clinical intervention and support. Following various research in this area, the researchers sent out a self-survey report to 1,000 adolescents and caregivers to see how the kids respond and behave while playing games and in their general lives. The researchers found that games do indeed cause these frustrations and emotional instabilities, but no more than other aspects of their lives.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            'Dysregulation, aka emotional dysregulation, refers to an inability to manage emotional responses or to keep them within an acceptable range of typical emotional reactions, which include emotions like sadness, anger, irritability, and frustration. Dysregulated gaming examines this irregularity through video games and the overall psychological-need experiences gamers engage in. Three basic psychological needs that influence gaming include competence, autonomous, and relatedness. Low levels in these areas predict more dysregulation gaming whereas high levels protect against it. This study examines how dysregulated gaming accounts for emotional, peer, behavioral, or conduct problems in adolescents as in-game and daily life need frustrations connect through patterns of play.',
          ),
          SizedBox(height: 15),
          Text(
            'To achieve it\'s goal, this research used a 6-pronged, theory-testing approach to identify motivational and psychological correlates of dysregulated gaming in order to determine if dysregulated gaming should be classified as a clinical disorder and what resources would facilitate it\'s treatment. Through 6 hypotheses, the researchers evaluated adolescents\' dysregulated gaming relationship to basic need satisfactions and frustrations, needs experienced with games, and psychology evaluated by their caregivers.',
          ),
          SizedBox(height: 15),
          Text(
            'One thousands and four adolescents (and caregivers) completed a self-report, online survey where caregivers answered questions, followed by their children. Caregivers reported on adolescents\' social and emotional functioning. Adolescents reported on gaming activity and experiences. Adolescents who played at least one internet-based game (roughly half, e.g. ~500) answered a ‘ dysregulated gaming\' checklist that contained items such as “I felt moody or anxious when unable to play” along with a psychological-need satisfactions list that followed the same general instructions as the group-wide psychological-need satisfaction and frustration self-report but was tailored to the context of need experiences within games.',
          ),
          SizedBox(height: 15),
          Text(
            'Due to the nature of the research, there was no clear anchor to evaluate the gaming-psychological outcomes upon. The researchers used a priori power analysis to fairly test their hypotheses, and dysregulated gaming scores were more skewed and dispersed than expected. The researchers implored a number of transformative methods and sensitivity analyses to better understand the data as it related to their hypotheses.',
          ),
          SizedBox(height: 15),
          Text(
            'These findings demonstrated that daily psychological-need frustration consistently related to dysregulated gaming, but they didn\'t indicate a clinically significant impetus. They did not find evidence of low levels of need satisfaction predicted changes in dysregulated gaming from “normal” psychological-need frustrations, which in general, account for dysregulation and have been observed in other domains such as education and sports. General adolescents\' psychological-need satisfaction and need frustration were associated with both externalizing and internalizing problems. In other words, there were links between psychological needs and dysregulated gaming, but they were considerably smaller than expected, which suggests that an adolescent\'s video game dysregulation provides no practical information in the view of a caregiver.',
          ),
          SizedBox(height: 15),
          Text(
            'Limitations for this research include the correlational and self-reported data along with the smaller, localized dataset. Future research should explore which factors of specific games or gamers might affect psychological-need satisfaction through gameplay as well as daily need frustrations amongst a larger pool of participants (i.e. multinational).',
          ),
        ],
      ),
    ),
    const ResearchArticle(
      shortTitle:
          'Health Effects of Cannabis and Cannabinoids: The Current State',
      refTitle: 'health-cannabis-cannabinoids',
      realTitle:
          'Efficacy and safety of anti-inflammatory agents for the treatment of major depressive disorder: a systematic review and meta-analysis of randomised controlled trials',
      articleLink:
          'https://nap.nationalacademies.org/catalog/24625/the-health-effects-of-cannabis-and-cannabinoids-the-current-state',
      authors:
          'Committee on the Health Effects of Marijuana: An Evidence Review and Research Agenda; Board on Population Health and Public Health Practice; Health and Medicine Division; National Academies of Sciences, Engineering, and Medicine',
      publishedDate: 'Jan 2017',
      postedDate: 'Apr 2020',
      tldr:
          'There\'s a LOT more to find out and do for cannabis research, but some claims can be made about its effects or lack thereof.',
      eli5:
          'The plant cannabis has a long and weird history with people. In order to know what it does to people, we need to do more research on it, but that\'s been hard. We\'re learning more about cannabis, but we need to learn a LOT more. The good news is that we do know some things about it, like it stops people from puking after cancer treatment or that pregnant mothers who smoke cannabis have smaller babies. But the bigger, badder news is that we don\'t have reliable evidence about a LOT of other things, like getting cancer from cannabis or dying from too much cannabis.',
      elevatorSum: Column(
        children: [
          Text(
            'There\'s a LOT more to find out and do for cannabis research, but some claims can be made for its therapeutic effects, cancer associations, heart-circulatory risks, respiratory effects, immunity, mortality, prenatal exposure, psychosocial and mental health effects as well as abuse and problem behavior towards cannabis. This includes conclusive or substantial evidence supporting or refuting cannabis claims as well as distinctions on moderate, limited, or no / insufficient evidence between cannabis-cannabinoids and its purported treatment, effectivity, ineffectively, chronic conditioning, and general use. We know a good bit about the distinctions in cannabis associations, i.e. statistical vs. conventional, as well as cannabis use, i.e. smoking vs oral vs topical, but more research is needed. For more specifics, you\'ll need to take a minute to see what\'s known, barely known, and unknown.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            'Cannabis research has been lacking due to various reasons, but we need a comprehensive evidence based approach to the health effects of cannabis use, e.g. various populations, pharmacodynamic properties, and various modes like edibles and vaporized cannabis, as well as health policies, economic impact, educational information, and public awareness. In addition to standards and benchmarks to guide and influence high-quality cannabis research, the researchers recommend improving local, state, and federal health surveillance systems and the overall infrastructure of cannabis research.',
          ),
          SizedBox(height: 15),
          Text(
            'This review presents a summary of its conclusions in the Annex section; however, these results do not fully illustrate the context, constraints, and considerations incorporated in the various studies of this meta-analysis. A number of these conclusions were drawn from meta-analyses and primary studies that provided valuable insight on specific situations with hard-to-generalize outcomes, such as the amount and type of cannabis used, like dronabinol a synthetic cannabis derivative, a lack of diverse populations and control groups, or participant self-reporting. Below are the results of this analysis, but a more in-depth understanding of the report is merited before these results should be immortalized into a sheet of facts and truths.',
          ),
        ],
      ),
      // TODO: finish subset lists
      // subsetLists: {
      //   'Chapter 4 Conclusions—Therapeutic Effects of Cannabis and Cannabinoids':
      //       Column(
      //     children: [
      //       Text(
      //         '\u2022 ',
      //       ),
      //     ],
      //   ),
      //   'Chapter 5 Conclusions—Cancer': Column(),
      //   'Chapter 6 Conclusions—Cardiometabolic Risk': Column(),
      //   'Chapter 7 Conclusions—Respiratory Disease': Column(),
      //   'Chapter 8 Conclusions—Immunity': Column(),
      //   'Chapter 9 Conclusions—Injury and Death': Column(),
      //   'Chapter 10 Conclusions—Prenatal, Perinatal, and Neonatal Exposure':
      //       Column(),
      //   'Chapter 11 Conclusions—Psychosocial': Column(),
      //   'Chapter 12 Conclusions—Mental Health': Column(),
      //   'Chapter 13 Conclusions—Problem Cannabis Use': Column(),
      //   'Chapter 14 Conclusions—Cannaabis Use and the Abuse of Other Substances':
      //       Column(),
      //   'Chapter 15 Conclusions—Challenges and Barriers in Conducting Cannabis Research':
      //       Column(),
      // },
    ),
    ResearchArticle(
      shortTitle: 'Physical Fitness\'s Effect on White Matter Microstructures',
      refTitle: 'fitness-white-matter',
      realTitle:
          'White matter microstructure mediates the association between physical fitness and cognition in healthy, young adults',
      articleLink: 'https://www.nature.com/articles/s41598-019-49301-y',
      authors:
          'Nils Opel, Stella Martin, Susanne Meinert, Ronny Redlich, Verena Enneking, Maike Richter, Janik Goltermann, Andreas Johnen, Udo Dannlowski & Jonathan Repple',
      publishedDate: 'Sep 2019',
      postedDate: 'Sep 2019',
      tldr:
          'Physical fitness provides benefits to brain structure and cognition.',
      eli5:
          'Like cars on roads, you send information on roads in your brain. When people spend more time physically maintaining the roads, like putting up signs, traffic lights, fixing pot holes, adding ramps, bridges, and more lanes, then cars can move more easily and quickly. Likewise, if you physically work out, you make the roads in your brain better, and so your brain can send information more easily and quickly.',
      elevatorSum: const Column(
        children: [
          Text(
            'Physical fitness affects the structure of the brain. Using a rich dataset and an MRI-based neuroimaging technique, researchers saw that individuals that were more physically fit had their neurons structured with more unity and direction. In other words, the way neurons send signals was more consolidated and coordinated to one direction. These healthy, young adults also showed higher mental abilities in nearly all cognitive domains and more-so for novel problem solving, transitioning between problems, and processing speed. This association between the neuronal microstructures and mental abilities reinforces a positive relationship between physical fitness and brain structure. Using a variety of reliable, statistical models and software, the researchers accounted for gender, age, education, BMI, diabetes, and blood pressure to avoid biases in participant characteristics.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'A number of studies have looked at the relationship between physical fitness and brain physiology, e.g. white matter structure and gray matter volume; however, less is known about physical fitness\'s effect on white matter microstructure, i.e. the diffusion or alignment of myelinated neurons along one axis and restricted along other directions. Through the open-access brain imaging data from the Human Connectome Project (HCP), these researchers analyzed the data available on 1200 individuals—55.5% female with an average age of 28.8 and an \'overweight\' BMI. This dataset contained an extensive breakdown of tests and scores, which included the NIH Cognition Total Composite Score (i.e. “global condition score”) from subtests in the NIH Toolbox Cognition Battery, as well as physical tests and measurements, such as a walking endurance test.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Through the HPC, the data had been collected and processed for easy access and research (https://www.humanconnectome.org/study/hcp-young-adult/document/1200-subjects-data-release). This included processing such as with their MR Diffusion Pipeline to normalize parts of the images, remove distortions, and mask the data amongst other techniques. The researchers followed suit by performing hierarchical linear regressions using a statistical software program from IMB (SPSS), and from the dataset, they created a baseline of all 1200 individuals and a complete, i.e. “full,” model to account for covariates such as sex, age, years of completed formal education, BMI, HbA1c (i.e. diabetes), and systolic blood pressure, which consisted of 800 individuals. Additionally, the researchers carried out a mediation analysis for walking endurance, white matter microstructure, and global cognitive performance using the SPSS macro PROCESS.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/physical-fitness-091219-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Regression analyses of endurance and fractional anisotropy.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'The research shows a positive relationship between physical fitness, white matter microstructure, and cognitive performance—specifically in the domains of fluid intelligence, cognitive flexibility, and processing speed. As the researchers note, this study was conducted on relatively young, healthy adults, and it excluded individuals with neurodevelopment and neurological disorders. These findings are consistent with previous research and meta-analytical evidence on similar associations between physical activity, executive function, and brain physiology, i.e. fractional anisotropy as a measure of white matter integrity.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Further research would investigate the effects of physical fitness on brain physiology and mental abilities over longitudinal and interventional studies.',
          ),
        ],
      ),
    ),
    ResearchArticle(
      shortTitle: 'Pokemon\'s Effect on the Visual Cortex',
      refTitle: 'pokemon-visual-cortex',
      realTitle:
          'Extensive childhood experience with Pokémon suggests eccentricity drives organization of visual cortex',
      articleLink: 'https://www.nature.com/articles/s41562-019-0592-8',
      authors: 'Jesse Gomez, Michael Barnett & Kalanit Grill-Spector',
      publishedDate: 'Jun 2019',
      postedDate: 'Jul 2019',
      tldr: 'Pokemon games show that people learn things for life.',
      eli5:
          'Human brains are like buildings with lots of rooms to do stuff in. Certain areas in the brain “light up” for certain things just like certain rooms in a house turn on when you have to do stuff in em. People who played Pokemon a lot as kids lit up certain rooms in their brains more than people who didn\'t play it, but they both had a lot of lights on for faces and words.',
      elevatorSum: const Column(
        children: [
          Text(
            'Twenty two people—11 experienced Pokemon players and 11 novices—had their brains monitored while they looked at images. Both groups showed high, consistent activity in a particular brain region when they looked at pictures of faces and words. This occurred in an area of the brain that deals largely with visual recognition. In that same area of the brain, they both showed less activity for things like cars. But with Pokemon, the experienced group showed more activity in that brain region than novices. This means the brain is malleable. Due to the visual characteristics of Pokémon, the researchers were able to show that doing something frequently—playing Pokémon—and for a long time—since childhood—had a physical impact on the brain and how it organizes visual information.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            '',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/pokemon-07092019-01.jpg',
          ),
          const SizedBox(height: 5),
          const Text(
            'Reprinted by permission from CCC RightsLink: Springer Nature, Nature Human Behavior, Extensive childhood experience with Pokémon suggests eccentricity drives organization of visual cortex , J. Gomez, M. Barnett & K. Grill-Spector, 2019.',
            style: TextStyle(
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Example stimuli from each of the categories used in the fMRI experiment.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'The researchers used [sophisticated science] to make [meaningful charts] as well as provide [insightful insight].',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/pokemon-07092019-02.jpg',
          ),
          const SizedBox(height: 5),
          const Text(
            'Reprinted by permission from CCC RightsLink: Springer Nature, Nature Human Behavior, Extensive childhood experience with Pokémon suggests eccentricity drives organization of visual cortex , J. Gomez, M. Barnett & K. Grill-Spector, 2019.',
            style: TextStyle(
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'ANOVA quantified brain response activity in experienced and novel Pokemon players across stimuli groups.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/pokemon-07092019-03.jpg',
          ),
          const SizedBox(height: 5),
          const Text(
            'Reprinted by permission from CCC RightsLink: Springer Nature, Nature Human Behavior, Extensive childhood experience with Pokémon suggests eccentricity drives organization of visual cortex , J. Gomez, M. Barnett & K. Grill-Spector, 2019.',
            style: TextStyle(
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Neuronal activity in the ventral temporal cortex (VTC), occipito-temporal sulcus (OTS), fusiform gyrus (FG), and collateral sulcus (CoS). Group A (top) reflects activity in novice Pokemon players, and Group B (bottom) is experienced players.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'A continuation of this research would investigate how 21st century tools, such as user interfaces and virtual environments, are shaping our minds today.',
          ),
        ],
      ),
    ),
    ResearchArticle(
      shortTitle: 'Pokemon Go\'s Impact on Physical Activity',
      refTitle: 'pokemon-go-activity',
      realTitle:
          'Impact of Pokemon Go on Physical Activity: A Systematic Review and Meta-Analysis',
      articleLink: 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5174727/',
      authors:
          'Madina Khamzina, MPH, Kaustubh V. Parab, MPH, MBBS, Ruopeng An, PhD, Tiffany Bullard, PhD, Diana S. Grigsby-Toussaint, PhD',
      publishedDate: 'Dec 2016',
      postedDate: 'Aug 2022',
      tldr: 'Pokemon Go makes people walk more.',
      eli5:
          'Being physically health is good. There are a lot of ways people can stay physically healthy: running, swimming, playing sports, working out, and on and on. The trick is finding something that gets people up and active. Pokemon Go is a good way for people to get up and be active. A lot of people enjoy walking around their community in search of Pokemon to catch and battle.',
      elevatorSum: const Column(
        children: [
          Text(
            'Helping people stay healthy is a challenge, but it\'s good for the individual and the population overall. The coupling of individualized health interventions and technology shows promise in helping people becoming and staying healthier. One example is Pokemon Go: a mobile game that requires players to walk around and hunt virtual characters with their phone.',
          ),
          SizedBox(height: 15),
          Text(
            'While the results aren\'t revolutionary, this meta-analysis shows people walked more playing this game than they would have otherwise, which in turn improved their general health. It provides a helpful starting point for other research to investigate what assets and aspects of a game like Pokemon Go can be incorporated into health-focused technology to increase the breadth of people and the depth for individuals as the improve their overall health.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'Physical activity can help prevent chronic disease, maintain a healthy weight, and improve quality of life. New technology has facilitated physical activity by providing more insight and structure into peoples\' lives and health journeys. Without intending to be a mobile health app, Pokemon Go has reached millions of people to promote energy expenditure, weight loss, and overall health. Similar to other activities like geo-caching, this mobile app presents an enjoyable alternative to traditional physical activity, and it provides a level of motivation towards physical activity that has been absent for a lot of people. Players walk to various locations using the mobile phone\'s GPS and try to catch special virtual characters, battle against others, and to collect prizes, rewards and the like.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Many studies have reported mixed results about Pokemon Go\'s health impact, and this study provides the first systematic review and meta-analysis on the impact of Pokemon Go on physical activity. Using PRISMA guidelines and searching 8 electronic bibliographical databases, 17 articles were chosen from 269 articles containing \'Pokemon Go\' as well as 7 other criteria points, which included using the app, outcome and degrees of physical activity, time window, language, study design, population screened, and other factors.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/pokemon-go-080922-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Table 1 - PRISMA study selection flowchart',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Physical activity outcomes were assessed by the number of steps taken, duration of time spent being physically active, time spent engaging in sedentary behavior, walking distance, and energy expenditure. A comparison between Pokemon Go players and non-players and a comparison between pre- and post-play time revealed an increase in walking duration (minutes/day), distance walked (miles/week), and number of steps/day. Players were less likely to spend time sitting while playing Pokemon Go.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Pokemon Go was able to reach millions of people and influence their health behavior by providing a different way to individualize health interventions. Some studies noted that the experience was not without risk, e.g. bone fractures and skin injuries. Additionally, the measurements, e.g. duration of play, pre- vs post-play or players vs controls, etc., and outcomes, e.g. effects on adults vs children and adolescents, across the studies made it difficult to provide one unilateral conclusion. Similarly, the reliability and validity of instruments used to measure outcomes along with the overall use of observational study design rather than prospective limited the ability to infer causal relationships between Pokemon Go and physical activity. However, this study found that playing Pokemon Go was associated with a statistically significant but clinically modest increase in the number of daily steps taken among game players.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Future research should examine player retention and the long-term effects of Pokemon Go along with other augmented reality games. Aspects, like in-app events, affected player attrition rate, engagement, re-engagement, and overall time spent with the app, and these aspects, along with other characteristics of the experience, would be helpful in identifying and crafting more enduring, interventions.',
          ),
        ],
      ),
    ),
    ResearchArticle(
      shortTitle: 'Sweet Care — Designing a health-based electronic game',
      refTitle: 'sweet-care-health',
      realTitle:
          'Sweet care against sugar bitterness, designing health-based electronic game',
      articleLink: 'https://journals.sagepub.com/doi/10.1177/1460458218799444',
      authors: 'Reza Safdari, Marjan Ghazisaeidi, and Azadeh Goodini',
      publishedDate: 'Oct 2018',
      postedDate: 'Mar 2021',
      tldr:
          'Building a health-based game should focus on self-learning and is an involved process.',
      eli5:
          'Game research continues to grow, and for games focused on making people healthy, they should make people happy by being fun and making the players want to learn more. This game looked at diabetes, and the research it did looked at how to make their diabetes game successful.',
      elevatorSum: const Column(
        children: [
          Text(
            'Tackling a chronic disease like diabetes has many facets, but awareness about its causes and promoting healthy behavioral changes are big factors in mitigating its spread. The researchers in this study identified several areas and components to focus on while designing an effective health-based game from various other research projects, models, and methods. Self-learning—specifically self-care agency—was highlighted as an important pillar in a health-based game, and while they were unable to research the effects of their game, Sweet Care Game, they provide various examples of their game implementing other researchers\' suggestions. They state that future research will evaluate the game\'s success in the healthcare field.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'Advances in medicine and health care continue to evolve how physicians communicate and interact with their patients. Effective communication and training are important for a successful treatment. Innovative methods and new technology can have a significant effect on an individuals\' self-efficacy—mentally and physically—along with more awareness around diseases and dietary patterns that can affect one\'s health. By applying gaming as the vessel for health-based learning—specifically diabetes—policy makers and researchers believe patients can receive new, interactive interventions and strategies against chronic diseases like diabetes. The “how” and components of the game are critical to its success and efficacy. Current examples show that entertainment is considered the main factor in promoting healthy behavioral change along with knowledge, skills, self-efficacy, and motivation. For a diabetes game, the researcher aimed to identify a game framework for a specific country, i.e. Iran.',
          ),
          const SizedBox(height: 15),
          const Text(
            'The study was conducted in two phases: 1) designing a health-based game (and framework) and 2) developing the sweet care game. The design identified changes in behavior, i.e. promoting continuity of a preferential behavior, as the fundamental goal of health education and the game. Nine common models were investigated to achieve this goal: health belief model and behavior change, behavior intention model, PRECEDE model, Simon\'s model, BASNEF model, planned behavior model, protection motivation model, social recognition, and trans theoretical model. A group of experts evaluated the importance of each model, and all proposed models had high or very high importance. Similarly, 153 medical professionals were questioned on importance of health-related criteria, i.e. healthy diet, physical activity behaviors, mental empowerment, education and condition management. Several electronic databases, e.g. PubMed, Web of Science, etc., were searched for previous examples of “games,” “video games,” etc. that could help shape the game\'s technical, structural components.',
          ),
          const SizedBox(height: 15),
          const Text(
            'After identifying the technical requirements for creating a game, Game Maker Engine Construct was selected to develop and deliver the game, and the process of constructing the game was planned and executed.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/sweet-care-03092021-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Figure 1. Screenshots of “Sweet Care Game” (Fig 2), view of Sweet Care Game main homepage (Fig 3), battle with Sugar Mini Game (Fig 4), Physical Activity Mini Game (Fig 6), Buy from Store Mini Game (Fig 6) and Carbs Counting Mini Game.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Self-care agency was identified as the most important factor across several broad topics for behavioral change as well as being a core pillar in a number of models identified, e.g. Marchetti\'s theoretical framework. From various other studies, the researchers report that the information content of a health-based game should consider both the information and technical components within a given framework, and if done correctly, can be a powerful communication tool. This includes defining a character and setting within a contextual scope of the game\'s content to deepen and enrich the experience and memories of that experience; reward structures and consistency across instances of the game; negative feedback strategies that scale with the player\'s abilities and successes / failures, i.e. the game gets harder as the player does better and easier when they do worse; fun should be accessible to a variety of players; easy to learn and increases in challenge; training tips to help players understand the game and develop the narrative and story; educational information be repeated in different ways and sections of the game; and all of the approiate age, cultural, and contextual information should be applicable to the player to avoid increasing possible risks, such as social isolation and decreased academic performance.',
          ),
          const SizedBox(height: 15),
          const Text(
            'This study provides an in-depth look into creating health-based games, and while it creates a game following the criteria it identified for such games, it does not provide any research on the implementation of the created game; however, it mentions that “[i]n future research, this work is carried out.” As with most serious games, more research is required to determine the overall efficacy of such a health-based game.',
          ),
        ],
      ),
    ),
    const ResearchArticle(
      shortTitle: 'Systematic Exploration and Uncertainty',
      refTitle: 'systematic-exploration-uncertainty',
      realTitle:
          'Systematic Exploration and Uncertainty Dominate Young Children\'s Choices',
      articleLink: 'https://onlinelibrary.wiley.com/doi/10.1111/desc.13026',
      authors: 'Nathaniel J. Blanco, Vladimir M. Sloutsky',
      publishedDate: 'Aug 2020',
      postedDate: 'May 2021',
      tldr: 'Kids tend to explore rather than exploit.',
      eli5:
          'If I had a gold mine and I wanted to get more gold, I could either keep going down into my gold mine to get more, or I could explore around my gold mine to see if there\'s gold anywhere else. There\'s uncertainty if I go explore for new sources of gold, and I can get the most bang-for-my-buck if I keep going to my gold mine. For kids, they have a stronger tendency to explore for new gold rather than exploit the gold mine they know exists. This drive to explore helps them learn and grow while they see and experience what\'s around.',
      elevatorSum: Column(
        children: [
          Text(
            'Children have a strong tendency to explore. They do it frequently and in their own systematic way. In lieu of a mature, top-down controlling mindset, kids are likely to search for information and explore uncertainties about their experience. For example, one study did two experiments on kids and adults investigating exploration vs exploitation. The kids were more likely to get caught up in exploring rather than min-maxing the resources that would get them rewards. It could have been their immature attention that caused them to mill about; however, the increased exploration provided them with more novel situations and information about their environment, which fit a simpler pattern of thinking found in children.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          Text(
            'Early in development, exploration is critical, frequently invoked, and largely systematic for children. Uncertainty towards choices and making decisions is important and complicated for them. In an absence of mature, top-down control, systematic exploration can be implemented and encouraged.',
          ),
          SizedBox(height: 15),
          Text(
            'In an experiment containing 32 4-year olds (i.e. preschool & day-care children) and 34 adults (i.e. undergrads), researchers measured the two different populations tendencies towards exploitation (i.e min-maxing resources) and exploration. Using a computer simulation, participants were given an area that contained value points, and their goal was to obtain as many value points as possible. Four year olds are known to have immaturities in selective attention and cognitive control, but they can understand a task and make independent choices. So it didn\'t surprise the researchers that the children min-max\'d less than the adults. The majority of children actively searched the environment rather than randomly acquired resources. They had many, different ways of exploring—strategies that approximated uncertainty-based exploration—whereas the adults carried out similar, consistent min-maxing strategies. What did interest the researchers is how the children were driven partially by uncertainty, which they dug into more in their second experiment.',
          ),
          SizedBox(height: 15),
          Text(
            'In another experiment containing 36 4 & 5-year olds and 37 adults, the researchers measured each population\'s tendency towards min-maxing resources (i.e. exploitation) when an option was hidden. Using a computer simulation, participants were given 4 options to choose from—their values remained consistent throughout all the trials—but one of the options was randomly hidden and varied per trial. Again, children min-max\'d less than the adults, and by-in-large, the children chose the hidden option a fair amount more—more than adults—even if it wasn\'t the best option. The children also handled the hidden option differently, i.e. overwhelmingly selecting it or avoiding it altogether, but they were drawn to the uncertainty of the hidden option more than the adults, who min-max\'d quickly like the first experiment.',
          ),
          SizedBox(height: 15),
          Text(
            'Experiment 1 illustrates that children tend to explore rather than exploit, and they explore in patterns where uncertainty is their direction, i.e. as an attraction or avoidance. There are several possibilities as to why, but one idea is that children use simpler thinking patterns, e.g. preferring novel things, along with broader, systemic sampling of their environment, which could ignore task performance or reward seeking. Children\'s immature attention allocation facilitates their systematic exploration, i.e. they don\'t focus well so they keep milling about. This increased exploration helps learning because it provides information when little is known.',
          ),
          SizedBox(height: 15),
          Text(
            'It\'s worth noting that some children did follow “adult-like” reward-based strategies, i.e. min-max\'d well, and this could be due to early academic instruction or maturation to brain areas involved in decision-making. More research would be valuable. The main takeaway as noted by the researchers is that: “This research demonstrates that systematic exploratory behavior can stem from other mechanisms than top-down cognitive control, and that these mechanisms may be specifically tuned to achieve broad information gathering in young children. If this is the case, some of the early immaturities of top-down control (e.g. distributed attention) may be advantageous for children: these immaturities may optimize learning (rather than performance) by sub-serving broad information gathering.”',
          ),
        ],
      ),
    ),
    ResearchArticle(
      shortTitle: 'Trauma and Tetris',
      refTitle: 'trauma-and-tetris',
      realTitle:
          'Preventing intrusive memories after trauma via a brief intervention involving Tetris computer game play in the emergency department: a proof-of-concept randomized controlled trial',
      articleLink: 'https://pubmed.ncbi.nlm.nih.gov/28348380/',
      authors:
          'L Iyadurai, S E Blackwell, R Meiser-Stedman, P C Watson, M B Bonsall, J R Geddes, A C Nobre, E A Holmes',
      publishedDate: 'Mar 2017',
      postedDate: 'Mar 2021',
      tldr:
          'Videos games help prevent traumatic memories when administered soon after the event.',
      eli5:
          'If you fall and hurt yourself, an adult might yell out “Whoopsie, what a silly!” and start laughing. Usually, they\'re trying to distract you from your pain and help you forget that you just got hurt. If you manage to laugh with them or at least not break down crying, you move past the pain more quickly and don\'t dwell on it. Using video games to distraction someone when they hurt themselves, like in a car accident, works in a similar way.',
      elevatorSum: const Column(
        children: [
          Text(
            'Traumatic events are a time-sensitive problem that video games can provide preventative-treatment for. Trauma causes people to reflect on what happened to them, and memories of the event are typically called and cataloged early on in the experience. By providing a high, visuospatial distraction, i.e. a game, researchers found that they could reduce these intrusive, traumatic memories significantly. By providing emergency department patients in the UK with ~20 minutes of Tetris after motor vehicle accident, patients were less likely to experience intrusive, unprovoked memories than a control group that filled out an activity log instead of playing Tetris. This brief, cheap, \'therapist-free\' intervention shows a lot of potential for other types of traumatic situations, and more research is needed to pin-point the exact “why” and “what” as well as how long such an intervention helps.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'Intrusive memories after a psychologically traumatic event are clinical features of acute stress disorder and post-traumatic stress disorder (PTSD). Current preventative interventions after trauma are either ineffective, unappealing, or inaccessible; however, these researchers attempt to use a low-intensity, simple intervention to target and prevent the onset of intrusive memories. Specifically, they incorporate ideas about memory consolidation that indicate doing a cognitive task with high visuospatial demands, i.e. Tetris, will disrupt visual-sensory aspects of memory due to competition for limited cognitive resources.',
          ),
          const SizedBox(height: 15),
          const Text(
            'A large number of potential participants were assessed at a hospital emergency department in the UK. Amongst several criteria and vetting, seventy one patients were identified as experiencing or witnessing a motor vehicle accident, met the criteria for a traumatic event, or reported memory of a (recent) accident. After basic questionnaires and consent forms, participants were randomly split into two parallel treatment conditions: the behavioral intervention of playing Tetris vs the attention placebo of writing in an activity log. One month after the interaction, researchers followed up with the participants, who were also debriefed on the study.',
          ),
          const SizedBox(height: 15),
          const Text(
            'Details of each participants\' traumatic event, emergency department treatment, and previous visits were recorded and rated for severity, perceived life threat, dissociative symptoms, and emotional responses to the event(s) along with prior psychological trauma, mental illness, and family history of mental illness. Participants recorded number of intrusive memories, i.e. image-based memories of the accident that appear without warning, along with a 13-item questionnaire about their experience in the study. All participants received typical medical care in the emergency department; however, half were asked to think of the accident and tell the researcher the worst moments of it before playing Tetris for 10 uninterrupted minutes, twice. The other half filled out a simple activity log of things they had done at the emergency department, which took roughly 20 minutes.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/trauma-and-tetris-032221-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Number of intrusive memories of the traumatic event.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'After analyzing participant background information and relevant traumatic event data, the researchers plotted intrusive memory occurrence over the first week, and they found that participants who played Tetris recorded significantly fewer intrusive memories, i.e. a 62% reduction, as well as overall less distress from the intrusion symptoms than the control group. These results are consistent with previous laboratory-based trauma simulation studies, and they suggest that a larger trial is warranted. Participants were more willing to engage in this brief, \'therapist-free\' technological intervention, and no adverse effects were observed or reported. This intervention is brief, low cost, simple to train and deliver, and flexible, all of which make it a successful prevention strategy toward intrusive memories after an accident. This type of cognitive \'therapeutic vaccine\' could help with other traumatic events, but further research is needed on the exact mechanisms as to how it blocks intrusive memories, i.e. high visuospatial demands coupled with memory reminder of the incident, as well as the temporal constraints this type of intervention may have, i.e. extending to 1 month or having more / multiple ‘doses\' of game play.',
          ),
        ],
      ),
    ),
    ResearchArticle(
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
          'Different games emphasize different abilities, like American football emphasizes size or power and international fútbol emphasizes speed or agility. Depending on the game, you\'ll want to develop your muscles differently, like big muscles to push someone back vs light muscles to be quick and fast. One type of video game, MOBAs, showcase players that think logically and solve novel problems well.',
      elevatorSum: const Column(
        children: [
          Text(
            'Do you want to think logically? Want to solve novel problems well? If so, you should be playing a multiplayer online battle arena—aka MOBA—and be good at it. High ranking MOBA players, i.e. League of Legends & Defense of the Ancients 2, have shown higher levels of working memory and with that, higher levels of fluid intelligence. In other words, higher ranks in those games correlated with higher scores in tests that measured those players\' thinking and working memory skills. Age also plays into those measurements. Games with strong foundations in reaction skills and hand-eye coordination, like first person shooters, have a wide range of top performers between 13 and 27, whereas games with high logical thinking and novel problem solving, like MOBAs, tend to cluster their top performers in the early-to-mid 20s range. There are several caveats worth digging into and discussing, but MOBAs—and even video games in general—offer a robust insight into cognitive functions, and they may be useful for studying cognitive epidemiology at a global scale.',
          ),
        ],
      ),
      dissertation: Column(
        children: [
          const Text(
            'The authors examine the potential link between intelligence and performance in video games, specifically Multiplayer Online Battle Arenas aka MOBAs. Through a number of previous studies looking at the relationship between skill performance in games and general intelligence, the authors assert that a similar link between intelligence and performance can be established through widely-played, commercially available, team-based video games that are available globally. MOBAs are an action-strategy game that rely heavily on memory, tactics, and strategy over hand-eye coordination, like First Person Shooters (FPS). Using MOBAs and FPS, the researchers conducted two studies.',
          ),
          const SizedBox(height: 15),
          const Text(
            'The first study used data—specifically player rank—from a popular MOBA ‘League of Legends\' (LoL), and they looked to see if fluid intelligence, which was reflected as scores on the WASI-II Matrix Test correlated with LoL rank. Along with their game rank, participants were also subjected to a number of working memory tasks along with a theory of mind test, i.e. MITE, to see how emotional processing correlated with intelligence. They found that fluid intelligence correlated significantly with rank, but they found no significant correlation between rank and MITE task scores as well as a weak correlation between rank and visuospatial working memory tests.',
          ),
          const SizedBox(height: 15),
          const Text(
            'In the second study, the researchers used a larger dataset to see if performance in MOBAs followed age profile maps for fluid intelligence, which follows a similar trajectory in population-level raw IQ where scores peak in the early-to-mid twenties. Using two MOBAs—LoL & Defense of the Ancients 2 (Dota 2)—and two FPS—Destiny & Battlefield 3, the researchers could compare games that prioritized speed and targeting accuracy over memory and multifactorial decision making. The researchers gathered ‘Matchmaking Ranking\' (MMR) scores for each game as well as participant age.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/vg-expertise-fluid-intel-050720-01.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Player Numbers & Ages.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'The researchers found different age trajectories between rank and game type. Age groups were divided into 3: first being 13-21, second being 22-27, and third being 28-40. Both types showed significant differences between the second and third groups, which indicated that performance, i.e. rank, falls in general after the mid-to-late 20s. However, MOBAs showed a significant increase between first and second age groups, whereas FPS showed more equal performance between first and second. This is consistent with the authors\' hypothesis that performance in MOBAs (and not FPS games) is correlated with fluid intelligence, which also exhibits this age profile.',
          ),
          const SizedBox(height: 15),
          Image.asset(
            'assets/images/research/vg-expertise-fluid-intel-050720-02.png',
          ),
          const SizedBox(height: 5),
          const Text(
            'Age profiles of MMR in four different games.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'While the data indicates a link between intelligence and video game performance, the authors point out that the relationship is correlational with unclear causality. Similar results have been noted by other researchers, but the study\'s authors point out that factors such as age and adult responsibilities, MMR being tied to team performance, and a mildred of underlying cognitive factors as being points of contention and concern. However, if video games—MOBAs in particular—offer a robust insight into cognitive function, they may be used to study cognitive epidemiology at a massive scale—instantly overcoming existing issues with small sample sizes and potentially allowing researchers to examine dynamic changes in performance at a population level in almost real time.',
          ),
        ],
      ),
    ),
  ];
}
