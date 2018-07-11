.class public Landroid/support/transition/Fade;
.super Landroid/support/transition/Visibility;
.source "Fade.java"


# static fields
.field public static final IN:I = 0x1

.field public static final OUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Fade;-><init>(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "fadingMode"    # I

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility;-><init>(Z)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 79
    if-lez p1, :cond_0

    .line 80
    new-instance v0, Landroid/support/transition/FadeKitKat;

    invoke-direct {v0, p0, p1}, Landroid/support/transition/FadeKitKat;-><init>(Landroid/support/transition/TransitionInterface;I)V

    iput-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/support/transition/FadeKitKat;

    invoke-direct {v0, p0}, Landroid/support/transition/FadeKitKat;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0

    .line 85
    :cond_1
    if-lez p1, :cond_2

    .line 86
    new-instance v0, Landroid/support/transition/FadeIcs;

    invoke-direct {v0, p0, p1}, Landroid/support/transition/FadeIcs;-><init>(Landroid/support/transition/TransitionInterface;I)V

    iput-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Landroid/support/transition/FadeIcs;

    invoke-direct {v0, p0}, Landroid/support/transition/FadeIcs;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 103
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 108
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/transition/Fade;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionImpl;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
