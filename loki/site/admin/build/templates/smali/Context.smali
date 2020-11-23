.class public abstract Linstall/app/Context;
.super Landroid/content/Context;
.source "Context.java"


# static fields
.field public static final ACTIVITY_SERVICE:Ljava/lang/String; = "activity"

.field public static final ALARM_SERVICE:Ljava/lang/String; = "alarm"

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final BIND_AUTO_CREATE:I = 0x1

.field public static final BIND_DEBUG_UNBIND:I = 0x2

.field public static final CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboard"

.field public static final CONNECTIVITY_SERVICE:Ljava/lang/String; = "connectivity"

.field public static final CONTEXT_IGNORE_SECURITY:I = 0x2

.field public static final CONTEXT_INCLUDE_CODE:I = 0x1

.field public static final INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method"

.field public static final KEYGUARD_SERVICE:Ljava/lang/String; = "keyguard"

.field public static final LAYOUT_INFLATER_SERVICE:Ljava/lang/String; = "layout_inflater"

.field public static final LOCATION_SERVICE:Ljava/lang/String; = "location"

.field public static final MODE_APPEND:I = 0x8000

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1

.field public static final MODE_WORLD_WRITEABLE:I = 0x2

.field public static final NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"

.field public static final SEARCH_SERVICE:Ljava/lang/String; = "search"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"

.field public static final TELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final VIBRATOR_SERVICE:Ljava/lang/String; = "vibrator"

.field public static final WALLPAPER_SERVICE:Ljava/lang/String; = "wallpaper"

.field public static final WIFI_SERVICE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_SERVICE:Ljava/lang/String; = "window"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "i"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public abstract bindService(Linstall/app/Intent;Linstall/app/ServiceConnection;I)Z
.end method

.method public abstract checkCallingOrSelfPermission(Ljava/lang/String;)I
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public abstract checkCallingOrSelfUriPermission(Linstall/app/Uri;I)I
.end method

.method public abstract checkCallingPermission(Ljava/lang/String;)I
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public abstract checkCallingUriPermission(Linstall/app/Uri;I)I
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "i"    # I
    .param p5, "i1"    # I
    .param p6, "i2"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public abstract checkUriPermission(Linstall/app/Uri;III)I
.end method

.method public abstract checkUriPermission(Linstall/app/Uri;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public abstract clearWallpaper()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Linstall/app/Context;->createPackageContext(Ljava/lang/String;I)Linstall/app/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract createPackageContext(Ljava/lang/String;I)Linstall/app/Context;
.end method

.method public abstract databaseList()[Ljava/lang/String;
.end method

.method public abstract deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 271
    return-void
.end method

.method public abstract enforceCallingOrSelfUriPermission(Linstall/app/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 266
    return-void
.end method

.method public abstract enforceCallingUriPermission(Linstall/app/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "s"    # Ljava/lang/String;

    .prologue
    .line 261
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .param p4, "i"    # I
    .param p5, "i1"    # I
    .param p6, "i2"    # I
    .param p7, "s2"    # Ljava/lang/String;

    .prologue
    .line 276
    return-void
.end method

.method public abstract enforceUriPermission(Linstall/app/Uri;IIILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Linstall/app/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fileList()[Ljava/lang/String;
.end method

.method public bridge synthetic getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Linstall/app/Context;->getApplicationContext()Linstall/app/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract getApplicationContext()Linstall/app/Context;
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getDatabasePath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDir(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public abstract getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilesDir()Ljava/io/File;
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObbDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObbDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
.end method

.method public abstract getWallpaper()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getWallpaperDesiredMinimumHeight()I
.end method

.method public abstract getWallpaperDesiredMinimumWidth()I
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "i"    # I

    .prologue
    .line 231
    return-void
.end method

.method public abstract grantUriPermission(Ljava/lang/String;Linstall/app/Uri;I)V
.end method

.method public final obtainStyledAttributes(Linstall/app/AttributeSet;[I)Linstall/app/TypedArray;
    .locals 2
    .param p1, "set"    # Linstall/app/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 469
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final obtainStyledAttributes(Linstall/app/AttributeSet;[III)Linstall/app/TypedArray;
    .locals 2
    .param p1, "set"    # Linstall/app/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "databaseErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILinstall/app/SQLiteDatabase$CursorFactory;)Linstall/app/SQLiteDatabase;
.end method

.method public abstract peekWallpaper()Landroid/graphics/drawable/Drawable;
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract registerReceiver(Linstall/app/BroadcastReceiver;Linstall/app/IntentFilter;)Linstall/app/Intent;
.end method

.method public abstract registerReceiver(Linstall/app/BroadcastReceiver;Linstall/app/IntentFilter;Ljava/lang/String;Linstall/app/Handler;)Linstall/app/Intent;
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    return-void
.end method

.method public abstract removeStickyBroadcast(Linstall/app/Intent;)V
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 166
    return-void
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i"    # I

    .prologue
    .line 236
    return-void
.end method

.method public abstract revokeUriPermission(Linstall/app/Uri;I)V
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public abstract sendBroadcast(Linstall/app/Intent;)V
.end method

.method public abstract sendBroadcast(Linstall/app/Intent;Ljava/lang/String;)V
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 126
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "i"    # I
    .param p6, "s1"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 121
    return-void
.end method

.method public abstract sendOrderedBroadcast(Linstall/app/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Linstall/app/Intent;Ljava/lang/String;Linstall/app/BroadcastReceiver;Linstall/app/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "i"    # I
    .param p7, "s1"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 136
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    return-void
.end method

.method public abstract sendStickyBroadcast(Linstall/app/Intent;)V
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 156
    return-void
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "i"    # I
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    return-void
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "i"    # I
    .param p6, "s"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 161
    return-void
.end method

.method public abstract setTheme(I)V
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    return-void
.end method

.method public abstract setWallpaper(Linstall/app/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setWallpaper(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 0
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 86
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    return-void
.end method

.method public abstract startActivity(Linstall/app/Intent;)V
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public abstract startInstrumentation(Linstall/app/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 0
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .param p5, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .param p5, "i2"    # I
    .param p6, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract startService(Linstall/app/Intent;)Linstall/app/ComponentName;
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public abstract stopService(Linstall/app/Intent;)Z
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 201
    return-void
.end method

.method public abstract unbindService(Linstall/app/ServiceConnection;)V
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 181
    return-void
.end method

.method public abstract unregisterReceiver(Linstall/app/BroadcastReceiver;)V
.end method
