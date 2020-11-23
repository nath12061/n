.class abstract Linstall/app/CursorObservabled$DefaultFactory;
.super Ljava/lang/Object;
.source "CursorObservabled.java"

# interfaces
.implements Linstall/app/CursorRowModeld$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CursorObservabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DefaultFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/CursorRowModeld$Factory",
        "<",
        "Linstall/app/CursorRowModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRowModelType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Linstall/app/CursorObservabled$DefaultFactory;, "Linstall/app/CursorObservabled$DefaultFactory<TT;>;"
    .local p1, "rowModelType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Linstall/app/CursorObservabled$DefaultFactory;->mRowModelType:Ljava/lang/Class;

    .line 18
    return-void
.end method


# virtual methods
.method public createRowModel(Linstall/app/Context;)Linstall/app/CursorRowModel;
    .locals 1
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 27
    .local p0, "this":Linstall/app/CursorObservabled$DefaultFactory;, "Linstall/app/CursorObservabled$DefaultFactory<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createRowModel(Linstall/app/Context;)Linstall/app/CursorRowModeld;
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Linstall/app/CursorObservabled$DefaultFactory;, "Linstall/app/CursorObservabled$DefaultFactory<TT;>;"
    invoke-virtual {p0, p1}, Linstall/app/CursorObservabled$DefaultFactory;->createRowModel(Linstall/app/Context;)Linstall/app/CursorRowModel;

    move-result-object v0

    return-object v0
.end method
