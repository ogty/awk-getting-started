BEGIN {
    ORS = ""
    count = 0
}


function permission_decoder(permission_string) {
    printf("%-11s (", permission_string)

    data[2] = substr(permission_string, 1, 3)
    data[3] = substr(permission_string, 4, 3)
    data[1] = substr(permission_string, 7, 3)


    for (i in data) {
        tmp = data[i]

        sub("r", "4", tmp)
        sub("w", "2", tmp)
        sub("x", "1", tmp)

        permission_counter = 0
        permission_counter += int(substr(tmp, 1, 1))
        permission_counter += int(substr(tmp, 2, 1))
        permission_counter += int(substr(tmp, 3, 1))

        permission_number[i] = permission_counter
    }

    result = sprintf("%d%d%d", permission_number[2], permission_number[3], permission_number[1])
    return result
}


{
    if (count > 0) {
        printf("%3d|  ", count)
        split($0, splited, " ")
        print permission_decoder(splited[1])
        print ")"
        printf(" %2s", splited[2])
        printf(" %s", splited[3])
        printf("  %s", splited[4])
        printf("  %5s", splited[5])
        printf("  %s", splited[6])
        printf("  %s", splited[7])
        printf(" %s", splited[8])
        printf(" %s", splited[9])
        print "\n"
    } else {
        printf("      %s \n", $0)
    }
    count += 1
}
