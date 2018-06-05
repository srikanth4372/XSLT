<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" />
	
	<xsl:template match="books"  >
		<books>
			<xsl:apply-templates />
		</books>
	</xsl:template>

	<xsl:template match="book">
		<book>
			<xsl:attribute name="isbn">
		<xsl:value-of select="@isbn" /> 
	</xsl:attribute>
			<xsl:copy-of select="title" />
		</book>


	</xsl:template>


</xsl:stylesheet>