.class Linstall/app/PojoViewModelWrapper$PojoCommand;
.super Ljava/lang/Object;
.source "PojoViewModelWrapper.java"

# interfaces
.implements Linstall/app/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/PojoViewModelWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PojoCommand"
.end annotation


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Linstall/app/PojoViewModelWrapper;


# direct methods
.method public constructor <init>(Linstall/app/PojoViewModelWrapper;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 17
    .local p0, "this":Linstall/app/PojoViewModelWrapper$PojoCommand;, "Linstall/app/PojoViewModelWrapper<TT;>.PojoCommand;"
    iput-object p1, p0, Linstall/app/PojoViewModelWrapper$PojoCommand;->this$0:Linstall/app/PojoViewModelWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Linstall/app/PojoViewModelWrapper$PojoCommand;->mMethod:Ljava/lang/reflect/Method;

    .line 19
    return-void
.end method


# virtual methods
.method public varargs Invoke(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 23
    .local p0, "this":Linstall/app/PojoViewModelWrapper$PojoCommand;, "Linstall/app/PojoViewModelWrapper<TT;>.PojoCommand;"
    :try_start_0
    iget-object v1, p0, Linstall/app/PojoViewModelWrapper$PojoCommand;->mMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Linstall/app/PojoViewModelWrapper$PojoCommand;->this$0:Linstall/app/PojoViewModelWrapper;

    # getter for: Linstall/app/PojoViewModelWrapper;->mViewModel:Linstall/app/PojoViewModel;
    invoke-static {v2}, Linstall/app/PojoViewModelWrapper;->access$000(Linstall/app/PojoViewModelWrapper;)Linstall/app/PojoViewModel;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PojoViewModelWrapperd.PojoCommand.Invoke"

    invoke-static {v1, v0}, Linstall/app/BindingLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
