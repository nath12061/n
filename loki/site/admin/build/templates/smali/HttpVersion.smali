.class public final Linstall/app/HttpVersion;
.super Linstall/app/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Linstall/app/HttpVersion;

.field public static final HTTP_1_0:Linstall/app/HttpVersion;

.field public static final HTTP_1_1:Linstall/app/HttpVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-object v0, Linstall/app/HttpVersion;->HTTP_0_9:Linstall/app/HttpVersion;

    .line 8
    sput-object v0, Linstall/app/HttpVersion;->HTTP_1_0:Linstall/app/HttpVersion;

    .line 9
    sput-object v0, Linstall/app/HttpVersion;->HTTP_1_1:Linstall/app/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Linstall/app/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public forVersion(II)Linstall/app/ProtocolVersion;
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
