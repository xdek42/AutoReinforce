.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"

# interfaces
.implements Landroid/support/transition/VisibilityInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility;-><init>(Z)V

    .line 40
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "deferred"    # Z

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 46
    new-instance v0, Landroid/support/transition/VisibilityKitKat;

    invoke-direct {v0}, Landroid/support/transition/VisibilityKitKat;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 50
    :goto_0
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionImpl;->init(Landroid/support/transition/TransitionInterface;)V

    .line 52
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Landroid/support/transition/VisibilityIcs;

    invoke-direct {v0}, Landroid/support/transition/VisibilityIcs;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

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
    .line 56
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 57
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 62
    return-void
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/VisibilityImpl;

    invoke-interface {v0, p1}, Landroid/support/transition/VisibilityImpl;->isVisible(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/VisibilityImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityImpl;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/transition/Visibility;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/VisibilityImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/transition/VisibilityImpl;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
