$input_path = ‘C:\Users\evangrif\Documents\OneNote Notebooks\0300 Gold\Classics and Classics with a Twist.one’
$output_file = ‘C:\Users\evangrif\Desktop\Test Gold Extracted.txt’
$regex = ‘http://www(1)?.[a-z]*.[^>]*’
select-string -Path $input_path -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } > $output_file