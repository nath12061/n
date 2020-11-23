.class public abstract Linstall/app/Converter;
.super Linstall/app/TwoWayDependentObservable;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/TwoWayDependentObservable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Linstall/app/IObservable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Linstall/app/IObservable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Linstall/app/Converter;, "Linstall/app/Converter<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "dependents":[Linstall/app/IObservable;, "[Linstall/app/IObservable<*>;"
    invoke-direct {p0, p1, p2}, Linstall/app/TwoWayDependentObservable;-><init>(Ljava/lang/Class;[Linstall/app/IObservable;)V

    .line 10
    return-void
.end method


# virtual methods
.method public ConvertBack(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "outResult"    # [Ljava/lang/Object;

    .prologue
    .line 13
    .local p0, "this":Linstall/app/Converter;, "Linstall/app/Converter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Linstall/app/Converter;, "Linstall/app/Converter<TT;>;"
    iget-object v0, p0, Linstall/app/Converter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    .local p0, "this":Linstall/app/Converter;, "Linstall/app/Converter<TT;>;"
    iput-object p1, p0, Linstall/app/Converter;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method
