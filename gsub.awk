function gsub(string, before, after) {
    split(string, tmp, before);
    tmp_length = length(tmp)
    
    for (i = 0; i < tmp_length; i++) {
        sub(before, after, string);
    }
    
    return string;
}
