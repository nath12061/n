.class public abstract Linstall/app/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Linstall/app/XmlPullParser;


# static fields
.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final LEGACY:I = 0x3e7

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECL:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private column:I

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private entityMap:Ljava/util/Hashtable;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private line:I

.field private location:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private peek:[I

.field private peekCount:I

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private srcBuf:[C

.field private srcCount:I

.field private srcPos:I

.field private stackMismatch:I

.field private standalone:Ljava/lang/Boolean;

.field private token:Z

.field private txtBuf:[C

.field private txtPos:I

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;

.field private wasCR:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    .line 17
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 26
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Linstall/app/KXmlParser;->nspCounts:[I

    .line 27
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 28
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Linstall/app/KXmlParser;->peek:[I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Linstall/app/KXmlParser;->stackMismatch:I

    .line 40
    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Linstall/app/KXmlParser;->txtBuf:[C

    .line 48
    const/16 v0, 0x80

    .line 49
    .local v0, "i":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 50
    const/16 v0, 0x2000

    .line 52
    :cond_0
    new-array v1, v0, [C

    iput-object v1, p0, Linstall/app/KXmlParser;->srcBuf:[C

    .line 53
    return-void
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "strArr"    # [Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 63
    :goto_0
    return-object p1

    .line 61
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 62
    .local v0, "obj":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private final error(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Linstall/app/KXmlParser;->relaxed:Z

    if-nez v0, :cond_1

    .line 68
    invoke-direct {p0, p1}, Linstall/app/KXmlParser;->exception(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Linstall/app/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/KXmlParser;->error:Ljava/lang/String;

    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x64

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    :cond_0
    return-void
.end method

.method private final get(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 81
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Linstall/app/KXmlParser;->txtBuf:[C

    iget v2, p0, Linstall/app/KXmlParser;->txtPos:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private final isProp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z
    .param p3, "str2"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "http://xmlpull.org/v1/doc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private final parseDoctype(Z)V
    .locals 5
    .param p1, "z"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, "obj":Ljava/lang/Object;
    const/4 v0, 0x1

    .line 94
    .local v0, "i":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Linstall/app/KXmlParser;->read()I

    move-result v3

    .line 95
    .local v3, "read":I
    sparse-switch v3, :sswitch_data_0

    .line 122
    :cond_1
    :goto_1
    if-eqz p1, :cond_0

    goto :goto_0

    .line 97
    :sswitch_0
    const-string v4, "Unexpected EOF"

    invoke-direct {p0, v4}, Linstall/app/KXmlParser;->error(Ljava/lang/String;)V

    .line 117
    :goto_2
    return-void

    .line 100
    :sswitch_1
    if-eqz v2, :cond_2

    .line 101
    const/4 v2, 0x0

    .line 102
    goto :goto_1

    .line 104
    :cond_2
    const/4 v1, 0x1

    .line 105
    .local v1, "i2":I
    goto :goto_1

    .line 108
    .end local v1    # "i2":I
    :sswitch_2
    if-nez v2, :cond_1

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    goto :goto_1

    .line 114
    :sswitch_3
    if-nez v2, :cond_1

    .line 115
    add-int/lit8 v0, v0, -0x1

    .line 116
    if-nez v0, :cond_1

    goto :goto_2

    .line 95
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x27 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private final parseEndTag()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 128
    invoke-direct {p0}, Linstall/app/KXmlParser;->read()I

    .line 129
    invoke-direct {p0}, Linstall/app/KXmlParser;->read()I

    .line 130
    invoke-direct {p0}, Linstall/app/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Linstall/app/KXmlParser;->skip()V

    .line 132
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Linstall/app/KXmlParser;->read(C)V

    .line 133
    iget v2, p0, Linstall/app/KXmlParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v0, v2, 0x2

    .line 134
    .local v0, "i":I
    iget v2, p0, Linstall/app/KXmlParser;->depth:I

    if-nez v2, :cond_0

    .line 135
    const-string v2, "element stack empty"

    invoke-direct {p0, v2}, Linstall/app/KXmlParser;->error(Ljava/lang/String;)V

    .line 136
    iput v5, p0, Linstall/app/KXmlParser;->type:I

    .line 155
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    iget-object v3, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Linstall/app/KXmlParser;->error(Ljava/lang/String;)V

    .line 141
    move v1, v0

    .line 142
    .local v1, "i2":I
    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget v2, p0, Linstall/app/KXmlParser;->stackMismatch:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Linstall/app/KXmlParser;->stackMismatch:I

    .line 144
    add-int/lit8 v1, v1, -0x4

    goto :goto_1

    .line 146
    :cond_1
    if-gez v1, :cond_2

    .line 147
    const/4 v2, 0x0

    iput v2, p0, Linstall/app/KXmlParser;->stackMismatch:I

    .line 148
    iput v5, p0, Linstall/app/KXmlParser;->type:I

    goto :goto_0

    .line 152
    .end local v1    # "i2":I
    :cond_2
    iget-object v2, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Linstall/app/KXmlParser;->namespace:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Linstall/app/KXmlParser;->prefix:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Linstall/app/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private final parseStartTag(Z)V
    .locals 2
    .param p1, "r11"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.KXmlParser.parseStartTag(boolean):void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final pushEntity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.KXmlParser.pushEntity():void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final pushText(IZ)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "z"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "i2":I
    return-void
.end method

.method private final read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 479
    iget v1, p0, Linstall/app/KXmlParser;->peekCount:I

    if-nez v1, :cond_0

    .line 484
    :goto_0
    iget v1, p0, Linstall/app/KXmlParser;->peekCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Linstall/app/KXmlParser;->peekCount:I

    .line 485
    iget v1, p0, Linstall/app/KXmlParser;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Linstall/app/KXmlParser;->column:I

    .line 487
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 481
    :cond_0
    iget-object v1, p0, Linstall/app/KXmlParser;->peek:[I

    aget v0, v1, v4

    .line 482
    .local v0, "peek":I
    iget-object v1, p0, Linstall/app/KXmlParser;->peek:[I

    iget-object v2, p0, Linstall/app/KXmlParser;->peek:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v4

    goto :goto_0
.end method

.method private final read(C)V
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 492
    return-void
.end method

.method private final readName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 495
    iget v0, p0, Linstall/app/KXmlParser;->txtPos:I

    .line 498
    .local v0, "i":I
    const/4 v1, 0x0

    return-object v1
.end method

.method private final skip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Linstall/app/KXmlParser;->entityMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "entity replacement text must be defined after setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Linstall/app/KXmlParser;->entityMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Linstall/app/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 517
    iget v0, p0, Linstall/app/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 518
    iget-object v0, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 524
    iget v0, p0, Linstall/app/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 525
    iget-object v0, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 531
    iget v0, p0, Linstall/app/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 532
    iget-object v0, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 534
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 538
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 542
    iget v0, p0, Linstall/app/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 543
    iget-object v0, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    .line 545
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
    .line 549
    iget v1, p0, Linstall/app/KXmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 550
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 551
    iget-object v1, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    :cond_0
    iget-object v1, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 556
    :goto_1
    return-object v1

    .line 554
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 556
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Linstall/app/KXmlParser;->column:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Linstall/app/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 572
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Linstall/app/KXmlParser;->processNsp:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "relaxed"

    invoke-direct {p0, p1, v0, v1}, Linstall/app/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Linstall/app/KXmlParser;->relaxed:Z

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Linstall/app/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Linstall/app/KXmlParser;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Linstall/app/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 592
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 607
    :goto_0
    return-object v1

    .line 595
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 598
    :cond_1
    iget v1, p0, Linstall/app/KXmlParser;->depth:I

    invoke-virtual {p0, v1}, Linstall/app/KXmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .local v0, "namespaceCount":I
    :goto_1
    if-ltz v0, :cond_4

    .line 599
    if-nez p1, :cond_2

    .line 600
    iget-object v1, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 601
    iget-object v1, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 603
    :cond_2
    iget-object v1, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 604
    iget-object v1, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 598
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 607
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 611
    iget v0, p0, Linstall/app/KXmlParser;->depth:I

    if-gt p1, v0, :cond_0

    .line 612
    iget-object v0, p0, Linstall/app/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 618
    iget-object v0, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 622
    iget-object v0, p0, Linstall/app/KXmlParser;->nspStack:[Ljava/lang/String;

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

    .line 626
    new-instance v2, Ljava/lang/StringBuffer;

    iget v4, p0, Linstall/app/KXmlParser;->type:I

    sget-object v5, Linstall/app/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Linstall/app/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Linstall/app/KXmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 627
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 628
    iget v4, p0, Linstall/app/KXmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Linstall/app/KXmlParser;->type:I

    if-ne v4, v6, :cond_9

    .line 629
    :cond_0
    iget-boolean v4, p0, Linstall/app/KXmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 630
    const-string v4, "(empty) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 633
    iget v4, p0, Linstall/app/KXmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 634
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 636
    :cond_2
    iget-object v4, p0, Linstall/app/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    :cond_3
    iget-object v4, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    iget v4, p0, Linstall/app/KXmlParser;->attributeCount:I

    shl-int/lit8 v0, v4, 0x2

    .line 641
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "i2":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 642
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 643
    iget-object v4, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

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

    .line 646
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Linstall/app/KXmlParser;->attributes:[Ljava/lang/String;

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

    .line 641
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 626
    .end local v0    # "i":I
    .end local v1    # "i2":I
    .end local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 648
    .restart local v0    # "i":I
    .restart local v1    # "i2":I
    .restart local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 662
    .end local v0    # "i":I
    .end local v1    # "i2":I
    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Linstall/app/KXmlParser;->line:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Linstall/app/KXmlParser;->column:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget-object v4, p0, Linstall/app/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v4, :cond_d

    .line 664
    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    iget-object v4, p0, Linstall/app/KXmlParser;->location:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 670
    :cond_8
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 649
    :cond_9
    iget v4, p0, Linstall/app/KXmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 650
    iget v4, p0, Linstall/app/KXmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    .line 651
    invoke-virtual {p0}, Linstall/app/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 652
    :cond_a
    iget-boolean v4, p0, Linstall/app/KXmlParser;->isWhitespace:Z

    if-eqz v4, :cond_b

    .line 653
    const-string v4, "(whitespace)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 655
    :cond_b
    invoke-virtual {p0}, Linstall/app/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_c

    .line 657
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

    .line 659
    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 666
    .end local v3    # "text":Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Linstall/app/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v4, :cond_8

    .line 667
    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    iget-object v4, p0, Linstall/app/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Linstall/app/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 678
    const-string v0, "xmldecl-version"

    invoke-direct {p0, p1, v1, v0}, Linstall/app/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linstall/app/KXmlParser;->version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "xmldecl-standalone"

    invoke-direct {p0, p1, v1, v0}, Linstall/app/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Linstall/app/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v0, "location"

    invoke-direct {p0, p1, v1, v0}, Linstall/app/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Linstall/app/KXmlParser;->location:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Linstall/app/KXmlParser;->location:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Linstall/app/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Linstall/app/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linstall/app/KXmlParser;->get(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "iArr"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 686
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 687
    aput v4, p1, v2

    .line 688
    aput v4, p1, v3

    .line 689
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    .line 690
    :cond_0
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 691
    aput v2, p1, v2

    .line 692
    iget-object v0, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, p1, v3

    .line 693
    iget-object v0, p0, Linstall/app/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 695
    :cond_1
    aput v2, p1, v2

    .line 696
    iget v0, p0, Linstall/app/KXmlParser;->txtPos:I

    aput v0, p1, v3

    .line 697
    iget-object v0, p0, Linstall/app/KXmlParser;->txtBuf:[C

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 708
    :cond_0
    iget-boolean v0, p0, Linstall/app/KXmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2

    .prologue
    .line 712
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 714
    :cond_0
    iget-boolean v0, p0, Linstall/app/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 718
    iput v2, p0, Linstall/app/KXmlParser;->txtPos:I

    .line 719
    const/4 v1, 0x1

    iput-boolean v1, p0, Linstall/app/KXmlParser;->isWhitespace:Z

    .line 720
    const/16 v0, 0x270f

    .line 721
    .local v0, "i":I
    iput-boolean v2, p0, Linstall/app/KXmlParser;->token:Z

    .line 723
    :cond_0
    :goto_0
    iget v1, p0, Linstall/app/KXmlParser;->type:I

    if-ge v1, v0, :cond_0

    .line 724
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    goto :goto_0
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0}, Linstall/app/KXmlParser;->next()I

    .line 733
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Linstall/app/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Linstall/app/KXmlParser;->next()I

    .line 736
    :cond_0
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Linstall/app/KXmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 738
    :cond_1
    iget v0, p0, Linstall/app/KXmlParser;->type:I

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
    .line 743
    iget v1, p0, Linstall/app/KXmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 745
    :cond_0
    invoke-virtual {p0}, Linstall/app/KXmlParser;->next()I

    .line 746
    iget v1, p0, Linstall/app/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 747
    invoke-virtual {p0}, Linstall/app/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Linstall/app/KXmlParser;->next()I

    .line 752
    :goto_0
    iget v1, p0, Linstall/app/KXmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 754
    :cond_1
    return-object v0

    .line 750
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 758
    iput-boolean v1, p0, Linstall/app/KXmlParser;->isWhitespace:Z

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/KXmlParser;->txtPos:I

    .line 760
    iput-boolean v1, p0, Linstall/app/KXmlParser;->token:Z

    .line 761
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    return v0
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
    .line 765
    iget v0, p0, Linstall/app/KXmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Linstall/app/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Linstall/app/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 770
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iput-boolean p2, p0, Linstall/app/KXmlParser;->processNsp:Z

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    const/4 v0, 0x0

    const-string v1, "relaxed"

    invoke-direct {p0, p1, v0, v1}, Linstall/app/KXmlParser;->isProp(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iput-boolean p2, p0, Linstall/app/KXmlParser;->relaxed:Z

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "r7"    # Ljava/io/InputStream;
    .param p2, "r8"    # Ljava/lang/String;

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: install.app.KXmlParser.setInput(java.io.InputStream, java.lang.String):void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipSubTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linstall/app/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1018
    invoke-virtual {p0, v3, v2, v2}, Linstall/app/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1019
    const/4 v0, 0x1

    .line 1020
    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 1021
    invoke-virtual {p0}, Linstall/app/KXmlParser;->next()I

    move-result v1

    .line 1022
    .local v1, "next":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1023
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1024
    :cond_1
    if-ne v1, v3, :cond_0

    .line 1025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1028
    .end local v1    # "next":I
    :cond_2
    return-void
.end method
