.class public Linstall/app/Debuggerd$Printer;
.super Ljava/lang/Object;
.source "Debuggerd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Debuggerd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Printer"
.end annotation


# instance fields
.field final mTotalLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "totalLevel"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Linstall/app/Debuggerd$Printer;->mTotalLevel:I

    .line 12
    return-void
.end method


# virtual methods
.method public printSeparator(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 23
    const-string v0, "-----------------------"

    invoke-virtual {p0, v0, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public println(Ljava/lang/String;I)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 15
    const-string v1, ""

    .line 16
    .local v1, "output":Ljava/lang/String;
    iget v0, p0, Linstall/app/Debuggerd$Printer;->mTotalLevel:I

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
