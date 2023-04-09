<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <!-- 시작 템플릿 룰 -->
<xsl:template match="/">
<html>
<body>
<h2><font color="blue">Our Book's List</font></h2>
<table border="1" cellspacing="0" width="80%">
<tr>
     <th>title</th>
     <th>author</th>
</tr>
<!-- book 템플릿 룰 적용 -->
<xsl:apply-templates select="/booklist/book[@kind='컴퓨터']"
mode="mode-Computer"/>
<xsl:apply-templates select="/booklist/book[@kind='소설']"
mode="mode-Novel"/>
</table>
</body>
</html>
</xsl:template>
<!-- book 템플릿 룰 -->
     <xsl:template match="book" mode="mode-Computer">
<tr>
     <td><xsl:value-of select="title"/> (컴퓨터)</td>
     <td><xsl:value-of select="author"/></td>
</tr>
</xsl:template>
     <xsl:template match="book" mode="mode-Novel">
<tr>
<td>
     <font color="red"><xsl:value-of select="title"/> (소설)</font>
</td>
<td>
     <font color="green"><xsl:value-of select="author"/></font>
</td>
</tr>
</xsl:template>
</xsl:stylesheet>