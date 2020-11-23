.class public Linstall/app/IntegerObservabled;
.super Linstall/app/Observabled;
.source "IntegerObservabled.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observabled",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 9
    const-class v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 10
    return-void
.end method
