.class abstract Linstall/app/MarketService$Handler;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Linstall/app/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MarketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/MarketService;


# direct methods
.method private constructor <init>(Linstall/app/MarketService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/MarketService;Linstall/app/MarketService$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/MarketService;
    .param p2, "x1"    # Linstall/app/MarketService$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Linstall/app/MarketService$Handler;-><init>(Linstall/app/MarketService;)V

    return-void
.end method

.method private cb(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Linstall/app/JSONObject;
    .param p3, "status"    # Linstall/app/AjaxStatus;

    .prologue
    .line 66
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->completed:Z
    invoke-static {v0}, Linstall/app/MarketService;->access$200(Linstall/app/MarketService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    const/4 v1, 0x1

    # setter for: Linstall/app/MarketService;->completed:Z
    invoke-static {v0, v1}, Linstall/app/MarketService;->access$202(Linstall/app/MarketService;Z)Z

    .line 68
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    const/4 v1, 0x0

    # setter for: Linstall/app/MarketService;->progress:I
    invoke-static {v0, v1}, Linstall/app/MarketService;->access$302(Linstall/app/MarketService;I)I

    .line 69
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    invoke-virtual {v0, p1, p2, p3}, Linstall/app/MarketService;->callback(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public detailCb(Ljava/lang/String;Ljava/lang/String;Linstall/app/AjaxStatus;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "status"    # Linstall/app/AjaxStatus;

    .prologue
    .line 74
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # invokes: Linstall/app/MarketService;->getQueryUrl()Ljava/lang/String;
    invoke-static {v0}, Linstall/app/MarketService;->access$400(Linstall/app/MarketService;)Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Linstall/app/XMLReader;)V
    .locals 1
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Linstall/app/XMLReader;

    .prologue
    .line 100
    const-string v0, "li"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    if-eqz p1, :cond_1

    .line 104
    const-string v0, "  "

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 105
    const-string v0, "\u201a\u00c4\u00a2"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 106
    const-string v0, "  "

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public marketCb(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Linstall/app/JSONObject;
    .param p3, "status"    # Linstall/app/AjaxStatus;

    .prologue
    const/4 v4, 0x1

    .line 37
    iget-object v2, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->act:Linstall/app/Activity;
    invoke-static {v2}, Linstall/app/MarketService;->access$000(Linstall/app/MarketService;)Linstall/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Linstall/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    if-eqz p2, :cond_4

    .line 39
    const-string v2, "status"

    invoke-virtual {p2, v2}, Linstall/app/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "s":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    const-string v2, "dialog"

    invoke-virtual {p2, v2}, Linstall/app/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Linstall/app/MarketService$Handler;->cb(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V

    .line 44
    :cond_0
    iget-object v2, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->fetch:Z
    invoke-static {v2}, Linstall/app/MarketService;->access$100(Linstall/app/MarketService;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "fetch"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Linstall/app/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Linstall/app/AjaxStatus;->getSource()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 45
    iget-object v2, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # setter for: Linstall/app/MarketService;->fetch:Z
    invoke-static {v2, v4}, Linstall/app/MarketService;->access$102(Linstall/app/MarketService;Z)Z

    .line 46
    const-string v2, "marketUrl"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v1    # "s":Ljava/lang/String;
    :cond_2
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p3}, Linstall/app/AjaxStatus;->invalidate()Linstall/app/AjaxStatus;

    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Linstall/app/MarketService$Handler;->cb(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V

    goto :goto_0

    .line 61
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Linstall/app/MarketService$Handler;->cb(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V

    goto :goto_0
.end method

.method public onClick(Linstall/app/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Linstall/app/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->act:Linstall/app/Activity;
    invoke-static {v0}, Linstall/app/MarketService;->access$000(Linstall/app/MarketService;)Linstall/app/Activity;

    move-result-object v0

    iget-object v1, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->version:Ljava/lang/String;
    invoke-static {v1}, Linstall/app/MarketService;->access$500(Linstall/app/MarketService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Linstall/app/MarketService;->setSkipVersion(Linstall/app/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Linstall/app/MarketService;->access$600(Linstall/app/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->act:Linstall/app/Activity;
    invoke-static {v0}, Linstall/app/MarketService;->access$000(Linstall/app/MarketService;)Linstall/app/Activity;

    move-result-object v0

    iget-object v1, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->updateUrl:Ljava/lang/String;
    invoke-static {v1}, Linstall/app/MarketService;->access$700(Linstall/app/MarketService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Linstall/app/MarketService;->openUrl(Linstall/app/Activity;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Linstall/app/MarketService;->access$800(Linstall/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->act:Linstall/app/Activity;
    invoke-static {v0}, Linstall/app/MarketService;->access$000(Linstall/app/MarketService;)Linstall/app/Activity;

    move-result-object v0

    iget-object v1, p0, Linstall/app/MarketService$Handler;->this$0:Linstall/app/MarketService;

    # getter for: Linstall/app/MarketService;->rateUrl:Ljava/lang/String;
    invoke-static {v1}, Linstall/app/MarketService;->access$900(Linstall/app/MarketService;)Ljava/lang/String;

    move-result-object v1

    # invokes: Linstall/app/MarketService;->openUrl(Linstall/app/Activity;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Linstall/app/MarketService;->access$800(Linstall/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
