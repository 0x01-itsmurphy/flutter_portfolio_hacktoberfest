# Hacktoberfest 2022 - EXCLUDED PROJECT DO NOT CONTRIBUTE
###### Hacktoberfest is a month-long global celebration of open source software run by **DigitalOcean** in partnership with **Docker** and **AppWrite**, with a strong focus on encouraging contributions to open source projects. 
* Hacktoberfest is open to everyone.
* Four quality pull requests must be submitted to public GitHub and/or GitLab repositories.
* You can sign up anytime between October 1 and October 31.

### How to contribute to this project:

<img src="https://user-images.githubusercontent.com/64863725/193447111-57305024-cde7-4acc-90b3-30f3e05501f6.png" height="400em" />  <img src="https://user-images.githubusercontent.com/64863725/193447122-8c21f611-9a06-46b8-8d0b-4b50351f743b.png" height="400em" />



### 1. Star and Fork this Repository
###### Star and fork this repository on GitHub by navigating at the top of this repository.

GitHub repository URLs will reference both the username associated with the owner of the repository, as well as the repository name. For example, {acmbvp} is the owner of the Hacktoberfest repository, so the GitHub URL for this project is: 
https://github.com/0x01-itsmurphy/flutter_portfolio_hacktoberfest

![starred-repo](https://user-images.githubusercontent.com/64863725/193443588-71204370-f523-4807-8450-c2f9cd58df9e.jpg)

![fork-repo](https://user-images.githubusercontent.com/64863725/193443607-199c82c9-718f-4abf-97c6-970621680612.jpg)


When you’re on the main page of a repository, you’ll see a button to "Star" and “Fork” the repository on the upper right-hand side of the page, underneath your user icon.

### 2. Clone the Repository

To make your own local copy of the repository you would like to contribute to, let’s first open up a terminal window.

We’ll use the `git clone`  command along with the URL that points to your fork of the repository.

This URL will be similar to the URL above, except now it will end with `.git.` In the cloud_haiku example above, the URL will look like this:
https://github.com/your-username/flutter_portfolio_hacktoberfest.git

You can alternatively copy the URL by using the green “Clone or download” button from your repository page that you just forked from the original repository page. Once you click the button, you’ll be able to copy the URL by clicking the binder button next to the URL:

![clone-repo](https://user-images.githubusercontent.com/64863725/193443917-7718b733-894e-48b2-81de-66281f16933d.png)


Once we have the URL, we’re ready to clone the repository. To do this, we’ll combine the git clone command with the repository URL from the command line in a terminal window:

`git clone https://github.com/your-username/flutter_portfolio_hacktoberfest.git`

![screenshot 153](https://user-images.githubusercontent.com/37223446/47234624-0f7aff00-d3f4-11e8-81c4-9198e3e83860.png)

### 3. Create a New Branch

To create your branch, from your terminal window, change your directory so that you are working in the directory of the repository. Be sure to use the actual name of the repository (i.e. flutter_portfolio_hacktoberfest) to switch into that directory.

#####    `cd flutter_portfolio_hacktoberfest`

Now, we’ll create our new branch with the git branch command. Make sure you name it descriptively so that others working on the project understand what you are working on.

![screenshot 154](https://user-images.githubusercontent.com/37223446/47234964-240bc700-d3f5-11e8-9837-50685ad44382.png)

##### `git branch new-branch`

Now that our new branch is created, we can switch to make sure that we are working on that branch by using the git checkout command:

##### ` git checkout new-branch `

Once you enter the git `checkout` command, you will receive the following output:

######  `Output:`
#####  `Switched to branch 'new-branch' `


At this point, you can now modify existing files or add new files to the project on your own branch.

#### Make Changes Locally


>   Open repository in VS Code or Android Studio (I'm using VS Code)

###### Open Terminal and Enter Command 
```flutter pub get```
###### Run the project
```flutter run```

> Go-To Folder `'lib > YourDetails'` and Open `'contributers_github_username.dart'` file 


![github-username](https://user-images.githubusercontent.com/64863725/193446427-7a53990f-96e0-486a-88e8-9a18741e95f7.png)
> Save the file and open `'contributors_name.dart'` file

![github-contributer](https://user-images.githubusercontent.com/64863725/193446462-c116e454-86e1-4fbf-b51e-84816c80a534.png)

Once you have modified existing files to the project, you can add them to your local repository, which you can do with the git add command. Let’s add the -A flag to add all changes that we have made:

##### ` git add -A ` or ` git add . `

![screenshot 155](https://user-images.githubusercontent.com/37223446/47253493-417e7680-d471-11e8-83cf-a4f969da5131.png)


Next, we’ll want to record the changes that we made to the repository with the git commit command.

*The commit message is an important aspect of your code contribution; it helps the other contributors fully understand the change you have made, why you made it, and how significant it is. Additionally, commit messages provide a historical record of the changes for the project at large, helping future contributors along the way.*


![screenshot 155](https://user-images.githubusercontent.com/37223446/47235390-87e2bf80-d3f6-11e8-81c0-e01b7463d038.png)

If you have a very short message, you can record that with the -m flag and the message in quotes:

###### ` Example: `
##### ` git commit -m "added myself" `

![screenshot 156](https://user-images.githubusercontent.com/37223446/47235961-3fc49c80-d3f8-11e8-906f-a1cfa7a15726.png)


###### At this point you can use the git push command to push the changes to the current branch of your forked repository:
###### ` Example:`
##### ` git push origin new-branch `

### 5. Create Pull Request

At this point, you are ready to make a pull request to the original repository.

Navigate to your forked repository, and press the “New pull request” button on your left-hand side of your Repo page.


# Hurray!!! 
Thanks for contributing :purple_heart:
We thank you being part of our :sparkles: commUnity :sparkles: !
