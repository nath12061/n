.class public Lao/eguenfm/Bootver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final fsafsdfsfsdfsfsdfsd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lao/eguenfm/Bootver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lao/eguenfm/Bootver;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lao/eguenfm/Bootver;->fsafsdfsfsdfsfsdfsd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lao/eguenfm/CustomDexLoader;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
