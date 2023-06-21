<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>IES Abastos</nombre>
  <web>http://www.iesabastos.org</web>
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
<html>
  <h1>IES Abastos</h1>
  <p>Administración de Sistemas Informáticos en Red</p>
  <p>Desarrollo de Aplicaciones Web</p>
  <p>Sistemas Microinformáticos y Redes</p>
</html>




CDOGIO1:

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />

  <xsl:template match="ies">
    <html>
      <xsl:apply-templates />
    </html>
  </xsl:template>

  <xsl:template match="nombre">
      <h1><xsl:value-of select="." /></h1>
  </xsl:template>

  <xsl:template match="web">
  </xsl:template>

  <xsl:template match="ciclo">
    <p><xsl:value-of select="nombre" /></p>
  </xsl:template>

</xsl:stylesheet>




OUTPUT2:
<?xml version="1.0" encoding="UTF-8"?>
<html>
 <h1>Ciclos formativos del IES Abastos</h1>
  <ul>
    <li>ASIR<br/>Administración de Sistemas Informáticos en Red, Ciclo Formativo de Grado Superior creado en 2009</li>
    <li>DAW<br/>Desarrollo de Aplicaciones Web, Ciclo Formativo de Grado Superior creado en 2010</li>
    <li>SMR<br/>Sistemas Microinformáticos y Redes, Ciclo Formativo de Grado Medio creado en 2008</li>
  </ul>
</html>




CODIGO2:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />

  <xsl:template match="ies">
    <html>
      <xsl:apply-templates />
    </html>
  </xsl:template>

  <xsl:template match="nombre">
      <h1>Ciclos formativos del <xsl:value-of select="." /></h1>
  </xsl:template>

  <xsl:template match="web">
  </xsl:template>

  <xsl:template match="ciclos">
    <ul>
    <xsl:apply-templates />
    </ul>
  </xsl:template>

  <xsl:template match="ciclo">
    <li><xsl:value-of select="@id" /><br />
    <xsl:value-of select="nombre" />, Ciclo Formativo de Grado <xsl:value-of select="grado" />
    creado en <xsl:value-of select="decretoTitulo/@año" /></li>
  </xsl:template>

</xsl:stylesheet>



OUTPUT3:
<?xml version="1.0" encoding="UTF-8"?>
<html>
  <h1>IES Abastos</h1>
  <table border="1">
    <tr>
      <th>Nombre del ciclo</th>
      <th>Grado</th>
      <th>Año del título</th>
    </tr>
    <tr>
      <td>Administración de Sistemas Informáticos en Red</td>
      <td>Superior</td>
      <td>2009</td>
    </tr>
    <tr>
      <td>Desarrollo de Aplicaciones Web</td>
      <td>Superior</td>
      <td>2010</td>
    </tr>
    <tr>
      <td>Sistemas Microinformáticos y Redes</td>
      <td>Medio</td>
      <td>2008</td>
    </tr>
  </table>
</html>



CODIGO3:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />

  <xsl:template match="ies">
    <html>
      <xsl:apply-templates />
    </html>
  </xsl:template>

  <xsl:template match="nombre">
    <h1><xsl:value-of select="." /></h1>
  </xsl:template>

  <xsl:template match="web">
  </xsl:template>

  <xsl:template match="ciclos">
   <table border="1">
    <tr>
      <th>Nombre del ciclo</th>
      <th>Grado</th>
      <th>Año del título</th>
    </tr>
     <xsl:apply-templates />
    </table>
  </xsl:template>

  <xsl:template match="ciclo">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="grado"/></td>
      <td><xsl:value-of select="decretoTitulo/@año"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
    
    
    
    
    
    
    
    
    -->