<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<link rel="stylesheet" href="style.css"/>
			<title><xsl:value-of select="/msglist/@name"/></title>
		</head>
		<body>
			<header>
				<center><h1><xsl:value-of select="/msglist/@name"/></h1></center>
			</header>
			<aside>
				<h2>Description</h2>
				<p><xsl:value-of select="/msglist/@description"/></p>
			</aside>
			<main>
				<xsl:for-each select="msglist/message">
					<div class="msg">
						<p>&lt;<a href="mailto:{mail}"><xsl:value-of select="mail"/></a>&gt;</p>
						<h3><xsl:value-of select="title"/></h3>
						<p><xsl:value-of select="text"/></p>
						<i style="display: block;text-align: right;">Posted on <xsl:value-of select="date"/></i>
					</div>
				</xsl:for-each>
			</main>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>