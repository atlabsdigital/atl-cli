# 🧬 atl

atl is a set of tools to automate the work and make the job more easy 😃

**Where does atl come from?** *$ atl* borns from the necessity to unify the git commit messages across all the project we are running on the company. 

## Tools 🧰

atl contains the following set of tools:
### nc

nc provides from **n**ew **c**ommit and it needs to be used to create a new commit in the project. 

nc will automatically get the branch name and add it to the commit. This branch name should follow the following convention:

- master or develop
- jira ticket (f.e. feature/WAP-001) => It will get the WAP-001.

If the convention is not followed, it will show an error in the terminal screen.

``` bash
# available option for type
# case build, chore, ci, docs, feat, fix, improvement, perf, refactor, revert, test
$ atl nc <type> <message>

# Example
$ atl nc chore "my commit message" 
```
Result: 
```text
chore: develop - my commit message
```


#### Limitations
 - Doesn't allow to add some files. Instead, it add all the files to commit.

## Install 🛠

### Source code
Install the atl tool from the source code

```bash
$ git clone https://bitbucket.org/atlabstech/git-cli.git

$ cd git-cli/Cli

$ swift build --configuration release

$ cp -f .build/release/atl /usr/local/bin/atl
```


### Homebre
Coming soon

