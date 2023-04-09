<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- html 방식으로 출력한다. -->
<xsl:output method="html"/>

<xsl:template match="/">
<html>
     <body>
     <h1>Our Book's List</h1>
     <table border="1" cellspacing="0" width="80%">
     <tr> <th>제목</th> <th>저자</th></tr>
     <tr align="center">
          <!-- //book로 book element를 찾아 냄 -->
          <xsl:apply-templates select="//book"/>
     </tr>
     </table>
     </body>
</html>
</xsl:template>
<!-- //book의 결과 중 book에 해당하는 것을 나타낼 방법을 기술 -->
<xsl:template match="book">
     <tr align="center">
          <xsl:apply-templates select="title" />
          <xsl:apply-templates select="author" />
     </tr>
</xsl:template>
<!-- book/title와 book/author를 나타낼 방법을 기술 -->
<xsl:template match="title">
     <TD STYLE="font-size:20pt"> <xsl:apply-templates /> </TD>
</xsl:template>

<xsl:template match="author">
     <TD STYLE="font-style:italic"> <xsl:apply-templates /> </TD>
</xsl:template>

</xsl:stylesheet>     