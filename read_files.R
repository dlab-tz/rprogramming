dset = vector() # create an empty vector
counter <- 1
list.files("data") ## list all the files in the data directory
for(f in files){ ## go through each of the files
  fname = substr(f, 1, nchar(f)-4) ## get the name
  ext = substr(f, nchar(f)-3, nchar(f)) ## get the file extension
  if(ext == ".csv"){ ## check if extension is csv
  dset[counter] <- fname ## add fname to datasets
  assign(fname, read_csv(paste("data", f, sep = "/"))) ## assign dataframe to variable
  counter <- counter + 1
  }
}