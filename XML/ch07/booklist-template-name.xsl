<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <!-- 시작 템플릿 룰 -->
<xsl:template match="/">
<html>
     <body>
          <h2><font color="blue">책 목 록</font></h2>
          <table border="1" cellspacing="0" width="80%">
               <tr> <th>title</th> <th>author</th> </tr>
<!-- name 속성을 갖는 템플릿 룰 적용 (Header용) -->
<xsl:call-template name="SystemName"/>
<br/><hr align="left" width="80%"/>
               <!-- book 템플릿 룰 적용 -->
               <xsl:apply-templates 
               select="/booklist/book[@kind='컴퓨터']"/>
          </table>

<br/><hr align="left" width="80%"/>
<!-- name 속성을 갖는 템플릿 룰 적용 -->
<xsl:call-template name="SystemName"/>
     </body>
</html>
</xsl:template>
<!-- book 템플릿 룰 -->
<xsl:template match="book">
     <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="author"/></td>
     </tr>
</xsl:template>
<!-- name 속성을 갖는 템플릿 룰 (Footer용) -->
<xsl:template name="SystemName">
     <font color="blue">서적 조회 시스템</font>
</xsl:template>
</xsl:stylesheet>