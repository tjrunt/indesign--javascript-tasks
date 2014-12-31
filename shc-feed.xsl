<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My Feed info</h2>
  


	<!-- Job-->
	<p><b>JOB: </b><xsl:value-of select="Data/Activity/RetailFormat"/>
	<xsl:value-of select="Data/Activity/ActivityTitle"/>	</p>
	<p><b>FeedDate: </b>
	<xsl:value-of select="Data/Activity/FeedDate"/></p>
	<p><b>ActivityId: </b>	
	<xsl:value-of select="Data/Activity/ActivityId"/></p>



	<!-- Page-->
	<xsl:for-each select="Data/Activity/Version/Page">
	<b>PageId: </b>
	<xsl:value-of select="PageId"/>	
	
	<!-- Block-->
	<xsl:for-each select="Block">
	<p style=" text-indent: 5em;"> 
	<b>BlockId: </b>
	<xsl:value-of select="BlockId"/></p> 
	
	<!-- KSN-->
	<xsl:for-each select="Offer/Product">
	<p style=" text-indent: 10em;"> 
	<b>ProductNum: </b>
	<xsl:value-of select="ProductNum"/></p>

	<!-- finance pricing-->
	<xsl:for-each select="ProductDeals/IncentivesAndQualifiers">
	<p style=" text-indent: 15em;"> 
	<b>QualifierName: </b>
	<xsl:value-of select="QualifierName"/></p> 
	<b>IncentiveName: </b>
	<xsl:value-of select="IncentiveName"/></p> 
	<p style=" text-indent: 15em;"> 
	<b>IncentiveNumber: </b>
	<xsl:value-of select="IncentiveNumber"/> </p> 
	<p style=" text-indent: 15em;"> 
	<b>FinancingMonths: </b>
	<xsl:value-of select="FinancingMonths"/> </p> 
	<p style=" text-indent: 15em;"> 
	<b>FinancingInterest: </b>
	<xsl:value-of select="FinancingInterest"/></p> 

     </xsl:for-each>
    </xsl:for-each>
   </xsl:for-each>  
   </xsl:for-each>
  
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 


