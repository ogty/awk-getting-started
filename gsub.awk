function gsub(string, before, after) {
    split(string, tmp, before);
    
    for (i = 0; i < length(tmp); i++) {
        sub(before, after, string);
    }
    
    return string;
}
