# Local latexmk configuration for this project
# This file tells latexmk how to compile each document

# For cv_cn.tex, use xelatex
if ($ARGV[0] =~ /cv_cn\.tex$/) {
    $pdf_mode = 5;  # Use xelatex
    $pdflatex = 'xelatex %O %S';
} else {
    # Default to pdflatex for other files
    $pdf_mode = 1;  # Use pdflatex
}

# Output directory settings
$out_dir = 'build';
$aux_dir = 'build';