.class public final Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;
.super Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/d;

    invoke-direct {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/d;-><init>()V

    sput-object v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;
    .locals 5

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;

    const-string v1, "/proc/%d/status"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()I
    .locals 2

    :try_start_0
    const-string v0, "Uid"

    invoke-virtual {p0, v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;->sdfsdfsdfsdf:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
