.class Linstall/app/MarketService$1;
.super Linstall/app/MarketService$Handler;
.source "MarketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/MarketService;-><init>(Linstall/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/MarketService;


# direct methods
.method constructor <init>(Linstall/app/MarketService;)V
    .locals 1
    .param p1, "this$0"    # Linstall/app/MarketService;

    .prologue
    .line 116
    iput-object p1, p0, Linstall/app/MarketService$1;->this$0:Linstall/app/MarketService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linstall/app/MarketService$Handler;-><init>(Linstall/app/MarketService;Linstall/app/MarketService$1;)V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 120
    return-void
.end method
