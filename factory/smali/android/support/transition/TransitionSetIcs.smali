.class Landroid/support/transition/TransitionSetIcs;
.super Landroid/support/transition/TransitionIcs;
.source "TransitionSetIcs.java"

# interfaces
.implements Landroid/support/transition/TransitionSetImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private mTransitionSet:Landroid/support/transition/TransitionSetPort;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 29
    new-instance v0, Landroid/support/transition/TransitionSetPort;

    invoke-direct {v0}, Landroid/support/transition/TransitionSetPort;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSetIcs;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    .line 30
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/TransitionSetIcs;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetIcs;
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    check-cast p1, Landroid/support/transition/TransitionIcs;

    .end local p1    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v1, p1, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSetPort;->addTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    .line 47
    return-object p0
.end method

.method public bridge synthetic addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetIcs;->addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetIcs;

    move-result-object v0

    return-object v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionSetPort;->getOrdering()I

    move-result v0

    return v0
.end method

.method public removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetIcs;
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    check-cast p1, Landroid/support/transition/TransitionIcs;

    .end local p1    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v1, p1, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSetPort;->removeTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    .line 53
    return-object p0
.end method

.method public bridge synthetic removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetIcs;->removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetIcs;

    move-result-object v0

    return-object v0
.end method

.method public setOrdering(I)Landroid/support/transition/TransitionSetIcs;
    .locals 1
    .param p1, "ordering"    # I

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/TransitionSetIcs;->mTransitionSet:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSetPort;->setOrdering(I)Landroid/support/transition/TransitionSetPort;

    .line 41
    return-object p0
.end method

.method public bridge synthetic setOrdering(I)Landroid/support/transition/TransitionSetImpl;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetIcs;->setOrdering(I)Landroid/support/transition/TransitionSetIcs;

    move-result-object v0

    return-object v0
.end method
