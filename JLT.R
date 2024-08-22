# DataTypes
# Integer: 1,9, 11
# Float: 3.5, 2.4 
# String/Character: "Class", "A"
# Bool:True/False

my_variable=11
my_float=3.5
my_name="avinash"
my_bool=TRUE


# DataStructure 
# Vector

# 1.5 0.9, 3.6

my_gene_expression = c(1.5,0.9,3.6,5.2)
print(my_gene_expression)

my_gene_expression[1]
print(my_gene_expression[1])

print(my_gene_expression[3])
my_gene_expression[1:3]
my_gene_expression[c(1,3)]
my_gene_expression[-3]

sum(2,25,24,21)
sum(my_gene_expression)
mean(my_gene_expression)
sd(my_gene_expression)
log(my_gene_expression)

#2D DataStructure
my_gene_names = c("DLGAP5", "KIF2C", "ZMYND10", "VAV3")

#DataFrame: Rows & Columns 
#data.frame

my_gene_DF=data.frame(my_gene_names,my_gene_expression)
View(my_gene_DF)

my_gene_DF=data.frame("GENE"=my_gene_names,"EXPRESSION"=my_gene_expression)
View(my_gene_DF)

my_new_gene=data.frame("GENE"="TPR2", "EXPRESSION"=9.8)
View(my_new_gene)
my_gene_DF = rbind(my_gene_DF,my_new_gene)

my_gene_count=c(55,61,102,32,65)
my_gene_DF = cbind(my_gene_DF,"COUNT"=my_gene_count)
View(my_gene_DF)


my_gene_DF[1,1]
my_gene_DF[3,3]
my_gene_DF[1:3,2]
my_gene_DF[c(1,3),2]
my_gene_DF[,]
my_gene_DF[-3,]

3>4
3==4
3==3

if(3>4){
  print("My Name is Avinash")
}else{
  print("My name is not Avinash")
}

#AND --> &
#OR  --> |


if((3>2)|(3==4)){
  print("Yeee")
}else{
  print("hooo")
}

if((3>2)&(3==4)){
  print("Yeee")
}else{
  print("hooo")
}
my_gene_names = c("DLGAP5", "KIF2C", "ZMYND10", "VAV3")

for(my_iterator in my_gene_names){
  print(my_iterator)
}

# Gene of interest id TRP

indicator=0
for(my_interest in my_gene_names){
  if(my_interest == "TRP"){
    print("I found it, TRP Gene")
    indicator=1
  }
}
if(indicator == 0){
  print("I can't find, TRP Gene")
}


#Function : (1) Definition (2) Calling

#Define
my_function = function(my_num){
  my_square = my_num*my_num
  print(my_square)
}


my_function(2)

my_function("2")

my_function(2.4)

paste("Hi","Hello")

find_gene = function(gene_name){
  indicator=0
  for(my_interest in my_gene_names){
    if(my_interest == gene_name){
      print(paste("I found it",gene_name,"Gene"))
      indicator=1
    }
  }
  if(indicator == 0){
    print(paste("I could not find",gene_name,"Gene"))
  }
}


find_gene("TRP")  
find_gene("DLGAP5")

my_file = read.csv("clustering-Publication-old.csv")
View(my_file)


my_file$Cluster
my_file$Scientists
