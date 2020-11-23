.class public Linstall/app/WbxmlSerializer;
.super Ljava/lang/Object;
.source "WbxmlSerializer.java"

# interfaces
.implements Linstall/app/XmlSerializer;


# instance fields
.field private attrPage:I

.field attrStartTable:Ljava/util/Hashtable;

.field attrValueTable:Ljava/util/Hashtable;

.field attributes:Ljava/util/Vector;

.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private encoding:Ljava/lang/String;

.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field pending:Ljava/lang/String;

.field stringTable:Ljava/util/Hashtable;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 30
    .local v0, "bArr":[B
    const/4 v1, 0x0

    .line 32
    .local v1, "i2":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 33
    .local v2, "i3":I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 34
    shr-int/lit8 p1, p1, 0x7

    .line 35
    if-nez p1, :cond_0

    .line 42
    return-void

    .line 38
    :cond_0
    move v1, v2

    .line 39
    goto :goto_0
.end method

.method private writeStr(Ljava/lang/String;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x41

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/16 v6, 0x83

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 46
    .local v3, "length":I
    const/4 v0, 0x0

    .line 47
    .local v0, "i":I
    const/4 v1, 0x0

    .line 48
    .local v1, "i2":I
    :goto_0
    if-ge v1, v3, :cond_6

    .line 49
    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v9, :cond_0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_0
    move v2, v1

    .line 53
    .local v2, "i3":I
    :goto_2
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_1

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 56
    :cond_1
    sub-int v4, v2, v1

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    .line 57
    if-le v1, v0, :cond_3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 58
    iget-object v4, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 71
    :goto_3
    move v0, v2

    .line 73
    :cond_2
    move v1, v2

    .line 74
    goto :goto_0

    .line 61
    :cond_3
    if-le v1, v0, :cond_4

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_4

    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 64
    :cond_4
    if-le v1, v0, :cond_5

    .line 65
    iget-object v4, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 68
    :cond_5
    iget-object v4, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_3

    .line 75
    .end local v2    # "i3":I
    :cond_6
    if-ge v0, v3, :cond_7

    .line 76
    iget-object v4, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 77
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 79
    :cond_7
    return-void
.end method

.method private final writeStrT(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x20

    .line 82
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 83
    .local v1, "num":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 84
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Linstall/app/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 105
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 88
    .local v2, "size":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    if-nez p2, :cond_4

    .line 89
    :cond_1
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v3, v2}, Linstall/app/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 94
    :goto_1
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    .line 96
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    .local v0, "lastIndexOf":I
    if-le v0, v8, :cond_3

    .line 100
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v2, v0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v3, p1}, Linstall/app/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 91
    .end local v0    # "lastIndexOf":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v3, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Linstall/app/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Linstall/app/WbxmlSerializer;->text(Ljava/lang/String;)Linstall/app/XmlSerializer;

    .line 115
    return-void
.end method

.method public checkPending(Z)V
    .locals 10
    .param p1, "z"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->pending:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 119
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 120
    .local v4, "size":I
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    iget-object v7, p0, Linstall/app/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v3, v5

    check-cast v3, [I

    .line 123
    .local v3, "iArr":[I
    if-nez v3, :cond_3

    .line 124
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 125
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    move v1, v6

    .line 126
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 138
    :goto_1
    const/4 v2, 0x0

    .line 139
    .local v2, "i2":I
    :goto_2
    if-ge v2, v4, :cond_c

    .line 140
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    iget-object v7, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v3, v5

    check-cast v3, [I

    .line 141
    if-nez v3, :cond_8

    .line 142
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 152
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 153
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    iget-object v7, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move-object v3, v5

    check-cast v3, [I

    .line 154
    if-nez v3, :cond_a

    .line 155
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Linstall/app/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 164
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    .end local v1    # "i":I
    .end local v2    # "i2":I
    :cond_0
    const/16 v1, 0x44

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 v1, 0x84

    goto :goto_0

    :cond_2
    const/16 v1, 0xc4

    goto :goto_0

    .line 129
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    aget v5, v3, v8

    iget v7, p0, Linstall/app/WbxmlSerializer;->tagPage:I

    if-eq v5, v7, :cond_4

    .line 130
    aget v5, v3, v8

    iput v5, p0, Linstall/app/WbxmlSerializer;->tagPage:I

    .line 131
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 132
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v7, p0, Linstall/app/WbxmlSerializer;->tagPage:I

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    :cond_4
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 135
    .restart local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    if-nez v4, :cond_6

    if-eqz p1, :cond_5

    aget v1, v3, v9

    .line 136
    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 135
    .end local v1    # "i":I
    :cond_5
    aget v5, v3, v9

    or-int/lit8 v1, v5, 0x40

    goto :goto_5

    :cond_6
    if-eqz p1, :cond_7

    aget v5, v3, v9

    or-int/lit16 v1, v5, 0x80

    goto :goto_5

    :cond_7
    aget v5, v3, v9

    or-int/lit16 v1, v5, 0xc0

    goto :goto_5

    .line 145
    .restart local v1    # "i":I
    .restart local v2    # "i2":I
    :cond_8
    aget v5, v3, v8

    iget v7, p0, Linstall/app/WbxmlSerializer;->attrPage:I

    if-eq v5, v7, :cond_9

    .line 146
    aget v5, v3, v8

    iput v5, p0, Linstall/app/WbxmlSerializer;->attrPage:I

    .line 147
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v7, p0, Linstall/app/WbxmlSerializer;->attrPage:I

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    :cond_9
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v7, v3, v9

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 157
    :cond_a
    aget v5, v3, v8

    iget v7, p0, Linstall/app/WbxmlSerializer;->attrPage:I

    if-eq v5, v7, :cond_b

    .line 158
    aget v5, v3, v8

    iput v5, p0, Linstall/app/WbxmlSerializer;->attrPage:I

    .line 159
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v7, p0, Linstall/app/WbxmlSerializer;->attrPage:I

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    :cond_b
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v7, v3, v9

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 166
    :cond_c
    if-lez v4, :cond_d

    .line 167
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    :cond_d
    const/4 v5, 0x0

    iput-object v5, p0, Linstall/app/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 170
    iget-object v5, p0, Linstall/app/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 172
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "i":I
    .end local v2    # "i2":I
    .end local v3    # "iArr":[I
    .end local v4    # "size":I
    :cond_e
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot write docdecl for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Linstall/app/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 183
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 184
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 186
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->pending:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, v1}, Linstall/app/WbxmlSerializer;->checkPending(Z)V

    .line 194
    :goto_0
    iget v0, p0, Linstall/app/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linstall/app/WbxmlSerializer;->depth:I

    .line 195
    return-object p0

    .line 192
    :cond_0
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EntityReference not supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Linstall/app/WbxmlSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PI NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 238
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    aget-object v2, p2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, v0, 0x5

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 246
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    aget-object v2, p2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    add-int/lit16 v5, v0, 0x85

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    const-string p2, "UTF-8"

    .line 260
    :cond_0
    iput-object p2, p0, Linstall/app/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 261
    iput-object p1, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    .line 262
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 263
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 264
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wbxml requires an OutputStream!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i2":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 280
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    aget-object v2, p2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, v0, 0x5

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    return-void
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
    .line 287
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 288
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iput-object p1, p0, Linstall/app/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 292
    :cond_0
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 297
    :cond_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linstall/app/WbxmlSerializer;->checkPending(Z)V

    .line 304
    iput-object p2, p0, Linstall/app/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 305
    iget v0, p0, Linstall/app/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linstall/app/WbxmlSerializer;->depth:I

    .line 306
    return-object p0

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NSP NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public text(Ljava/lang/String;)Linstall/app/XmlSerializer;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linstall/app/WbxmlSerializer;->checkPending(Z)V

    .line 313
    invoke-direct {p0, p1}, Linstall/app/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 314
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
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linstall/app/WbxmlSerializer;->checkPending(Z)V

    .line 319
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Linstall/app/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 320
    return-object p0
.end method

.method writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Linstall/app/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 326
    return-void
.end method

.method public writeWapExtension(ILjava/lang/Object;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-virtual {p0, v2}, Linstall/app/WbxmlSerializer;->checkPending(Z)V

    .line 330
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    sparse-switch p1, :sswitch_data_0

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 335
    :sswitch_0
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Linstall/app/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 350
    :goto_0
    :sswitch_1
    return-void

    .line 340
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2, v2}, Linstall/app/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_0

    .line 347
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_3
    check-cast p2, [B

    .end local p2    # "obj":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 348
    .local v0, "bArr":[B
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-static {v1, v2}, Linstall/app/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 349
    iget-object v1, p0, Linstall/app/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method
