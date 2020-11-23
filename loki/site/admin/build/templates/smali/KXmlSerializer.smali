.class public Linstall/app/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Linstall/app/XmlSerializer;


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 13
    new-array v0, v1, [Z

    iput-object v0, p0, Linstall/app/KXmlSerializer;->indent:[Z

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    return-void
.end method

.method private final check(Z)V
    .locals 8
    .param p1, "z"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 21
    iget-boolean v2, p0, Linstall/app/KXmlSerializer;->pending:Z

    if-eqz v2, :cond_5

    .line 23
    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Linstall/app/KXmlSerializer;->depth:I

    .line 24
    iput-boolean v6, p0, Linstall/app/KXmlSerializer;->pending:Z

    .line 25
    iget-object v2, p0, Linstall/app/KXmlSerializer;->indent:[Z

    array-length v2, v2

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    if-gt v2, v3, :cond_0

    .line 26
    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [Z

    .line 27
    .local v1, "obj":[Z
    iget-object v2, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    check-cast v1, [Z

    .end local v1    # "obj":[Z
    check-cast v1, [Z

    iput-object v1, p0, Linstall/app/KXmlSerializer;->indent:[Z

    .line 30
    :cond_0
    iget-object v2, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    iget-object v4, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v5, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v5, v5, -0x1

    aget-boolean v4, v4, v5

    aput-boolean v4, v2, v3

    .line 31
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 32
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    aget v2, v2, v3

    if-ge v0, v2, :cond_3

    .line 33
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 34
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 35
    const-string v2, ""

    iget-object v3, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 36
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 37
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    iget-object v3, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 41
    :cond_1
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v7}, Linstall/app/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 43
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(I)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_2
    const-string v2, ""

    invoke-virtual {p0}, Linstall/app/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    iget-object v3, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_3
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    array-length v2, v2

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_4

    .line 47
    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [I

    .line 48
    .local v1, "obj":[I
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    check-cast v1, [I

    .end local v1    # "obj":[I
    check-cast v1, [I

    iput-object v1, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    .line 51
    :cond_4
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Linstall/app/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 52
    iget-object v3, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    if-eqz p1, :cond_6

    const-string v2, " />"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 54
    .end local v0    # "i":I
    :cond_5
    return-void

    .line 52
    .restart local v0    # "i":I
    :cond_6
    const-string v2, ">"

    goto :goto_1
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z
    .param p3, "z2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v8, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v1, v7, -0x2

    .line 59
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 60
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez p2, :cond_0

    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 61
    :cond_0
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v7, v1

    .line 62
    .local v5, "str3":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x2

    .local v2, "i2":I
    :goto_1
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v8, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_1

    .line 63
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    const/4 v4, 0x0

    .line 68
    :cond_1
    move-object v4, v5

    .line 69
    .local v4, "str2":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 99
    .end local v2    # "i2":I
    .end local v4    # "str2":Ljava/lang/String;
    .end local v5    # "str3":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 62
    .restart local v2    # "i2":I
    .restart local v5    # "str3":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v2    # "i2":I
    .end local v5    # "str3":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 75
    :cond_4
    if-nez p3, :cond_5

    .line 76
    const/4 v4, 0x0

    goto :goto_2

    .line 78
    :cond_5
    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 79
    const-string v4, ""

    .line 95
    .restart local v4    # "str2":Ljava/lang/String;
    :goto_3
    iget-boolean v6, p0, Linstall/app/KXmlSerializer;->pending:Z

    .line 96
    .local v6, "z3":Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Linstall/app/KXmlSerializer;->pending:Z

    .line 97
    invoke-virtual {p0, v4, p1}, Linstall/app/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-boolean v6, p0, Linstall/app/KXmlSerializer;->pending:Z

    goto :goto_2

    .line 82
    .end local v4    # "str2":Ljava/lang/String;
    .end local v6    # "z3":Z
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    .local v0, "append":Ljava/lang/StringBuilder;
    iget v3, p0, Linstall/app/KXmlSerializer;->auto:I

    .line 84
    .local v3, "i3":I
    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Linstall/app/KXmlSerializer;->auto:I

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    .restart local v4    # "str2":Ljava/lang/String;
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v8, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v3, v7, -0x2

    :goto_4
    if-ltz v3, :cond_8

    .line 87
    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 88
    const/4 v4, 0x0

    .line 86
    :cond_7
    add-int/lit8 v3, v3, -0x2

    goto :goto_4

    .line 93
    :cond_8
    if-eqz v4, :cond_6

    goto :goto_3
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 2
    .param p1, "r6"    # Ljava/lang/String;
    .param p2, "r7"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.KXmlSerializer.writeEscaped(java.lang.String, int):void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x22

    .line 209
    iget-boolean v2, p0, Linstall/app/KXmlSerializer;->pending:Z

    if-eqz v2, :cond_4

    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string p1, ""

    .line 213
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    .line 214
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 215
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 219
    :cond_1
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 221
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 222
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(I)V

    .line 223
    invoke-direct {p0, p3, v0}, Linstall/app/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 224
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(I)V

    .line 225
    return-object p0

    .line 213
    .end local v0    # "i":I
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Linstall/app/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    .restart local v1    # "prefix":Ljava/lang/String;
    :cond_3
    const/16 v0, 0x27

    goto :goto_1

    .line 227
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "illegal position for attribute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 232
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 239
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    :goto_0
    iget v0, p0, Linstall/app/KXmlSerializer;->depth:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v1, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Linstall/app/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Linstall/app/KXmlSerializer;->flush()V

    .line 255
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-boolean v2, p0, Linstall/app/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    .line 259
    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Linstall/app/KXmlSerializer;->depth:I

    .line 261
    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    if-nez v2, :cond_6

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 262
    iget-boolean v2, p0, Linstall/app/KXmlSerializer;->pending:Z

    if-eqz v2, :cond_3

    .line 263
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 264
    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Linstall/app/KXmlSerializer;->depth:I

    .line 281
    :goto_0
    iget-object v2, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Linstall/app/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    .line 282
    return-object p0

    .line 266
    :cond_3
    iget-object v2, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4

    .line 267
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Linstall/app/KXmlSerializer;->depth:I

    if-ge v0, v2, :cond_4

    .line 269
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    .line 274
    .local v1, "str3":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 275
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 278
    :cond_5
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 284
    .end local v1    # "str3":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> does not match start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 289
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 290
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 292
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 296
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 297
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Linstall/app/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Linstall/app/KXmlSerializer;->depth:I

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v1, p0, Linstall/app/KXmlSerializer;->depth:I

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Linstall/app/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Linstall/app/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Linstall/app/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Linstall/app/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 317
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Linstall/app/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Linstall/app/KXmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 329
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 333
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 339
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v1, p0, Linstall/app/KXmlSerializer;->depth:I

    aput-boolean p2, v0, v1

    .line 341
    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 350
    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0, v0}, Linstall/app/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 351
    iput-object p2, p0, Linstall/app/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 352
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/KXmlSerializer;->unicode:Z

    .line 355
    :cond_1
    return-void

    .line 350
    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 358
    iput-object p1, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    .line 359
    iget-object v0, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v3

    .line 360
    iget-object v0, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v4

    .line 361
    iget-object v0, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    .line 362
    iget-object v0, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 363
    iget-object v0, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, "xml"

    aput-object v1, v0, v2

    .line 364
    iget-object v0, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    aput-object v2, v0, v1

    .line 365
    iput-boolean v3, p0, Linstall/app/KXmlSerializer;->pending:Z

    .line 366
    iput v3, p0, Linstall/app/KXmlSerializer;->auto:I

    .line 367
    iput v3, p0, Linstall/app/KXmlSerializer;->depth:I

    .line 368
    iput-boolean v3, p0, Linstall/app/KXmlSerializer;->unicode:Z

    .line 369
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 372
    invoke-direct {p0, v7}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 373
    if-nez p1, :cond_0

    .line 374
    const-string p1, ""

    .line 376
    :cond_0
    if-nez p2, :cond_1

    .line 377
    const-string p2, ""

    .line 379
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, p2, v5, v7}, Linstall/app/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 380
    iget-object v3, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    .line 381
    .local v3, "iArr":[I
    iget v5, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v0, v5, 0x1

    .line 382
    .local v0, "i":I
    aget v1, v3, v0

    .line 383
    .local v1, "i2":I
    add-int/lit8 v5, v1, 0x1

    aput v5, v3, v0

    .line 384
    shl-int/lit8 v2, v1, 0x1

    .line 385
    .local v2, "i3":I
    iget-object v5, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v6, v2, 0x1

    if-ge v5, v6, :cond_2

    .line 386
    iget-object v5, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x10

    new-array v4, v5, [Ljava/lang/String;

    .line 387
    .local v4, "obj":[Ljava/lang/String;
    iget-object v5, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    invoke-static {v5, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    check-cast v4, [Ljava/lang/String;

    .end local v4    # "obj":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    .line 390
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .line 391
    iget-object v5, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p1, v5, v2

    .line 392
    iget-object v5, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p2, v5, v1

    .line 394
    .end local v0    # "i":I
    .end local v1    # "i2":I
    .end local v2    # "i3":I
    .end local v3    # "iArr":[I
    :cond_3
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 397
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bool"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "<?xml version=\'1.0\' "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Linstall/app/KXmlSerializer;->encoding:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/KXmlSerializer;->unicode:Z

    .line 408
    :cond_0
    iget-object v0, p0, Linstall/app/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "encoding=\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    iget-object v1, p0, Linstall/app/KXmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 413
    :cond_1
    if-eqz p2, :cond_2

    .line 414
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "standalone=\'"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 418
    :cond_2
    iget-object v0, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 419
    return-void

    .line 415
    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 422
    invoke-direct {p0, v8}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 423
    iget-object v6, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v7, p0, Linstall/app/KXmlSerializer;->depth:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    .line 424
    iget-object v6, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Linstall/app/KXmlSerializer;->depth:I

    if-ge v0, v6, :cond_0

    .line 426
    iget-object v6, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "i":I
    :cond_0
    iget v6, p0, Linstall/app/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v6, 0x3

    .line 430
    .local v1, "i2":I
    iget-object v6, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v7, v1, 0x3

    if-ge v6, v7, :cond_1

    .line 431
    iget-object v6, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, 0xc

    new-array v4, v6, [Ljava/lang/String;

    .line 432
    .local v4, "obj":[Ljava/lang/String;
    iget-object v6, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-static {v6, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    check-cast v4, [Ljava/lang/String;

    .end local v4    # "obj":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    .line 435
    :cond_1
    if-nez p1, :cond_3

    const-string v5, ""

    .line 436
    .local v5, "prefix":Ljava/lang/String;
    :goto_1
    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 437
    iget-object v6, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v7, p0, Linstall/app/KXmlSerializer;->depth:I

    aget v2, v6, v7

    .line 438
    .local v2, "i3":I
    :goto_2
    iget-object v6, p0, Linstall/app/KXmlSerializer;->nspCounts:[I

    iget v7, p0, Linstall/app/KXmlSerializer;->depth:I

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    if-ge v2, v6, :cond_5

    .line 439
    const-string v6, ""

    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v8, v2, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    iget-object v7, p0, Linstall/app/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 440
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 435
    .end local v2    # "i3":I
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, v9, v9}, Linstall/app/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 442
    .restart local v2    # "i3":I
    .restart local v5    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 446
    .end local v2    # "i3":I
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 447
    .local v3, "i4":I
    iget-object v6, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p1, v6, v1

    .line 448
    add-int/lit8 v1, v3, 0x1

    .line 449
    iget-object v6, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object v5, v6, v3

    .line 450
    iget-object v6, p0, Linstall/app/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p2, v6, v1

    .line 451
    iget-object v6, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 452
    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 453
    iget-object v6, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 454
    iget-object v6, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(I)V

    .line 456
    :cond_6
    iget-object v6, p0, Linstall/app/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v6, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 457
    iput-boolean v9, p0, Linstall/app/KXmlSerializer;->pending:Z

    .line 458
    return-object p0
.end method

.method public text(Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-direct {p0, v2}, Linstall/app/KXmlSerializer;->check(Z)V

    .line 463
    iget-object v0, p0, Linstall/app/KXmlSerializer;->indent:[Z

    iget v1, p0, Linstall/app/KXmlSerializer;->depth:I

    aput-boolean v2, v0, v1

    .line 464
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Linstall/app/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    .line 465
    return-object p0
.end method

.method public text([CII)Linstall/app/XmlSerializer;
    .locals 1
    .param p1, "cArr"    # [C
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Linstall/app/KXmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 470
    return-object p0
.end method
