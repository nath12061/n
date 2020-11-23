.class public Linstall/app/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# static fields
.field public static final CDSECT:I = 0x5

.field public static final COMMENT:I = 0x9

.field public static final DOCDECL:I = 0xa

.field public static final DOCUMENT:I = 0x0

.field public static final ELEMENT:I = 0x2

.field public static final ENTITY_REF:I = 0x6

.field public static final IGNORABLE_WHITESPACE:I = 0x7

.field public static final PROCESSING_INSTRUCTION:I = 0x8

.field public static final TEXT:I = 0x4


# instance fields
.field protected children:Ljava/util/Vector;

.field protected types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 20
    if-nez p3, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iget-object v0, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    .line 27
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 28
    instance-of v0, p3, Linstall/app/Elementt;

    if-eqz v0, :cond_3

    move-object v0, p3

    .line 29
    check-cast v0, Linstall/app/Elementt;

    invoke-virtual {v0, p0}, Linstall/app/Elementt;->setParent(Linstall/app/Nodes;)V

    .line 36
    :cond_2
    iget-object v0, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    invoke-virtual {v0, p3, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 37
    iget-object v0, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    int-to-char v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 38
    return-void

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Elementt obj expected)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "String expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addChild(ILjava/lang/Object;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0}, Linstall/app/Nodes;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Linstall/app/Nodes;->addChild(IILjava/lang/Object;)V

    .line 42
    return-void
.end method

.method public createElement(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Elementt;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Linstall/app/Elementt;

    invoke-direct {v0}, Linstall/app/Elementt;-><init>()V

    .line 46
    .local v0, "element":Linstall/app/Elementt;
    if-nez p1, :cond_0

    .line 47
    const-string p1, ""

    .line 49
    :cond_0
    iput-object p1, v0, Linstall/app/Elementt;->namespace:Ljava/lang/String;

    .line 50
    iput-object p2, v0, Linstall/app/Elementt;->name:Ljava/lang/String;

    .line 51
    return-object v0
.end method

.method public getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 55
    iget-object v0, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getElement(I)Linstall/app/Elementt;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Linstall/app/Nodes;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "child":Ljava/lang/Object;
    instance-of v1, v0, Linstall/app/Elementt;

    if-eqz v1, :cond_0

    check-cast v0, Linstall/app/Elementt;

    .end local v0    # "child":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "child":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Elementt;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 68
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Linstall/app/Nodes;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "indexOf":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, p2, v2}, Linstall/app/Nodes;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, "indexOf2":I
    if-eq v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Linstall/app/Nodes;->getElement(I)Linstall/app/Elementt;

    move-result-object v2

    return-object v2

    .line 73
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Elementt {"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v5, :cond_1

    const-string v2, " not found in "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v2, " more than once in "

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Linstall/app/Nodes;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Linstall/app/Nodes;->getChild(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 81
    iget-object v0, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Linstall/app/Nodes;->getChildCount()I

    move-result v0

    .line 86
    .local v0, "childCount":I
    move v2, p3

    .line 87
    .local v2, "i2":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 88
    invoke-virtual {p0, v2}, Linstall/app/Nodes;->getElement(I)Linstall/app/Elementt;

    move-result-object v1

    .line 89
    .local v1, "element":Linstall/app/Elementt;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Linstall/app/Elementt;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Linstall/app/Elementt;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    .end local v1    # "element":Linstall/app/Elementt;
    .end local v2    # "i2":I
    :cond_0
    :goto_1
    return v2

    .line 92
    .restart local v1    # "element":Linstall/app/Elementt;
    .restart local v2    # "i2":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_0

    .line 94
    .end local v1    # "element":Linstall/app/Elementt;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public isText(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Linstall/app/Nodes;->getType(I)I

    move-result v0

    .line 99
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Linstall/app/XmlPullParser;)V
    .locals 6
    .param p1, "xmlPullParser"    # Linstall/app/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 103
    const/4 v2, 0x0

    .line 105
    :cond_0
    invoke-interface {p1}, Linstall/app/XmlPullParser;->getEventType()I

    move-result v1

    .line 106
    .local v1, "eventType":I
    packed-switch v1, :pswitch_data_0

    .line 117
    invoke-interface {p1}, Linstall/app/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 118
    if-ne v1, v5, :cond_1

    .line 119
    const/4 v1, 0x4

    .line 121
    :cond_1
    invoke-interface {p1}, Linstall/app/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Linstall/app/Nodes;->addChild(ILjava/lang/Object;)V

    .line 125
    :cond_2
    :goto_0
    invoke-interface {p1}, Linstall/app/XmlPullParser;->nextToken()I

    .line 128
    :goto_1
    if-eqz v2, :cond_0

    .line 129
    return-void

    .line 109
    :pswitch_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    .local v2, "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 112
    .end local v2    # "obj":Ljava/lang/Integer;
    :pswitch_1
    invoke-interface {p1}, Linstall/app/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Linstall/app/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Linstall/app/Nodes;->createElement(Ljava/lang/String;Ljava/lang/String;)Linstall/app/Elementt;

    move-result-object v0

    .line 113
    .local v0, "createElement":Linstall/app/Elementt;
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Linstall/app/Nodes;->addChild(ILjava/lang/Object;)V

    .line 114
    invoke-virtual {v0, p1}, Linstall/app/Elementt;->parse(Linstall/app/XmlPullParser;)V

    goto :goto_1

    .line 122
    .end local v0    # "createElement":Linstall/app/Elementt;
    :cond_3
    if-ne v1, v5, :cond_2

    invoke-interface {p1}, Linstall/app/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 123
    invoke-interface {p1}, Linstall/app/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Linstall/app/Nodes;->addChild(ILjava/lang/Object;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChild(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 132
    iget-object v1, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 133
    iget-object v1, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 134
    .local v0, "length":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 135
    iget-object v1, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    iget-object v2, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 136
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Linstall/app/Nodes;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 139
    return-void
.end method

.method public write(Linstall/app/XmlSerializer;)V
    .locals 0
    .param p1, "xmlSerializer"    # Linstall/app/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Linstall/app/Nodes;->writeChildren(Linstall/app/XmlSerializer;)V

    .line 143
    invoke-interface {p1}, Linstall/app/XmlSerializer;->flush()V

    .line 144
    return-void
.end method

.method public writeChildren(Linstall/app/XmlSerializer;)V
    .locals 7
    .param p1, "xmlSerializer"    # Linstall/app/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v4, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 149
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Linstall/app/Nodes;->getType(I)I

    move-result v3

    .line 151
    .local v3, "type":I
    iget-object v4, p0, Linstall/app/Nodes;->children:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "elementAt":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    .line 178
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :pswitch_1
    check-cast v0, Linstall/app/Elementt;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Linstall/app/Elementt;->write(Linstall/app/XmlSerializer;)V

    .line 149
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_2
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    goto :goto_1

    .line 160
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_4
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_5
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    .restart local v0    # "elementAt":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Ljava/lang/String;

    .end local v0    # "elementAt":Ljava/lang/Object;
    invoke-interface {p1, v0}, Linstall/app/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "type":I
    :cond_0
    return-void

    .line 152
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
