function capitalize(word) {
    first_character = substr(word, 0, 1);
    after_second_character = substr(word, 2);
    capitalized = sprintf("%s%s", toupper(first_character), after_second_character);
    return capitalized;
}
