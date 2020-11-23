.class public Linstall/app/XmlDom;
.super Ljava/lang/Object;
.source "XmlDom.java"


# instance fields
.field private root:Linstall/app/Element;


# direct methods
.method public constructor <init>(Linstall/app/Element;)V
    .locals 0
    .param p1, "element"    # Linstall/app/Element;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Linstall/app/Element;

    iput-object v2, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e2":Ljava/io/IOException;
    new-instance v2, Linstall/app/SAXException;

    invoke-direct {v2, v1}, Linstall/app/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 38
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Linstall/app/XmlDom;-><init>([B)V

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/SAXException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Linstall/app/XmlDom;-><init>(Ljava/io/InputStream;)V

    .line 30
    return-void
.end method

.method private static convert(Linstall/app/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlDom;
    .locals 4
    .param p0, "node"    # Linstall/app/Node;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-interface {p0}, Linstall/app/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 102
    check-cast v0, Linstall/app/Element;

    .line 103
    .local v0, "e":Linstall/app/Element;
    if-eqz p1, :cond_2

    invoke-interface {v0}, Linstall/app/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v0, p2}, Linstall/app/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {v0, p2}, Linstall/app/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    :cond_4
    new-instance v1, Linstall/app/XmlDom;

    invoke-direct {v1, v0}, Linstall/app/XmlDom;-><init>(Linstall/app/Element;)V

    goto :goto_0
.end method

.method private static convert(Linstall/app/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "nl"    # Linstall/app/NodeList;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/NodeList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Linstall/app/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Linstall/app/XmlDom;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Linstall/app/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 90
    invoke-interface {p0, v0}, Linstall/app/NodeList;->item(I)Linstall/app/Node;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Linstall/app/XmlDom;->convert(Linstall/app/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlDom;

    move-result-object v2

    .line 91
    .local v2, "xml":Linstall/app/XmlDom;
    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "xml":Linstall/app/XmlDom;
    :cond_1
    return-object v1
.end method

.method private serialize(Linstall/app/Element;I)Ljava/lang/String;
    .locals 8
    .param p1, "e"    # Linstall/app/Element;
    .param p2, "intent"    # I

    .prologue
    .line 136
    const/4 v4, 0x0

    .line 138
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Linstall/app/Xml;->newSerializer()Linstall/app/XmlSerializer;

    move-result-object v2

    .line 139
    .local v2, "s":Linstall/app/XmlSerializer;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 140
    .local v5, "sw":Ljava/io/StringWriter;
    invoke-interface {v2, v5}, Linstall/app/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 141
    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Linstall/app/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, "spaces":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 144
    new-array v0, p2, [C

    .line 145
    .local v0, "chars":[C
    const/16 v6, 0x20

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 146
    new-instance v3, Ljava/lang/String;

    .end local v3    # "spaces":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 148
    .end local v0    # "chars":[C
    .restart local v3    # "spaces":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v2, v7, v3}, Linstall/app/XmlDom;->serialize(Linstall/app/Element;Linstall/app/XmlSerializer;ILjava/lang/String;)V

    .line 149
    invoke-interface {v2}, Linstall/app/XmlSerializer;->endDocument()V

    .line 150
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 154
    .end local v2    # "s":Linstall/app/XmlSerializer;
    .end local v3    # "spaces":Ljava/lang/String;
    .end local v5    # "sw":Ljava/io/StringWriter;
    :goto_0
    return-object v4

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private serialize(Linstall/app/Element;Linstall/app/XmlSerializer;ILjava/lang/String;)V
    .locals 10
    .param p1, "e"    # Linstall/app/Element;
    .param p2, "s"    # Linstall/app/XmlSerializer;
    .param p3, "depth"    # I
    .param p4, "spaces"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    invoke-interface {p1}, Linstall/app/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, p2, p3, p4}, Linstall/app/XmlDom;->writeSpace(Linstall/app/XmlSerializer;ILjava/lang/String;)V

    .line 202
    const-string v7, ""

    invoke-interface {p2, v7, v4}, Linstall/app/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 203
    invoke-interface {p1}, Linstall/app/Element;->hasAttributes()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 204
    invoke-interface {p1}, Linstall/app/Element;->getAttributes()Linstall/app/NamedNodeMap;

    move-result-object v6

    .line 205
    .local v6, "nm":Linstall/app/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Linstall/app/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 206
    invoke-interface {v6, v2}, Linstall/app/NamedNodeMap;->item(I)Linstall/app/Node;

    move-result-object v0

    check-cast v0, Linstall/app/Attr;

    .line 207
    .local v0, "attr":Linstall/app/Attr;
    const-string v7, ""

    invoke-interface {v0}, Linstall/app/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Linstall/app/Attr;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v7, v8, v9}, Linstall/app/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "attr":Linstall/app/Attr;
    .end local v2    # "i":I
    .end local v6    # "nm":Linstall/app/NamedNodeMap;
    :cond_0
    invoke-interface {p1}, Linstall/app/Element;->hasChildNodes()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 211
    invoke-interface {p1}, Linstall/app/Element;->getChildNodes()Linstall/app/NodeList;

    move-result-object v5

    .line 212
    .local v5, "nl":Linstall/app/NodeList;
    const/4 v1, 0x0

    .line 213
    .local v1, "elements":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {v5}, Linstall/app/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 214
    invoke-interface {v5, v2}, Linstall/app/NodeList;->item(I)Linstall/app/Node;

    move-result-object v3

    .line 215
    .local v3, "n":Linstall/app/Node;
    invoke-interface {v3}, Linstall/app/Node;->getNodeType()S

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 213
    .end local v3    # "n":Linstall/app/Node;
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    .restart local v3    # "n":Linstall/app/Node;
    :pswitch_1
    check-cast v3, Linstall/app/Element;

    .end local v3    # "n":Linstall/app/Node;
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v3, p2, v7, p4}, Linstall/app/XmlDom;->serialize(Linstall/app/Element;Linstall/app/XmlSerializer;ILjava/lang/String;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 219
    goto :goto_2

    .line 221
    .restart local v3    # "n":Linstall/app/Node;
    :pswitch_2
    invoke-direct {p0, v3}, Linstall/app/XmlDom;->text(Linstall/app/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Linstall/app/XmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    goto :goto_2

    .line 224
    :pswitch_3
    invoke-direct {p0, v3}, Linstall/app/XmlDom;->text(Linstall/app/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Linstall/app/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    .line 230
    .end local v3    # "n":Linstall/app/Node;
    :cond_1
    if-lez v1, :cond_2

    .line 231
    invoke-direct {p0, p2, p3, p4}, Linstall/app/XmlDom;->writeSpace(Linstall/app/XmlSerializer;ILjava/lang/String;)V

    .line 234
    .end local v1    # "elements":I
    .end local v2    # "i":I
    .end local v5    # "nl":Linstall/app/NodeList;
    :cond_2
    const-string v7, ""

    invoke-interface {p2, v7, v4}, Linstall/app/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 235
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private text(Linstall/app/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # Linstall/app/Node;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "text":Ljava/lang/String;
    invoke-interface {p1}, Linstall/app/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 193
    const-string v0, ""

    .line 195
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 182
    .restart local v0    # "text":Ljava/lang/String;
    :pswitch_0
    invoke-interface {p1}, Linstall/app/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 185
    goto :goto_0

    .line 189
    :pswitch_1
    invoke-interface {p1}, Linstall/app/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeSpace(Linstall/app/XmlSerializer;ILjava/lang/String;)V
    .locals 2
    .param p1, "s"    # Linstall/app/XmlSerializer;
    .param p2, "depth"    # I
    .param p3, "spaces"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    if-eqz p3, :cond_0

    .line 159
    const-string v1, "\n"

    invoke-interface {p1, v1}, Linstall/app/XmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 161
    invoke-interface {p1, p3}, Linstall/app/XmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    invoke-interface {v0, p1}, Linstall/app/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public child(Ljava/lang/String;)Linstall/app/XmlDom;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0, v0}, Linstall/app/XmlDom;->child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlDom;

    move-result-object v0

    return-object v0
.end method

.method public child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlDom;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3}, Linstall/app/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Linstall/app/XmlDom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/XmlDom;

    goto :goto_0
.end method

.method public children(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Linstall/app/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, v0}, Linstall/app/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Linstall/app/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    invoke-interface {v0}, Linstall/app/Element;->getChildNodes()Linstall/app/NodeList;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Linstall/app/XmlDom;->convert(Linstall/app/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Linstall/app/Element;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Linstall/app/XmlDom;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    invoke-interface {v1, p1}, Linstall/app/Element;->getElementsByTagName(Ljava/lang/String;)Linstall/app/NodeList;

    move-result-object v0

    .line 45
    .local v0, "nl":Linstall/app/NodeList;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Linstall/app/NodeList;->getLength()I

    move-result v1

    if-gtz v1, :cond_1

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Linstall/app/XmlDom;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Linstall/app/NodeList;->item(I)Linstall/app/Node;

    move-result-object v1

    check-cast v1, Linstall/app/Element;

    invoke-direct {v2, v1}, Linstall/app/XmlDom;-><init>(Linstall/app/Element;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlDom;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2, p3}, Linstall/app/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Linstall/app/XmlDom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/XmlDom;

    goto :goto_0
.end method

.method public tags(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Linstall/app/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v0}, Linstall/app/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Linstall/app/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    invoke-interface {v0, p1}, Linstall/app/Element;->getElementsByTagName(Ljava/lang/String;)Linstall/app/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Linstall/app/XmlDom;->convert(Linstall/app/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public text()Ljava/lang/String;
    .locals 5

    .prologue
    .line 167
    iget-object v3, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    invoke-interface {v3}, Linstall/app/Element;->getChildNodes()Linstall/app/NodeList;

    move-result-object v1

    .line 168
    .local v1, "list":Linstall/app/NodeList;
    invoke-interface {v1}, Linstall/app/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 169
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Linstall/app/NodeList;->item(I)Linstall/app/Node;

    move-result-object v3

    invoke-interface {v3}, Linstall/app/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 175
    :goto_0
    return-object v3

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Linstall/app/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 173
    invoke-interface {v1, v0}, Linstall/app/NodeList;->item(I)Linstall/app/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Linstall/app/XmlDom;->text(Linstall/app/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Linstall/app/XmlDom;->child(Ljava/lang/String;)Linstall/app/XmlDom;

    move-result-object v0

    .line 117
    .local v0, "dom":Linstall/app/XmlDom;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Linstall/app/XmlDom;->text()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linstall/app/XmlDom;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "intentSpaces"    # I

    .prologue
    .line 132
    iget-object v0, p0, Linstall/app/XmlDom;->root:Linstall/app/Element;

    invoke-direct {p0, v0, p1}, Linstall/app/XmlDom;->serialize(Linstall/app/Element;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
