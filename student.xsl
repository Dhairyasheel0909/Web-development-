<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Student Details</title>

    <style>
        table{
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            font-family: Arial;
        }

        th{
            background-color: darkblue;
            color: white;
            padding: 10px;
            border: 2px solid black;
        }

        td{
            padding: 10px;
            border: 2px solid black;
            text-align: center;
        }

        .row1{
            background-color: #ffcccc;
        }

        .row2{
            background-color: #ccffcc;
        }

        .row3{
            background-color: #ccccff;
        }

        .row4{
            background-color: #fff0b3;
        }

        .row5{
            background-color: #ffd9b3;
        }

        h2{
            text-align: center;
            color: darkred;
        }
    </style>

</head>

<body>

<h2>Student Information Table</h2>

<table>

<tr>
    <th>Roll No</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Nickname</th>
    <th>Marks</th>
</tr>

<xsl:for-each select="class/student">

<tr>
    
    <xsl:attribute name="class">
        <xsl:choose>
            <xsl:when test="position()=1">row1</xsl:when>
            <xsl:when test="position()=2">row2</xsl:when>
            <xsl:when test="position()=3">row3</xsl:when>
            <xsl:when test="position()=4">row4</xsl:when>
            <xsl:otherwise>row5</xsl:otherwise>
        </xsl:choose>
    </xsl:attribute>

    <td>
        <xsl:value-of select="@rollno"/>
    </td>

    <td>
        <xsl:value-of select="firstname"/>
    </td>

    <td>
        <xsl:value-of select="lastname"/>
    </td>

    <td>
        <xsl:value-of select="nickname"/>
    </td>

    <td>
        <xsl:value-of select="marks"/>
    </td>

</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>