<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- С помощта на този xsl файл се визуализира целият xml файл само с най-важната информация за даден филм в таблица, като
     ще изкараме само тези филми, режисирани от режисьора Кристофър Нолан и ще сортираме резултата по име на филм. -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Каталог за филми</h2>
                <table border = "1">
                    <tr bgcolor = "#d43636">
                        <th>Заглавие</th>
                        <th>Времетраене</th>
                        <th>Жанр</th>
                        <th>Година на издаване</th>
                        <th>Държава</th>
                        <th>Филмово студио</th>
                        <th>Рейтинг в IMDB</th>
                        <th>Резюме</th>
                        <th>Режисьор</th>
                        <th>Актьори</th>
                        <th>Бюджет</th>
                    </tr>
                    <xsl:for-each select="catalog_for_movies/movies/movie[director = 'Кристофър Нолан']">
                        <xsl:sort select="title_movie"/>
                        <tr bgcolor="#f4c6ae">
                            <td><xsl:value-of select="title_movie"/></td>
                            <td><xsl:value-of select="duration"/></td>
                            <td><xsl:value-of select="genre"/></td>
                            <td><xsl:value-of select="year_of_issue"/></td>
                            <td><xsl:value-of select="country"/></td>
                            <td><xsl:value-of select="movie_studioMovie"/></td>
                            <td><xsl:value-of select="imdb_rating"/></td>
                            <td><xsl:value-of select="summary"/></td>
                            <td><xsl:value-of select="director"/></td>
                            <td>
                                <xsl:for-each select="actors/actor">
                                    <xsl:value-of select="text()"/>
                                    <xsl:if test="position() != last()">
                                        <xsl:text>, </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="budget"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>