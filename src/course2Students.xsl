<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xslt="http://xml.apache.org/xslt">
	<xsl:output method="xml" indent="yes" xslt:indent-amount="4"></xsl:output>
	<xsl:strip-space elements="*"/>
	<xsl:template match="/" >
		<students>
			<xsl:apply-templates />
		</students>
	</xsl:template>
	<xsl:template match="courses/course/students/student">
		<student>
			<xsl:attribute name="id">
				<xsl:value-of select="@id" />
			</xsl:attribute>
			<firstname>
				<xsl:value-of select="first" />
			</firstname>
			<lastname>
				<xsl:value-of select="last" />
			</lastname>
			<username>
				<xsl:value-of select="username" />
			</username>
		</student>
	</xsl:template>
</xsl:stylesheet>