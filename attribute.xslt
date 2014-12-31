<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">

</xsl:template>



<xsl:template match="CopyContent/Copy">
<html>
<body>
<B>
<xsl:try>
<xsl:for-each select="CopyElement">
<xsl:element name="CopyElement/@CopyElementType">
<xsl:value-of select="." />

<xsl:value-of select="CopyElement/@CopyElementType"/>
</xsl:element>



<!--xsl:value-of select="CopyElement/@CopyElementType" /-->
<!--xsl:value-of select="CopyElement/@Locale" /-->
<xsl:for-each>
</B>
<xsl:catch>
</xsl:catch>
</xsl:try>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


