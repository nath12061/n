.class public Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;
.super Ljava/io/File;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final sdfsdfsdfsdf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/reyeyreyeyeyey;

    invoke-direct {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/reyeyreyeyeyey;-><init>()V

    sput-object v0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->sdfsdfsdfsdf:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->sdfsdfsdfsdf:Ljava/lang/String;

    return-void
.end method

.method protected static sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->sdfsdfsdfsdf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/uiiliuluiiuluilulu;->sdfsdfsdfsdf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
