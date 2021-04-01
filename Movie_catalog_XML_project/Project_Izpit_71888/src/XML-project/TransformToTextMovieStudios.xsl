<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <xsl:for-each select="catalog_for_movies/movie_studios/movie_studio">
            Филмово студио: <xsl:value-of select="short_description"/>
            Основаване: <xsl:value-of select="concat(foundation, '&#10;')"/>
            Седалище: <xsl:value-of select="concat(headquarters, '&#10;')"/>
            Продукти: <xsl:value-of select="concat(products, '&#10;')"/>
            Уебсайт: <xsl:value-of select="concat(website, '&#10;')"/>
            Основател: <xsl:value-of select="concat(founder, '&#10;')"/>
            Приходи: <xsl:value-of select="concat(annual_income, '&#10;')"/>
            Брой служители: <xsl:value-of select="concat(number_employees, '&#10;')"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>