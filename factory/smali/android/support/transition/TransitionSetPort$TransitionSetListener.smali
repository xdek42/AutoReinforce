.class Landroid/support/transition/TransitionSetPort$TransitionSetListener;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "TransitionSetPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionSetPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Landroid/support/transition/TransitionSetPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionSetPort;)V
    .locals 0
    .param p1, "transitionSet"    # Landroid/support/transition/TransitionSetPort;

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 323
    iput-object p1, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    .line 324
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    iget v1, v0, Landroid/support/transition/TransitionSetPort;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/support/transition/TransitionSetPort;->mCurrentListeners:I

    .line 337
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    iget v0, v0, Landroid/support/transition/TransitionSetPort;->mCurrentListeners:I

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/transition/TransitionSetPort;->mStarted:Z

    .line 340
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSetPort;->end()V

    .line 342
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/TransitionPort;->removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 343
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    iget-boolean v0, v0, Landroid/support/transition/TransitionSetPort;->mStarted:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSetPort;->start()V

    .line 330
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort$TransitionSetListener;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/transition/TransitionSetPort;->mStarted:Z

    .line 332
    :cond_0
    return-void
.end method
