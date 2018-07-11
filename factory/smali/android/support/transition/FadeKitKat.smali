.class Landroid/support/transition/FadeKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "FadeKitKat.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 30
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/FadeKitKat;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/support/transition/TransitionInterface;I)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;
    .param p2, "fadingMode"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 34
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p2}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/FadeKitKat;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/transition/FadeKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    invoke-static {p1}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/Fade;->isVisible(Landroid/transition/TransitionValues;)Z

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
    .line 45
    iget-object v0, p0, Landroid/support/transition/FadeKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    .line 46
    invoke-static {p2}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 47
    invoke-static {p4}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 45
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

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
    .line 53
    iget-object v0, p0, Landroid/support/transition/FadeKitKat;->mTransition:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/Fade;

    .line 54
    invoke-static {p2}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v2

    .line 55
    invoke-static {p4}, Landroid/support/transition/FadeKitKat;->convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;

    move-result-object v4

    move-object v1, p1

    move v3, p3

    move v5, p5

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/transition/Fade;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
