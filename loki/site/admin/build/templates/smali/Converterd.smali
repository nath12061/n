.class public abstract Linstall/app/Converterd;
.super Linstall/app/TwoWayDependentObservabled;
.source "Converterd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/TwoWayDependentObservabled;"
    }
.end annotation


# instance fields
.field private mContext:Linstall/app/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Linstall/app/IObservabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Linstall/app/IObservabled",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Linstall/app/Converterd;, "Linstall/app/Converterd<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "dependents":[Linstall/app/IObservabled;, "[Linstall/app/IObservabled<*>;"
    invoke-direct {p0}, Linstall/app/TwoWayDependentObservabled;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public ConvertBack(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "outResult"    # [Ljava/lang/Object;

    .prologue
    .line 12
    .local p0, "this":Linstall/app/Converterd;, "Linstall/app/Converterd<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Linstall/app/Context;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Linstall/app/Converterd;, "Linstall/app/Converterd<TT;>;"
    iget-object v0, p0, Linstall/app/Converterd;->mContext:Linstall/app/Context;

    return-object v0
.end method

.method public setContext(Linstall/app/Context;)V
    .locals 0
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 16
    .local p0, "this":Linstall/app/Converterd;, "Linstall/app/Converterd<TT;>;"
    iput-object p1, p0, Linstall/app/Converterd;->mContext:Linstall/app/Context;

    .line 17
    return-void
.end method
