.class Linstall/app/SEService$C00031;
.super Linstall/app/ISmartcardServiceCallback$Stub;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00031"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SEService;


# direct methods
.method constructor <init>(Linstall/app/SEService;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/SEService;

    .prologue
    .line 25
    iput-object p1, p0, Linstall/app/SEService$C00031;->this$0:Linstall/app/SEService;

    invoke-direct {p0}, Linstall/app/ISmartcardServiceCallback$Stub;-><init>()V

    .line 26
    return-void
.end method
