.class Linstall/app/ObservableMapper$MockCommand;
.super Ljava/lang/Object;
.source "ObservableMapper.java"

# interfaces
.implements Linstall/app/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ObservableMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockCommand"
.end annotation


# instance fields
.field private command:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Linstall/app/Command;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linstall/app/ObservableMapper;


# direct methods
.method private constructor <init>(Linstall/app/ObservableMapper;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Linstall/app/ObservableMapper$MockCommand;->this$0:Linstall/app/ObservableMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/ObservableMapper;Linstall/app/ObservableMapper$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/ObservableMapper;
    .param p2, "x1"    # Linstall/app/ObservableMapper$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Linstall/app/ObservableMapper$MockCommand;-><init>(Linstall/app/ObservableMapper;)V

    return-void
.end method


# virtual methods
.method public varargs Invoke(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 25
    iget-object v0, p0, Linstall/app/ObservableMapper$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Linstall/app/ObservableMapper$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Linstall/app/CollectionCommand;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Linstall/app/ObservableMapper$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/CollectionCommand;

    iget-object v1, p0, Linstall/app/ObservableMapper$MockCommand;->this$0:Linstall/app/ObservableMapper;

    iget v1, v1, Linstall/app/ObservableMapper;->mappedPosition:I

    invoke-interface {v0, v1}, Linstall/app/CollectionCommand;->Invoke(I)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Linstall/app/ObservableMapper$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Command;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Linstall/app/ObservableMapper$MockCommand;->this$0:Linstall/app/ObservableMapper;

    iget v3, v3, Linstall/app/ObservableMapper;->mappedPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p1, v1}, Linstall/app/Command;->Invoke(Landroid/view/View;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public changeCommand(Linstall/app/Command;)V
    .locals 1
    .param p1, "newCommand"    # Linstall/app/Command;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linstall/app/ObservableMapper$MockCommand;->command:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method
