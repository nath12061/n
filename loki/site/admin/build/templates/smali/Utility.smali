.class public Linstall/app/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimpleAdapter(Landroid/content/Context;Ljava/lang/Object;II)Landroid/widget/Adapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "collection"    # Ljava/lang/Object;
    .param p2, "layoutId"    # I
    .param p3, "dropDownLayoutId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    instance-of v0, p1, Linstall/app/IObservableCollection;

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Linstall/app/CollectionAdapter;

    invoke-static {}, Linstall/app/Binder;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast p1, Linstall/app/IObservableCollection;

    .end local p1    # "collection":Ljava/lang/Object;
    invoke-direct {v0, v1, p1, p2, p3}, Linstall/app/CollectionAdapter;-><init>(Landroid/content/Context;Linstall/app/IObservableCollection;II)V

    .line 17
    :goto_0
    return-object v0

    .line 10
    .restart local p1    # "collection":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Linstall/app/CursorObservable;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Linstall/app/CursorObservableAdapter;

    invoke-static {}, Linstall/app/Binder;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast p1, Linstall/app/CursorObservable;

    .end local p1    # "collection":Ljava/lang/Object;
    invoke-direct {v0, v1, p1, p2, p3}, Linstall/app/CursorObservableAdapter;-><init>(Landroid/content/Context;Linstall/app/CursorObservable;II)V

    goto :goto_0

    .line 12
    .restart local p1    # "collection":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Linstall/app/CursorRowTypeMap;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Linstall/app/CursorSourceAdapter;

    invoke-static {}, Linstall/app/Binder;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast p1, Linstall/app/CursorRowTypeMap;

    .end local p1    # "collection":Ljava/lang/Object;
    invoke-direct {v0, v1, p1, p2, p3}, Linstall/app/CursorSourceAdapter;-><init>(Landroid/content/Context;Linstall/app/CursorRowTypeMap;II)V

    goto :goto_0

    .line 14
    .restart local p1    # "collection":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Linstall/app/ArrayAdapter;

    invoke-static {}, Linstall/app/Binder;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "collection":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Linstall/app/ArrayAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Object;II)V

    goto :goto_0

    .line 17
    .restart local p1    # "collection":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
