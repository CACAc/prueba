<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo>
    <nombre>Museo del Prado</nombre>
    <ciudad>Madrid</ciudad>
    <pais>España</pais>
  </museo>
  <museo>
    <nombre>British Museum</nombre>
    <ciudad>Londres</ciudad>
    <pais>Reino Unido</pais>
  </museo>
  <museo>
    <nombre>National Gallery</nombre>
    <ciudad>Londres</ciudad>
    <pais>Reino Unido</pais>
  </museo>
</museos>

<!--
    Path: modelo3.xslt
    Resultado: modelo3.html
    Objetivo: Mostrar los museos de Londres




Ejercicio1
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo nombre="Museo del Prado" ciudad="Madrid" pais="España"/>
  <museo nombre="British Museum" ciudad="Londres" pais="Reino Unido"/>
  <museo nombre="National Gallery" ciudad="Londres" pais="Reino Unido"/>
</museos>



Solucion1:

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  <museos>
    <xsl:apply-templates />
  </museos>
</xsl:template>

<xsl:template match="museo">
  <museo>
    <xsl:attribute name="nombre"><xsl:value-of select="nombre" /></xsl:attribute>
    <xsl:attribute name="ciudad"><xsl:value-of select="ciudad" /></xsl:attribute>
    <xsl:attribute name="pais"><xsl:value-of select="pais" /></xsl:attribute>
  </museo>
</xsl:template>

</xsl:stylesheet>


Ejercicio2:
<?xml version="1.0" encoding="UTF-8"?>
<museos>
  <museo>
    <nombre>Museo del Prado</nombre>
    <ubicacion ciudad="Madrid" pais="España"/>
  </museo>
  <museo>
    <nombre>British Museum</nombre>
    <ubicacion ciudad="Londres" pais="Reino Unido"/>
  </museo>
  <museo>
    <nombre>National Gallery</nombre>
    <ubicacion ciudad="Londres" pais="Reino Unido"/>
  </museo>
</museos>
Solucion2:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  <museos>
    <xsl:apply-templates />
  </museos>
</xsl:template>

<xsl:template match="museo">
  <museo>
    <nombre><xsl:value-of select="nombre" /></nombre>
    <ubicacion>
      <xsl:attribute name="ciudad"><xsl:value-of select="ciudad" /></xsl:attribute>
      <xsl:attribute name="pais"><xsl:value-of select="pais" /></xsl:attribute>
    </ubicacion>
  </museo>
</xsl:template>

</xsl:stylesheet>

Ejercicio3:
<?xml version="1.0" encoding="UTF-8"?>
<ciudades>
  <ciudad>
    <nombre>Madrid</nombre>
    <pais>España</pais>
    <museo>Museo del Prado</museo>
  </ciudad>
  <ciudad>
    <nombre>Londres</nombre>
    <pais>Reino Unido</pais>
    <museo>British Museum</museo>
  </ciudad>
  <ciudad>
    <nombre>Londres</nombre>
    <pais>Reino Unido</pais>
    <museo>National Gallery</museo>
  </ciudad>
</ciudades>
Solucion3:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:strip-space elements="*" />

<xsl:template match="/">
  <ciudades>
    <xsl:apply-templates />
  </ciudades>
</xsl:template>

<xsl:template match="museo">
  <ciudad>
    <nombre><xsl:value-of select="ciudad" /></nombre>
    <pais><xsl:value-of select="pais" /></pais>
    <museo><xsl:value-of select="nombre" /></museo>
  </ciudad>
</xsl:template>

</xsl:stylesheet>

Ejercicio4:
<?xml version="1.0" encoding="UTF-8"?>
<ciudades>
  <ciudad nombre="Madrid" pais="España">
    <museo>Museo del Prado</museo>
  </ciudad>
  <ciudad nombre="Londres" pais="Reino Unido">
    <museo>British Museum</museo>
  </ciudad>
  <ciudad nombre="Londres" pais="Reino Unido">
    <museo>National Gallery</museo>
  </ciudad>
</ciudades>
Solucion4:
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:strip-space elements="*" />

<xsl:template match="/">
  <ciudades>
    <xsl:apply-templates />
  </ciudades>
</xsl:template>

<xsl:template match="museo">
  <ciudad>
    <xsl:attribute name="nombre"><xsl:value-of select="ciudad" /></xsl:attribute>
    <xsl:attribute name="pais"><xsl:value-of select="pais" /></xsl:attribute>
    <museo><xsl:value-of select="nombre" /></museo>
  </ciudad>
</xsl:template>

</xsl:stylesheet>

Ejercicio5:
<?xml version="1.0" encoding="UTF-8"?>
<paises>
  <pais nombre="España">
    <museo museo="Museo del Prado" ciudad="Madrid"/>
  </pais>
  <pais nombre="Reino Unido">
    <museo museo="British Museum" ciudad="Londres"/>
  </pais>
  <pais nombre="Reino Unido">
    <museo museo="National Gallery" ciudad="Londres"/>
  </pais>
</paises>
Solucion5:
Para que el formato fuera como en el enunciado, se tendrían que eliminar las líneas en blanco.

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:strip-space elements="*" />

<xsl:template match="/">
  <paises>
    <xsl:apply-templates />
  </paises>
</xsl:template>

<xsl:template match="museo">
  <pais>
    <xsl:attribute name="nombre"><xsl:value-of select="pais" /></xsl:attribute>
    <museo>
        <xsl:attribute name="museo"><xsl:value-of select="nombre" /></xsl:attribute>
        <xsl:attribute name="ciudad"><xsl:value-of select="ciudad" /></xsl:attribute>
    </museo>
  </pais>
</xsl:template>

</xsl:stylesheet>



-->
```