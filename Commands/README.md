# Linux commands cheat sheet
* ## Information commands
   + ### pwd 
         print the path to current directory
   + ### uname 
         print your system hardware architecture , kernel and distribution information
   + ### which
         print the file system location for command
         e.g. which cat
   + ### type 
         print file system location and type of the command
         some types are  :
            1. shell bultin
            2. hashed (recently being used)
            3. aliased 
         e.g. type clear
   + ### man
         opens a documentation page for mentioned command
         e.g. man ls
   + ### env 
         print all enviroment variables
         some important env variables are :
            1. PATH (path to all executable commands)
            2. OLDPWD (path to your previous directory)
            3. HISTSIZE (not included by default)
            4. HISTFILESIZE (not included by default)
   + ### history
         print recently used commands
           - by default it prints last 1000 used commands 
           - capacity can be increased by including HISTSIZE env varaible
           - number of lines can be restricted by command itself e.g. history 20 prints last 20 executed commands 
   + ### neofetch
         print general information of your operating system beautifully (needs to be installad)
* ## File management commands
   + ### ls
         list files in directory
         - syntax : ls path
         - e.g ls ~/Desktop (list all files and directories in Desktop)
         - important flags :
             ls -l (long list containing premission , owner , size and etc)
             ls -h (human readable format)
             ls -a (list all files containing hidden files)
   + ### touch 
         create an empty file
         e.g. touch temp.txt
   + ### mkdir 
         create an empty directory
         - mkdir -p (create directories hierarchically)
   + ### cp
         copy a file
         - syntax : cp src dst
         - e.g cp ~/Desktop/temp.txt ~/Documents/ (it copies a file named temp.txt in desktop to Documents directory)
         - copy directory :
            cp -r src dst
            e.g. cp -r ~/Downloads/Wallpapers ~/Pictures
   + ### mv
         move a file or directory (cut)
         - syntax : mv src dst
         - e.g. mv ~/Desktop/temp ~/Documents (move a file or directory named temp to  ~/Documents)
   + ### rm
         remove a file
         - syntax : rm file
         - e.g rm ~/Desktop/temp.txt (removes a file named temp.txt in Desktop)
         - remove directory :
            rm -r directory
            e.g. rm -r ~/Downloads/Homeworks
         - important flags :
             rm -i (ask before remove)
             rm -f (force remove)
   + ### rmdir
         remove an empty directory
         - syntax : rmdir emptyDIR
         - e.g rmdir ~/Desktop/Test (Test directory must be empty)
   + ### find
         searching for files
         - syntax : find [start_path] [options] 
         - e.g find ~/Desktop -name "*.pdf" (finding all .pdf files in Desktop and all its sub directories) 
         - important flags :
             1. -name [pattern] (search by name)
                  - e.g. find ~/Desktop -name "temp*" 
             2. -size [size]  (search by size)
                  - e.g. find ~/Desktop -size +2G
                  - size symbols --> G : GigaBytes , M : MegaBytes , K : KiloBytes , b : Bytes
             3. -type [type] (search by file type)
                  - e.g. find ~/Desktop -type f
                  - different types --> f : regular files  , d : directory , l : symbolic link 
* ## Wildcards
     + ### what are the wildcards ?     
            Wildcards are symbols which may be used to substitute for one or more charachters in order to represent
            multiple filenames
     + ### types of Wildcards     
           1. * (matches zere , one or more occurances of any character)
              - e.g. rm *.png (delete all files end in .png) 
           2. ? (matches a single occurance of a character)
              - e.g. rm  ?.png (delete all files with 4 character and end in .png)
           3. [] (matches any occurance of the character(s) enclosed in square brackets)
              - e.g. rm [abc].png (delete these three files if exist : a.png , b.png , c.png)
   
* ## Process text streams
   ### consider a file named temp.txt for the next following commands
   #### temp.txt
      sobhan:1234567
      asal:abcdef
      radmehr:dgjjjb
      peransa:retdun

   + ### cat 
         writes whatever it reads from standard input to standard output
         e.g. cat temp.txt
         output :
                  sobhan:1234567
                  asal:abcdef
                  radmehr:dgjjjb
                  peransa:retdun
   + ### less 
         it paginates the content
         - syntax less temp.txt
   + ### head
         it shows first 10 lines of the file (number of line can be changed via -n flag)
         e.g. head -n 1 temp.txt
         output :
                  sobhan:1234567
   + ### tail
         it shows last 10 lines of the file (number of line can be changed via -n flag)
         e.g. tail -n 1 temp.txt
         output :
                  peransa:retdun                 

   + ### wc
         print number of lines , words , characters in file 
         e.g. wc temp.txt
         output :
                 4  4 57 temp.txt
         - important flags :
            1. wc -l (number of lines)
            2. wc -m (number of characters)
            3. wc -w (number of words)    
   + ### grep
         search in file
         e.g. grep "sobhan" temp.txt
         output :
                  sobhan:1234567
         - important flags :
            1. grep -i (ignore case-sensivity)
            2. grep -c (number of matched words)
            3. grep -v (lines does not contain the pattern)
            4. grep -o (disply only matched pattern)
   + ### cut
         print columns of text file based on a delimiter
         e.g. cut -d ":" -f 1 temp.txt
         output :
                  sobhan
                  asal
                  radmehr
                  peransa
         - important flags :
            1. cut -d [delimiter] (define a delimiter (must be one character))
            2. cut -f [fields] (output fields (fields must be seprated by "," e.g. -f 1,2,3 or in range e.g. 1-3))
            3. cut -s (print lines containing delimiter)
   + ### tr
         replace charcters(not strings)
         e.g. tr ":" "." < temp.txt
         output :
                  sobhan.1234567
                  asal.abcdef
                  radmehr.dgjjjb
                  peransa.retdun
         - important flags :
            1. tr -d (remove mentioned characters)
                  - example : tr -d ":" < temp.txt
                  - output : 
                              sobhan1234567
                              asalabcdef
                              radmehrdgjjjb
                              peransaretdun
   + ### sed
         its being used for stream editing (explore for other opitons)
         - some examples :
            1. sed -n s/so/XX/p temp.txt 
                  - it replaces every occurences of "so" with "XX" in temp.txt file 
                  - -n flag instructs sed to produce output just for specified command     
            2. sed -n /sobhan/p temp.txt 
                  - print lines containing "sobhan"
            3. sed -n /asal/d temp.txt
                  - remove lines containing "asal"
            4. sed -n 1p temp.txt 
                  - print line number 1 
            5. sed -n 1,5p temp.txt 
                  - print first line up to fifth line
            6. sed -i.backup /sobhan/d temp.txt
                  - overwrites the main file and save the backup in temp.txt.backup 
   + ### sort
         organizing the output alphabetically or numerically
         - how it works :
         1. Lines starting with a number will appear before lines starting with a letter.
         2. Lines starting with a letter that appears earlier in the alphabet will appear before lines starting with a letter that appears later in the alphabet.
         3. Lines starting with a uppercase letter will appear before lines starting with the same letter in lowercase.
         - options :
            - sort -n (sort numerically)
            - sort -r (reverse the result)
            - sort -u (sort and remove duplicates)        
 
  
                   