BEGIN {
    # \\
    # \a
    # \b
    # \f
    # \n
    # \r
    # \t
    # \v
    # \nnn
    # \xhh
    # \/
    # \"

    # ^
    # $
    # .
    # [ABC]
    # [A-Z]
    # [a-zA-Z0-9]
    # [^ABC]
    # A|B
    # (...)
    # A*
    # A+
    # A?
    # A{n}
    # A{n,}
    # A{n, m}

    # [:alnum:] 
    # [:alpha:] 
    # [:lower:] 
    # [:upper:] 
    # [:digit:] 
    # [:xdigit:]
    # [:blank:] 
    # [:space:] 
    # [:cntrl:] 
    # [:graph:] 
    # [:print:] 
    # [:punct:] 

    # \s
    # \S
    # \w
    # \W
    # \<
    # \>
    # \y
    # \B
    # \`
    # \'

    int(x)                             
    rand()                             
    srand(x)                           
    sqrt(x)                            
    exp(x)                             
    sin(x)                             
    cos(x)                             
    atan2(y, x)                        
    log(x)                             

    gensub(reg, replace, how[, target])
    gsub(reg, replace[, target])       
    index(str, s)                      
    length([str])                      
    match(str, reg[, array])           
    split(str, array[, fpat[, seps]])  
    sprintf(fmt, exp1, ...)            
    sub(reg, repl[, target])           
    substr(str, start[, length])       
    tolower(str)                       
    toupper(str)                       

    close(filename[, how])             
    fflush([filename])                 
    system(command)                    

    strftime([fmt[, time[, utc]]])     
    systime()                          
}
