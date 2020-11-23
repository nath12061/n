.class public Linstall/app/DoubleObservabled;
.super Linstall/app/Observabled;
.source "DoubleObservabled.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observabled",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 9
    const-class v0, Ljava/lang/Double;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 10
    return-void
.end method
