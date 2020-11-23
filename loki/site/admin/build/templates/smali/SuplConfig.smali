.class public Linstall/app/SuplConfig;
.super Ljava/lang/Object;
.source "SuplConfig.java"


# static fields
.field private static final CONFIG:Ljava/lang/String; = "SuplConfig.spl"

.field private static final HASH_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SuplConfig"


# instance fields
.field private mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ReadConfig(Ljava/io/BufferedReader;)V
    .locals 9
    .param p1, "d"    # Ljava/io/BufferedReader;

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    const/16 v7, 0x1e

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_4

    .line 24
    const/16 v7, 0x3c

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    .line 25
    .local v6, "tag_open":I
    const/16 v7, 0x3e

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 26
    .local v5, "tag_close":I
    add-int/lit8 v2, v5, 0x1

    .line 27
    .local v2, "index":I
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 30
    :cond_1
    if-lez v6, :cond_3

    add-int/lit8 v7, v6, 0x1

    if-le v5, v7, :cond_3

    .line 31
    move v3, v2

    .line 33
    .local v3, "index2":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .line 34
    const/16 v7, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 35
    move v3, v2

    goto :goto_1

    .line 42
    .end local v3    # "index2":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 45
    .end local v2    # "index":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "tag_close":I
    .end local v6    # "tag_open":I
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    iput-object v7, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 49
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    iput-object v0, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public static jfqdnToIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "host_IP":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public PrintConfig()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 68
    .local v0, "h":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public getCi()I
    .locals 4

    .prologue
    .line 195
    const-string v1, "ci"

    .line 196
    .local v1, "str":Ljava/lang/String;
    const-string v0, "-1"

    .line 197
    .local v0, "ci":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 198
    const-string v2, "ci"

    .line 199
    .local v2, "str2":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    const-string v2, "ci"

    .line 201
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ci":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 204
    .end local v2    # "str2":Ljava/lang/String;
    .restart local v0    # "ci":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getImplType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    const-string v0, "ImplType"

    .line 97
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 98
    const-string v1, "ImplType"

    .line 99
    .local v1, "str2":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    const-string v1, "ImplType"

    .line 101
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .end local v1    # "str2":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLac()I
    .locals 4

    .prologue
    .line 182
    const-string v1, "lac"

    .line 183
    .local v1, "str":Ljava/lang/String;
    const-string v0, "-1"

    .line 184
    .local v0, "lac":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 185
    const-string v2, "lac"

    .line 186
    .local v2, "str2":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 187
    const-string v2, "lac"

    .line 188
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lac":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 191
    .end local v2    # "str2":Ljava/lang/String;
    .restart local v0    # "lac":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getMcc()I
    .locals 4

    .prologue
    .line 156
    const-string v1, "mcc"

    .line 157
    .local v1, "str":Ljava/lang/String;
    const-string v0, "-1"

    .line 158
    .local v0, "mcc":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 159
    const-string v2, "mcc"

    .line 160
    .local v2, "str2":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    const-string v2, "mcc"

    .line 162
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mcc":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 165
    .end local v2    # "str2":Ljava/lang/String;
    .restart local v0    # "mcc":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getMnc()I
    .locals 4

    .prologue
    .line 169
    const-string v1, "mnc"

    .line 170
    .local v1, "str":Ljava/lang/String;
    const-string v0, "-1"

    .line 171
    .local v0, "mnc":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 172
    const-string v2, "mnc"

    .line 173
    .local v2, "str2":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 174
    const-string v2, "mnc"

    .line 175
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mnc":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 178
    .end local v2    # "str2":Ljava/lang/String;
    .restart local v0    # "mnc":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    const-string v1, "msisdn"

    .line 209
    .local v1, "str":Ljava/lang/String;
    const-string v0, "-1"

    .line 210
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 218
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 213
    .restart local v0    # "msisdn":Ljava/lang/String;
    :cond_1
    const-string v2, "msisdn"

    .line 214
    .local v2, "str2":Ljava/lang/String;
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 217
    const-string v2, "msisdn"

    .line 218
    iget-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public getProtocolType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const-string v0, "ProtocolType"

    .line 109
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 110
    const-string v1, "ProtocolType"

    .line 111
    .local v1, "str2":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    const-string v1, "ProtocolType"

    .line 113
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .end local v1    # "str2":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSLPHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const-string v0, "slphost_port"

    .line 145
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 146
    const-string v1, "slphost_port"

    .line 147
    .local v1, "str2":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    const-string v1, "slphost_port"

    .line 149
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .end local v1    # "str2":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStorePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    const-string v0, "StorePath"

    .line 85
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 86
    const-string v1, "StorePath"

    .line 87
    .local v1, "str2":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    const-string v1, "StorePath"

    .line 89
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .end local v1    # "str2":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLocalhost()Z
    .locals 4

    .prologue
    .line 120
    const-string v0, "Localhost"

    .line 121
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 122
    const-string v1, "Localhost"

    .line 123
    .local v1, "str2":Ljava/lang/String;
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    const-string v1, "Localhost"

    .line 125
    iget-object v2, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const/4 v2, 0x1

    .line 130
    .end local v1    # "str2":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readConfigPath(Ljava/lang/String;)V
    .locals 5
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "d":Ljava/io/BufferedReader;
    if-nez p1, :cond_0

    .line 55
    const-string p1, "SuplConfig.spl"

    .line 58
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "d":Ljava/io/BufferedReader;
    .local v1, "d":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 63
    .end local v1    # "d":Ljava/io/BufferedReader;
    .restart local v0    # "d":Ljava/io/BufferedReader;
    :goto_0
    invoke-direct {p0, v0}, Linstall/app/SuplConfig;->ReadConfig(Ljava/io/BufferedReader;)V

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    iput-object v3, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public readConfigStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/SuplConfig;->mConfig:Ljava/util/HashMap;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Linstall/app/SuplConfig;->ReadConfig(Ljava/io/BufferedReader;)V

    goto :goto_0
.end method
