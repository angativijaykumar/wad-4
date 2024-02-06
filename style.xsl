<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Anime List</title>
        <style>
          table {
            border-collapse: collapse;
            font-family:Arial, Helvetica, sans-serif;
            margin: auto;
            width: 100%;
          }
          h1{
            text-align: center;
          }
          th, td {
            border: 1px solid;
            padding: 6px;
            text-align: left;
            background-color:  #fbf8be;
            color: #201e20;
          }
          th {
            background-color:  darkkhaki;
            color:black;
            text-align: center;
          }
        </style>
      </head>
      <body bgcolor="#234e70">
        <h1>LIST OF ANIMES</h1>
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
