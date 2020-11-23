.class public Linstall/app/AQUtility;
.super Ljava/lang/Object;
.source "AQUtility.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x400

.field private static cacheDir:Ljava/io/File;

.field private static context:Linstall/app/Context;

.field private static debug:Z

.field private static eh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static handler:Linstall/app/Handler;

.field private static pcacheDir:Ljava/io/File;

.field private static storeExe:Ljava/util/concurrent/ScheduledExecutorService;

.field private static times:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Linstall/app/AQUtility;->debug:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linstall/app/AQUtility;->times:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Linstall/app/SharedPreferences$Editor;)V
    .locals 0
    .param p0, "editor"    # Linstall/app/SharedPreferences$Editor;

    .prologue
    .line 184
    invoke-interface {p0}, Linstall/app/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public static cleanCache(Ljava/io/File;JJ)V
    .locals 7
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "triggerSize"    # J
    .param p3, "targetSize"    # J

    .prologue
    .line 352
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 353
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 355
    invoke-static {v1, p1, p2}, Linstall/app/AQUtility;->testCleanNeeded([Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    invoke-static {v1, p3, p4}, Linstall/app/AQUtility;->cleanCache([Ljava/io/File;J)V

    .line 358
    :cond_0
    invoke-static {}, Linstall/app/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v2

    .line 359
    .local v2, "temp":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Linstall/app/AQUtility;->cleanCache([Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "temp":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static cleanCache([Ljava/io/File;J)V
    .locals 9
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "maxSize"    # J

    .prologue
    .line 389
    const-wide/16 v2, 0x0

    .line 390
    .local v2, "total":J
    const/4 v0, 0x0

    .line 391
    .local v0, "deletes":I
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p0, v4

    .line 392
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 394
    cmp-long v6, v2, p1

    if-ltz v6, :cond_0

    .line 395
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 396
    add-int/lit8 v0, v0, 0x1

    .line 391
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    const-string v4, "deleted"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public static cleanCacheAsync(Linstall/app/Context;)V
    .locals 4
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    .line 338
    const-wide/32 v0, 0x2dc6c0

    const-wide/32 v2, 0x1e8480

    invoke-static {p0, v0, v1, v2, v3}, Linstall/app/AQUtility;->cleanCacheAsync(Linstall/app/Context;JJ)V

    .line 339
    return-void
.end method

.method public static cleanCacheAsync(Linstall/app/Context;JJ)V
    .locals 1
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "triggerSize"    # J
    .param p3, "targetSize"    # J

    .prologue
    .line 343
    :try_start_0
    invoke-static {p0}, Linstall/app/AQUtility;->getCacheDir(Linstall/app/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 248
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 205
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 206
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 61
    sget-boolean v0, Linstall/app/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 64
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "msg2"    # Ljava/lang/Object;

    .prologue
    .line 67
    sget-boolean v0, Linstall/app/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 70
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    sget-boolean v0, Linstall/app/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    .line 76
    :cond_0
    return-void
.end method

.method public static debugNotify()V
    .locals 2

    .prologue
    .line 53
    sget-boolean v0, Linstall/app/AQUtility;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 54
    sget-object v1, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v1

    .line 58
    :cond_0
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static debugWait(J)V
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 38
    sget-boolean v1, Linstall/app/AQUtility;->debug:Z

    if-eqz v1, :cond_1

    .line 39
    sget-object v1, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    .line 42
    :cond_0
    sget-object v2, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_0
    sget-object v1, Linstall/app/AQUtility;->wait:Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 50
    :cond_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static dip2pixel(Linstall/app/Context;F)I
    .locals 1
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "n"    # F

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ensureUIThread()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Linstall/app/AQUtility;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static getCacheDir(Linstall/app/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    .line 278
    sget-object v0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Linstall/app/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    .line 280
    sget-object v0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 282
    :cond_0
    sget-object v0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getCacheDir(Linstall/app/Context;I)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "policy"    # I

    .prologue
    .line 266
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 267
    invoke-static {p0}, Linstall/app/AQUtility;->getCacheDir(Linstall/app/Context;)Ljava/io/File;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 269
    :cond_0
    sget-object v0, Linstall/app/AQUtility;->pcacheDir:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 270
    sget-object v0, Linstall/app/AQUtility;->pcacheDir:Ljava/io/File;

    goto :goto_0

    .line 272
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Linstall/app/AQUtility;->getCacheDir(Linstall/app/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "persistent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Linstall/app/AQUtility;->pcacheDir:Ljava/io/File;

    .line 273
    sget-object v0, Linstall/app/AQUtility;->pcacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 274
    sget-object v0, Linstall/app/AQUtility;->pcacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Linstall/app/AQUtility;->getCacheFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Linstall/app/AQUtility;->makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCacheFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p0}, Linstall/app/AQUtility;->getMD5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Linstall/app/Context;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Linstall/app/AQUtility;->context:Linstall/app/Context;

    return-object v0
.end method

.method public static getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p0, p1}, Linstall/app/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 309
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 312
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static getExistedCacheByUrlSetAccess(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p0, p1}, Linstall/app/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 317
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 318
    invoke-static {v0}, Linstall/app/AQUtility;->lastAccess(Ljava/io/File;)V

    .line 320
    :cond_0
    return-object v0
.end method

.method private static getFileStoreExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Linstall/app/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Linstall/app/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    .line 258
    :cond_0
    sget-object v0, Linstall/app/AQUtility;->storeExe:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static getHandler()Linstall/app/Handler;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Linstall/app/AQUtility;->handler:Linstall/app/Handler;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Linstall/app/Handler;

    invoke-static {}, Linstall/app/Looper;->getMainLooper()Linstall/app/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Linstall/app/Handler;-><init>(Linstall/app/Looper;)V

    sput-object v0, Linstall/app/AQUtility;->handler:Linstall/app/Handler;

    .line 171
    :cond_0
    sget-object v0, Linstall/app/AQUtility;->handler:Linstall/app/Handler;

    return-object v0
.end method

.method private static getMD5([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 193
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 194
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 195
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 198
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getMD5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Linstall/app/AQUtility;->getMD5([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 369
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linstall/app/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery/temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    .local v0, "tempDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    .end local v0    # "tempDir":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "tempDir":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "report"    # Z
    .param p6, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 118
    .local p4, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p5, "cls2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    :try_start_0
    invoke-static/range {v0 .. v5}, Linstall/app/AQUtility;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, "e":Ljava/lang/Throwable;
    if-eqz p3, :cond_0

    .line 121
    invoke-static {v6}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    .line 125
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v6}, Linstall/app/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static varargs invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p3, "report"    # Z
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "ZZ[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 113
    .local p4, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Linstall/app/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "fallback"    # Z
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    .local p3, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p4, "cls2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_1
    if-nez p3, :cond_2

    .line 134
    const/4 v0, 0x0

    new-array p3, v0, [Ljava/lang/Class;

    .line 136
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static isUIThread()Z
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Linstall/app/Looper;->getMainLooper()Linstall/app/Looper;

    move-result-object v0

    invoke-virtual {v0}, Linstall/app/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lastAccess(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 325
    return-void
.end method

.method private static makeCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 175
    invoke-static {}, Linstall/app/AQUtility;->getHandler()Linstall/app/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Linstall/app/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "run"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 179
    invoke-static {}, Linstall/app/AQUtility;->getHandler()Linstall/app/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Linstall/app/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method

.method public static report(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_0
    invoke-static {p0}, Linstall/app/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 82
    sget-object v1, Linstall/app/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Linstall/app/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setAlpha(Linstall/app/View;F)V
    .locals 4
    .param p0, "view"    # Linstall/app/View;
    .param p1, "alphaValue"    # F

    .prologue
    .line 148
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Linstall/app/View;->clearAnimation()V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Linstall/app/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Linstall/app/AlphaAnimation;-><init>(FF)V

    .line 153
    .local v0, "alpha":Linstall/app/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Linstall/app/AlphaAnimation;->setDuration(J)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linstall/app/AlphaAnimation;->setFillAfter(Z)V

    goto :goto_0
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 286
    sput-object p0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    .line 287
    sget-object v0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Linstall/app/AQUtility;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_0
    return-void
.end method

.method public static setContext(Linstall/app/Application;)V
    .locals 1
    .param p0, "app"    # Linstall/app/Application;

    .prologue
    .line 408
    invoke-virtual {p0}, Linstall/app/Application;->getApplicationContext()Linstall/app/Context;

    move-result-object v0

    sput-object v0, Linstall/app/AQUtility;->context:Linstall/app/Context;

    .line 409
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 34
    .line 35
    return-void
.end method

.method public static setExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p0, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 92
    sput-object p0, Linstall/app/AQUtility;->eh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 93
    return-void
.end method

.method public static store(Ljava/io/File;[B)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 328
    if-eqz p0, :cond_0

    .line 330
    :try_start_0
    invoke-static {p0, p1}, Linstall/app/AQUtility;->write(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static storeAsync(Ljava/io/File;[BJ)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "delay"    # J

    .prologue
    .line 263
    return-void
.end method

.method private static testCleanNeeded([Ljava/io/File;J)Z
    .locals 9
    .param p0, "files"    # [Ljava/io/File;
    .param p1, "triggerSize"    # J

    .prologue
    const/4 v1, 0x0

    .line 378
    const-wide/16 v2, 0x0

    .line 379
    .local v2, "total":J
    array-length v5, p0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p0, v4

    .line 380
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 381
    cmp-long v6, v2, p1

    if-lez v6, :cond_1

    .line 382
    const/4 v1, 0x1

    .line 385
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return v1

    .line 379
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static time(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Linstall/app/AQUtility;->times:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public static timeEnd(Ljava/lang/String;J)J
    .locals 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    sget-object v3, Linstall/app/AQUtility;->times:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 101
    .local v2, "old":Ljava/lang/Long;
    if-nez v2, :cond_1

    move-wide v0, v4

    .line 109
    :cond_0
    :goto_0
    return-wide v0

    .line 104
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 105
    .local v0, "diff":J
    cmp-long v3, p1, v4

    if-eqz v3, :cond_2

    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    .line 108
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v3}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static toBytes(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "result":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, v0}, Linstall/app/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    :goto_0
    invoke-static {p0}, Linstall/app/AQUtility;->close(Ljava/io/Closeable;)V

    .line 224
    return-object v2

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static transparent(Linstall/app/View;Z)V
    .locals 1
    .param p0, "view"    # Linstall/app/View;
    .param p1, "transparent"    # Z

    .prologue
    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    .line 141
    .local v0, "alpha":F
    if-eqz p1, :cond_0

    .line 142
    const/high16 v0, 0x3f000000    # 0.5f

    .line 144
    :cond_0
    invoke-static {p0, v0}, Linstall/app/AQUtility;->setAlpha(Linstall/app/View;F)V

    .line 145
    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 231
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 239
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 243
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "file create fail"

    invoke-static {v3, p0}, Linstall/app/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    invoke-static {v0}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 241
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Linstall/app/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
