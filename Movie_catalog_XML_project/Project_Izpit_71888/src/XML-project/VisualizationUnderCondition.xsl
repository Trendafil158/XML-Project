<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- С помощта на този xsl файл се визуализира целият xml файл в таблица само с най-важната информация за даде филм
      при условие, че годината на издаване е по-голяма от 2000, т.е. да изкара всички филми, които са издадени след
       2000. -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Каталог за филми</h2>
                    <xsl:for-each select="catalog_for_movies/movies/movie">
                        <xsl:if test="year_of_issue &gt; 2000">
                            <div class = "main" style = "background: wheat">
                                <p style = "font-size: 20px"><b>Име на филм: </b> <xsl:value-of select="title_movie"/></p>
                                <p><b>Продължителност: </b><xsl:value-of select="duration"/></p>
                                <p><b>Жанр: </b><xsl:value-of select="genre"/></p>
                                <p><b>Година на издаване: </b><xsl:value-of select="year_of_issue"/></p>
                                <p><b>Държава: </b><xsl:value-of select="country"/></p>
                                <p><b>Филмово студио: </b><xsl:value-of select="movie_studioMovie"/></p>
                                <p><b>Рейтинг в IMDB: </b><xsl:value-of select="imdb_rating"/></p>
                                <p><b>Резюме: </b><xsl:value-of select="summary"/></p>
                                <p><b>Рецисьор: </b><xsl:value-of select="director"/></p>
                                <p><b>Актьори: </b><xsl:value-of select="actors/actor"/></p>
                                <p><b>Бюджет: </b><xsl:value-of select="budget"/></p>
                                <br></br>
                            </div>
                        </xsl:if>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>