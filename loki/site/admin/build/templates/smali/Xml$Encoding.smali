.class public final enum Linstall/app/Xml$Encoding;
.super Ljava/lang/Enum;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/Xml$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/Xml$Encoding;

.field public static final enum ISO_8859_1:Linstall/app/Xml$Encoding;

.field public static final enum US_ASCII:Linstall/app/Xml$Encoding;

.field public static final enum UTF_16:Linstall/app/Xml$Encoding;

.field public static final enum UTF_8:Linstall/app/Xml$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Linstall/app/Xml$Encoding;

    const-string v1, "ISO_8859_1"

    invoke-direct {v0, v1, v2}, Linstall/app/Xml$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Xml$Encoding;->ISO_8859_1:Linstall/app/Xml$Encoding;

    .line 17
    new-instance v0, Linstall/app/Xml$Encoding;

    const-string v1, "US_ASCII"

    invoke-direct {v0, v1, v3}, Linstall/app/Xml$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Xml$Encoding;->US_ASCII:Linstall/app/Xml$Encoding;

    .line 18
    new-instance v0, Linstall/app/Xml$Encoding;

    const-string v1, "UTF_16"

    invoke-direct {v0, v1, v4}, Linstall/app/Xml$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Xml$Encoding;->UTF_16:Linstall/app/Xml$Encoding;

    .line 19
    new-instance v0, Linstall/app/Xml$Encoding;

    const-string v1, "UTF_8"

    invoke-direct {v0, v1, v5}, Linstall/app/Xml$Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/Xml$Encoding;->UTF_8:Linstall/app/Xml$Encoding;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Linstall/app/Xml$Encoding;

    sget-object v1, Linstall/app/Xml$Encoding;->ISO_8859_1:Linstall/app/Xml$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/Xml$Encoding;->US_ASCII:Linstall/app/Xml$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/Xml$Encoding;->UTF_16:Linstall/app/Xml$Encoding;

    aput-object v1, v0, v4

    sget-object v1, Linstall/app/Xml$Encoding;->UTF_8:Linstall/app/Xml$Encoding;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/Xml$Encoding;->$VALUES:[Linstall/app/Xml$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/Xml$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Linstall/app/Xml$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/Xml$Encoding;

    return-object v0
.end method

.method public static values()[Linstall/app/Xml$Encoding;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Linstall/app/Xml$Encoding;->$VALUES:[Linstall/app/Xml$Encoding;

    invoke-virtual {v0}, [Linstall/app/Xml$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/Xml$Encoding;

    return-object v0
.end method
