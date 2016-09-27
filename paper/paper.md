#Abstract
***
***

This paper is introduction about the computational tools covered so far in Stat159 Fall2016.



#Introduction
***
***

So far we have learned bash, markdown, pandoc, github and Make. I would like to use vim as a text editor to write this paper. I would also use my own words to explain what are those computational tools and  the role of those  play in reproducible workflow. 
Next, I will introduce 5 tools in Discussion section: 

* Makefile
* Git
* Github
* pandoc
* Markdown







#Discussion
***
***
![](/Users/MandyZhang/Desktop/stat_159/project1/images/stat159-logo.png)

In this section, we will talk about five computational tools: the role they play.

##Makefile
***
Sometimes it's very tedious to compiling many code files from different sources. [*Makefile*](https://en.wikipedia.org/wiki/Makefile) is a special format file that together with the *make* utility will help you to automatically build and manage your projects.[^1]

[^1]: <http://mrbook.org/blog/tutorials/make/>

The basic makefile is composed of *target*, *dependencies*, and *system command*
for example:
```
all: file1.txt file2.txt

file1.txt:
    touch file1.txt

file2.txt: file1.txt
    mkdir newdirectory
    cd newdirectory
    cp file1.txt file2.txt

clean: 
    rm file1.txt
    rm file2.txt
```
In this example, *all* is a target in the first line, and *file1.txt*, *file2.txt* are the dependencies. *all* is the target that all the main things you want to be executed (main target first to be executed). The *make* utility will execute this target with *file2.txt* dependencies. We also see that the target *all* has only dependencies *file1.txt* and *file2.txt* but no system commands. Therefore, it has to meet all the dependencies of the called target.

In this example, we also see a target called *clean*. The target *clean* does not have dependency. It is useful to have such target if you want to have a fast way to get rid of all the object files and executables. 
This example is basically when you run:
```
make
```
It creates a new directory and a new file1.txt, and then it copies file1 to file2 and then remove both file1.txt and file2.txt.

##Git
***
Group Projects are a "living" creature. Once it's completed, it may become dormant, or it may keep evolving. **Git** is a free and open source distributed version control system that is designed to handle everything from small to very large projects with speed and efficiency and keeps tracks of changes over time. Git allows you track progress; allows you to revert to earlier versions (dog can't eat your homework); and Git makes it easier to collaborate with others.[^2]

[^2]: <http://gastonsanchez.com/stat159/lectures/05-crisis1-git-basics/>


![](/Users/MandyZhang/Desktop/stat_159/project1/images/git-logo.png)

Git is easy to learn and has a tiny footprint with lightning fast performance It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows. 


* Evolution of VCS:
    + Track changes on various files (not just one)
    + Track changes on a directory
    + Allow savings non-text files (i.e. images)
    + Various persons working on the same file
    + Use of remote repositories to collaborate
    + Distributed VCS (no centralized repository)
   
   
* The advantages of Distributed VCS:
    + Different users maintain their own repositories. (each user can work on their own version)
    + No single master repository, just many working copies.
    + No need to communicate with a central server
    + Faster
    + No network access required (work on airplane)
    + No single failure point
    + Encourages participation (forking of projects)
    + Working Independently
   
   
* VCS Key Idea: Keeping track of changes made on a project's files (not their versions)
    + Keep a record of all the made changes.
    + Storing changes of each version (a set of modifications is a "version")
    + Git creates a repository inside a project's directory
   

* **COMMIT**: a specific set of changes
    + A snapshot is a set of changes. Each snapshot is knows as a commit
    + Only new changes are tracked from one commit to the next one
    + Each commit ("snapshot") has a unique ID or hash commit
   

####Basic Commands: git command

| git command      | meaning                         |
|:---------------------:|:--------------------------------:|
| git help              | help documentation        |
| git config           | Configuration                   |
| git init                | initialize a repository        |
| git status           | status information            |
| git add               | add unstated changes     |
| git commit         | commit staged changes   |
| git log                | see log (changes)            |
|git diff                 | differences between files  |



## [Github](https://en.wikipedia.org/wiki/GitHub)
***
*Github* is a web-based Git repository hosting service. It offers all of the distributed version control and source code management (SCM) functionality of *Git* as well as adding its own features. 
It provides access control and several collaboration features such as bug tracking, feature requests, task management, and wikis for every projects. 

![](/Users/MandyZhang/Desktop/stat_159/project1/images/github-logo.png)

Basically, you can use git command to connect your files locally and globally. For example, when you want to add something in a new repository:

````
git init

git remote add origin https://github.com/your-user-name/name-of-new-repository

# if you want to create a new file README:
touch README.md

git add README.md

git commit -m "First file added"

git push origin master

````
When you open your new repository online, you will find that the README file is already uploaded!


For another example, if you are one member of group project and there are already many files in an existing repository. So you want to everything down to local and keep finishing your part.
````
git clone http://github.com/group-user-name/name-of-group-project  

# if you want to add a new.txt:
vim new.txt

git add new.txt

git commit -m "added new.txt for existing repo"

git push origin master
````


## Pandoc
***




## Markdown
***
Markdown is a way to write content for the web and many other formats using a tool by the same name. It's written in plaintxt, which is exactly the sort of text we are used to writing and seeing. Text written in Markdown can be easily shared between computers, mobile phones, and people. IT's quickly becoming the writing standard for academics, scientists, writers, and many more. Websites like GitHub use Markdown to style their comments. 

![](/Users/MandyZhang/Desktop/stat_159/project1/images/markdown-logo.png)  
  
  
  
  
  
  
**Quick Guide**:
  
| Content   | Markdown syntax     | 
|:-----------------|:-------------------------|
| Header        | `#header`             |
| _word in italics_ | `_word in italics_ `  |
| **word in bold** | `**word in bold**`     |
| web links for urls [Wikipedia](http://en.wikipedia.org/wiki/Markdown)| `[Wikipedia](http://en.wikipedia.org/wiki/Markdown)`|
| horizontal rules | `***`|
| block quotes | `> block quotes`|

















# Conclusions
***  
***
  
1. The resources I used:
    + Lecture slides
    + Lecture notes
    + Help from GSI in discussion and office hour
    + Wikipedia
    + Google (will list after)  
   
   
2. The "easy" parts:
    + Creating directory
    + git commit like push from local to master
    + Google search related resources
    + writing Markdown (but time consuming)
    + Writing about Git and GitHub because I have many lecture slides  
   
   
3. The challenging parts:
    + Learning how to write Makefile
    + Learning how to use git   
  
  
4. Things I was stuck with:
    + Writing makefile. cause I didn't know some targets such as phony, all, clean.
    + compiling markdown files in sections into one paper.md
    + Inserting images in markdown and trying to make all paper organized.

5. The most time consuming part:
    + Writing markdown syntax.
	
6. Yes, I got help from GSI when I was stuck with Makefile. She gave me some examples.

7. I took around 10 hours to complete. 
    
    

