<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
            <body>
                <h1>Employee details</h1>
	                <table border="1">
	                    <tr>
	                        <th>name</th>
	                        <th>address</th>
	                        <th>phoneno</th>
	                        <th>employeeid</th>
	                    </tr>
	         <xsl:for-each select="language-list/language">
	                    <tr>
	                        <td><xsl:value-of select="name"/></td>
	                        <td><xsl:value-of select="address"/></td>
	                        <td><xsl:value-of select="phoneno"/></td>
	                        <td><xsl:value-of select="employeeid"/></td>
	                    </tr>
	                 </xsl:for-each>
	                </table>
	            </body>
	        </html>
	</xsl:template>
</xsl:stylesheet>