.class Linstall/app/PojoViewModelWrapperd$PojoCommand;
.super Ljava/lang/Object;
.source "PojoViewModelWrapperd.java"

# interfaces
.implements Linstall/app/Commandd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PojoViewModelWrapperd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PojoCommand"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Linstall/app/PojoViewModelWrapperd;


# direct methods
.method public constructor <init>(Linstall/app/PojoViewModelWrapperd;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 15
    .local p0, "this":Linstall/app/PojoViewModelWrapperd$PojoCommand;, "Linstall/app/PojoViewModelWrapperd<TT;>.PojoCommand;"
    iput-object p1, p0, Linstall/app/PojoViewModelWrapperd$PojoCommand;->this$0:Linstall/app/PojoViewModelWrapperd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Linstall/app/PojoViewModelWrapperd$PojoCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method


# virtual methods
.method public varargs Invoke(Linstall/app/View;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "view"    # Linstall/app/View;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 21
    .local p0, "this":Linstall/app/PojoViewModelWrapperd$PojoCommand;, "Linstall/app/PojoViewModelWrapperd<TT;>.PojoCommand;"
    :try_start_0
    iget-object v1, p0, Linstall/app/PojoViewModelWrapperd$PojoCommand;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Linstall/app/PojoViewModelWrapperd$PojoCommand;->this$0:Linstall/app/PojoViewModelWrapperd;

    # getter for: Linstall/app/PojoViewModelWrapperd;->mViewModel:Linstall/app/PojoViewModeld;
    invoke-static {v2}, Linstall/app/PojoViewModelWrapperd;->access$000(Linstall/app/PojoViewModelWrapperd;)Linstall/app/PojoViewModeld;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PojoViewModelWrapperd.PojoCommand.Invoke"

    invoke-static {v1, v0}, Linstall/app/BindingLogd;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
