<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- С помощта на този xsl файл се визуализира целият xml файл с цялата налична информация в таблица. -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Каталог за филми</h2>
                <table border="1">
                    <tr bgcolor = "#0ea8ec">
                        <th>Основаване</th>
                        <th>Седалище</th>
                        <th>Продукти</th>
                        <th>Уебсайт</th>
                        <th>Кратко описание</th>
                        <th>Приходи</th>
                        <th>Основател</th>
                        <th>Собственик</th>
                        <th>Брой служители</th>
                    </tr>
                    <xsl:for-each select="catalog_for_movies/movie_studios/movie_studio">
                        <tr bgcolor="#aed5e7">
                            <td><xsl:value-of select="foundation"/></td>
                            <td><xsl:value-of select="headquarters"/></td>
                            <td><xsl:value-of select="products"/></td>
                            <td><xsl:value-of select="website"/></td>
                            <td><xsl:value-of select="short_description"/></td>
                            <td><xsl:value-of select="annual_income"/></td>
                            <td><xsl:value-of select="founder"/></td>
                            <td><xsl:value-of select="owner"/></td>
                            <td><xsl:value-of select="number_employees"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <table border = "1">
                    <tr bgcolor = "#0ea8ec">
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
                    <xsl:for-each select="catalog_for_movies/movies/movie">
                        <tr bgcolor="#aed5e7">
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