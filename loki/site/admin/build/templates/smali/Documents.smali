.class public Linstall/app/Documents;
.super Linstall/app/Nodes;
.source "Documents.java"


# instance fields
.field encoding:Ljava/lang/String;

.field protected rootIndex:I

.field standalone:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/Nodes;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Linstall/app/Documents;->rootIndex:I

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 11
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 12
    iput p1, p0, Linstall/app/Documents;->rootIndex:I

    .line 16
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Linstall/app/Nodes;->addChild(IILjava/lang/Object;)V

    .line 17
    return-void

    .line 13
    :cond_1
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    if-lt v0, p1, :cond_0

    .line 14
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linstall/app/Documents;->rootIndex:I

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Linstall/app/Documents;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "#document"

    return-object v0
.end method

.method public getRootElement()Linstall/app/Elementt;
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    invoke-virtual {p0, v0}, Linstall/app/Documents;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Elementt;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Documents has no root element!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStandalone()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Linstall/app/Documents;->standalone:Ljava/lang/Boolean;

    return-object v0
.end method

.method public parse(Linstall/app/XmlPullParser;)V
    .locals 0
    .param p1, "xmlPullParser"    # Linstall/app/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public removeChild(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 43
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    if-ne p1, v0, :cond_1

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Linstall/app/Documents;->rootIndex:I

    .line 48
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Linstall/app/Nodes;->removeChild(I)V

    .line 49
    return-void

    .line 45
    :cond_1
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    if-ge p1, v0, :cond_0

    .line 46
    iget v0, p0, Linstall/app/Documents;->rootIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linstall/app/Documents;->rootIndex:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Linstall/app/Documents;->encoding:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setStandalone(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 56
    iput-object p1, p0, Linstall/app/Documents;->standalone:Ljava/lang/Boolean;

    .line 57
    return-void
.end method

.method public write(Linstall/app/XmlSerializer;)V
    .locals 2
    .param p1, "xmlSerializer"    # Linstall/app/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Linstall/app/Documents;->encoding:Ljava/lang/String;

    iget-object v1, p0, Linstall/app/Documents;->standalone:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Linstall/app/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    invoke-virtual {p0, p1}, Linstall/app/Documents;->writeChildren(Linstall/app/XmlSerializer;)V

    .line 62
    invoke-interface {p1}, Linstall/app/XmlSerializer;->endDocument()V

    .line 63
    return-void
.end method
