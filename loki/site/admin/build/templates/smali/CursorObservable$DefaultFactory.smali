.class Linstall/app/CursorObservable$DefaultFactory;
.super Ljava/lang/Object;
.source "CursorObservable.java"

# interfaces
.implements Linstall/app/CursorRowModel$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CursorObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Ljava/lang/Object;",
        "Linstall/app/CursorRowModel$Factory",
        "<TT;>;"
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
    .line 17
    .local p0, "this":Linstall/app/CursorObservable$DefaultFactory;, "Linstall/app/CursorObservable$DefaultFactory<TT;>;"
    .local p1, "rowModelType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Linstall/app/CursorObservable$DefaultFactory;->mRowModelType:Ljava/lang/Class;

    .line 19
    return-void
.end method


# virtual methods
.method public createRowModel(Landroid/content/Context;)Linstall/app/CursorRowModel;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Linstall/app/CursorObservable$DefaultFactory;, "Linstall/app/CursorObservable$DefaultFactory<TT;>;"
    :try_start_0
    iget-object v1, p0, Linstall/app/CursorObservable$DefaultFactory;->mRowModelType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/CursorRowModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CursorObservabled: Factory"

    invoke-static {v1, v0}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 26
    const/4 v1, 0x0

    goto :goto_0
.end method
