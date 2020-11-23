.class public Linstall/app/ObjectObservabled;
.super Linstall/app/Observabled;
.source "ObjectObservabled.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observabled",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 9
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 10
    return-void
.end method
