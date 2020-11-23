.class public abstract Linstall/app/CharSequenceObservable;
.super Linstall/app/Observable;
.source "CharSequenceObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/Observable",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 6
    const-class v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Linstall/app/Observable;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 7
    return-void
.end method
