<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- book 템플릿 룰 -->
<xsl:template match="book">
<tr>
     <td><xsl:value-of select="title"/></td>
     <td><xsl:value-of select="author"/></td>
</tr>
</xsl:template>
</xsl:stylesheet>