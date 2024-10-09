
# git-101

Welcome to the **git-101** repository! This project is designed to help students learn how to use Git and GitHub effectively. By forking this repository, making changes to the `data.yaml` file, and creating pull requests (PRs), students will gain hands-on experience with version control, collaboration, and deployment using Vercel.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
- [View Changes Live](#view-changes-live)
- [Resources](#resources)
- [License](#license)

## Features

- **Fork the Repository**: Each student can fork this repository to make their own changes.
- **Edit `data.yaml`**: Students can add or modify data within the `data.yaml` file.
- **Create Pull Requests**: Once changes are made, students can submit a PR to the main repository.
- **Automatic Merging**: The repository is set up to automatically merge PRs, showcasing real-time collaboration.
- **Live Preview**: Changes will be deployed and viewable live via Vercel.

## Getting Started

To get started with this project, follow these steps:

1. **Fork the Repository**:
   - Click the "Fork" button on the top right of this repository page to create your own copy.

2. **Clone Your Fork**:
   - Clone your forked repository to your local machine using:
     ```bash
     git clone https://github.com/justushar/git-101.git
     cd git-101
     ```

3. **Install Dependencies** (Not Necessary):
   - Ensure that you have Node.js installed. Then, install any necessary dependencies:
     ```bash
     npm install
     ```

4. **Make Changes**:
   - Open the `data.yaml` file and make your desired changes.

5. **Commit Your Changes**:
   - After making changes, stage and commit them:
     ```bash
     git add data.yaml
     git commit -m "Your descriptive commit message"
     ```

6. **Push Changes to Your Fork**:
   - Push your changes back to your fork on GitHub:
     ```bash
     git push origin main
     ```

7. **Create a Pull Request**:
   - Go to the original repository where you forked from. You'll see an option to create a pull request. Click on it and follow the instructions.

## View Changes Live

Once your pull request is merged, you can see your changes live at:

[https://vercel.live/link/git-101-three.vercel.app?via=project-dashboard-alias-list&p=1](https://vercel.live/link/git-101-three.vercel.app?via=project-dashboard-alias-list&p=1)


## Optional
To ensure the mutiple PRs are accepted in a queue and there are no merge conflicts or sync issues in the Fork and Main repository, students are requested to utilize ./RUN.ps1 files to automate the above process
## Resources

- [Git Documentation](https://git-scm.com/doc)
- [GitHub Documentation](https://docs.github.com/en)
- [Vercel Documentation](https://vercel.com/docs)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
