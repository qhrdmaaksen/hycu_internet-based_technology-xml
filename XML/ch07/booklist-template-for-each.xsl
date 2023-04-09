<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 시작 템플릿 룰 -->
<xsl:template match="/">
<html>
<body>
<h2><font color="blue">Our Book's List</font></h2>
<table border="1" cellspacing="0" width="80%">
<tr>
<th>title</th>
<th>author</th>
<th>price</th>
</tr>
<!-- book 템플릿 룰 적용 -->
<xsl:for-each select="/booklist/book">
<tr>
     <td><xsl:value-of select="title"/></td>
     <td><xsl:value-of select="author"/></td>
     <td><xsl:value-of select="format-number(price, '###,###')"/> 원</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>