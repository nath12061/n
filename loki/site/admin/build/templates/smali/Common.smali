.class public abstract Linstall/app/Common;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Runnable;
.implements Linstall/app/View$OnClickListener;
.implements Linstall/app/View$OnLongClickListener;
.implements Linstall/app/OnItemClickListener;
.implements Linstall/app/AbsListView$OnScrollListener;
.implements Linstall/app/OnItemSelectedListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Runnable;",
        "Linstall/app/View$OnClickListener;",
        "Linstall/app/View$OnLongClickListener;",
        "Linstall/app/OnItemClickListener;",
        "Linstall/app/AbsListView$OnScrollListener;",
        "Linstall/app/OnItemSelectedListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field protected static final CLEAN_CACHE:I = 0x2

.field protected static final STORE_FILE:I = 0x1


# instance fields
.field private fallback:Z

.field private galleryListen:Z

.field private galleryListener:Linstall/app/OnItemSelectedListener;

.field private handler:Ljava/lang/Object;

.field private lastBottom:I

.field private method:Ljava/lang/String;

.field private methodId:I

.field private params:[Ljava/lang/Object;

.field private scrollState:I

.field private sig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Linstall/app/Common;->galleryListen:Z

    .line 23
    iput v0, p0, Linstall/app/Common;->scrollState:I

    return-void
.end method

.method private checkScrolledBottom(Linstall/app/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Linstall/app/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 109
    invoke-virtual {p1}, Linstall/app/AbsListView;->getCount()I

    move-result v0

    .line 110
    .local v0, "cc":I
    invoke-virtual {p1}, Linstall/app/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 111
    .local v1, "last":I
    if-nez p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    if-eq v0, v2, :cond_2

    .line 112
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Linstall/app/Common;->lastBottom:I

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget v2, p0, Linstall/app/Common;->lastBottom:I

    if-eq v1, v2, :cond_1

    .line 114
    iput v1, p0, Linstall/app/Common;->lastBottom:I

    .line 115
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Linstall/app/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    iget-object v1, p0, Linstall/app/Common;->method:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 42
    move-object v5, p1

    .line 43
    .local v5, "input":[Ljava/lang/Object;
    iget-object v1, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 44
    iget-object v5, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    .line 46
    :cond_0
    iget-object v0, p0, Linstall/app/Common;->handler:Ljava/lang/Object;

    .line 47
    .local v0, "cbo":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 48
    move-object v0, p0

    .line 50
    .end local v0    # "cbo":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Linstall/app/Common;->method:Ljava/lang/String;

    iget-boolean v2, p0, Linstall/app/Common;->fallback:Z

    iget-object v4, p0, Linstall/app/Common;->sig:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Linstall/app/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .end local v5    # "input":[Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 52
    :cond_2
    iget v1, p0, Linstall/app/Common;->methodId:I

    if-eqz v1, :cond_3

    .line 53
    iget v1, p0, Linstall/app/Common;->methodId:I

    packed-switch v1, :pswitch_data_0

    .line 62
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object v1, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Linstall/app/AQUtility;->store(Ljava/io/File;[B)V

    goto :goto_1

    .line 58
    :pswitch_1
    iget-object v1, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v6, v7, v2, v3}, Linstall/app/AQUtility;->cleanCache(Ljava/io/File;JJ)V

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onScrollStateChanged(Linstall/app/ExpandableListView;I)V
    .locals 10
    .param p1, "elv"    # Linstall/app/ExpandableListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 131
    const v8, 0x40ff0004

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Linstall/app/ExpandableListView;->setTag(ILjava/lang/Object;)V

    .line 132
    if-nez p2, :cond_1

    .line 133
    invoke-virtual {p1}, Linstall/app/ExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    .line 134
    .local v3, "first":I
    invoke-virtual {p1}, Linstall/app/ExpandableListView;->getLastVisiblePosition()I

    move-result v8

    sub-int v1, v8, v3

    .line 135
    .local v1, "count":I
    invoke-virtual {p1}, Linstall/app/ExpandableListView;->getExpandableListAdapter()Linstall/app/ExpandableListAdapter;

    move-result-object v2

    .line 136
    .local v2, "ela":Linstall/app/ExpandableListAdapter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v1, :cond_1

    .line 137
    add-int v8, v5, v3

    invoke-virtual {p1, v8}, Linstall/app/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v6

    .line 138
    .local v6, "packed":J
    invoke-static {v6, v7}, Linstall/app/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 139
    .local v4, "group":I
    invoke-static {v6, v7}, Linstall/app/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 140
    .local v0, "child":I
    if-ltz v4, :cond_0

    .line 144
    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 136
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "child":I
    .end local v1    # "count":I
    .end local v2    # "ela":Linstall/app/ExpandableListAdapter;
    .end local v3    # "first":I
    .end local v4    # "group":I
    .end local v5    # "i":I
    .end local v6    # "packed":J
    :cond_1
    return-void
.end method

.method private onScrollStateChanged2(Linstall/app/AbsListView;I)V
    .locals 6
    .param p1, "lv"    # Linstall/app/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 157
    const v4, 0x40ff0004

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Linstall/app/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 158
    if-nez p2, :cond_0

    .line 159
    invoke-virtual {p1}, Linstall/app/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 160
    .local v1, "first":I
    invoke-virtual {p1}, Linstall/app/AbsListView;->getLastVisiblePosition()I

    move-result v4

    sub-int v0, v4, v1

    .line 161
    .local v0, "count":I
    invoke-virtual {p1}, Linstall/app/AbsListView;->getAdapter()Linstall/app/Adapter;

    move-result-object v3

    check-cast v3, Linstall/app/ListAdapter;

    .line 162
    .local v3, "la":Linstall/app/ListAdapter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 163
    add-int v4, v2, v1

    int-to-long v4, v4

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "count":I
    .end local v1    # "first":I
    .end local v2    # "i":I
    .end local v3    # "la":Linstall/app/ListAdapter;
    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 67
    .local v0, "m1":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 68
    .local v2, "m2":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 69
    const/4 v4, 0x1

    .line 74
    :goto_0
    return v4

    .line 71
    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 72
    const/4 v4, 0x0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Linstall/app/Common;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Linstall/app/Common;
    .locals 0
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "fallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/Common;"
        }
    .end annotation

    .prologue
    .line 27
    .local p4, "sig":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Linstall/app/Common;->handler:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Linstall/app/Common;->method:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Linstall/app/Common;->fallback:Z

    .line 30
    iput-object p4, p0, Linstall/app/Common;->sig:[Ljava/lang/Class;

    .line 31
    return-object p0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Linstall/app/Common;->scrollState:I

    return v0
.end method

.method public varargs method(I[Ljava/lang/Object;)Linstall/app/Common;
    .locals 0
    .param p1, "methodId"    # I
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 35
    iput p1, p0, Linstall/app/Common;->methodId:I

    .line 36
    iput-object p2, p0, Linstall/app/Common;->params:[Ljava/lang/Object;

    .line 37
    return-object p0
.end method

.method public onClick(Linstall/app/View;)V
    .locals 2
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Linstall/app/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public onItemClick(Linstall/app/AdapterView;Linstall/app/View;IJ)V
    .locals 4
    .param p2, "v"    # Linstall/app/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AdapterView",
            "<*>;",
            "Linstall/app/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parent":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Linstall/app/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public onLongClick(Linstall/app/View;)Z
    .locals 3
    .param p1, "v"    # Linstall/app/View;

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v2}, Linstall/app/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 88
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 90
    :cond_0
    return v1
.end method

.method public onScroll(Linstall/app/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Linstall/app/AbsListView;
    .param p2, "first"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 98
    iget v0, p0, Linstall/app/Common;->scrollState:I

    invoke-direct {p0, p1, v0}, Linstall/app/Common;->checkScrolledBottom(Linstall/app/AbsListView;I)V

    .line 100
    return-void
.end method

.method public onScrollStateChanged(Linstall/app/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Linstall/app/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 120
    iput p2, p0, Linstall/app/Common;->scrollState:I

    .line 121
    invoke-direct {p0, p1, p2}, Linstall/app/Common;->checkScrolledBottom(Linstall/app/AbsListView;I)V

    .line 122
    instance-of v0, p1, Linstall/app/ExpandableListView;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Linstall/app/ExpandableListView;

    .end local p1    # "view":Linstall/app/AbsListView;
    invoke-direct {p0, p1, p2}, Linstall/app/Common;->onScrollStateChanged(Linstall/app/ExpandableListView;I)V

    .line 128
    :goto_0
    return-void

    .line 125
    .restart local p1    # "view":Linstall/app/AbsListView;
    :cond_0
    invoke-direct {p0, p1, p2}, Linstall/app/Common;->onScrollStateChanged2(Linstall/app/AbsListView;I)V

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Linstall/app/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
