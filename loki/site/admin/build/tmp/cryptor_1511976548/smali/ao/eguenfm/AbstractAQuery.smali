.class public abstract Linstall/app/AbstractAQuery;
.super Ljava/lang/Object;
.source "AbstractAQuery.java"

# interfaces
.implements Linstall/app/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/AbstractAQuery",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Linstall/app/Constants;"
    }
.end annotation


# static fields
.field private static LAYER_TYPE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ON_CLICK_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ON_ITEM_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final OVER_SCROLL_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static PENDING_TRANSITION_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TEXT_CHANGE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dialogs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Linstall/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static inflater:Linstall/app/LayoutInflater;


# instance fields
.field private act:Linstall/app/Activity;

.field protected ah:Linstall/app/AccountHandle;

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private context:Linstall/app/Context;

.field private policy:I

.field protected progress:Ljava/lang/Object;

.field private root:Linstall/app/View;

.field private trans:Linstall/app/Transformer;

.field protected view:Linstall/app/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Linstall/app/Paint;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    .line 8
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Linstall/app/View;

    aput-object v1, v0, v2

    sput-object v0, Linstall/app/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    .line 9
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Linstall/app/AdapterView;

    aput-object v1, v0, v2

    const-class v1, Linstall/app/View;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    .line 10
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Linstall/app/AbsListView;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    .line 11
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Linstall/app/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    .line 12
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Linstall/app/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    .line 13
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Linstall/app/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Linstall/app/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    .local p0, "this":Linstall/app/AbstractAQuery;, "Linstall/app/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/AbstractAQuery;->policy:I

    return-void
.end method


# virtual methods
.method protected create(Linstall/app/View;)Linstall/app/AbstractAQuery;
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Linstall/app/AbstractAQuery;, "Linstall/app/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 31
    .local v0, "result":Linstall/app/AbstractAQuery;, "TT;"
    return-object v0
.end method
