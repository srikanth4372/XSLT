<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"></xsl:output>
	<xsl:template match="/">
		<students>
			<xsl:for-each select="courses/course/students/student">
				<student>
					<xsl:attribute name="id"><xsl:value-of select="@id" /></xsl:attribute>
					<firstname><xsl:value-of select="first" /></firstname>
					<lastname><xsl:value-of select="last" /></lastname>
					<username><xsl:value-of select="username" /></username>
				</student>
			</xsl:for-each>
		</students>
	</xsl:template>
</xsl:stylesheet>