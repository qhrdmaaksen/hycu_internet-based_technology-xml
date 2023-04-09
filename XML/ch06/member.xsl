<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<H2 align="center">왕실 회원 정보</H2>      
<TABLE border="1"  align="center" width="80%">
<TR>
<TH>NO.</TH> <TH>회원번호</TH> <TH>성명</TH> <TH>전화번호</TH> <TH>월급</TH>
</TR>
<xsl:for-each select="/child::members/child::member">
<TR>
<TD align="center"><xsl:value-of select="position()"/> / <xsl:value-of select="last()"/></TD>
<TD align="center"><xsl:value-of select="@no"/></TD>
<TD align="center"><xsl:value-of select="name"/></TD>
<TD align="center"><xsl:value-of select="translate(phone_no,'-','+')"/></TD>
<TD align="right"><xsl:value-of select="salary"/>원</TD>
</TR>
</xsl:for-each> 
<TR>
<TD></TD><TD></TD><TD></TD>
<TD align="right">총인원 : <xsl:value-of select="count(members/member)"/>명</TD>
<TD align="right">월급합계 : <xsl:value-of select="sum(members/member/salary) div 10000"/>만원 </TD>
</TR>
</TABLE>
<p/>
1) no속성이 P02인 회원 : <xsl:value-of select="/members/member[@no='P02']/name"/> <br/>
2) P02인 회원의 following-sibling 회원 : <xsl:value-of select="/members/member[@no='P02']/following-sibling::member/name"/> <br/>
3) P02인 회원의 preceding-sibling 회원 : <xsl:value-of select="//member[@no='P02']/preceding-sibling::member/name"/> <br/>
4) parent 사용하여 회원찾기 : <xsl:value-of select="//member[@no='P02']/name/parent::member/preceding-sibling::member[1]/name"/> <br/>
5) ancestor 사용하여 회원찾기  : <xsl:value-of select="//member[@no='P02']/name/ancestor::member/following-sibling::member[1]/name"/> <br/>
6) attribute::parent-no가 있는 회원수  : <xsl:value-of select="count(//member[attribute::parent-no])"/> <br/>
7) substring 이용해 3번째 부터 두자 추출  : <xsl:value-of select="substring(//member[@no='P02']/name,3,2)"/> <br/>
0) <xsl:value-of select="substring-before('Java-XML-Web', 'XML')"/><br/>
1) <xsl:value-of select="substring('1234567890', 3, 5)"/> <br/>
<xsl:if test="starts-with('XML', 'X')">
<xsl:text> Right!! </xsl:text>
</xsl:if>

<xsl:if test="contains('XML원리', 'XML')">
<xsl:text> 맞습니다. </xsl:text>
</xsl:if>

<xsl:value-of select="not(3 > 5)" /> 
<xsl:value-of select="normalize-space(' XML  and  Java ')" /> 
</xsl:template>
</xsl:stylesheet>