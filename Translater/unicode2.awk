{
#cat sentence_input | sed -f make_column | sed -f trns_p | sed -f d_hex|sed -f test_script | sed -f 0905 | sed -f joda | awk -f make_in_line.awk |awk -f make_in_line.awk | sed -f reverse 



    sed_script = "trns_p";
    decimal_hex = "d_hex";
    bugs_resolve = "test_script";
    remove_extras = "0905";
    jodakshar = "joda";
    convert_line = "make_in_line.awk";
    marathi_eq = "reverse";
    convert_in_column= "make_column";
    unicode_in_line = "unicode.awk";

    input_file = $0;

    cmd = "echo " input_file " | sed -f "  convert_in_column\
	  " | sed -f " sed_script \
          " | sed -f " decimal_hex \
          " | sed -f " bugs_resolve \
          " | sed -f " remove_extras \
          " | sed -f " jodakshar \
          " | sed -f " jodakshar \
          " | awk -f " convert_line \
	  " | awk -f " convert_line;

    cmd | getline line;
    temp = line;
    print line;
    # Execute the command and read the output
  #  while ((cmd | getline line) > 0) {
 #       print line;  # Print each processed line
#	cnt=cnt + 1;
   # }
    close(cmd);  # Close the command pipe

    
    
}

