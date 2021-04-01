<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:font-size="http://www.w3.org/1999/xhtml">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="catalog_for_movies/movies/movie">
            Име на филм: <xsl:value-of select="concat(title_movie, '&#10;')"/>
            Времетраене: <xsl:value-of select="concat(duration, '&#10;')"/>
            Жанр: <xsl:value-of select="concat(genre, '&#10;')"/>
            Година на издаване: <xsl:value-of select="concat(year_of_issue, '&#10;')"/>
            Държава: <xsl:value-of select="concat(country, '&#10;')"/>
            Филмово студио: <xsl:value-of select="concat(movie_studioMovie, '&#10;')"/>
            Рейтинг в IMDB: <xsl:value-of select="concat(imdb_rating, '&#10;')"/>
            Резюме: <xsl:value-of select="concat(summary, '&#10;')"/>
            Режисьор: <xsl:value-of select="concat(director, '&#10;')"/>
            Актьори: <xsl:for-each select="actors/actor">
            <xsl:value-of select="text()"/>
            <xsl:if test="position() != last()">
                <xsl:text>, </xsl:text>
            </xsl:if>
        </xsl:for-each>
            <xsl:text>&#10;</xsl:text>
            Бюджет: <xsl:value-of select="concat(budget, '&#10;')"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>