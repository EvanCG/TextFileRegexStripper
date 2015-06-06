$input_path = ‘C:\Users\evangrif\Desktop\Classics and Classics with a Twist.txt’
$output_file = ‘C:\Users\evangrif\Desktop\Classics and Classics with a Twist Extracted.txt’
$regex = ‘http://www(1)?.[a-z]*.[^>]*’
select-string -Path $input_path -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } > $output_file