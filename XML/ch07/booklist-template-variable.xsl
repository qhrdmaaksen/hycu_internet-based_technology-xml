<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 글로벌 변수 선언 -->
<xsl:variable name="vList" select="'책목록'"/>
<xsl:variable name="vKind">컴퓨터</xsl:variable>
<xsl:variable name="vSize" select="3"/>

<!-- 시작 템플릿 룰 -->
<xsl:template match="/">
<!-- 로컬 변수 선언 -->
<xsl:variable name="vHeading" select="'- '"/>
<html>
<body>
<!-- 컨텐트 내용으로 사용 -->
<h1> <xsl:value-of select="$vList"/> </h1>
<!-- XPath 표현식에서 사용 -->
<xsl:for-each select="//book[@kind=$vKind]">
<!-- 속성값으로 사용 -->
<font size="{$vSize}">
     <xsl:value-of select="$vHeading"/><xsl:value-of select="title"/>
</font>
<br/>
</xsl:for-each>
<br/><br/>
</body>
</html>
</xsl:template>
</xsl:stylesheet>