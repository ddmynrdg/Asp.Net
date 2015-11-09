<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" />
    <xsl:template match="/">
      <html>
        <body>
          <xsl:apply-templates />
        </body>
      </html>
      </xsl:template>
        <xsl:template match="urunler">
        <xsl:apply-templates />
        </xsl:template>
        <xsl:template match="barkod">
        <b>Ürün Barkodu: </b>
        <xsl:apply-templates />
        <br />
          </xsl:template>
          <xsl:template match ="ad">
            <b>Adı :</b>
            <xsl:apply-templates />
            <br />
            </xsl:template>
            <xsl:template match="kategori">
            <br>Kategori :</br>
            <xsl:apply-templates />
            <br />
          </xsl:template>
          <xsl:template match ="adet">
            <b>Adet :</b>
          <xsl:apply-templates />
            <br />       
         <hr/>
        </xsl:template>
   </xsl:stylesheet>
