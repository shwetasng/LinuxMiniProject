# Linux Mini Project  [![][autotest_badge]][autotest_workflow]

## Project Goals

This mini project is aimed for beginners who want to get familiar with Git and GitHub workflows, debug Linux errors and work with basic Linux commands.

## Preliminaries

Because this project repository is not owned by you, you don't have permission to directly make changes.
Thus, we want you to **fork** this repository. 
When you fork a repository, you create a copy of the original repository under your own GitHub account. 
This copy is completely separate from the original repository, so you can make changes to it without altering the original project.

1. Fork this repo by clicking **Fork** in the top-right corner of the page. 
2. Clone your forked repository by:
   ```bash
   git clone https://github.com/<your-username>/<your-project-repo-name>
   ```
   Change `<your-username>` and `<your-project-repo-name>` according to your GitHub username and the name you gave to your fork. E.g. `git clone https://github.com/johndoe/LinuxMiniProject`.
 
3. Open up the repository folder via your favorite IDE (Pycharm, VSCode, etc..) as a new project.

> [!Note]
> By working on this project, you are generating an activity on your GitHub profile.
> This activity is visible to recruiters and potential employers, providing them with insights into your coding habits, projects, and overall engagement. 
> Think of it as your digital "business card" for people who are interested in your technical experience.


Great, let's get started...

## Guidelines  

1. Open up a Linux terminal and perform:

```shell
wget https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/linux_project/secretGenerator.tar.gz
```

2. Use the `tar` command to extract the compressed file. Enter the `src` directory. Explore the files and their content. 
3. Your goal is to generate a secret. The secret is generated once the following command is executed successfully (with exit code 0): `/bin/bash generateSecret.sh`.
7. Once you've generated the secret, copy it to the designated place in the `SOLUTION` file (**exactly** 32 characters, without spaces).
5. Using `nano` or your favorite text editor to create a file named `mySolution.sh` in the same directory where the `src/` dir is located, as follows:
   ```text
   your-exercise-dir/
   ├── src/
   │   ├── ...
   └── mySolution.sh
   ```
   
   In `mySolution.sh`, write a series of commands, one on each line, to generate the secret.
   Once done, the below code should generate the secret automatically without any errors:

   ```bash
   wget https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/linux_project/secretGenerator.tar.gz
   tar -xvf secretGenerator.tar.gz
   /bin/bash mySolution.sh
   ```

6. Finally, to include your solution in the project, copy the content of `mySolution.sh` into the file `mySolution.sh` in this repo.

## Submission

Finished the project? it's time to submit your solution for testing.

In software engineering, testing is essential for ensuring the reliability and quality of the code that's delivered to production.
Similarly, your project would be tested to ensure it meets basic standards of correctness.
This way, you'll receive immediate feedback and can quickly fix issues.

In order to deliver your project for testing, you need to save your changes (a.k.a. **Commit**) and upload them to GitHub (a.k.a. **Push**).

We'll guide you through these steps: 


1. First, navigate to the [Actions][github_actions] page in your GitHub repo main page and enable GitHub Actions if needed. 
   GitHub Actions allows you to execute an automated test to check the correctness of your solution. Free GitHub accounts typically [offer sufficient execution time](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions#included-storage-and-minutes) to run the project tests.

2. [Commit](https://www.jetbrains.com/help/pycharm/commit-and-push-changes.html#commit) your changes through PyCharm.

   If it's the first time ever you're committing, PyCharm may ask you to set your Git username and email. Feel free to specify any details you want. 

   The **only** two files that have to be committed are `SOLUTION` and `mySolution.sh`.
   In the commit message, write some info regarding your commit, and click the **Commit** button.

   Commit messages are usually free text written by the developer, providing some information regarding the changes she did. 
   Examples could be something like "initial solution" or "linux project solution - work in progress" or "linux project - final solution!".
   Feel free to fix your code and commit the changes again and again. You can commit as much as you want.

3. Next, [push](https://www.jetbrains.com/help/pycharm/commit-and-push-changes.html#push) your commits to GitHub. 
4. To watch the automated test execution on your solution:
   - In Actions page, enter the executed workflow run (you'll recognize it by your commit message).
   - If there are any failures, click on the failed job and **read the test logs carefully**. Try to understand the root cause of the issue.
   - Fix the issue in your local PyCharm environment, then commit and push again.

Upon successful test execution, you'll see a green checkmark (✅) and the following message would be printed in the test logs:

```text
Well Done! you've passed all tests
```

### Share your project 

You are highly encourages to share your project with other students by creating a **Pull Request**.

In our context, Pull Request (PR) is a mechanism in GitHub which allows others to review your code, leave comments and suggest improvements.

We'll talk more about pull requests later on. 

To create a pull request:

- In your GitHub repo main page, navigate to [Pull Requests][pull_requests].
- Choose **New Pull Request**.
- In the **Comparing changes** section, choose your forked repo as the **head repository**, and our repo (`exit-zero-academy/LinuxMiniProject`) as the **base repository**. Both branches should be `main`. As follows:
  ![linux_project_pr][linux_project_pr]
- Finally, click **Create Pull Request**, you can leave some title and description, and click **Create Pull Request** again.

Note that the pull request was opened in the **base repository**, i.e. `exit-zero-academy/LinuxMiniProject`, not in your forked repository. 
By doing so, you actually "asks" the base repo (the original project), to "pull" the files from your forked repo (your own copy of the project).

As it's only an exercise, we may not approve your pull request (approval would lead your changes to be merged into our original project). But by creating a pull request you practice the process of contributing to GitHub projects, receive feedback on your work, and understand the collaboration workflow. 

Feel free to explore other's pull requests to discover different solution approaches. 

**Note**: no need to create another pull request if you push new changes. The PR is updated automatically.  


# Good Luck


> [!Note]
> This project is part of the [DevOpsTheHardWay][DevOpsTheHardWay] course.  


[linux_project_linuxkernel]: https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/img/linux_project_linuxkernel.png
[linux_project_pr]: https://exit-zero-academy.github.io/DevOpsTheHardWayAssets/img/linux_project_pr.png

[DevOpsTheHardWay]: https://github.com/exit-zero-academy/DevOpsTheHardWay
[onboarding_tutorial]: https://github.com/exit-zero-academy/DevOpsTheHardWay/blob/main/tutorials/onboarding.md
[autotest_badge]: ../../actions/workflows/project_auto_testing.yaml/badge.svg?event=push
[autotest_workflow]: ../../actions/workflows/project_auto_testing.yaml/
[github_actions]: ../../actions
[pull_requests]: ../../pulls

