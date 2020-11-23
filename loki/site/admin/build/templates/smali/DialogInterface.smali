.class public interface abstract Linstall/app/DialogInterface;
.super Ljava/lang/Object;
.source "DialogInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/DialogInterface$OnMultiChoiceClickListener;,
        Linstall/app/DialogInterface$OnKeyListener;,
        Linstall/app/DialogInterface$OnCancelListener;,
        Linstall/app/DialogInterface$OnDismissListener;,
        Linstall/app/DialogInterface$OnClickListener;
    }
.end annotation


# static fields
.field public static final BUTTON1:I = -0x1

.field public static final BUTTON2:I = -0x2

.field public static final BUTTON3:I = -0x3

.field public static final BUTTON_NEGATIVE:I = -0x2

.field public static final BUTTON_NEUTRAL:I = -0x3

.field public static final BUTTON_POSITIVE:I = -0x1


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract dismiss()V
.end method
