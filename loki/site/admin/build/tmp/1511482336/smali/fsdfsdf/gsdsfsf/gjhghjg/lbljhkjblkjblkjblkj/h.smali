.class public Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/h;
.super Ljava/lang/Object;


# instance fields
.field public fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

.field public sdfsdfsdfsdf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/h;->sdfsdfsdfsdf:Ljava/lang/String;

    iput-object p2, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/h;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    return-void
.end method

.method public static fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x5d

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x32

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
