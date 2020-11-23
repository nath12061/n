.class public abstract Linstall/app/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Linstall/app/XmlPullParser;


# static fields
.field static final HEX_DIGITS:Ljava/lang/String; = "0123456789abcdef"

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field public static final WAP_EXTENSION:I = 0x40


# instance fields
.field private ATTR_START_TABLE:I

.field private ATTR_VALUE_TABLE:I

.field private TAG_TABLE:I

.field private attrStartTable:[Ljava/lang/String;

.field private attrValueTable:[Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private cacheStringTable:Ljava/util/Hashtable;

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private isWhitespace:Z

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextId:I

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private publicIdentifierId:I

.field private stringTable:[B

.field private tables:Ljava/util/Vector;

.field private tagTable:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private version:I

.field private wapCode:I

.field private wapExtensionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Linstall/app/WbxmlParser;->ATTR_START_TABLE:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Linstall/app/WbxmlParser;->ATTR_VALUE_TABLE:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/WbxmlParser;->TAG_TABLE:I

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 26
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 32
    const/4 v0, -0x2

    iput v0, p0, Linstall/app/WbxmlParser;->nextId:I

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    return-void
.end method

.method private final adjustNsp()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3a

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "i":I
    const/4 v8, 0x0

    .line 50
    .local v8, "z":Z
    :goto_0
    iget v9, p0, Linstall/app/WbxmlParser;->attributeCount:I

    shl-int/lit8 v9, v9, 0x2

    if-ge v0, v9, :cond_2

    .line 52
    iget-object v9, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v0, 0x2

    aget-object v5, v9, v10

    .line 53
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 54
    .local v2, "indexOf":I
    if-eq v2, v11, :cond_0

    .line 55
    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "substring":Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    .end local v7    # "substring":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 66
    .local v3, "obj":[Ljava/lang/String;
    add-int/lit8 v1, v0, 0x4

    .line 67
    .local v1, "i4":I
    iget-object v4, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 69
    .local v4, "obj2":[Ljava/lang/String;
    add-int/lit8 v0, v0, -0x4

    .line 71
    add-int/lit8 v0, v0, 0x4

    .line 72
    goto :goto_0

    .line 57
    .end local v1    # "i4":I
    .end local v3    # "obj":[Ljava/lang/String;
    .end local v4    # "obj2":[Ljava/lang/String;
    :cond_0
    const-string v9, "xmlns"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 58
    move-object v6, v5

    .line 59
    .local v6, "str2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 60
    move-object v7, v6

    .line 61
    .restart local v7    # "substring":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v6    # "str2":Ljava/lang/String;
    .end local v7    # "substring":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 73
    .end local v2    # "indexOf":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_4

    .line 79
    iget-object v9, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 82
    :cond_3
    iget v9, p0, Linstall/app/WbxmlParser;->attributeCount:I

    shl-int/lit8 v9, v9, 0x2

    add-int/lit8 v0, v9, -0x4

    .line 86
    :cond_4
    iget-object v9, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal tag name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Linstall/app/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 93
    :cond_5
    :goto_2
    iget-object v9, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v9}, Linstall/app/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    .line 94
    iget-object v9, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v9, :cond_7

    .line 95
    iget-object v9, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "undefined prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Linstall/app/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 98
    :cond_6
    const-string v9, ""

    iput-object v9, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    .line 100
    :cond_7
    return v8

    .line 89
    :cond_8
    if-eq v0, v11, :cond_5

    .line 90
    iget-object v9, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    .line 91
    iget-object v9, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "strArr"    # [Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 104
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 109
    :goto_0
    return-object p1

    .line 107
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 108
    .local v0, "obj":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 113
    return-void
.end method

.method private final nextImpl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 116
    iget v2, p0, Linstall/app/WbxmlParser;->type:I

    if-ne v2, v3, :cond_0

    .line 117
    iget v2, p0, Linstall/app/WbxmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Linstall/app/WbxmlParser;->depth:I

    .line 119
    :cond_0
    iget-boolean v2, p0, Linstall/app/WbxmlParser;->degenerated:Z

    if-eqz v2, :cond_1

    .line 120
    iput v3, p0, Linstall/app/WbxmlParser;->type:I

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Linstall/app/WbxmlParser;->degenerated:Z

    .line 177
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-object v4, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    .line 125
    iput-object v4, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    .line 126
    iput-object v4, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Linstall/app/WbxmlParser;->peekId()I

    move-result v0

    .line 128
    .local v0, "peekId":I
    :goto_1
    if-nez v0, :cond_2

    .line 129
    iput v5, p0, Linstall/app/WbxmlParser;->nextId:I

    .line 130
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v2

    invoke-direct {p0, v2, v6}, Linstall/app/WbxmlParser;->selectPage(IZ)V

    .line 131
    invoke-direct {p0}, Linstall/app/WbxmlParser;->peekId()I

    move-result v0

    goto :goto_1

    .line 133
    :cond_2
    iput v5, p0, Linstall/app/WbxmlParser;->nextId:I

    .line 134
    sparse-switch v0, :sswitch_data_0

    .line 176
    invoke-virtual {p0, v0}, Linstall/app/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 136
    :sswitch_0
    iput v6, p0, Linstall/app/WbxmlParser;->type:I

    goto :goto_0

    .line 139
    :sswitch_1
    iget v2, p0, Linstall/app/WbxmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v0, v2, 0x2

    .line 140
    iput v3, p0, Linstall/app/WbxmlParser;->type:I

    .line 141
    iget-object v2, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 146
    :sswitch_2
    const/4 v2, 0x6

    iput v2, p0, Linstall/app/WbxmlParser;->type:I

    .line 147
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v2

    int-to-char v1, v2

    .line 148
    .local v1, "readInt":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 152
    .end local v1    # "readInt":C
    :sswitch_3
    iput v7, p0, Linstall/app/WbxmlParser;->type:I

    .line 153
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 165
    :sswitch_4
    const/16 v2, 0x40

    iput v2, p0, Linstall/app/WbxmlParser;->type:I

    .line 166
    iput v0, p0, Linstall/app/WbxmlParser;->wapCode:I

    .line 167
    invoke-virtual {p0, v0}, Linstall/app/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Linstall/app/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 170
    :sswitch_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PI curr. not supp."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :sswitch_6
    iput v7, p0, Linstall/app/WbxmlParser;->type:I

    .line 173
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_6
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
    .end sparse-switch
.end method

.method private peekId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget v0, p0, Linstall/app/WbxmlParser;->nextId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Linstall/app/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Linstall/app/WbxmlParser;->nextId:I

    .line 185
    :cond_0
    iget v0, p0, Linstall/app/WbxmlParser;->nextId:I

    return v0
.end method

.method private selectPage(IZ)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "z"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 190
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undefined!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Linstall/app/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 193
    :cond_1
    if-eqz p2, :cond_3

    .line 194
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Linstall/app/WbxmlParser;->TAG_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/WbxmlParser;->tagTable:[Ljava/lang/String;

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 197
    :cond_3
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Linstall/app/WbxmlParser;->ATTR_START_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    .line 198
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Linstall/app/WbxmlParser;->ATTR_VALUE_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Linstall/app/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final setTable(II[Ljava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Linstall/app/WbxmlParser;->stringTable:[B

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    :goto_0
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Linstall/app/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 210
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Linstall/app/WbxmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 220
    iget v0, p0, Linstall/app/WbxmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 227
    iget v0, p0, Linstall/app/WbxmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 234
    iget v0, p0, Linstall/app/WbxmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 235
    iget-object v0, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 241
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 245
    iget v0, p0, Linstall/app/WbxmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 252
    iget v1, p0, Linstall/app/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 253
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 254
    iget-object v1, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    iget-object v1, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 259
    :goto_1
    return-object v1

    .line 257
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 259
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Linstall/app/WbxmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Linstall/app/WbxmlParser;->processNsp:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Linstall/app/WbxmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 310
    :goto_0
    return-object v1

    .line 298
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 301
    :cond_1
    iget v1, p0, Linstall/app/WbxmlParser;->depth:I

    invoke-virtual {p0, v1}, Linstall/app/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .local v0, "namespaceCount":I
    :goto_1
    if-ltz v0, :cond_4

    .line 302
    if-nez p1, :cond_2

    .line 303
    iget-object v1, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 304
    iget-object v1, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 301
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 310
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 314
    iget v0, p0, Linstall/app/WbxmlParser;->depth:I

    if-gt p1, v0, :cond_0

    .line 315
    iget-object v0, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 321
    iget-object v0, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 325
    iget-object v0, p0, Linstall/app/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 329
    new-instance v2, Ljava/lang/StringBuffer;

    iget v4, p0, Linstall/app/WbxmlParser;->type:I

    sget-object v5, Linstall/app/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Linstall/app/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Linstall/app/WbxmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 330
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 331
    iget v4, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Linstall/app/WbxmlParser;->type:I

    if-ne v4, v6, :cond_8

    .line 332
    :cond_0
    iget-boolean v4, p0, Linstall/app/WbxmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 333
    const-string v4, "(empty) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    iget v4, p0, Linstall/app/WbxmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 337
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    :cond_2
    iget-object v4, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_3
    iget-object v4, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget v4, p0, Linstall/app/WbxmlParser;->attributeCount:I

    shl-int/lit8 v0, v4, 0x2

    .line 344
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "i2":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 345
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    iget-object v4, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 329
    .end local v0    # "i":I
    .end local v1    # "i2":I
    .end local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 351
    .restart local v0    # "i":I
    .restart local v1    # "i2":I
    .restart local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    .end local v0    # "i":I
    .end local v1    # "i2":I
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 352
    :cond_8
    iget v4, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 353
    iget v4, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 354
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 355
    :cond_9
    iget-boolean v4, p0, Linstall/app/WbxmlParser;->isWhitespace:Z

    if-eqz v4, :cond_a

    .line 356
    const-string v4, "(whitespace)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 358
    :cond_a
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .param p1, "iArr"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 381
    iget v1, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 382
    aput v3, p1, v3

    .line 383
    iget-object v1, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 384
    iget-object v1, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 385
    .local v0, "cArr":[C
    iget-object v1, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    iget-object v2, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 390
    .end local v0    # "cArr":[C
    :goto_0
    return-object v0

    .line 388
    :cond_0
    aput v4, p1, v3

    .line 389
    aput v4, p1, v5

    .line 390
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWapCode()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Linstall/app/WbxmlParser;->wapCode:I

    return v0
.end method

.method public getWapExtensionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Linstall/app/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 408
    :cond_0
    iget-boolean v0, p0, Linstall/app/WbxmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 414
    :cond_0
    iget-boolean v0, p0, Linstall/app/WbxmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 418
    const/4 v2, 0x1

    iput-boolean v2, p0, Linstall/app/WbxmlParser;->isWhitespace:Z

    .line 419
    const/16 v0, 0x270f

    .line 421
    .local v0, "i":I
    :cond_0
    iget-object v1, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    .line 422
    .local v1, "str":Ljava/lang/String;
    iget v2, p0, Linstall/app/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 423
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    .line 425
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 426
    if-lt v0, v4, :cond_4

    .line 427
    if-eqz v1, :cond_3

    .line 428
    iget-object v2, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    :cond_2
    iput-object v1, p0, Linstall/app/WbxmlParser;->text:Ljava/lang/String;

    .line 433
    :cond_3
    invoke-direct {p0}, Linstall/app/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 446
    :cond_4
    :sswitch_0
    iput v0, p0, Linstall/app/WbxmlParser;->type:I

    .line 447
    iget v2, p0, Linstall/app/WbxmlParser;->type:I

    if-le v2, v4, :cond_5

    .line 448
    iput v4, p0, Linstall/app/WbxmlParser;->type:I

    .line 450
    :cond_5
    iget v2, p0, Linstall/app/WbxmlParser;->type:I

    return v2

    .line 433
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Linstall/app/WbxmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 458
    :cond_0
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 460
    :cond_1
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    iget v1, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 467
    :cond_0
    iget v1, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 468
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "text":Ljava/lang/String;
    :goto_0
    iget v1, p0, Linstall/app/WbxmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 474
    :cond_1
    return-object v0

    .line 470
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/WbxmlParser;->isWhitespace:Z

    .line 479
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    return v0
.end method

.method parseElement(I)V
    .locals 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 483
    const/4 v4, 0x2

    iput v4, p0, Linstall/app/WbxmlParser;->type:I

    .line 484
    iget-object v4, p0, Linstall/app/WbxmlParser;->tagTable:[Ljava/lang/String;

    and-int/lit8 v6, p1, 0x3f

    invoke-virtual {p0, v4, v6}, Linstall/app/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    .line 485
    iput v5, p0, Linstall/app/WbxmlParser;->attributeCount:I

    .line 486
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 487
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readAttr()V

    .line 489
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Linstall/app/WbxmlParser;->degenerated:Z

    .line 490
    iget v0, p0, Linstall/app/WbxmlParser;->depth:I

    .line 491
    .local v0, "i2":I
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Linstall/app/WbxmlParser;->depth:I

    .line 492
    shl-int/lit8 v1, v0, 0x2

    .line 493
    .local v1, "i3":I
    iget-object v4, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x4

    invoke-direct {p0, v4, v6}, Linstall/app/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 494
    iget-object v4, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 495
    iget v4, p0, Linstall/app/WbxmlParser;->depth:I

    iget-object v6, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 496
    iget v4, p0, Linstall/app/WbxmlParser;->depth:I

    add-int/lit8 v4, v4, 0x4

    new-array v3, v4, [I

    .line 497
    .local v3, "obj":[I
    iget-object v4, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    iget-object v6, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    invoke-static {v4, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    .end local v3    # "obj":[I
    :cond_1
    iget-object v4, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    iget v5, p0, Linstall/app/WbxmlParser;->depth:I

    iget-object v6, p0, Linstall/app/WbxmlParser;->nspCounts:[I

    iget v7, p0, Linstall/app/WbxmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 500
    iget v4, p0, Linstall/app/WbxmlParser;->attributeCount:I

    add-int/lit8 v2, v4, -0x1

    .local v2, "i4":I
    :goto_1
    if-lez v2, :cond_5

    .line 501
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 502
    invoke-virtual {p0, v2}, Linstall/app/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0}, Linstall/app/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Linstall/app/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Linstall/app/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 501
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i2":I
    .end local v1    # "i3":I
    .end local v2    # "i4":I
    :cond_3
    move v4, v5

    .line 489
    goto :goto_0

    .line 500
    .restart local v0    # "i2":I
    .restart local v1    # "i3":I
    .restart local v2    # "i4":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 507
    :cond_5
    iget-boolean v4, p0, Linstall/app/WbxmlParser;->processNsp:Z

    if-eqz v4, :cond_6

    .line 508
    invoke-direct {p0}, Linstall/app/WbxmlParser;->adjustNsp()Z

    .line 512
    :goto_3
    iget-object v4, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    iget-object v5, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 513
    iget-object v4, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Linstall/app/WbxmlParser;->prefix:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 514
    iget-object v4, p0, Linstall/app/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Linstall/app/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 515
    return-void

    .line 510
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Linstall/app/WbxmlParser;->namespace:Ljava/lang/String;

    goto :goto_3
.end method

.method public parseWapExtension(I)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    sparse-switch p1, :sswitch_data_0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 538
    :goto_0
    :sswitch_0
    return-object v0

    .line 522
    :sswitch_1
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 526
    :sswitch_2
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 532
    :sswitch_3
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v1

    .line 533
    .local v1, "readInt":I
    new-array v0, v1, [B

    .line 535
    .local v0, "obj":[B
    goto :goto_0

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public readAttr()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x0

    .line 543
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v5

    .line 544
    .local v5, "readByte":I
    const/4 v0, 0x0

    .line 545
    .local v0, "i":I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    .line 547
    :goto_0
    if-nez v5, :cond_0

    .line 548
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v8

    invoke-direct {p0, v8, v10}, Linstall/app/WbxmlParser;->selectPage(IZ)V

    .line 549
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v5

    goto :goto_0

    .line 551
    :cond_0
    iget-object v8, p0, Linstall/app/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {p0, v8, v5}, Linstall/app/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, "resolveId":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 553
    .local v4, "indexOf":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 554
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 559
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v4

    .line 561
    :goto_2
    if-gt v4, v11, :cond_2

    if-eqz v4, :cond_2

    const/4 v8, 0x2

    if-eq v4, v8, :cond_2

    const/4 v8, 0x3

    if-eq v4, v8, :cond_2

    const/16 v8, 0x83

    if-eq v4, v8, :cond_2

    const/16 v8, 0x40

    if-lt v4, v8, :cond_1

    const/16 v8, 0x42

    if-le v4, v8, :cond_2

    :cond_1
    if-lt v4, v11, :cond_4

    const/16 v8, 0x82

    if-gt v4, v8, :cond_4

    .line 562
    :cond_2
    sparse-switch v4, :sswitch_data_0

    .line 588
    iget-object v8, p0, Linstall/app/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {p0, v8, v4}, Linstall/app/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :goto_3
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v4

    goto :goto_2

    .line 556
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 564
    :sswitch_0
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v8

    invoke-direct {p0, v8, v10}, Linstall/app/WbxmlParser;->selectPage(IZ)V

    goto :goto_3

    .line 567
    :sswitch_1
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 570
    :sswitch_2
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 582
    :sswitch_3
    invoke-virtual {p0, v4}, Linstall/app/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v4, v8}, Linstall/app/WbxmlParser;->resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 585
    :sswitch_4
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 593
    :cond_4
    iget-object v8, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v0, 0x4

    invoke-direct {p0, v8, v9}, Linstall/app/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 594
    add-int/lit8 v1, v0, 0x1

    .line 595
    .local v1, "i2":I
    iget-object v8, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v0

    .line 596
    add-int/lit8 v2, v1, 0x1

    .line 597
    .local v2, "i3":I
    iget-object v8, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v9, v8, v1

    .line 598
    add-int/lit8 v1, v2, 0x1

    .line 599
    iget-object v8, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    aput-object v6, v8, v2

    .line 600
    add-int/lit8 v3, v1, 0x1

    .line 601
    .local v3, "i4":I
    iget-object v8, p0, Linstall/app/WbxmlParser;->attributes:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 602
    iget v8, p0, Linstall/app/WbxmlParser;->attributeCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Linstall/app/WbxmlParser;->attributeCount:I

    .line 603
    move v0, v3

    .line 604
    move v5, v4

    .line 605
    goto/16 :goto_2

    .line 608
    .end local v1    # "i2":I
    .end local v2    # "i3":I
    .end local v3    # "i4":I
    .end local v4    # "indexOf":I
    .end local v6    # "resolveId":Ljava/lang/String;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_5
    return-void

    .line 562
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v1, p0, Linstall/app/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 612
    .local v0, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 613
    return v0

    .line 615
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 622
    .local v0, "i":I
    :cond_0
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v1

    .line 623
    .local v1, "readByte":I
    shl-int/lit8 v2, v0, 0x7

    and-int/lit8 v3, v1, 0x7f

    or-int v0, v2, v3

    .line 624
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    .line 625
    return v0
.end method

.method readStrI()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 630
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 632
    .local v3, "z":Z
    :goto_0
    iget-object v4, p0, Linstall/app/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 633
    .local v1, "read":I
    if-nez v1, :cond_0

    .line 634
    iput-boolean v3, p0, Linstall/app/WbxmlParser;->isWhitespace:Z

    .line 635
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Linstall/app/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 636
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 637
    return-object v2

    .line 638
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 639
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 641
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 642
    const/4 v3, 0x0

    .line 644
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method readStrT()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v1

    .line 651
    .local v1, "readInt":I
    iget-object v4, p0, Linstall/app/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    if-nez v4, :cond_0

    .line 652
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Linstall/app/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 654
    :cond_0
    iget-object v4, p0, Linstall/app/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 655
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 664
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 658
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    move v0, v1

    .line 659
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Linstall/app/WbxmlParser;->stringTable:[B

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Linstall/app/WbxmlParser;->stringTable:[B

    aget-byte v4, v4, v0

    if-eqz v4, :cond_2

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 662
    :cond_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Linstall/app/WbxmlParser;->stringTable:[B

    sub-int v5, v0, v1

    iget-object v6, p0, Linstall/app/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 663
    .local v3, "str2":Ljava/lang/String;
    iget-object v4, p0, Linstall/app/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 664
    goto :goto_0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    iget v0, p0, Linstall/app/WbxmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linstall/app/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Linstall/app/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    :cond_1
    return-void
.end method

.method resolveId([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "strArr"    # [Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 673
    and-int/lit8 v1, p2, 0x7f

    add-int/lit8 v0, v1, -0x5

    .line 674
    .local v0, "i2":I
    if-ne v0, v2, :cond_0

    .line 675
    iput v2, p0, Linstall/app/WbxmlParser;->wapCode:I

    .line 676
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v1

    .line 681
    :goto_0
    return-object v1

    .line 677
    :cond_0
    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 678
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undef."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_2
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Linstall/app/WbxmlParser;->wapCode:I

    .line 681
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method protected resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "i"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 686
    instance-of v3, p2, [B

    if-nez v3, :cond_0

    .line 687
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 695
    .end local p2    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 689
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 690
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    check-cast p2, [B

    .end local p2    # "obj":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    .line 691
    .local v0, "bArr":[B
    const/4 v1, 0x0

    .local v1, "i2":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 692
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 693
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 695
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 699
    iget v0, p0, Linstall/app/WbxmlParser;->ATTR_START_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Linstall/app/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 703
    iget v0, p0, Linstall/app/WbxmlParser;->ATTR_VALUE_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Linstall/app/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 707
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iput-boolean p2, p0, Linstall/app/WbxmlParser;->processNsp:Z

    .line 711
    :cond_0
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "i":I
    iput-object p1, p0, Linstall/app/WbxmlParser;->in:Ljava/io/InputStream;

    .line 717
    :try_start_0
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readByte()I

    move-result v3

    iput v3, p0, Linstall/app/WbxmlParser;->version:I

    .line 718
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v3

    iput v3, p0, Linstall/app/WbxmlParser;->publicIdentifierId:I

    .line 719
    iget v3, p0, Linstall/app/WbxmlParser;->publicIdentifierId:I

    if-nez v3, :cond_0

    .line 720
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    .line 722
    :cond_0
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v2

    .line 723
    .local v2, "readInt":I
    if-nez p2, :cond_2

    .line 724
    sparse-switch v2, :sswitch_data_0

    .line 732
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    .end local v2    # "readInt":I
    :catch_0
    move-exception v3

    .line 748
    :cond_1
    return-void

    .line 726
    .restart local v2    # "readInt":I
    :sswitch_0
    const-string v3, "ISO-8859-1"

    iput-object v3, p0, Linstall/app/WbxmlParser;->encoding:Ljava/lang/String;

    .line 735
    :cond_2
    :goto_0
    iput-object p2, p0, Linstall/app/WbxmlParser;->encoding:Ljava/lang/String;

    .line 736
    invoke-virtual {p0}, Linstall/app/WbxmlParser;->readInt()I

    move-result v2

    .line 737
    new-array v3, v2, [B

    iput-object v3, p0, Linstall/app/WbxmlParser;->stringTable:[B

    .line 738
    :goto_1
    if-ge v0, v2, :cond_1

    .line 739
    iget-object v3, p0, Linstall/app/WbxmlParser;->stringTable:[B

    sub-int v4, v2, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 740
    .local v1, "read":I
    if-gtz v1, :cond_3

    .line 743
    :cond_3
    add-int/2addr v0, v1

    .line 744
    goto :goto_1

    .line 729
    .end local v1    # "read":I
    :sswitch_1
    const-string v3, "UTF-8"

    iput-object v3, p0, Linstall/app/WbxmlParser;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 753
    iget v0, p0, Linstall/app/WbxmlParser;->TAG_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Linstall/app/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 754
    return-void
.end method
