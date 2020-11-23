.class Linstall/app/SmartcardClient$C00001;
.super Linstall/app/ISmartcardServiceCallback$Stub;
.source "SmartcardClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/SmartcardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00001"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/SmartcardClient;


# direct methods
.method constructor <init>(Linstall/app/SmartcardClient;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/SmartcardClient;

    .prologue
    .line 23
    iput-object p1, p0, Linstall/app/SmartcardClient$C00001;->this$0:Linstall/app/SmartcardClient;

    invoke-direct {p0}, Linstall/app/ISmartcardServiceCallback$Stub;-><init>()V

    .line 24
    return-void
.end method
