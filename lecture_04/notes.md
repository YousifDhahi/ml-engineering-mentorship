# Stash Notes

* Created a new README file inside `lecture_04/`.
* The new file was untracked, so `git stash` alone did not save it.
* Used `git stash -u` to stash the untracked file.
* Confirmed the working directory was clean with `git st`.
* Switched branches and used `git stash pop` to restore the stashed work.
