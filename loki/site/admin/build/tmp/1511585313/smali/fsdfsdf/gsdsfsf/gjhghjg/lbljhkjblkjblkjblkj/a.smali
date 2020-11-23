.class public final Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;
.super Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final fsafsdfsfsdfsfsdfsd:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/b;

    invoke-direct {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/b;-><init>()V

    sput-object v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->sdfsdfsdfsdf:Ljava/lang/String;

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd:[Ljava/lang/String;

    return-void
.end method

.method public static fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;
    .locals 5

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;

    const-string v1, "/proc/%d/stat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sdfsdfsdfsdf()I
    .locals 2

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
