build: Q3a.png Q3b.png Q6.png

clean:
	rm *.png
	rm processdata.csv
	rm assumpt_dis_data.csv

processdata.csv: data_G.R
	Rscript data_G.R

assumpt_dis_data.csv: data_G.R 
	Rscript data_G.R

Q3a.png Q3b.png: processdata.csv Plot_G.R
	Rscript Plot_G.R

Q6.png: assumpt_dis_data.csv Plot_G.R
	Rscript Plot_G.R