.class public Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final serfwefewfwefewef:I

.field public final zxcvxvsdvsvsvs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    sput-object v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->serfwefewfwefewef:I

    invoke-static {p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->fsafsdfsfsdfsfsdfsd(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->zxcvxvsdvsvsvs:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->zxcvxvsdvsvsvs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->serfwefewfwefewef:I

    return-void
.end method

.method static fsafsdfsfsdfsfsdfsd(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;

    move-result-object v0

    invoke-virtual {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sdfsdfsdfsdf()Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;
    .locals 1

    iget v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->serfwefewfwefewef:I

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;->fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/wrrgehehehehe;

    move-result-object v0

    return-object v0
.end method

.method public serfwefewfwefewef()Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;
    .locals 1

    iget v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->serfwefewfwefewef:I

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;->fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/c;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->zxcvxvsdvsvsvs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->serfwefewfwefewef:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public zxcvxvsdvsvsvs()Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;
    .locals 1

    iget v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/eryryhrtytujrtujrurt;->serfwefewfwefewef:I

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;->fsafsdfsfsdfsfsdfsd(I)Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/a;

    move-result-object v0

    return-object v0
.end method
