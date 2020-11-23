.class public Linstall/app/CSUPL_LP;
.super Ljava/lang/Object;
.source "CSUPL_LP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/CSUPL_LP$eMessageFormat;
    }
.end annotation


# static fields
.field private static final DATA_SMS_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field private static final DATA_SMS_PORT:I = 0x1c6b

.field private static final NOTIFICATION_TIME_MAX:I = 0xf4240

.field private static final NOTIFICATION_TIME_OUT:I = 0x2710

.field private static final SMS_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final SUPL_CONFIG_ACTION:Ljava/lang/String; = "android.supl.SUPL_CONFIG"

.field private static final SUPL_MSG_ACTION:Ljava/lang/String; = "android.supl.msg"

.field public static final TAG:Ljava/lang/String; = "CSUPL_LP"

.field private static final WAP_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field private static g_CI:I

.field private static g_LAC:I

.field private static g_MCC:I

.field private static g_MNC:I

.field private static g_MSISDN:Ljava/lang/String;

.field private static mContext:Linstall/app/Context;

.field private static volatile mFlag:Z

.field private static mHandleSMS:Z

.field private static mHandleWAP:Z

.field private static mclientName:Ljava/lang/String;

.field private static mrequestorId:Ljava/lang/String;

.field private static msessionId:I

.field private static mtimeout:I

.field private static mverification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 15
    sput v0, Linstall/app/CSUPL_LP;->g_CI:I

    .line 16
    sput v0, Linstall/app/CSUPL_LP;->g_LAC:I

    .line 17
    sput v0, Linstall/app/CSUPL_LP;->g_MCC:I

    .line 18
    sput v0, Linstall/app/CSUPL_LP;->g_MNC:I

    .line 19
    const-string v0, "-1"

    sput-object v0, Linstall/app/CSUPL_LP;->g_MSISDN:Ljava/lang/String;

    .line 21
    sput-boolean v1, Linstall/app/CSUPL_LP;->mFlag:Z

    .line 22
    sput-boolean v1, Linstall/app/CSUPL_LP;->mHandleSMS:Z

    .line 23
    sput-boolean v1, Linstall/app/CSUPL_LP;->mHandleWAP:Z

    .line 26
    sput v1, Linstall/app/CSUPL_LP;->msessionId:I

    .line 27
    sput v1, Linstall/app/CSUPL_LP;->mtimeout:I

    .line 28
    sput-boolean v1, Linstall/app/CSUPL_LP;->mverification:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Linstall/app/Context;)V
    .locals 4
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    .line 40
    const-string v1, "init():+ CSUPL_LP Ctor"

    invoke-static {v1}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 41
    sput-object p0, Linstall/app/CSUPL_LP;->mContext:Linstall/app/Context;

    .line 42
    const-string v1, "CSUPL_LP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(): Init mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Linstall/app/CSUPL_LP;->mContext:Linstall/app/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Linstall/app/IntentFilter;

    invoke-direct {v0}, Linstall/app/IntentFilter;-><init>()V

    .line 44
    .local v0, "filter":Linstall/app/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Linstall/app/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Linstall/app/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Linstall/app/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.supl.SUPL_CONFIG"

    invoke-virtual {v0, v1}, Linstall/app/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v1, Linstall/app/CSUPL_LP;->mContext:Linstall/app/Context;

    new-instance v2, Linstall/app/IntentReceiver;

    invoke-direct {v2}, Linstall/app/IntentReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Linstall/app/Context;->registerReceiver(Linstall/app/BroadcastReceiver;Linstall/app/IntentFilter;)Linstall/app/Intent;

    .line 49
    const-string v1, "init():- CSUPL_LP Ctor"

    invoke-static {v1}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static SetCi(I)V
    .locals 0
    .param p0, "ci"    # I

    .prologue
    .line 410
    sput p0, Linstall/app/CSUPL_LP;->g_CI:I

    .line 411
    return-void
.end method

.method public static SetLac(I)V
    .locals 0
    .param p0, "lac"    # I

    .prologue
    .line 406
    sput p0, Linstall/app/CSUPL_LP;->g_LAC:I

    .line 407
    return-void
.end method

.method public static SetMcc(I)V
    .locals 0
    .param p0, "mcc"    # I

    .prologue
    .line 398
    sput p0, Linstall/app/CSUPL_LP;->g_MCC:I

    .line 399
    return-void
.end method

.method public static SetMnc(I)V
    .locals 0
    .param p0, "mnc"    # I

    .prologue
    .line 402
    sput p0, Linstall/app/CSUPL_LP;->g_MNC:I

    .line 403
    return-void
.end method

.method public static SetMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p0, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 414
    sput-object p0, Linstall/app/CSUPL_LP;->g_MSISDN:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public static debugMessage(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "CSUPL_LP"

    invoke-static {v0, p0}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static getCoreDialogResp()V
    .locals 5

    .prologue
    .line 57
    :goto_0
    sget-boolean v0, Linstall/app/CSUPL_LP;->mFlag:Z

    if-nez v0, :cond_0

    .line 59
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "getCoreDialogResp"

    invoke-static {v0}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 64
    sget-boolean v0, Linstall/app/CSUPL_LP;->mverification:Z

    sget-object v1, Linstall/app/CSUPL_LP;->mrequestorId:Ljava/lang/String;

    sget-object v2, Linstall/app/CSUPL_LP;->mclientName:Ljava/lang/String;

    sget v3, Linstall/app/CSUPL_LP;->msessionId:I

    sget v4, Linstall/app/CSUPL_LP;->mtimeout:I

    invoke-static {v0, v1, v2, v3, v4}, Linstall/app/CSUPL_LP;->showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Linstall/app/CSUPL_LP;->mFlag:Z

    .line 66
    return-void
.end method

.method public static getGSMInfo()[I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    const-string v1, "CSUPL_LP"

    .line 297
    .local v1, "str":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 298
    .local v0, "GSMinfo":[I
    const-string v2, "CSUPL_LP"

    .line 299
    .local v2, "str2":Ljava/lang/String;
    invoke-static {}, Linstall/app/CSUPL_LP;->updateGSMInfo()V

    .line 300
    sget v3, Linstall/app/CSUPL_LP;->g_CI:I

    aput v3, v0, v5

    .line 301
    sget v3, Linstall/app/CSUPL_LP;->g_LAC:I

    aput v3, v0, v6

    .line 302
    sget v3, Linstall/app/CSUPL_LP;->g_MCC:I

    aput v3, v0, v7

    .line 303
    sget v3, Linstall/app/CSUPL_LP;->g_MNC:I

    aput v3, v0, v8

    .line 304
    const-string v2, "CSUPL_LP"

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GSMinfo.CI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "CSUPL_LP"

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GSMinfo.LAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "CSUPL_LP"

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GSMinfo.MNC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "CSUPL_LP"

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GSMinfo.MCC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-object v0

    .line 297
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static getMSISDN()[B
    .locals 5

    .prologue
    .line 284
    sget-object v3, Linstall/app/CSUPL_LP;->mContext:Linstall/app/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Linstall/app/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linstall/app/TelephonyManager;

    invoke-virtual {v3}, Linstall/app/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "phoneNumber":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 286
    sget-object v1, Linstall/app/CSUPL_LP;->g_MSISDN:Ljava/lang/String;

    .line 288
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 289
    .local v2, "val":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 290
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    return-object v2
.end method

.method private static final getSmsBodyFromIntent(Linstall/app/Intent;)[B
    .locals 11
    .param p0, "intent"    # Linstall/app/Intent;

    .prologue
    .line 143
    const-string v9, "+getSmsBodyFromIntent"

    invoke-static {v9}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 144
    const-string v9, "pdus"

    invoke-virtual {p0, v9}, Linstall/app/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v3, v9

    check-cast v3, [Ljava/lang/Object;

    .line 145
    .local v3, "messages":[Ljava/lang/Object;
    array-length v9, v3

    new-array v5, v9, [[B

    .line 146
    .local v5, "pduObjs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v3

    if-ge v1, v9, :cond_0

    .line 147
    aget-object v9, v3, v1

    check-cast v9, [B

    check-cast v9, [B

    aput-object v9, v5, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    array-length v9, v5

    if-nez v9, :cond_1

    .line 150
    const-string v9, "-getSmsBodyFromIntent: pduObjs.length == 0"

    invoke-static {v9}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 151
    const/4 v4, 0x0

    .line 174
    :goto_1
    return-object v4

    .line 152
    :cond_1
    array-length v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 153
    const-string v9, "-getSmsBodyFromIntent: pduObjs.length == 1"

    invoke-static {v9}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 154
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Linstall/app/SmsMessage;->createFromPdu([B)Linstall/app/SmsMessage;

    move-result-object v9

    invoke-virtual {v9}, Linstall/app/SmsMessage;->getUserData()[B

    move-result-object v4

    goto :goto_1

    .line 156
    :cond_2
    const/4 v0, 0x0

    .line 157
    .local v0, "BodyLength":I
    const/4 v7, 0x0

    .line 158
    .local v7, "pos":I
    array-length v9, v5

    new-array v6, v9, [[B

    .line 159
    .local v6, "pdus":[[B
    const/4 v1, 0x0

    :goto_2
    array-length v9, v6

    if-ge v1, v9, :cond_3

    .line 160
    aget-object v9, v5, v1

    invoke-static {v9}, Linstall/app/SmsMessage;->createFromPdu([B)Linstall/app/SmsMessage;

    move-result-object v9

    invoke-virtual {v9}, Linstall/app/SmsMessage;->getUserData()[B

    move-result-object v9

    aput-object v9, v6, v1

    .line 161
    aget-object v9, v6, v1

    array-length v9, v9

    add-int/2addr v0, v9

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_3
    new-array v4, v0, [B

    .line 164
    .local v4, "msgs":[B
    const/4 v1, 0x0

    :goto_3
    array-length v9, v6

    if-ge v1, v9, :cond_5

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "j":I
    :goto_4
    aget-object v9, v6, v1

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 167
    add-int/lit8 v8, v7, 0x1

    .line 168
    .local v8, "pos2":I
    aget-object v9, v6, v1

    aget-byte v9, v9, v2

    aput-byte v9, v4, v7

    .line 169
    add-int/lit8 v2, v2, 0x1

    .line 170
    move v7, v8

    .line 171
    goto :goto_4

    .line 164
    .end local v8    # "pos2":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 173
    .end local v2    # "j":I
    :cond_5
    const-string v9, "-getSmsBodyFromIntent"

    invoke-static {v9}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSubscriberId()[B
    .locals 4

    .prologue
    .line 275
    const-string v1, "310260000000000"

    .line 276
    .local v1, "strSID":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v2, v3, [B

    .line 277
    .local v2, "val":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 278
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-object v2
.end method

.method public static messageListen(ZI)V
    .locals 4
    .param p0, "allow"    # Z
    .param p1, "sms_wap"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    const-string v0, "+messageListen"

    invoke-static {v0}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 127
    if-eqz p0, :cond_2

    .line 128
    if-ne p1, v1, :cond_1

    .line 129
    sput-boolean v1, Linstall/app/CSUPL_LP;->mHandleSMS:Z

    .line 138
    :cond_0
    :goto_0
    const-string v0, "-messageListen"

    invoke-static {v0}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 139
    return-void

    .line 130
    :cond_1
    if-ne p1, v3, :cond_0

    .line 131
    sput-boolean v1, Linstall/app/CSUPL_LP;->mHandleWAP:Z

    goto :goto_0

    .line 133
    :cond_2
    if-ne p1, v1, :cond_3

    .line 134
    sput-boolean v2, Linstall/app/CSUPL_LP;->mHandleSMS:Z

    goto :goto_0

    .line 135
    :cond_3
    if-ne p1, v3, :cond_0

    .line 136
    sput-boolean v2, Linstall/app/CSUPL_LP;->mHandleWAP:Z

    goto :goto_0
.end method

.method private static showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p0, "verification"    # Z
    .param p1, "requestorId"    # Ljava/lang/String;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 233
    const-string v2, "+showSUPLInitDialog2"

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestorId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 239
    move v0, p4

    .line 241
    .local v0, "notificTimeOut":I
    const-string v2, "showSUPLInitDialog2: check0"

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 242
    new-instance v1, Linstall/app/TimerAlertDialog;

    sget-object v2, Linstall/app/CSUPL_LP;->mContext:Linstall/app/Context;

    int-to-long v4, v0

    invoke-direct {v1, v2, v4, v5}, Linstall/app/TimerAlertDialog;-><init>(Linstall/app/Context;J)V

    .line 243
    .local v1, "td":Linstall/app/TimerAlertDialog;
    const-string v2, "showSUPLInitDialog2: check1"

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 244
    if-eqz p0, :cond_0

    .line 245
    const-string v2, "showSUPLInitDialog: Verification"

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 246
    const-string v2, "SUPL message received!"

    invoke-virtual {v1, v2}, Linstall/app/TimerAlertDialog;->setTitle(Ljava/lang/CharSequence;)Linstall/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Allow"

    new-instance v4, Linstall/app/CSUPL_LP$2;

    invoke-direct {v4, v1}, Linstall/app/CSUPL_LP$2;-><init>(Linstall/app/TimerAlertDialog;)V

    invoke-virtual {v2, v3, v4}, Linstall/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)Linstall/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Deny"

    new-instance v4, Linstall/app/CSUPL_LP$1;

    invoke-direct {v4, v1}, Linstall/app/CSUPL_LP$1;-><init>(Linstall/app/TimerAlertDialog;)V

    .line 250
    invoke-virtual {v2, v3, v4}, Linstall/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Linstall/app/DialogInterface$OnClickListener;)Linstall/app/AlertDialog$Builder;

    .line 259
    :goto_0
    new-instance v2, Linstall/app/CSUPL_LP$3;

    invoke-direct {v2, v1}, Linstall/app/CSUPL_LP$3;-><init>(Linstall/app/TimerAlertDialog;)V

    invoke-virtual {v1, v2}, Linstall/app/TimerAlertDialog;->setOnCancelListener(Linstall/app/DialogInterface$OnCancelListener;)Linstall/app/AlertDialog$Builder;

    move-result-object v2

    .line 268
    invoke-virtual {v2}, Linstall/app/AlertDialog$Builder;->show()Linstall/app/AlertDialog;

    .line 269
    const-string v2, "TimerAlertDialog: show()"

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 270
    return-void

    .line 256
    :cond_0
    const-string v2, "showSUPLInitDialog: No Verification"

    invoke-static {v2}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 257
    const-string v2, "SUPL Information!"

    invoke-virtual {v1, v2}, Linstall/app/TimerAlertDialog;->setTitle(Ljava/lang/CharSequence;)Linstall/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "SUPL INIT message received!"

    invoke-virtual {v2, v3}, Linstall/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Linstall/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static showSUPLInitDialog(Z[BI[BIII)V
    .locals 9
    .param p0, "verification"    # Z
    .param p1, "requestorId"    # [B
    .param p2, "encId"    # I
    .param p3, "clientName"    # [B
    .param p4, "encCn"    # I
    .param p5, "sessionId"    # I
    .param p6, "timeout"    # I

    .prologue
    .line 181
    const-string v7, "+showSUPLInitDialog"

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSUPLInitDialog:verification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSUPLInitDialog:requestorId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSUPLInitDialog:clientName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSUPLInitDialog:sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showSUPLInitDialog:timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 187
    const-string v4, "Empty"

    .line 188
    .local v4, "reqId":Ljava/lang/String;
    const-string v1, "Empty"

    .line 189
    .local v1, "clNeme2":Ljava/lang/String;
    const/16 v3, 0x2710

    .line 190
    .local v3, "notificTimeOut":I
    if-lez p6, :cond_0

    const v7, 0xf4240

    if-ge p6, v7, :cond_0

    .line 191
    move v3, p6

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    .line 195
    :try_start_0
    array-length v7, p1

    if-eqz v7, :cond_1

    .line 196
    const/4 v7, 0x1

    if-ne p2, v7, :cond_3

    .line 197
    new-instance v5, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v5, p1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "reqId":Ljava/lang/String;
    .local v5, "reqId":Ljava/lang/String;
    move-object v4, v5

    .line 208
    .end local v5    # "reqId":Ljava/lang/String;
    .restart local v4    # "reqId":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    array-length v7, p3

    if-eqz v7, :cond_2

    .line 210
    move-object v1, v4

    .line 212
    const-string v7, "showSUPLInitDialog: sendBroadcast"

    invoke-static {v7}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 213
    sput-boolean p0, Linstall/app/CSUPL_LP;->mverification:Z

    .line 214
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Linstall/app/CSUPL_LP;->mrequestorId:Ljava/lang/String;

    .line 215
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Linstall/app/CSUPL_LP;->mclientName:Ljava/lang/String;

    .line 216
    sput p5, Linstall/app/CSUPL_LP;->msessionId:I

    .line 217
    sput p6, Linstall/app/CSUPL_LP;->mtimeout:I

    .line 218
    const/4 v7, 0x1

    sput-boolean v7, Linstall/app/CSUPL_LP;->mFlag:Z

    .line 220
    :cond_2
    move-object v0, v1

    .line 221
    .local v0, "clNeme":Ljava/lang/String;
    move-object v6, v0

    .line 222
    .local v6, "str":Ljava/lang/String;
    move-object v1, v4

    .line 224
    sput-boolean p0, Linstall/app/CSUPL_LP;->mverification:Z

    .line 225
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Linstall/app/CSUPL_LP;->mrequestorId:Ljava/lang/String;

    .line 226
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p3}, Ljava/lang/String;-><init>([B)V

    sput-object v7, Linstall/app/CSUPL_LP;->mclientName:Ljava/lang/String;

    .line 227
    sput p5, Linstall/app/CSUPL_LP;->msessionId:I

    .line 228
    sput p6, Linstall/app/CSUPL_LP;->mtimeout:I

    .line 229
    const/4 v7, 0x1

    sput-boolean v7, Linstall/app/CSUPL_LP;->mFlag:Z

    .line 230
    return-void

    .line 198
    .end local v0    # "clNeme":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x2

    if-ne p2, v7, :cond_1

    .line 199
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v7, "utf-16"

    invoke-direct {v5, p1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "reqId":Ljava/lang/String;
    .restart local v5    # "reqId":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "reqId":Ljava/lang/String;
    .restart local v4    # "reqId":Ljava/lang/String;
    goto :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    move-object v6, v4

    .line 204
    .restart local v6    # "str":Ljava/lang/String;
    const-string v1, "Empty"

    .line 205
    const-string v7, "Empty"

    goto :goto_0
.end method

.method public static update(Linstall/app/Intent;)V
    .locals 7
    .param p0, "intent"    # Linstall/app/Intent;

    .prologue
    .line 71
    invoke-virtual {p0}, Linstall/app/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const-string v5, "Action=DATA_SMS_ACTION"

    invoke-static {v5}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 73
    sget-boolean v5, Linstall/app/CSUPL_LP;->mHandleSMS:Z

    if-nez v5, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Linstall/app/Intent;->getData()Linstall/app/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 81
    :cond_2
    invoke-virtual {p0}, Linstall/app/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    const-string v5, "Action=WAP_ACTION"

    invoke-static {v5}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 85
    :cond_3
    invoke-virtual {p0}, Linstall/app/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.supl.msg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    const-string v5, "Action=SUPL_MSG_ACTION"

    invoke-static {v5}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "verification"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "verification"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 89
    .local v4, "verification":Z
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "reqId"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "reqId"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "reqId":Ljava/lang/String;
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "clNeme"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "clNeme"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "clName":Ljava/lang/String;
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "sessionId"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "sessionId"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, "sessionId":I
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "timeout"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "timeout"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v2, v1, v3, v5}, Linstall/app/CSUPL_LP;->showSUPLInitDialog(ZLjava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 109
    .end local v1    # "clName":Ljava/lang/String;
    .end local v2    # "reqId":Ljava/lang/String;
    .end local v3    # "sessionId":I
    .end local v4    # "verification":Z
    :cond_4
    invoke-virtual {p0}, Linstall/app/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.supl.SUPL_CONFIG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const-string v5, "Action=SUPL_CONFIG_ACTION"

    invoke-static {v5}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "StorePath"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "reqId":Ljava/lang/String;
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "SLPHost"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "clName":Ljava/lang/String;
    invoke-virtual {p0}, Linstall/app/Intent;->getExtras()Linstall/app/Bundle;

    move-result-object v5

    const-string v6, "IsLocalhost"

    invoke-virtual {v5, v6}, Linstall/app/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    .local v0, "IsLocalhost":Ljava/lang/Boolean;
    if-eqz v2, :cond_5

    if-nez v1, :cond_6

    .line 115
    :cond_5
    const-string v5, "Error reconfigure."

    invoke-static {v5}, Linstall/app/CSUPL_LP;->debugMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_6
    invoke-static {v2}, Linstall/app/CNet;->SetPath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Linstall/app/CNet;->localhost:Z

    .line 120
    sput-object v1, Linstall/app/CNet;->slphost_port:Ljava/lang/String;

    .line 121
    invoke-static {}, Linstall/app/CNet;->ReInit()I

    goto/16 :goto_0
.end method

.method public static updateGSMInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, -0x1

    .line 319
    const-string v7, "BTS parameters available, start capture..."

    .line 320
    .local v7, "str2":Ljava/lang/String;
    const-string v8, "CSUPL_LP"

    .line 321
    .local v8, "str3":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 322
    .local v0, "cid":Ljava/lang/Integer;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 323
    .local v1, "lac":Ljava/lang/Integer;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 324
    .local v3, "mcc":Ljava/lang/Integer;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 325
    .local v4, "mnc":Ljava/lang/Integer;
    sget-object v10, Linstall/app/CSUPL_LP;->mContext:Linstall/app/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Linstall/app/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linstall/app/TelephonyManager;

    .line 326
    .local v9, "tm":Linstall/app/TelephonyManager;
    invoke-virtual {v9}, Linstall/app/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 327
    const-string v6, "CSUPL_LP"

    .line 328
    .local v6, "str":Ljava/lang/String;
    const-string v6, "BTS parameters available, start capture..."

    .line 329
    invoke-static {v8, v7}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v9}, Linstall/app/TelephonyManager;->getCellLocation()Linstall/app/CellLocation;

    move-result-object v2

    check-cast v2, Linstall/app/GsmCellLocation;

    .line 331
    .local v2, "location":Linstall/app/GsmCellLocation;
    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {v2}, Linstall/app/GsmCellLocation;->getCid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 333
    const-string v6, "CSUPL_LP"

    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cell ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2}, Linstall/app/GsmCellLocation;->getLac()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 336
    const-string v6, "CSUPL_LP"

    .line 337
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LAC: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9}, Linstall/app/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "networkOperator":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 341
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 342
    const-string v10, "CSUPL_LP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MCC: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 344
    const-string v10, "CSUPL_LP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MNC: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    .end local v2    # "location":Linstall/app/GsmCellLocation;
    .end local v5    # "networkOperator":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Linstall/app/TelephonyManager;->getNetworkType()I

    move-result v10

    if-ne v10, v14, :cond_1

    .line 354
    const-string v6, "CSUPL_LP"

    .line 355
    .restart local v6    # "str":Ljava/lang/String;
    const-string v6, "BTS parameters available, start capture..."

    .line 356
    invoke-static {v8, v7}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v9}, Linstall/app/TelephonyManager;->getCellLocation()Linstall/app/CellLocation;

    move-result-object v2

    check-cast v2, Linstall/app/GsmCellLocation;

    .line 358
    .restart local v2    # "location":Linstall/app/GsmCellLocation;
    if-eqz v2, :cond_3

    .line 359
    invoke-virtual {v2}, Linstall/app/GsmCellLocation;->getCid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 360
    const-string v6, "CSUPL_LP"

    .line 361
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cell ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v9}, Linstall/app/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 363
    .restart local v5    # "networkOperator":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 365
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_1
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 366
    const-string v10, "CSUPL_LP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MCC: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 368
    const-string v10, "CSUPL_LP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MNC: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    .end local v2    # "location":Linstall/app/GsmCellLocation;
    .end local v5    # "networkOperator":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_4

    .line 378
    const-string v6, "CSUPL_LP"

    .line 379
    .restart local v6    # "str":Ljava/lang/String;
    const-string v10, "Captured BTS parameters are valid, update SUPL params..."

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetCi(I)V

    .line 381
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetLac(I)V

    .line 382
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetMcc(I)V

    .line 383
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetMnc(I)V

    .line 395
    :goto_2
    return-void

    .line 349
    .restart local v2    # "location":Linstall/app/GsmCellLocation;
    :cond_2
    const-string v6, "CSUPL_LP"

    .line 350
    const-string v10, "Location is NULL!!"

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :cond_3
    const-string v6, "CSUPL_LP"

    .line 374
    const-string v10, "Location is NULL!!"

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    .end local v2    # "location":Linstall/app/GsmCellLocation;
    .end local v6    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v13, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_6

    .line 385
    :cond_5
    const-string v6, "CSUPL_LP"

    .line 386
    .restart local v6    # "str":Ljava/lang/String;
    const-string v10, "Invalid BTS parameters, use previous ones!"

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 388
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    const-string v6, "CSUPL_LP"

    .line 389
    .restart local v6    # "str":Ljava/lang/String;
    const-string v10, "Captured BTS parameters are valid, update SUPL params..."

    invoke-static {v8, v10}, Linstall/app/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetCi(I)V

    .line 391
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetLac(I)V

    .line 392
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetMcc(I)V

    .line 393
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linstall/app/CSUPL_LP;->SetMnc(I)V

    goto :goto_2

    .line 369
    .restart local v2    # "location":Linstall/app/GsmCellLocation;
    .restart local v5    # "networkOperator":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 345
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method
