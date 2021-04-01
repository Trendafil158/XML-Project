<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/catalog_for_movies">
        <root>
            <xsl:apply-templates select="movies/movie"/>
        </root>
    </xsl:template>

    <xsl:template match="movies/movie">
        <title_movie lang = "{@lang}">
            <xsl:value-of select="title_movie"/>
        </title_movie>
        <genre>
            <xsl:value-of select="genre"/>
        </genre>
        <year_of_issue century = "{@century}">
            <xsl:value-of select="year_of_issue"/>
        </year_of_issue>
        <country>
            <xsl:value-of select="country"/>
        </country>
        <movie_studioMovie studioID = "{@studioID}">
            <xsl:value-of select="movie_studioMovie"/>
        </movie_studioMovie>
        <director>
            <xsl:value-of select="director"/>
        </director>
    </xsl:template>

    <xsl:template match="movies/movie">
        <xsl:value-of select="concat(title_movie, ' е филм с жанр ', genre, ', излезнал през ', year_of_issue, ' в ', country, '. Произведен е от ', movie_studioMovie, ' и е режисиран от ', director, '.')"/>
    </xsl:template>

</xsl:stylesheet>