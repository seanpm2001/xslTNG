<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                 exclude-result-prefixes="#all"
                 version="3.0">
   <!-- the tested stylesheet -->
   <xsl:import href="file:/home/runner/work/xslTNG/xslTNG/build/xspec-xslt/xspec-chapters-number-from-set-driver.xsl"/>
   <!-- XSpec library modules providing tools -->
   <xsl:include href="file:/home/runner/work/xslTNG/xslTNG/build/xspec-2.2.4/src/common/runtime-utils.xsl"/>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}stylesheet-uri"
                  as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/runner/work/xslTNG/xslTNG/build/xspec-xslt/xspec-chapters-number-from-set-driver.xsl</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}xspec-uri"
                  as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/runner/work/xslTNG/xslTNG/build/xspec/chapters-number-from-set.xspec</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}is-external"
                  as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                  select="false()"/>
   <xsl:variable xmlns:xs="http://www.w3.org/2001/XMLSchema"
                  name="Q{urn:x-xspec:compile:impl}thread-aware"
                  as="xs:boolean"
                  select="(system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name') eq 'SAXON') and starts-with(system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version'), 'EE ')"
                  static="yes"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}logical-processor-count"
                  as="Q{http://www.w3.org/2001/XMLSchema}integer"
                  use-when="$Q{urn:x-xspec:compile:impl}thread-aware"
                  select="Q{java:java.lang.Runtime}getRuntime() =&gt; Q{java:java.lang.Runtime}availableProcessors()"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}thread-count"
                  as="Q{http://www.w3.org/2001/XMLSchema}integer"
                  select="1"
                  use-when="$Q{urn:x-xspec:compile:impl}thread-aware =&gt; not()"/>
   <!-- the main template to run the suite -->
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}main"
                  as="empty-sequence()">
      <xsl:context-item use="absent"/>
      <!-- info message -->
      <xsl:message>
         <xsl:text>Testing with </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name')"/>
         <xsl:text> </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version')"/>
      </xsl:message>
      <!-- set up the result document (the report) -->
      <xsl:result-document format="Q{{http://www.jenitennison.com/xslt/xspec}}xml-report-serialization-parameters">
         <xsl:element name="report" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:attribute name="xspec" namespace="">file:/home/runner/work/xslTNG/xslTNG/build/xspec/chapters-number-from-set.xspec</xsl:attribute>
            <xsl:attribute name="stylesheet" namespace="">file:/home/runner/work/xslTNG/xslTNG/build/xspec-xslt/xspec-chapters-number-from-set-driver.xsl</xsl:attribute>
            <xsl:attribute name="date" namespace="" select="current-dateTime()"/>
            <!-- invoke each compiled top-level x:scenario -->
            <xsl:for-each select="1 to 1">
               <xsl:choose>
                  <xsl:when test=". eq 1">
                     <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
         </xsl:element>
      </xsl:result-document>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"
                  as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>When converting chapters-numbered-from-set...</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/runner/work/xslTNG/xslTNG/build/xspec/chapters-number-from-set.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>When converting chapters-numbered-from-set...</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="href" namespace="">file:/home/runner/work/xslTNG/xslTNG/src/test/resources/xml/chapters-numbered-from.xml</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d54e0-doc"
                        as="document-node()"
                        select="doc('file:/home/runner/work/xslTNG/xslTNG/src/test/resources/xml/chapters-numbered-from.xml')"/>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d54e0"
                        select="$Q{urn:x-xspec:compile:impl}context-d54e0-doc ! ( . )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                        as="item()*"
                        select="$Q{urn:x-xspec:compile:impl}context-d54e0"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{urn:x-xspec:compile:impl}context-d54e0"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                             select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                             select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                             select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect1"
                  as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                  as="item()*"
                  required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                  as="item()*"
                  required="yes"/>
      <xsl:message>expect chapters numbered from sets</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d52e4-doc"
                     as="document-node()"
                     select="doc('file:/home/runner/work/xslTNG/xslTNG/src/test/resources/expected/chapters-numbered-from-set.html')"/>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d52e4"
                     select="$Q{urn:x-xspec:compile:impl}expect-d52e4-doc ! ( . )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                     as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                     select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d52e4, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                         namespace=""
                         select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>expect chapters numbered from sets</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d52e4"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
</xsl:stylesheet>
