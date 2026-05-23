
library(stringr)
data(USArrests)
head(USArrests)
states <- rownames(USArrests)

#Change Case
#==================================================================
tolower("sOUth POle")
toupper("sOUth POle")
tolower(states)
toupper(states)

# Number of characters
#=====================================================================
nchar("South Pole")
str_length("South Pole")

nchar(states)
str_length(states)

text <- c("Clash","of","the",NA,"Titans")
nchar(text)
str_length(text)

# Concatenate
#=====================================================================
paste("North","Pole")
paste("North","Pole",sep="")
str_c("North","Pole")

paste("Clash","of","the",NULL,character(0),"Titans")
str_c("Clash","of","the",NULL,character(0),"Titans",sep=" ")

str_join("Clash","of","the","Titans",sep="_")

# Substring
#=====================================================================
substr("Equator",start = 3,stop = 5)
str_sub("Equator",start = 3,end = 5)

substr(states,start = 1,stop = 4)
str_sub(states,start = 1,end = 4)

substr(states,,-4,-1)
str_sub(states,-4,-1)

# String Split
#=====================================================================
strsplit("28/3/2015",split = "/")
str_split("28/3/2015",pattern = "/")

strsplit(states,split = "[aeiou]")
str_split(states,pattern = "[aeiou]")

str_split(states,pattern = "[aeiou]",n = 2)

#Search
#======================================================================
grep("Pole",x = c("Equator","North Pole","South Pole"))
grep("Pole",x = c("Equator","North Pole","South Pole"),value = TRUE)
grep("pole",x = c("Equator","North Pole","South Pole"),value = TRUE,ignore.case = TRUE)

grep(pattern = "s",x = states,value = TRUE)
grep(pattern = "[sS]",x = states,value = TRUE)
grep(pattern = "[sSaA]",x = states,value = TRUE)
grep(pattern = "[sS][aA]",x = states,value = TRUE)
grep(pattern = "^(S)",x = states,value = TRUE)

str_count(states,pattern = "s")
str_count(states,pattern = "[sS]")

CharCount <- nchar(states)
xtabs(~states+CharCount)

vowelsCount <- str_count(states,pattern = "[aeiouAEIOU]")
VowelFreq <- data.frame(States = states, Freq = vowelsCount)
VowelFreq <- VowelFreq[order(VowelFreq$Freq,decreasing = TRUE),]

numerics <- c("123", "17-April", "I-II-III", "R 3.0.1")

grep(pattern = "[01]", numerics, value = TRUE)
grep(pattern = "[0-9]", numerics, value = TRUE)
grep(pattern = "[^0-9]", numerics, value = TRUE)

# Substitute
#================================================================================

money <- "$money"
sub(pattern = "m",replacement = "M",x = money)
sub(pattern = "$",replacement = "",x = money)
sub(pattern = "\\$",replacement = "",x = money)


sub("\\$", "", "$Peace-Love")
sub("\\.", "", "Peace.Love")
sub("\\+", "", "Peace+Love")
sub("\\^", "", "Peace^Love")
sub("\\|", "", "Peace|Love")
sub("\\(", "", "Peace(Love)")
sub("\\)", "", "Peace(Love)")
sub("\\[", "", "Peace[Love]")
sub("\\]", "", "Peace[Love]")

sub(pattern = "s",replacement = "S","Mississipi")
gsub(pattern = "s",replacement = "S","Mississipi")


STRING <- "La vie en #FFC0CB (rose);n\nCest la vie! n\ttres jolie"

gsub(pattern = "[[:blank:]]",replacement = "",x = STRING)
gsub(pattern = "[[:punct:]]",replacement = "",x = STRING)
gsub(pattern = "[[:space:]]",replacement = "",x = STRING)

# people names
people = c("rori", "emilia", "matteo", "mehmet", "filipe", "anna", "tyler","rasmus", "jacob", "youna", "flora", "adi")

# match m exactly once
grep(pattern = "m{1}", people, value = TRUE, perl = FALSE)

# match m zero or more times, and t
grep(pattern = "m*t", people, value = TRUE)

# match t zero or more times, and m
grep(pattern = "t*m", people, value = TRUE)

#match m one or more times
grep(pattern = "m+", people, value = TRUE)

# match t exactly twice
grep(pattern = "t{2}", people, value = TRUE)

# Regexp
#====================================================================================
regexpr(pattern = "uat",text = "Equator")
regexpr(pattern = "iss",text = "Mississippi")
gregexpr(pattern = "iss",text = "Mississippi")

# Reading text files
data <- readLines("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Seven\\demo.txt")
paste(data,collapse = "")
