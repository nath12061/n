.class public Linstall/app/Elementt;
.super Linstall/app/Nodes;
.source "Elementt.java"


# instance fields
.field protected attributes:Ljava/util/Vector;

.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected parent:Linstall/app/Nodes;

.field protected prefixes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/Nodes;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    .line 15
    iput-object v0, p0, Linstall/app/Elementt;->children:Ljava/util/Vector;

    .line 16
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Elementt;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Linstall/app/Elementt;->parent:Linstall/app/Nodes;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Linstall/app/Nodes;->createElement(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Elementt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Linstall/app/Elementt;->parent:Linstall/app/Nodes;

    invoke-virtual {v0, p1, p2}, Linstall/app/Nodes;->createElement(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Elementt;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 27
    iget-object v0, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 31
    iget-object v0, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 35
    iget-object v0, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Linstall/app/Elementt;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 41
    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    :goto_1
    return-object v1

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Linstall/app/Elementt;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Linstall/app/Elementt;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 62
    iget-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 66
    iget-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0}, Linstall/app/Elementt;->getNamespaceCount()I

    move-result v1

    .line 71
    .local v1, "namespaceCount":I
    const/4 v0, 0x0

    .line 72
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 73
    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    :goto_1
    return-object v2

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, p0, Linstall/app/Elementt;->parent:Linstall/app/Nodes;

    instance-of v2, v2, Linstall/app/Elementt;

    if-eqz v2, :cond_3

    iget-object v2, p0, Linstall/app/Elementt;->parent:Linstall/app/Nodes;

    check-cast v2, Linstall/app/Elementt;

    invoke-virtual {v2, p1}, Linstall/app/Elementt;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParent()Linstall/app/Nodes;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Linstall/app/Elementt;->parent:Linstall/app/Nodes;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v2, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    const-string v2, ""

    .line 99
    :cond_1
    iget-object v2, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 100
    .local v0, "size":I
    if-ltz v0, :cond_2

    .line 101
    iget-object v2, p0, Linstall/app/Elementt;->attributes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 105
    :cond_2
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Linstall/app/Elementt;->name:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use \"\" for empty namespace"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Linstall/app/Elementt;->namespace:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected setParent(Linstall/app/Nodes;)V
    .locals 0
    .param p1, "node"    # Linstall/app/Nodes;

    .prologue
    .line 120
    iput-object p1, p0, Linstall/app/Elementt;->parent:Linstall/app/Nodes;

    .line 121
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    .line 127
    :cond_0
    iget-object v0, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public write(Linstall/app/XmlSerializer;)V
    .locals 5
    .param p1, "xmlSerializer"    # Linstall/app/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "i2":I
    iget-object v2, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Linstall/app/Elementt;->prefixes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Linstall/app/Elementt;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Linstall/app/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Linstall/app/Elementt;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Linstall/app/Elementt;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Linstall/app/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 139
    invoke-virtual {p0}, Linstall/app/Elementt;->getAttributeCount()I

    move-result v0

    .line 140
    .restart local v0    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 141
    invoke-virtual {p0, v1}, Linstall/app/Elementt;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Linstall/app/Elementt;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Linstall/app/Elementt;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Linstall/app/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Linstall/app/Elementt;->writeChildren(Linstall/app/XmlSerializer;)V

    .line 145
    invoke-virtual {p0}, Linstall/app/Elementt;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Linstall/app/Elementt;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Linstall/app/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 146
    return-void
.end method
