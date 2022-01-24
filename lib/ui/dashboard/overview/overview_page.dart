import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/actions_bar.dart';
import 'package:flutter_web_poc/ui/widgets/catchword.dart';
import 'package:flutter_web_poc/ui/widgets/headline.dart';
import 'package:flutter_web_poc/ui/widgets/iconic_button.dart';
import 'package:flutter_web_poc/ui/widgets/navigate_button.dart';
import 'package:flutter_web_poc/ui/widgets/projector.dart';
import 'package:flutter_web_poc/ui/widgets/ranger.dart';
import 'package:flutter_web_poc/ui/widgets/subtitle.dart';
import 'package:flutter_web_poc/ui/widgets/task_chart.dart';
import 'package:flutter_web_poc/ui/widgets/task_progress.dart';
import 'package:get/get.dart';

class OverviewPage extends GetResponsiveView {
  OverviewPage({Key? key}) : super(key: key);

  @override
  Widget phone() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Headline(title: "Overview"),
                const SizedBox(height: 32),
                const Catchword(
                  iconData: Icons.stars,
                  title: "Make Real Work Happen!",
                  subtitle: "Create your team, plan, collaborate, organize your work.",
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Subtitle(title: "Projects"),
                    const Spacer(),
                    NavigateButton(
                      onTap: () {},
                      title: "All projects",
                      iconData: Icons.arrow_forward,
                    ),
                  ],
                ),
                SizedBox(
                  height: 214,
                  child: ListView.separated(
                    itemCount: 4,
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 16),
                    itemBuilder: (context, index) => Projector(
                      selected: index == 0,
                      title: 'Animations',
                      description: 'Create loop animation for image',
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: const [
                    Subtitle(title: "Task activity"),
                    Spacer(),
                    Ranger(from: "Aug 7", to: "Aug 14"),
                  ],
                ),
                const Card(
                  child: SizedBox(
                    width: double.infinity,
                    child: TaskChart(
                      margin: EdgeInsets.all(16),
                    ),
                  ),
                ),
                const Card(
                  child: TaskProgress(
                    label: "Progress files",
                    percent: .39,
                    margin: EdgeInsets.all(16),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              child: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget tablet() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Headline(
                  title: "Overview",
                  caption: "Keep track of all your tasks.",
                ),
                const Spacer(),
                IconicButton(
                  iconData: Icons.notifications,
                  showDot: true,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Catchword(
              iconData: Icons.stars,
              title: "Make Real Work Happen!",
              subtitle: "Create your team, plan, collaborate, organize your work.",
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                const Subtitle(title: "Projects"),
                const Spacer(),
                NavigateButton(
                  onTap: () {},
                  title: "All projects",
                  iconData: Icons.arrow_forward,
                ),
              ],
            ),
            SizedBox(
              height: 214,
              child: ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 16),
                itemBuilder: (context, index) => Projector(
                  selected: index == 0,
                  title: 'Animations',
                  description: 'Create loop animation for image',
                  onTap: () {},
                ),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: const [
                Subtitle(title: "Task activity"),
                Spacer(),
                Ranger(from: "Aug 7", to: "Aug 14"),
              ],
            ),
            Card(
              child: Row(
                children: const [
                  Expanded(
                    child: TaskChart(
                      margin: EdgeInsets.all(16),
                    ),
                  ),
                  TaskProgress(
                    label: "Progress files",
                    percent: .39,
                    margin: EdgeInsets.all(16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget desktop() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Headline(
                        title: "Overview",
                        caption: "Keep track of all your tasks.",
                      ),
                      const Spacer(),
                      IconicButton(
                        iconData: Icons.notifications,
                        showDot: true,
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 64),
                  const Catchword(
                    iconData: Icons.stars,
                    title: "Make Real Work Happen!",
                    subtitle: "Create your team, plan, collaborate, organize your work.",
                  ),
                  const SizedBox(height: 64),
                  Row(
                    children: [
                      const Subtitle(title: "Projects"),
                      const Spacer(),
                      NavigateButton(
                        onTap: () {},
                        title: "All projects",
                        iconData: Icons.arrow_forward,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 32,
                    runSpacing: 32,
                    children: [
                      Projector(
                        selected: true,
                        title: 'Animations',
                        description: 'Create loop animation for image',
                        onTap: () {},
                      ),
                      Projector(
                        selected: false,
                        title: 'Illustrations',
                        description: 'Create loop animation for image',
                        onTap: () {},
                      ),
                      Projector(
                        selected: false,
                        title: 'UI design',
                        description: 'Create loop animation for image',
                        onTap: () {},
                      ),
                      Projector(
                        selected: false,
                        title: 'UX design',
                        description: 'Create loop animation for image',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 64),
                  Row(
                    children: const [
                      Subtitle(title: "Task activity"),
                      Spacer(),
                      Ranger(from: "Aug 7", to: "Aug 14"),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Card(
                    child: Row(
                      children: const [
                        Expanded(
                          child: TaskChart(
                            margin: EdgeInsets.all(16),
                          ),
                        ),
                        TaskProgress(
                          label: "Progress files",
                          percent: .39,
                          margin: EdgeInsets.all(16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ActionsBar(),
      ],
    );
  }
}
