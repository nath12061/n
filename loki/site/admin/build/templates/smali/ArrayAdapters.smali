.class public Linstall/app/ArrayAdapters;
.super Linstall/app/BaseAdapter;
.source "ArrayAdapters.java"

# interfaces
.implements Linstall/app/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linstall/app/BaseAdapter;",
        "Linstall/app/Filterable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Context;I)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 7
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;II)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 11
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;IILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;II[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p4, "tArr":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;ILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Context;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p3, "tArr":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Linstall/app/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromResource(Linstall/app/Context;II)Linstall/app/ArrayAdapters;
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "textArrayResId"    # I
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Context;",
            "II)",
            "Linstall/app/ArrayAdapters",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Linstall/app/Context;
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 64
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDropDownView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 88
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFilter()Linstall/app/Filter;
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Linstall/app/View;
    .param p3, "parent"    # Linstall/app/ViewGroup;

    .prologue
    .line 80
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDropDownViewResource(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 84
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotifyOnChange(Z)V
    .locals 2
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 56
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Linstall/app/ArrayAdapters;, "Linstall/app/ArrayAdapters<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
