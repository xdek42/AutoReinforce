.class public Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Landroid/support/transition/TransitionPort$TransitionListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 1213
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 1209
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 1217
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 1221
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 1205
    return-void
.end method
