.class public abstract Linstall/app/GoogleHandle;
.super Linstall/app/AccountHandle;
.source "GoogleHandle.java"

# interfaces
.implements Linstall/app/DialogInterface$OnClickListener;
.implements Linstall/app/SearchManager$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/GoogleHandle$Task;
    }
.end annotation


# instance fields
.field private acc:Landroid/accounts/Account;

.field private accs:[Landroid/accounts/Account;

.field private act:Linstall/app/Activity;

.field private am:Landroid/accounts/AccountManager;

.field private email:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linstall/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "act"    # Linstall/app/Activity;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Linstall/app/AccountHandle;-><init>()V

    .line 48
    const-string v0, "aq.account"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Linstall/app/GoogleHandle;->getActiveAccount(Linstall/app/Context;)Ljava/lang/String;

    move-result-object p3

    .line 51
    :cond_0
    iput-object p1, p0, Linstall/app/GoogleHandle;->act:Linstall/app/Activity;

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linstall/app/GoogleHandle;->type:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Linstall/app/GoogleHandle;->email:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Linstall/app/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Linstall/app/GoogleHandle;)Linstall/app/Activity;
    .locals 1
    .param p0, "x0"    # Linstall/app/GoogleHandle;

    .prologue
    .line 9
    iget-object v0, p0, Linstall/app/GoogleHandle;->act:Linstall/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Linstall/app/GoogleHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Linstall/app/GoogleHandle;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 9
    iput-object p1, p0, Linstall/app/GoogleHandle;->token:Ljava/lang/String;

    return-object p1
.end method

.method private accountDialog()V
    .locals 6

    .prologue
    .line 91
    new-instance v0, Linstall/app/AlertDialog$Builder;

    iget-object v4, p0, Linstall/app/GoogleHandle;->act:Linstall/app/Activity;

    invoke-direct {v0, v4}, Linstall/app/AlertDialog$Builder;-><init>(Linstall/app/Context;)V

    .line 93
    .local v0, "builder":Linstall/app/AlertDialog$Builder;
    iget-object v4, p0, Linstall/app/GoogleHandle;->accs:[Landroid/accounts/Account;

    array-length v3, v4

    .line 94
    .local v3, "size":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 95
    iget-object v4, p0, Linstall/app/GoogleHandle;->accs:[Landroid/accounts/Account;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Linstall/app/GoogleHandle;->auth(Landroid/accounts/Account;)V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    .line 99
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 100
    iget-object v4, p0, Linstall/app/GoogleHandle;->accs:[Landroid/accounts/Account;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v0, v2, p0}, Linstall/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)Linstall/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private auth(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 122
    iput-object p1, p0, Linstall/app/GoogleHandle;->acc:Landroid/accounts/Account;

    .line 123
    new-instance v0, Linstall/app/GoogleHandle$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linstall/app/GoogleHandle$Task;-><init>(Linstall/app/GoogleHandle;Linstall/app/GoogleHandle$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Linstall/app/GoogleHandle$Task;->execute([Ljava/lang/Object;)Linstall/app/AsyncTask;

    .line 124
    return-void
.end method

.method public static getActiveAccount(Linstall/app/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    .line 118
    invoke-static {p0}, Linstall/app/PreferenceManager;->getDefaultSharedPreferences(Linstall/app/Context;)Linstall/app/SharedPreferences;

    move-result-object v0

    const-string v1, "aq.account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Linstall/app/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setActiveAccount(Linstall/app/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0}, Linstall/app/PreferenceManager;->getDefaultSharedPreferences(Linstall/app/Context;)Linstall/app/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/SharedPreferences;->edit()Linstall/app/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aq.account"

    invoke-interface {v0, v1, p1}, Linstall/app/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Linstall/app/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Linstall/app/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method


# virtual methods
.method protected auth()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Linstall/app/GoogleHandle;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Linstall/app/GoogleHandle;->accountDialog()V

    .line 68
    :cond_0
    return-void
.end method

.method public authenticated()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Linstall/app/GoogleHandle;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expired(Linstall/app/AbstractAjaxCallback;Linstall/app/AjaxStatus;)Z
    .locals 2
    .param p2, "status"    # Linstall/app/AjaxStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AbstractAjaxCallback",
            "<**>;",
            "Linstall/app/AjaxStatus;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "abstractAjaxCallback":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<**>;"
    invoke-virtual {p2}, Linstall/app/AjaxStatus;->getCode()I

    move-result v0

    .line 132
    .local v0, "code":I
    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Linstall/app/GoogleHandle;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Linstall/app/GoogleHandle;->type:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Linstall/app/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Linstall/app/DialogInterface;

    .prologue
    .line 127
    iget-object v0, p0, Linstall/app/GoogleHandle;->act:Linstall/app/Activity;

    const/16 v1, -0x66

    const-string v2, "cancel"

    invoke-virtual {p0, v0, v1, v2}, Linstall/app/GoogleHandle;->failure(Linstall/app/Context;ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method public onClick(Linstall/app/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Linstall/app/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v1, p0, Linstall/app/GoogleHandle;->accs:[Landroid/accounts/Account;

    aget-object v0, v1, p2

    .line 108
    .local v0, "acc":Landroid/accounts/Account;
    const-string v1, "acc"

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Linstall/app/GoogleHandle;->act:Linstall/app/Activity;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Linstall/app/GoogleHandle;->setActiveAccount(Linstall/app/Context;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v0}, Linstall/app/GoogleHandle;->auth(Landroid/accounts/Account;)V

    .line 111
    return-void
.end method

.method public reauth(Linstall/app/AbstractAjaxCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "abstractAjaxCallback":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<**>;"
    :try_start_0
    const-string v1, "re token"

    iget-object v2, p0, Linstall/app/GoogleHandle;->token:Ljava/lang/String;

    invoke-static {v1, v2}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    iget-object v1, p0, Linstall/app/GoogleHandle;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 83
    :goto_1
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Linstall/app/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Linstall/app/GoogleHandle;->token:Ljava/lang/String;

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method
