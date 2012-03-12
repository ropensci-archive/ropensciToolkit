

Metadata object:
metadat <- download_dryadmetadata(8820, T)
"identifier" "datestamp"  "setSpec"    "metadata"   "about"
 $ identifier: chr "oai:datadryad.org:10255/dryad.8820"
 $ datestamp : chr "2011-04-28T21:32:10Z"
 $ setSpec   : chr "hdl_10255_2"
 $metadata : class(metadata) = [1] "XMLNode"          "RXMLAbstractNode" "XMLAbstractNode"  "oldClass"
 table(names(onestate))
 $about:  list() # this should be removed

foo<-lapply(xmlChildren(metadat$metadata), function(x) xmlValue(x,recursive=T))

data<-oaih_transform(metadat$metadata)
# returns a list.
cat("Title",data$title)
cat("Dryad File Identifier:",obj$identifier,"\n")
cat("Keywords")
cat("Date Deposited",obj$datestamp)
cat("Spatial Coverage")
cat("Temporal Coverage")
cat("License")


ro_save(metadata,format=df)
{
	if(obj$source=="Dryad")
	{
		#stuff specific to dryad metadata
	}
}