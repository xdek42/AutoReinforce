.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/support/transition/TransitionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$TransitionListener;
    }
.end annotation


# instance fields
.field mImpl:Landroid/support/transition/TransitionImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 69
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "deferred"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 75
    new-instance v0, Landroid/support/transition/TransitionApi23;

    invoke-direct {v0}, Landroid/support/transition/TransitionApi23;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 81
    :goto_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionImpl;->init(Landroid/support/transition/TransitionInterface;)V

    .line 83
    :cond_0
    return-void

    .line 76
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 77
    new-instance v0, Landroid/support/transition/TransitionKitKat;

    invoke-direct {v0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Landroid/support/transition/TransitionIcs;

    invoke-direct {v0}, Landroid/support/transition/TransitionIcs;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->addListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;

    .line 96
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->addTarget(I)Landroid/support/transition/TransitionImpl;

    .line 152
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;

    .line 128
    return-object p0
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public excludeChildren(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->excludeChildren(IZ)Landroid/support/transition/TransitionImpl;

    .line 320
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;

    .line 290
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;

    .line 347
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->excludeTarget(IZ)Landroid/support/transition/TransitionImpl;

    .line 399
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;

    .line 373
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;

    .line 425
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Landroid/support/transition/TransitionImpl;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->removeListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;

    .line 605
    return-object p0
.end method

.method public removeTarget(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->removeTarget(I)Landroid/support/transition/TransitionImpl;

    .line 637
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;

    .line 621
    return-object p0
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->setDuration(J)Landroid/support/transition/TransitionImpl;

    .line 453
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;

    .line 482
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "startDelay"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionImpl;->setStartDelay(J)Landroid/support/transition/TransitionImpl;

    .line 527
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
