.class public Linstall/app/ComposeShader;
.super Linstall/app/Shader;
.source "ComposeShader.java"


# direct methods
.method public constructor <init>(Linstall/app/Shader;Linstall/app/Shader;Linstall/app/PorterDuff$Mode;)V
    .locals 2
    .param p1, "shaderA"    # Linstall/app/Shader;
    .param p2, "shaderB"    # Linstall/app/Shader;
    .param p3, "mode"    # Linstall/app/PorterDuff$Mode;

    .prologue
    .line 10
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Linstall/app/Shader;Linstall/app/Shader;Linstall/app/Xfermode;)V
    .locals 2
    .param p1, "shaderA"    # Linstall/app/Shader;
    .param p2, "shaderB"    # Linstall/app/Shader;
    .param p3, "mode"    # Linstall/app/Xfermode;

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/Shader;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
