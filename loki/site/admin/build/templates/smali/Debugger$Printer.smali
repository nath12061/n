.class public Linstall/app/Debugger$Printer;
.super Ljava/lang/Object;
.source "Debugger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Debugger;
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Linstall/app/Debugger$Printer;->mTotalLevel:I

    .line 14
    return-void
.end method


# virtual methods
.method public printSeparator(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 25
    const-string v0, "-----------------------"

    invoke-virtual {p0, v0, p1}, Linstall/app/Debugger$Printer;->println(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public println(Ljava/lang/String;I)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 17
    const-string v1, ""

    .line 18
    .local v1, "output":Ljava/lang/String;
    iget v0, p0, Linstall/app/Debugger$Printer;->mTotalLevel:I

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21
    :cond_0
    const-string v2, "Binderd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
