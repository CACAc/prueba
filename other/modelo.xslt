<?xml version="1.0" encoding="UTF-8"?>
<ies nombre="IES Abastos" web="http://www.iesabastos.org/" >
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
    </ciclo>
    <ciclo id="DAW">
      <nombre>Desarrollo de Aplicaciones Web</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </ciclos>
</ies>

<!-- 
    
OUTPUT1:
<?xml version="1.0" encoding="UTF-8"?>
    Administración de Sistemas Informáticos en Red
    Desarrollo de Aplicaciones Web
    Sistemas Microinformáticos y Redes

CODIGO1:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="ciclo">
     <xsl:value-of select="nombre"/>
  </xsl:template>

</xsl:stylesheet>    


OUTPUT2
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Web</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>

CODIGO2
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="ciclos">
    <html>
        <xsl:apply-templates />
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
     <p><xsl:value-of select="nombre"/></p>
  </xsl:template>

</xsl:stylesheet>



OUTPUT3
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Web</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>

CODIGO3
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="ciclos">
    <html>
    <ul>
        <xsl:apply-templates />
    </ul>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
     <li><xsl:value-of select="nombre"/></li>
  </xsl:template>

</xsl:stylesheet>


OUTPUT4
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <table border="1">
    <tr>
      <td>Administración de Sistemas Informáticos en Red</td>
    </tr>
    <tr>
      <td>Desarrollo de Aplicaciones Web</td>
    </tr>
    <tr>
      <td>Sistemas Microinformáticos y Redes</td>
    </tr>
  </table>
</html>



CODIGO4:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="ciclos">
    <html>
    <table border="1">
      <xsl:apply-templates />
    </table>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
    
    
    
    -->