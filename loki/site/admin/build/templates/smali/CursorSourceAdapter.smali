.class public Linstall/app/CursorSourceAdapter;
.super Landroid/widget/CursorAdapter;
.source "CursorSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/CursorRowModel;",
        ">",
        "Landroid/widget/CursorAdapter;"
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

.field protected final mContext:Landroid/content/Context;

.field protected mDropDownLayoutId:I

.field protected mLayoutId:I

.field protected final mRowTypeMap:Linstall/app/CursorRowTypeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linstall/app/CursorRowTypeMap",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Linstall/app/CursorRowTypeMap;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .param p4, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Linstall/app/CursorRowTypeMap",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    .local p2, "rowTypeMap":Linstall/app/CursorRowTypeMap;, "Linstall/app/CursorRowTypeMap<TT;>;"
    const/4 v1, -0x1

    .line 25
    invoke-virtual {p2}, Linstall/app/CursorRowTypeMap;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Linstall/app/CursorSourceAdapter;->fields:Ljava/util/WeakHashMap;

    .line 20
    iput v1, p0, Linstall/app/CursorSourceAdapter;->mDropDownLayoutId:I

    .line 21
    iput v1, p0, Linstall/app/CursorSourceAdapter;->mLayoutId:I

    .line 26
    iput-object p1, p0, Linstall/app/CursorSourceAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Linstall/app/CursorSourceAdapter;->mRowTypeMap:Linstall/app/CursorRowTypeMap;

    .line 28
    iput p3, p0, Linstall/app/CursorSourceAdapter;->mLayoutId:I

    .line 29
    iput p4, p0, Linstall/app/CursorSourceAdapter;->mDropDownLayoutId:I

    .line 30
    invoke-direct {p0}, Linstall/app/CursorSourceAdapter;->init()V

    .line 31
    return-void
.end method

.method private constructRow(Landroid/content/Context;Landroid/database/Cursor;)Linstall/app/CursorRowModel;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    iget-object v1, p0, Linstall/app/CursorSourceAdapter;->mRowTypeMap:Linstall/app/CursorRowTypeMap;

    invoke-virtual {v1}, Linstall/app/CursorRowTypeMap;->getFactory()Linstall/app/CursorRowModel$Factory;

    move-result-object v1

    invoke-interface {v1, p1}, Linstall/app/CursorRowModel$Factory;->createRowModel(Landroid/content/Context;)Linstall/app/CursorRowModel;

    move-result-object v0

    .line 104
    .local v0, "row":Linstall/app/CursorRowModel;, "TT;"
    invoke-virtual {v0, p1}, Linstall/app/CursorRowModel;->setContext(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, p2}, Linstall/app/CursorRowModel;->setCursor(Landroid/database/Cursor;)V

    .line 106
    return-object v0
.end method

.method private getAttachedObservableCollection(Landroid/view/View;)Linstall/app/CursorRowModel;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    const v1, 0x7f020005

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "collections":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    .end local v0    # "collections":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "collections":Ljava/lang/Object;
    :cond_0
    check-cast v0, Linstall/app/CursorRowModel;

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 45
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    iget-object v1, p0, Linstall/app/CursorSourceAdapter;->mRowTypeMap:Linstall/app/CursorRowTypeMap;

    invoke-virtual {v1}, Linstall/app/CursorRowTypeMap;->getRowType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 46
    .local v0, "f":Ljava/lang/reflect/Field;
    const-class v4, Linstall/app/CursorField;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const-class v4, Linstall/app/IdField;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iput-object v0, p0, Linstall/app/CursorSourceAdapter;->idField:Ljava/lang/reflect/Field;

    .line 50
    :cond_0
    iget-object v4, p0, Linstall/app/CursorSourceAdapter;->fields:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method private newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "layoutId"    # I

    .prologue
    .line 75
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, p4, p3, v5}, Linstall/app/Binder;->inflateView(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Linstall/app/Binder$InflateResult;

    move-result-object v2

    .line 76
    .local v2, "result":Linstall/app/Binder$InflateResult;
    iget-object v3, v2, Linstall/app/Binder$InflateResult;->rootView:Landroid/view/View;

    .line 77
    .local v3, "returnView":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Linstall/app/CursorSourceAdapter;->constructRow(Landroid/content/Context;Landroid/database/Cursor;)Linstall/app/CursorRowModel;

    move-result-object v4

    .line 78
    .local v4, "row":Linstall/app/CursorRowModel;, "TT;"
    iget-object v5, v2, Linstall/app/Binder$InflateResult;->processedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-static {}, Linstall/app/AttributeBinder;->getInstance()Linstall/app/AttributeBinder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v6, v5, v4}, Linstall/app/AttributeBinder;->bindView(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "result":Linstall/app/Binder$InflateResult;
    .end local v3    # "returnView":Landroid/view/View;
    .end local v4    # "row":Linstall/app/CursorRowModel;, "TT;"
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v3, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 82
    .restart local v1    # "it":Ljava/util/Iterator;
    .restart local v2    # "result":Linstall/app/Binder$InflateResult;
    .restart local v3    # "returnView":Landroid/view/View;
    .restart local v4    # "row":Linstall/app/CursorRowModel;, "TT;"
    :cond_0
    :try_start_1
    invoke-direct {p0, v3, v4}, Linstall/app/CursorSourceAdapter;->putAttachedObservableCollection(Landroid/view/View;Linstall/app/CursorRowModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private putAttachedObservableCollection(Landroid/view/View;Linstall/app/CursorRowModel;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    .local p2, "collection":Linstall/app/CursorRowModel;, "TT;"
    const v0, 0x7f020005

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    invoke-direct {p0, p1}, Linstall/app/CursorSourceAdapter;->getAttachedObservableCollection(Landroid/view/View;)Linstall/app/CursorRowModel;

    move-result-object v1

    .line 57
    .local v1, "row":Linstall/app/CursorRowModel;, "TT;"
    iget-object v2, p0, Linstall/app/CursorSourceAdapter;->fields:Ljava/util/WeakHashMap;

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

    .line 59
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/CursorField;

    invoke-virtual {v2, p3}, Linstall/app/CursorField;->fillValue(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    goto :goto_0

    .line 63
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_0
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 34
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    iget-object v2, p0, Linstall/app/CursorSourceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Linstall/app/CursorSourceAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Linstall/app/CursorSourceAdapter;->constructRow(Landroid/content/Context;Landroid/database/Cursor;)Linstall/app/CursorRowModel;

    move-result-object v1

    .line 35
    .local v1, "row":Linstall/app/CursorRowModel;, "TT;"
    iget-object v2, p0, Linstall/app/CursorSourceAdapter;->fields:Ljava/util/WeakHashMap;

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

    .line 37
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/CursorField;

    invoke-virtual {p0}, Linstall/app/CursorSourceAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v4}, Linstall/app/CursorField;->fillValue(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    goto :goto_0

    .line 41
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_0
    return-object v1
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    iget v0, p0, Linstall/app/CursorSourceAdapter;->mDropDownLayoutId:I

    if-lez v0, :cond_0

    iget v0, p0, Linstall/app/CursorSourceAdapter;->mDropDownLayoutId:I

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorSourceAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Linstall/app/CursorSourceAdapter;->mLayoutId:I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    .local p0, "this":Linstall/app/CursorSourceAdapter;, "Linstall/app/CursorSourceAdapter<TT;>;"
    iget v0, p0, Linstall/app/CursorSourceAdapter;->mLayoutId:I

    invoke-direct {p0, p1, p2, p3, v0}, Linstall/app/CursorSourceAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
