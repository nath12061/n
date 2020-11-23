.class public final Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;
.super Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final fsafsdfsfsdfsfsdfsd:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fgjyukukuiki;

    invoke-direct {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fgjyukukuiki;-><init>()V

    sput-object v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/htyjyukuilulululu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/fgjyukukuiki;)V
    .locals 0

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->sdfsdfsdfsdf:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    :try_start_0
    iget-object v4, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Ljava/util/ArrayList;

    new-instance v5, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/htyjyukuilulululu;

    invoke-direct {v5, v3}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/htyjyukuilulululu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;
    .locals 5

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;

    const-string v1, "/proc/%d/cgroup"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/htyjyukuilulululu;
    .locals 6

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/htyjyukuilulululu;

    iget-object v1, v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/htyjyukuilulululu;->sdfsdfsdfsdf:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
