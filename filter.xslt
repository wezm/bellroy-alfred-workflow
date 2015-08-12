<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="xml"/>

  <xsl:template match="/">
    <items>
      <xsl:for-each select="sitemap:urlset/sitemap:url/sitemap:loc[contains(., $query)]">
        <item>
          <xsl:attribute name="uid"><xsl:value-of select="."/></xsl:attribute>
          <xsl:attribute name="arg"><xsl:value-of select="."/></xsl:attribute>
          <title><xsl:value-of select="."/></title>
        </item>
      </xsl:for-each>
    </items>
  </xsl:template>
</xsl:stylesheet>

