<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:msxsl="urn:schemas-microsoft-com:xslt"
                exclude-result-prefixes="msxsl">

    <xsl:template match="data">

        <html lang="en">

            <head>
                <meta charset="UTF-8" />
                <link rel="preconnect" href="https://fonts.googleapis.com" />
                <link rel="preconnect" href="https://fonts.gstatic.com" />
                <link href="https://fonts.googleapis.com/css2?family=Carlito:wght@400;700" rel="stylesheet" />
                <meta name="viewport"
                      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
                <meta http-equiv="X-UA-Compatible" content="ie=edge" />
                <link href="../styles/all.css" rel="stylesheet" />
                <link href="../styles/catalog.css" rel="stylesheet" />
                <title>Nine</title>
            </head>

            <body>
                <div class="rout">
                    <div class="navbar">
                        <div class="logo">
                            <a href="../index.html">
                                <img height="50px"  src="../img/logo.svg" alt="" />
                            </a>
                        </div>

                        <div class="menu">
                            <div class="opt">
                                <a href="new.html">Новинки</a>
                            </div>
                            <div class="opt">
                                <a href="sales.html">О нас</a>
                            </div>
                            <div class="opt">
                                <a href="#">Каталог</a>
                            </div>
                        </div>

                        <div  class="nothing"></div>
                    </div>
                </div>

                <section class="info">
                    <div class="container">
                        <xsl:apply-templates select="sneakers" />
                    </div>
                </section>

                <footer class="footer">
                    <div>
                        Nine – одна из самых больших компаний по производству и продаже спортивной одежды и обуви. Компания была основана в 1964 году Серёгой с Лошицы под названием Dark Beer Sports. Изначально Серёга занимался закупкой спортивной обуви у кентов и отжиманием мелочи. В 1971 году компания выпустила свой первый продукт – кроссовки на «вафельной» подошве. В 1972 году Nine дебютировала на высшем уровне, экипировав спортсменов ФК "МТЗ".
                        Примечательно, что компания Nine была переименована в честь девушки серёги Нины. В Америке бренд называется "Найни", но в России за брендом закрепилось название "Найн".
                        На сегодняшний день Nine выпускает множество различных товаров для футбола, баскетбола, хоккея, бейсбола, гольфа, американского футбола, тенниса и многих-многих других видов спорта. Nine часто выступает в качестве спонсора на соревнованиях и спортивных мероприятиях.
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="sneakers">
        <xsl:apply-templates select="product" />
    </xsl:template>

    <xsl:template match="product">
        <div class="sneaker" id="sneaker">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="href"/>
                </xsl:attribute>
            </img>
            <div class="label">
                <xsl:value-of select="name"/>
            </div>
            <div class="text">
                <xsl:value-of select="text"/>
            </div>
            <div class="cost">
                Цена: <xsl:value-of select="cost"/> BYN
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
