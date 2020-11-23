.class public Linstall/app/CursorObservabled;
.super Linstall/app/Observabled;
.source "CursorObservabled.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CursorObservabled$DefaultFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Linstall/app/Observabled",
        "<",
        "Linstall/app/CursorObservabled;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Linstall/app/Cursor;

.field private final mCursorFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Linstall/app/CursorRowModeld$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowModeld$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mRowModelType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Linstall/app/CursorRowModeld$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Linstall/app/CursorRowModeld$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    .local p1, "rowModelType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Linstall/app/CursorRowModeld$Factory;, "Linstall/app/CursorRowModeld$Factory<TT;>;"
    const-class v0, Linstall/app/CursorObservabled;

    invoke-direct {p0, v0}, Linstall/app/Observabled;-><init>(Ljava/lang/Class;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/CursorObservabled;->mCursorFields:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Linstall/app/CursorObservabled;->mRowModelType:Ljava/lang/Class;

    .line 37
    iput-object p2, p0, Linstall/app/CursorObservabled;->mFactory:Linstall/app/CursorRowModeld$Factory;

    .line 38
    invoke-direct {p0}, Linstall/app/CursorObservabled;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 42
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    iget-object v1, p0, Linstall/app/CursorObservabled;->mRowModelType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 43
    .local v0, "f":Ljava/lang/reflect/Field;
    const-class v4, Linstall/app/CursorFieldd;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Linstall/app/CursorObservabled;->mCursorFields:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_1
    return-void
.end method


# virtual methods
.method public fillData(Linstall/app/CursorRowModeld;Linstall/app/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Linstall/app/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Linstall/app/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    .local p1, "rowModel":Linstall/app/CursorRowModeld;, "TT;"
    iget-object v1, p0, Linstall/app/CursorObservabled;->mCursorFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linstall/app/CursorFieldd;

    invoke-virtual {v1, p2}, Linstall/app/CursorFieldd;->fillValue(Linstall/app/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public get()Linstall/app/CursorObservabled;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linstall/app/CursorObservabled",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    invoke-virtual {p0}, Linstall/app/CursorObservabled;->get()Linstall/app/CursorObservabled;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Linstall/app/Cursor;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    iget-object v0, p0, Linstall/app/CursorObservabled;->mCursor:Linstall/app/Cursor;

    return-object v0
.end method

.method public getId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public newRowModel(Linstall/app/Context;)Linstall/app/CursorRowModeld;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    iget-object v1, p0, Linstall/app/CursorObservabled;->mFactory:Linstall/app/CursorRowModeld$Factory;

    invoke-interface {v1, p1}, Linstall/app/CursorRowModeld$Factory;->createRowModel(Linstall/app/Context;)Linstall/app/CursorRowModeld;

    move-result-object v0

    .line 64
    .local v0, "row":Linstall/app/CursorRowModeld;, "TT;"
    iget-object v1, p0, Linstall/app/CursorObservabled;->mCursor:Linstall/app/Cursor;

    invoke-virtual {v0, v1}, Linstall/app/CursorRowModeld;->setCursor(Linstall/app/Cursor;)V

    .line 65
    invoke-virtual {v0, p1}, Linstall/app/CursorRowModeld;->setContext(Linstall/app/Context;)V

    .line 66
    return-object v0
.end method

.method public setCursor(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "c"    # Linstall/app/Cursor;

    .prologue
    .line 50
    .local p0, "this":Linstall/app/CursorObservabled;, "Linstall/app/CursorObservabled<TT;>;"
    iput-object p1, p0, Linstall/app/CursorObservabled;->mCursor:Linstall/app/Cursor;

    .line 51
    invoke-virtual {p0}, Linstall/app/CursorObservabled;->notifyChanged()V

    .line 52
    return-void
.end method
