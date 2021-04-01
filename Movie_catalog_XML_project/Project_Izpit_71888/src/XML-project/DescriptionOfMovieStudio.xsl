<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/catalog_for_movies">
        <root>
            <xsl:apply-templates select="movie_studios/movie_studio"/>
        </root>
    </xsl:template>

    <xsl:template match="movie_studios/movie_studio">
        <short_description>
            <xsl:value-of select="short_description"/>
        </short_description>
        <foundation century = "{@century}">
            <xsl:value-of select="foundation"/>
        </foundation>
        <headquarters>
            <xsl:value-of select="headquarters"/>
        </headquarters>
        <products>
            <xsl:value-of select="products"/>
        </products>
        <website>
            <xsl:value-of select="website"/>
        </website>
    </xsl:template>

    <xsl:template match="movie_studios/movie_studio">
        <xsl:value-of select="concat(short_description, '. Студиото е създадено през ', foundation, '. Седалището е ', headquarters, '. Продуктите, които произвежда студиото са ', products, '. Името на уебсайта е ', website, '.')"/>
    </xsl:template>

</xsl:stylesheet>