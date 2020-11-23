.class public abstract Linstall/app/ArraySource;
.super Linstall/app/Observable;
.source "ArraySource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/Observable",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    .local p0, "this":Linstall/app/ArraySource;, "Linstall/app/ArraySource<TT;>;"
    invoke-direct {p0}, Linstall/app/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public setArray([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/ArraySource;, "Linstall/app/ArraySource<TT;>;"
    .local p1, "value":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Linstall/app/ArraySource;->set(Ljava/lang/Object;)V

    .line 10
    return-void
.end method
