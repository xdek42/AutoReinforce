.class public Landroid/support/transition/AutoTransition;
.super Landroid/support/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 33
    invoke-virtual {p0, v2}, Landroid/support/transition/AutoTransition;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 34
    new-instance v0, Landroid/support/transition/Fade;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/AutoTransition;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/support/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/support/transition/ChangeBounds;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/support/transition/Fade;

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 37
    return-void
.end method
