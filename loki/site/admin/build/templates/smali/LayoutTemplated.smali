.class public abstract Linstall/app/LayoutTemplated;
.super Linstall/app/Observabled;
.source "LayoutTemplated.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observabled",
        "<",
        "Linstall/app/LayoutTemplated;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Linstall/app/LayoutTemplated;

    invoke-direct {p0, v0}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract getTemplate()I
.end method

.method public abstract getTemplate(I)I
.end method
