.class public final Linstall/app/Contacts$Intents;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Contacts$Intents$UI;,
        Linstall/app/Contacts$Intents$Insert;
    }
.end annotation


# static fields
.field public static final ATTACH_IMAGE:Ljava/lang/String; = "com.android.contacts.action.ATTACH_IMAGE"

.field public static final EXTRA_CREATE_DESCRIPTION:Ljava/lang/String; = "com.android.contacts.action.CREATE_DESCRIPTION"

.field public static final EXTRA_FORCE_CREATE:Ljava/lang/String; = "com.android.contacts.action.FORCE_CREATE"

.field public static final SEARCH_SUGGESTION_CLICKED:Ljava/lang/String; = "install.app.calss.Contacts.SEARCH_SUGGESTION_CLICKED"

.field public static final SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED:Ljava/lang/String; = "install.app.calss.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

.field public static final SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED:Ljava/lang/String; = "install.app.calss.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

.field public static final SHOW_OR_CREATE_CONTACT:Ljava/lang/String; = "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
