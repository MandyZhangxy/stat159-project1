#02 Discussion
***
***
![](/Users/MandyZhang/Desktop/stat_159/project1/images/stat159-logo.png)

In this section, we will talk about five computational tools: the role they play.

#Makefile

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
In this example, *all* is a tartget in the first line, and *file1.txt*, *file2.txt* are the dependencies. *all* is the target that all the main things you want to be executed (main target first to be executed). The *make* utility will execute this target with *file2.txt* dependencies. We also see that the target *all* has only dependencies *file1.txt* and *file2.txt* but no system commands. Therefore, it has to meet all the dependencies of the called target.

In this example, we also see a target called *clean*. The target *clean* does not have dependency. It is useful to have such target if you want to have a fast way to get rid of all the object files and executables. 
This example is basically when you run:
```
make
```
It creates a new directory and a new file1.txt, and then it copies file1 to file2 and then remove both file1.txt and file2.txt.
