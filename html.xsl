<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Anime List</title>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #000000;
            color: #ffffff;
          }
        </style>
      </head>
      <body>
        <h2>Anime List</h2>
        <table>
          <tr>
            <th>Title</th>
            <th>IMDb Rating</th>
            <th>No. of Episodes</th>
            <th>Release Year</th>
          </tr>
          <xsl:apply-templates select="listofanimes/anime"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="anime">
    <tr>
      <td><xsl:value-of select="Title"/></td>
      <td><xsl:value-of select="Imdb"/></td>
      <td><xsl:value-of select="NoEp"/></td>
      <td><xsl:value-of select="releaseyear"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
