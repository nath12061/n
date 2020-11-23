.class public abstract Linstall/app/CursorSourceAdapterd;
.super Linstall/app/CursorAdapter;
.source "CursorSourceAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModeld;",
        ">",
        "Linstall/app/CursorAdapter;"
    }
.end annotation


# instance fields
.field protected fields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field protected idField:Ljava/lang/reflect/Field;

.field protected final mContext:Linstall/app/Context;

.field protected mDropDownLayoutId:I

.field protected mLayoutId:I

.field protected final mRowTypeMap:Linstall/app/CursorRowTypeMapd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowTypeMapd",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linstall/app/Context;Linstall/app/CursorRowTypeMapd;II)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Linstall/app/CursorRowTypeMapd",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    .local p2, "rowTypeMap":Linstall/app/CursorRowTypeMapd;, "Linstall/app/CursorRowTypeMapd<TT;>;"
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p2}, Linstall/app/CursorRowTypeMapd;->getCursor()Linstall/app/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Linstall/app/CursorAdapter;-><init>(Linstall/app/Context;Linstall/app/Cursor;)V

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Linstall/app/CursorSourceAdapterd;->fields:Ljava/util/WeakHashMap;

    .line 12
    iput v1, p0, Linstall/app/CursorSourceAdapterd;->mDropDownLayoutId:I

    .line 13
    iput v1, p0, Linstall/app/CursorSourceAdapterd;->mLayoutId:I

    .line 18
    iput-object p1, p0, Linstall/app/CursorSourceAdapterd;->mContext:Linstall/app/Context;

    .line 19
    iput-object p2, p0, Linstall/app/CursorSourceAdapterd;->mRowTypeMap:Linstall/app/CursorRowTypeMapd;

    .line 20
    iput p3, p0, Linstall/app/CursorSourceAdapterd;->mLayoutId:I

    .line 21
    iput p4, p0, Linstall/app/CursorSourceAdapterd;->mDropDownLayoutId:I

    .line 22
    invoke-direct {p0}, Linstall/app/CursorSourceAdapterd;->init()V

    .line 23
    return-void
.end method

.method private constructRow(Linstall/app/Context;Linstall/app/Cursor;)Linstall/app/CursorRowModeld;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "Linstall/app/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    iget-object v1, p0, Linstall/app/CursorSourceAdapterd;->mRowTypeMap:Linstall/app/CursorRowTypeMapd;

    invoke-virtual {v1}, Linstall/app/CursorRowTypeMapd;->getFactory()Linstall/app/CursorRowModeld$Factory;

    move-result-object v1

    invoke-interface {v1, p1}, Linstall/app/CursorRowModeld$Factory;->createRowModel(Linstall/app/Context;)Linstall/app/CursorRowModeld;

    move-result-object v0

    .line 98
    .local v0, "row":Linstall/app/CursorRowModeld;, "TT;"
    invoke-virtual {v0, p1}, Linstall/app/CursorRowModeld;->setContext(Linstall/app/Context;)V

    .line 99
    invoke-virtual {v0, p2}, Linstall/app/CursorRowModeld;->setCursor(Linstall/app/Cursor;)V

    .line 100
    return-object v0
.end method

.method private getAttachedObservableCollection(Linstall/app/View;)Linstall/app/CursorRowModeld;
    .locals 1
    .param p1, "convertView"    # Linstall/app/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 37
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    iget-object v1, p0, Linstall/app/CursorSourceAdapterd;->mRowTypeMap:Linstall/app/CursorRowTypeMapd;

    invoke-virtual {v1}, Linstall/app/CursorRowTypeMapd;->getRowType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 38
    .local v0, "f":Ljava/lang/reflect/Field;
    const-class v4, Linstall/app/CursorFieldd;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const-class v4, Linstall/app/IdFieldd;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    iput-object v0, p0, Linstall/app/CursorSourceAdapterd;->idField:Ljava/lang/reflect/Field;

    .line 42
    :cond_0
    iget-object v4, p0, Linstall/app/CursorSourceAdapterd;->fields:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method private newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;I)Linstall/app/View;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;
    .param p4, "layoutId"    # I

    .prologue
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-direct {p0, p1, p2}, Linstall/app/CursorSourceAdapterd;->constructRow(Linstall/app/Context;Linstall/app/Cursor;)Linstall/app/CursorRowModeld;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private putAttachedObservableCollection(Linstall/app/View;Linstall/app/CursorRowModeld;)V
    .locals 0
    .param p1, "convertView"    # Linstall/app/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    .local p2, "collection":Linstall/app/CursorRowModeld;, "TT;"
    return-void
.end method


# virtual methods
.method public bindView(Linstall/app/View;Linstall/app/Context;Linstall/app/Cursor;)V
    .locals 4
    .param p1, "view"    # Linstall/app/View;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 48
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/CursorSourceAdapterd;->getAttachedObservableCollection(Linstall/app/View;)Linstall/app/CursorRowModeld;

    move-result-object v1

    .line 49
    .local v1, "row":Linstall/app/CursorRowModeld;, "TT;"
    iget-object v2, p0, Linstall/app/CursorSourceAdapterd;->fields:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/CursorFieldd;

    invoke-virtual {v2, p3}, Linstall/app/CursorFieldd;->fillValue(Linstall/app/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0

    .line 55
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_0
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 26
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    iget-object v2, p0, Linstall/app/CursorSourceAdapterd;->mContext:Linstall/app/Context;

    invoke-virtual {p0}, Linstall/app/CursorSourceAdapterd;->getCursor()Linstall/app/Cursor;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Linstall/app/CursorSourceAdapterd;->constructRow(Linstall/app/Context;Linstall/app/Cursor;)Linstall/app/CursorRowModeld;

    move-result-object v1

    .line 27
    .local v1, "row":Linstall/app/CursorRowModeld;, "TT;"
    iget-object v2, p0, Linstall/app/CursorSourceAdapterd;->fields:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/CursorFieldd;

    invoke-virtual {p0}, Linstall/app/CursorSourceAdapterd;->getCursor()Linstall/app/Cursor;

    move-result-object v4

    invoke-virtual {v2, v4}, Linstall/app/CursorFieldd;->fillValue(Linstall/app/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    goto :goto_0

    .line 33
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_0
    return-object v1
.end method

.method public newDropDownView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 62
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    iget v0, p0, Linstall/app/CursorSourceAdapterd;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    iget v0, p0, Linstall/app/CursorSourceAdapterd;->mDropDownLayoutId:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorSourceAdapterd;->newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/CursorSourceAdapterd;->mLayoutId:I

    goto :goto_0
.end method

.method public newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "cursor"    # Linstall/app/Cursor;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 58
    .local p0, "this":Linstall/app/CursorSourceAdapterd;, "Linstall/app/CursorSourceAdapterd<TT;>;"
    iget v0, p0, Linstall/app/CursorSourceAdapterd;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorSourceAdapterd;->newView(Linstall/app/Context;Linstall/app/Cursor;Linstall/app/ViewGroup;I)Linstall/app/View;

    move-result-object v0

    return-object v0
.end method
