<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- С помощта на този xsl файл се визуализира целият xml файл само с най-важната информация за даден филм в таблица,
     като тези филми, които имат рейтинг по-висок от 8.9 ще бъдат оцветени в определен цвят името на филма и съответния
     рейтинг. -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Каталог за филми</h2>
                <table border = "1">
                    <tr bgcolor = "#e97f0b">
                        <th>Заглавие</th>
                        <th>Времетраене</th>
                        <th>Жанр</th>
                        <th>Година на издаване</th>
                        <th>Държава</th>
                        <th>Рейтинг в IMDB</th>
                        <th>Режисьор</th>
                        <th>Актьори</th>
                    </tr>
                    <xsl:for-each select="catalog_for_movies/movies/movie">
                        <tr>
                            <xsl:choose>
                                <xsl:when test="imdb_rating &gt; 8.5">
                                    <td bgcolor = "#e9c195">
                                        <xsl:value-of select="title_movie"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="title_movie"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td><xsl:value-of select="duration"/></td>
                            <td><xsl:value-of select="genre"/></td>
                            <td><xsl:value-of select="year_of_issue"/></td>
                            <td><xsl:value-of select="country"/></td>
                            <xsl:choose>
                                <xsl:when test="imdb_rating &gt; 8.5">
                                    <td bgcolor = "#e9c195">
                                        <xsl:value-of select="imdb_rating"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="imdb_rating"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td><xsl:value-of select="director"/></td>
                            <td>
                                <xsl:for-each select="actors/actor">
                                    <xsl:value-of select="text()"/>
                                    <xsl:if test="position() != last()">
                                        <xsl:text>, </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>