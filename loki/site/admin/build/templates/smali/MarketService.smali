.class public Linstall/app/MarketService;
.super Ljava/lang/Object;
.source "MarketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/MarketService$Handler;
    }
.end annotation


# static fields
.field private static final BULLET:Ljava/lang/String; = "\u201a\u00c4\u00a2"

.field public static final MAJOR:I = 0x2

.field public static final MINOR:I = 0x1

.field public static final REVISION:I = 0x0

.field private static final SKIP_VERSION:Ljava/lang/String; = "aqs.skip"

.field private static ai:Landroid/content/pm/ApplicationInfo;

.field private static pi:Landroid/content/pm/PackageInfo;


# instance fields
.field private act:Linstall/app/Activity;

.field private aq:Linstall/app/AQuery;

.field private completed:Z

.field private expire:J

.field private fetch:Z

.field private force:Z

.field private handler:Linstall/app/MarketService$Handler;

.field private level:I

.field private locale:Ljava/lang/String;

.field private progress:I

.field private rateUrl:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linstall/app/Activity;)V
    .locals 2
    .param p1, "act"    # Linstall/app/Activity;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/32 v0, 0xafc80

    iput-wide v0, p0, Linstall/app/MarketService;->expire:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/MarketService;->level:I

    .line 114
    iput-object p1, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    .line 115
    new-instance v0, Linstall/app/AQuery;

    invoke-direct {v0, p1}, Linstall/app/AQuery;-><init>(Linstall/app/Activity;)V

    iput-object v0, p0, Linstall/app/MarketService;->aq:Linstall/app/AQuery;

    .line 116
    new-instance v0, Linstall/app/MarketService$1;

    invoke-direct {v0, p0}, Linstall/app/MarketService$1;-><init>(Linstall/app/MarketService;)V

    iput-object v0, p0, Linstall/app/MarketService;->handler:Linstall/app/MarketService$Handler;

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/MarketService;->locale:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Linstall/app/MarketService;->getMarketUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/MarketService;->rateUrl:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Linstall/app/MarketService;->rateUrl:Ljava/lang/String;

    iput-object v0, p0, Linstall/app/MarketService;->updateUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method static synthetic access$000(Linstall/app/MarketService;)Linstall/app/Activity;
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    iget-object v0, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Linstall/app/MarketService;)Z
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    iget-boolean v0, p0, Linstall/app/MarketService;->fetch:Z

    return v0
.end method

.method static synthetic access$102(Linstall/app/MarketService;Z)Z
    .locals 0
    .param p0, "x0"    # Linstall/app/MarketService;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Linstall/app/MarketService;->fetch:Z

    return p1
.end method

.method static synthetic access$200(Linstall/app/MarketService;)Z
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    iget-boolean v0, p0, Linstall/app/MarketService;->completed:Z

    return v0
.end method

.method static synthetic access$202(Linstall/app/MarketService;Z)Z
    .locals 0
    .param p0, "x0"    # Linstall/app/MarketService;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Linstall/app/MarketService;->completed:Z

    return p1
.end method

.method static synthetic access$302(Linstall/app/MarketService;I)I
    .locals 0
    .param p0, "x0"    # Linstall/app/MarketService;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Linstall/app/MarketService;->progress:I

    return p1
.end method

.method static synthetic access$400(Linstall/app/MarketService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    invoke-direct {p0}, Linstall/app/MarketService;->getQueryUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Linstall/app/MarketService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    iget-object v0, p0, Linstall/app/MarketService;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Linstall/app/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0, p1}, Linstall/app/MarketService;->setSkipVersion(Linstall/app/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Linstall/app/MarketService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    iget-object v0, p0, Linstall/app/MarketService;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Linstall/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Linstall/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {p0, p1}, Linstall/app/MarketService;->openUrl(Linstall/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Linstall/app/MarketService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Linstall/app/MarketService;

    .prologue
    .line 10
    iget-object v0, p0, Linstall/app/MarketService;->rateUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Linstall/app/MarketService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    invoke-virtual {v1}, Linstall/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Linstall/app/MarketService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Linstall/app/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    invoke-virtual {v0}, Linstall/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Linstall/app/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    .line 166
    :cond_0
    sget-object v0, Linstall/app/MarketService;->ai:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "https://androidquery.appspot.com"

    return-object v0
.end method

.method private getMarketUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Linstall/app/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 170
    sget-object v1, Linstall/app/MarketService;->pi:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    invoke-virtual {v1}, Linstall/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0}, Linstall/app/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sput-object v1, Linstall/app/MarketService;->pi:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    sget-object v1, Linstall/app/MarketService;->pi:Landroid/content/pm/PackageInfo;

    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getQueryUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Linstall/app/MarketService;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api/market?app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Linstall/app/MarketService;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Linstall/app/MarketService;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Linstall/app/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Linstall/app/MarketService;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&aq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0.22.10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "url":Ljava/lang/String;
    iget-boolean v1, p0, Linstall/app/MarketService;->force:Z

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&force=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getSkipVersion(Linstall/app/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    .line 316
    invoke-static {p0}, Linstall/app/PreferenceManager;->getDefaultSharedPreferences(Linstall/app/Context;)Linstall/app/SharedPreferences;

    move-result-object v0

    const-string v1, "aqs.skip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Linstall/app/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Linstall/app/MarketService;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private getVersionCode()I
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Linstall/app/MarketService;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    invoke-virtual {v0}, Linstall/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static openUrl(Linstall/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .param p0, "act"    # Linstall/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 223
    :goto_0
    return v1

    .line 220
    :cond_0
    :try_start_0
    new-instance v2, Linstall/app/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Linstall/app/Uri;->parse(Ljava/lang/String;)Linstall/app/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Linstall/app/Intent;-><init>(Ljava/lang/String;Linstall/app/Uri;)V

    invoke-virtual {p0, v2}, Linstall/app/Activity;->startActivity(Linstall/app/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private outdated(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "latestVer"    # Ljava/lang/String;
    .param p2, "latestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v3, p0, Linstall/app/MarketService;->act:Linstall/app/Activity;

    invoke-static {v3}, Linstall/app/MarketService;->getSkipVersion(Linstall/app/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v2

    .line 247
    :cond_1
    invoke-direct {p0}, Linstall/app/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "version":Ljava/lang/String;
    invoke-direct {p0}, Linstall/app/MarketService;->getVersionCode()I

    move-result v0

    .line 249
    .local v0, "code":I
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-gt v0, p2, :cond_0

    .line 252
    iget v2, p0, Linstall/app/MarketService;->level:I

    invoke-direct {p0, v1, p1, v2}, Linstall/app/MarketService;->requireUpdate(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method

.method private static patchBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<small>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</small>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requireUpdate(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "existVer"    # Ljava/lang/String;
    .param p2, "latestVer"    # Ljava/lang/String;
    .param p3, "level"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v3

    .line 260
    :cond_1
    :try_start_0
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "evs":[Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "lvs":[Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v6, :cond_2

    array-length v5, v2

    if-ge v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 263
    goto :goto_0

    .line 265
    :cond_3
    packed-switch p3, :pswitch_data_0

    move v3, v4

    .line 276
    goto :goto_0

    .line 267
    :pswitch_0
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 268
    goto :goto_0

    .line 278
    :cond_4
    :pswitch_1
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v1, v5

    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 279
    goto :goto_0

    .line 281
    :cond_5
    array-length v5, v1

    add-int/lit8 v5, v5, -0x3

    aget-object v5, v1, v5

    array-length v6, v2

    add-int/lit8 v6, v6, -0x3

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 284
    goto :goto_0

    .line 285
    .end local v1    # "evs":[Ljava/lang/String;
    .end local v2    # "lvs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    move v3, v4

    .line 287
    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static setSkipVersion(Linstall/app/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p0}, Linstall/app/PreferenceManager;->getDefaultSharedPreferences(Linstall/app/Context;)Linstall/app/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/SharedPreferences;->edit()Linstall/app/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aqs.skip"

    invoke-interface {v0, v1, p1}, Linstall/app/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Linstall/app/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/SharedPreferences$Editor;->commit()Z

    .line 313
    return-void
.end method


# virtual methods
.method protected callback(Ljava/lang/String;Linstall/app/JSONObject;Linstall/app/AjaxStatus;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jo"    # Linstall/app/JSONObject;
    .param p3, "status"    # Linstall/app/AjaxStatus;

    .prologue
    .line 232
    if-eqz p2, :cond_1

    .line 233
    const-string v2, "version"

    const-string v3, "0"

    invoke-virtual {p2, v2, v3}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "latestVer":Ljava/lang/String;
    const-string v2, "code"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Linstall/app/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "latestCode":I
    const-string v2, "version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Linstall/app/MarketService;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Linstall/app/MarketService;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    const-string v2, "outdated"

    invoke-direct {p0, v1, v0}, Linstall/app/MarketService;->outdated(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    iget-boolean v2, p0, Linstall/app/MarketService;->force:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v1, v0}, Linstall/app/MarketService;->outdated(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0, p2}, Linstall/app/MarketService;->showUpdateDialog(Linstall/app/JSONObject;)V

    .line 241
    .end local v0    # "latestCode":I
    .end local v1    # "latestVer":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public checkVersion()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Linstall/app/MarketService;->getQueryUrl()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "url":Ljava/lang/String;
    return-void
.end method

.method public expire(J)Linstall/app/MarketService;
    .locals 1
    .param p1, "expire"    # J

    .prologue
    .line 158
    iput-wide p1, p0, Linstall/app/MarketService;->expire:J

    .line 159
    return-object p0
.end method

.method public force(Z)Linstall/app/MarketService;
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Linstall/app/MarketService;->force:Z

    .line 154
    return-object p0
.end method

.method public level(I)Linstall/app/MarketService;
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 133
    iput p1, p0, Linstall/app/MarketService;->level:I

    .line 134
    return-object p0
.end method

.method public locale(Ljava/lang/String;)Linstall/app/MarketService;
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Linstall/app/MarketService;->locale:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public progress(I)Linstall/app/MarketService;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 148
    iput p1, p0, Linstall/app/MarketService;->progress:I

    .line 149
    return-object p0
.end method

.method public rateUrl(Ljava/lang/String;)Linstall/app/MarketService;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Linstall/app/MarketService;->rateUrl:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method protected showUpdateDialog(Linstall/app/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Linstall/app/JSONObject;

    .prologue
    .line 292
    if-eqz p1, :cond_0

    iget-object v6, p0, Linstall/app/MarketService;->version:Ljava/lang/String;

    if-nez v6, :cond_0

    invoke-direct {p0}, Linstall/app/MarketService;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    const-string v6, "dialog"

    invoke-virtual {p1, v6}, Linstall/app/JSONObject;->optJSONObject(Ljava/lang/String;)Linstall/app/JSONObject;

    move-result-object v1

    .line 294
    .local v1, "dia":Linstall/app/JSONObject;
    const-string v6, "update"

    const-string v7, "Update"

    invoke-virtual {v1, v6, v7}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "update":Ljava/lang/String;
    const-string v6, "skip"

    const-string v7, "Skip"

    invoke-virtual {v1, v6, v7}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "skip":Ljava/lang/String;
    const-string v6, "rate"

    const-string v7, "Rate"

    invoke-virtual {v1, v6, v7}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "rate":Ljava/lang/String;
    const-string v6, "wbody"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "body":Ljava/lang/String;
    const-string v6, "title"

    const-string v7, "Update Available"

    invoke-virtual {v1, v6, v7}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "title":Ljava/lang/String;
    const-string v6, "wbody"

    invoke-static {v6, v0}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    const-string v6, "version"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Linstall/app/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linstall/app/MarketService;->version:Ljava/lang/String;

    .line 305
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "dia":Linstall/app/JSONObject;
    .end local v2    # "rate":Ljava/lang/String;
    .end local v3    # "skip":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "update":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public updateUrl(Ljava/lang/String;)Linstall/app/MarketService;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Linstall/app/MarketService;->updateUrl:Ljava/lang/String;

    .line 139
    return-object p0
.end method
