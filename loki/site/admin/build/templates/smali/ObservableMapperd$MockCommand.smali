.class Linstall/app/ObservableMapperd$MockCommand;
.super Ljava/lang/Object;
.source "ObservableMapperd.java"

# interfaces
.implements Linstall/app/Commandd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ObservableMapperd;
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
            "Linstall/app/Commandd;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linstall/app/ObservableMapperd;


# direct methods
.method private constructor <init>(Linstall/app/ObservableMapperd;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Linstall/app/ObservableMapperd$MockCommand;->this$0:Linstall/app/ObservableMapperd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/ObservableMapperd;Linstall/app/ObservableMapperd$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/ObservableMapperd;
    .param p2, "x1"    # Linstall/app/ObservableMapperd$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Linstall/app/ObservableMapperd$MockCommand;-><init>(Linstall/app/ObservableMapperd;)V

    return-void
.end method


# virtual methods
.method public varargs Invoke(Linstall/app/View;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "view"    # Linstall/app/View;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 23
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Linstall/app/CollectionCommandd;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/CollectionCommandd;

    iget-object v1, p0, Linstall/app/ObservableMapperd$MockCommand;->this$0:Linstall/app/ObservableMapperd;

    iget v1, v1, Linstall/app/ObservableMapperd;->mappedPosition:I

    invoke-interface {v0, v1}, Linstall/app/CollectionCommandd;->Invoke(I)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Linstall/app/ObservableMapperd$MockCommand;->command:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linstall/app/Commandd;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Linstall/app/ObservableMapperd$MockCommand;->this$0:Linstall/app/ObservableMapperd;

    iget v3, v3, Linstall/app/ObservableMapperd;->mappedPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p1, v1}, Linstall/app/Commandd;->Invoke(Linstall/app/View;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public changeCommand(Linstall/app/Commandd;)V
    .locals 1
    .param p1, "newCommand"    # Linstall/app/Commandd;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linstall/app/ObservableMapperd$MockCommand;->command:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method
