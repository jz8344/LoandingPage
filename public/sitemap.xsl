<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="es">
      <head>
        <title>Sitemap XML | Mapa del Sitio</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style>
          :root {
            --bg-color: #0f172a;
            --card-bg: rgba(30, 41, 59, 0.7);
            --border-color: rgba(255, 255, 255, 0.1);
            --primary: #38bdf8;
            --primary-glow: rgba(56, 189, 248, 0.25);
            --text-main: #f8fafc;
            --text-muted: #94a3b8;
            --accent: #818cf8;
          }
          * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
          }
          body {
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            background-color: var(--bg-color);
            background-image: 
              radial-gradient(at 0% 0%, rgba(56, 189, 248, 0.12) 0px, transparent 50%),
              radial-gradient(at 100% 100%, rgba(129, 140, 248, 0.12) 0px, transparent 50%);
            color: var(--text-main);
            min-height: 100vh;
            padding: 3rem 1.5rem;
            display: flex;
            justify-content: center;
          }
          .container {
            max-width: 900px;
            width: 100%;
          }
          .header {
            margin-bottom: 2.5rem;
            text-align: center;
          }
          .header h1 {
            font-size: 2.5rem;
            font-weight: 800;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 0.75rem;
          }
          .header p {
            color: var(--text-muted);
            font-size: 1rem;
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.6;
          }
          .badge {
            display: inline-block;
            background: rgba(56, 189, 248, 0.1);
            border: 1px solid rgba(56, 189, 248, 0.2);
            color: var(--primary);
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.85rem;
            font-weight: 600;
            margin-top: 1rem;
          }
          .card {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid var(--border-color);
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.3), 0 8px 10px -6px rgba(0, 0, 0, 0.3);
          }
          table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
          }
          th {
            background: rgba(15, 23, 42, 0.6);
            padding: 1rem 1.5rem;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            color: var(--text-muted);
            border-bottom: 1px solid var(--border-color);
          }
          td {
            padding: 1.25rem 1.5rem;
            border-bottom: 1px solid var(--border-color);
            font-size: 0.95rem;
          }
          tr:last-child td {
            border-bottom: none;
          }
          tr:hover td {
            background: rgba(255, 255, 255, 0.03);
          }
          a {
            color: var(--primary);
            text-decoration: none;
            word-break: break-all;
            transition: color 0.2s ease;
          }
          a:hover {
            color: var(--accent);
            text-decoration: underline;
          }
          .priority-pill {
            display: inline-flex;
            align-items: center;
            padding: 0.25rem 0.6rem;
            border-radius: 6px;
            font-weight: 700;
            font-size: 0.8rem;
            background: rgba(56, 189, 248, 0.15);
            color: var(--primary);
          }
          .footer {
            margin-top: 2rem;
            text-align: center;
            color: var(--text-muted);
            font-size: 0.85rem;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <div class="header">
            <h1>Mapa del Sitio (XML Sitemap)</h1>
            <p>Este es un archivo XML estructurado destinado a los motores de búsqueda como Google o Bing para indexar el sitio correctamente.</p>
            <div class="badge">
              Total URLs: <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
            </div>
          </div>
          <div class="card">
            <table>
              <thead>
                <tr>
                  <th>#</th>
                  <th>URL (Localización)</th>
                  <th>Frecuencia de cambio</th>
                  <th>Prioridad</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="sitemap:urlset/sitemap:url">
                  <tr>
                    <td><xsl:value-of select="position()"/></td>
                    <td>
                      <a href="{sitemap:loc}">
                        <xsl:value-of select="sitemap:loc"/>
                      </a>
                    </td>
                    <td>
                      <xsl:choose>
                        <xsl:when test="sitemap:changefreq">
                          <xsl:value-of select="sitemap:changefreq"/>
                        </xsl:when>
                        <xsl:otherwise>-</xsl:otherwise>
                      </xsl:choose>
                    </td>
                    <td>
                      <xsl:choose>
                        <xsl:when test="sitemap:priority">
                          <span class="priority-pill">
                            <xsl:value-of select="sitemap:priority"/>
                          </span>
                        </xsl:when>
                        <xsl:otherwise>-</xsl:otherwise>
                      </xsl:choose>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>
          <div class="footer">
            Generado para indexación web • Formato estándar Sitemaps.org
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
