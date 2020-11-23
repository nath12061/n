.class public abstract Linstall/app/ContextWrapper;
.super Linstall/app/Context;
.source "ContextWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Linstall/app/Context;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Linstall/app/Context;)V
    .locals 0
    .param p1, "context"    # Linstall/app/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Linstall/app/Context;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public bindService(Linstall/app/Intent;Linstall/app/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Linstall/app/Intent;
    .param p2, "conn"    # Linstall/app/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingOrSelfUriPermission(Linstall/app/Uri;I)I
    .locals 1
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public checkCallingUriPermission(Linstall/app/Uri;I)I
    .locals 1
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Linstall/app/Uri;III)I
    .locals 1
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Linstall/app/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public clearWallpaper()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public bridge synthetic createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Linstall/app/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Linstall/app/Context;

    move-result-object v0

    return-object v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Linstall/app/Context;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public databaseList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Linstall/app/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public enforceCallingUriPermission(Linstall/app/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    return-void
.end method

.method public enforceUriPermission(Linstall/app/Uri;IIILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public enforceUriPermission(Linstall/app/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Linstall/app/ContextWrapper;->getApplicationContext()Linstall/app/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Linstall/app/Context;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public grantUriPermission(Ljava/lang/String;Linstall/app/Uri;I)V
    .locals 0
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Linstall/app/Uri;
    .param p3, "modeFlags"    # I

    .prologue
    .line 174
    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILinstall/app/SQLiteDatabase$CursorFactory;)Linstall/app/SQLiteDatabase;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Linstall/app/SQLiteDatabase$CursorFactory;

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Linstall/app/BroadcastReceiver;Linstall/app/IntentFilter;)Linstall/app/Intent;
    .locals 1
    .param p1, "receiver"    # Linstall/app/BroadcastReceiver;
    .param p2, "filter"    # Linstall/app/IntentFilter;

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Linstall/app/BroadcastReceiver;Linstall/app/IntentFilter;Ljava/lang/String;Linstall/app/Handler;)Linstall/app/Intent;
    .locals 1
    .param p1, "receiver"    # Linstall/app/BroadcastReceiver;
    .param p2, "filter"    # Linstall/app/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Linstall/app/Handler;

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeStickyBroadcast(Linstall/app/Intent;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 201
    return-void
.end method

.method public revokeUriPermission(Linstall/app/Uri;I)V
    .locals 0
    .param p1, "uri"    # Linstall/app/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 204
    return-void
.end method

.method public sendBroadcast(Linstall/app/Intent;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 207
    return-void
.end method

.method public sendBroadcast(Linstall/app/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 210
    return-void
.end method

.method public sendOrderedBroadcast(Linstall/app/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 213
    return-void
.end method

.method public sendOrderedBroadcast(Linstall/app/Intent;Ljava/lang/String;Linstall/app/BroadcastReceiver;Linstall/app/Handler;ILjava/lang/String;Linstall/app/Bundle;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Linstall/app/BroadcastReceiver;
    .param p4, "scheduler"    # Linstall/app/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Linstall/app/Bundle;

    .prologue
    .line 216
    return-void
.end method

.method public sendStickyBroadcast(Linstall/app/Intent;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 219
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 222
    return-void
.end method

.method public setWallpaper(Linstall/app/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Linstall/app/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    return-void
.end method

.method public startActivity(Linstall/app/Intent;)V
    .locals 0
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 231
    return-void
.end method

.method public startInstrumentation(Linstall/app/ComponentName;Ljava/lang/String;Linstall/app/Bundle;)Z
    .locals 1
    .param p1, "className"    # Linstall/app/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Linstall/app/Bundle;

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public startService(Linstall/app/Intent;)Linstall/app/ComponentName;
    .locals 1
    .param p1, "service"    # Linstall/app/Intent;

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopService(Linstall/app/Intent;)Z
    .locals 1
    .param p1, "service"    # Linstall/app/Intent;

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public unbindService(Linstall/app/ServiceConnection;)V
    .locals 0
    .param p1, "conn"    # Linstall/app/ServiceConnection;

    .prologue
    .line 246
    return-void
.end method

.method public unregisterReceiver(Linstall/app/BroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Linstall/app/BroadcastReceiver;

    .prologue
    .line 249
    return-void
.end method
