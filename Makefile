.PHONY: ceptre mlton

ceptre: mlton

mlton:
	mlton -output ceptre src/sources.mlb

smlnj: 
	sml < src/ceptre-export-smlnj.sml
	chmod a+x src/.mkexec
	src/.mkexec `which sml` `pwd` ceptre
