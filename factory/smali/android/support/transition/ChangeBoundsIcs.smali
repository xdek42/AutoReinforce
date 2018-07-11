.class Landroid/support/transition/ChangeBoundsIcs;
.super Landroid/support/transition/TransitionIcs;
.source "ChangeBoundsIcs.java"

# interfaces
.implements Landroid/support/transition/ChangeBoundsInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 27
    new-instance v0, Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {v0}, Landroid/support/transition/ChangeBoundsPort;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/ChangeBoundsIcs;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setResizeClip(Z)V
    .locals 1
    .param p1, "resizeClip"    # Z

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/transition/ChangeBoundsIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/ChangeBoundsPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/ChangeBoundsPort;->setResizeClip(Z)V

    .line 33
    return-void
.end method
