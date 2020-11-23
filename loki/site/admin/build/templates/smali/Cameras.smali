.class public Linstall/app/Cameras;
.super Ljava/lang/Object;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Cameras$Size;,
        Linstall/app/Cameras$ShutterCallback;,
        Linstall/app/Cameras$PreviewCallback;,
        Linstall/app/Cameras$PictureCallback;,
        Linstall/app/Cameras$Parameters;,
        Linstall/app/Cameras$ErrorCallback;,
        Linstall/app/Cameras$AutoFocusCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static open()Linstall/app/Cameras;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final autoFocus(Linstall/app/Cameras$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Linstall/app/Cameras$AutoFocusCallback;

    .prologue
    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameters()Linstall/app/Cameras$Parameters;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final release()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setErrorCallback(Linstall/app/Cameras$ErrorCallback;)V
    .locals 2
    .param p1, "cb"    # Linstall/app/Cameras$ErrorCallback;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOneShotPreviewCallback(Linstall/app/Cameras$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Linstall/app/Cameras$PreviewCallback;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameters(Linstall/app/Cameras$Parameters;)V
    .locals 2
    .param p1, "params"    # Linstall/app/Cameras$Parameters;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPreviewCallback(Linstall/app/Cameras$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Linstall/app/Cameras$PreviewCallback;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPreviewDisplay(Linstall/app/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Linstall/app/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final native startPreview()V
.end method

.method public final native stopPreview()V
.end method

.method public final takePicture(Linstall/app/Cameras$ShutterCallback;Linstall/app/Cameras$PictureCallback;Linstall/app/Cameras$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Linstall/app/Cameras$ShutterCallback;
    .param p2, "raw"    # Linstall/app/Cameras$PictureCallback;
    .param p3, "jpeg"    # Linstall/app/Cameras$PictureCallback;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
