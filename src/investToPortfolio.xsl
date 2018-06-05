<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"></xsl:output>
	<xsl:strip-space elements="*"/>
	<xsl:template match="/">
		<portofolio>
			<xsl:apply-templates />
		</portofolio>
	</xsl:template>
	<xsl:template match="item">
		<stock>
			<xsl:attribute name="exchange"><xsl:value-of
				select="@exch" /></xsl:attribute>
			<name>
				<xsl:value-of select="@company" />
			</name>
			<symbol>
				<xsl:value-of select="@symbol" />
			</symbol>
			<price>
				<xsl:value-of select="@price" />
			</price>
		</stock>
	</xsl:template>
</xsl:stylesheet>