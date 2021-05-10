# ICWA-caselaw
The United States government has a long and sordid history of separating children from their parents in this country.  In the mid-1800s public and private agencies were routinely removing minor tribal citizens (hereafter “MTCs”)  from their homes with the Federal Government’s consent. About 100 years later, a Congressional investigation revealed that between 25-35% of MTCs in the US were taken from families by state welfare agencies and that a gross disproportionality existed whereby MTCs were 7-8 times more likely to be removed compared to white children with the vast majority placed in non—Tribal homes with white parents. 
Much of the disproportionality had to do with the biases and prejudice of multiple systems of oppression working in conjunction to remove children out of ignorance of tribal customs and out of a failure to recognize the cultural and social standards prevailing in indigenous communities.

In response to the wholesale removal of children from indigenous households, the US government enacted the "Indian Child Welfare Act" (ICWA) in 1978. The ICWA (25 U.S.C. §1902) which was enacted by congress in accordance with its authority under the Indian commerce clause, has been described as a "monumental piece of legislation" that affects every Native American child born in the united states (Fletcher, 2007). This past year myself and two students wanted to better understand the context of the ICWA from a spatial epidemiological perspective. We first undertook an analysis of ICWA caselaw to better understand why, despite this legislation, Native American children continue to be disproportionately represented in the foster care system 50 year after its enactment. Our main interest was to better understand the reasons for why families are being dissolved for the purpose of creating sensitive and effective interventions. 

Here, we describe the first step of our analysis, namely to identify and download a corpus of ICWA caselaw. Thereafter, it is possible to analyze the caselaw (i.e. the text) using more advanced textual analysis and data science tools.

The Harvard Law School provides a way to access ICWA caselaw data fairly easily. The Harvard Law School's Caselaw Access Project can be accessed here https://case.law. The R script will download all available ICWA cases into an R data frame object for further analysis.

Legal documents are very complicated. Luckily, the Harvard Law School provides a way to access caselaw data fairly easily. The data for this analysis comes from Harvard Law School's Caselaw Access Project which can be accessed here https://case.law. The Caselaw Access Project ("CAP") expands public access to U.S. law by providing a searchable database and an Application Programming Interface (”API”). The goal of this project is to make all published U.S. court decisions freely available to the public online, in a consistent format, digitized from the collection of the Harvard Law Library.

The first step is to access all ICWA caselaw data which is available through the Harvard API here https://api.case.law/v1/cases/?page_size=896&search=%22ICWA%22. The data includes an ID, case name, decision date, docket number, parties, jurisdiction, cases cited and full text, among other things. The graphic below is a snapshot of the results from the link above. Notice that there are 899 cases available for download.


**References**

Fletcher, Mathew (2007). "ICWA and the Commerce Clause" Availabe at: https://www.law.msu.edu/indigenous/papers/2007-06.pdf
