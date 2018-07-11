.class Landroid/support/transition/FadePort;
.super Landroid/support/transition/VisibilityPort;
.source "FadePort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/transition/FadePort;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/transition/FadePort;-><init>(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/transition/VisibilityPort;-><init>()V

    .line 102
    iput p1, p0, Landroid/support/transition/FadePort;->mFadingMode:I

    .line 103
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 129
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 130
    .local v0, "loc":[I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 131
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v0, 0x0

    .line 110
    cmpl-float v1, p2, p3

    if-nez v1, :cond_1

    .line 112
    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 119
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-boolean v1, Landroid/support/transition/FadePort;->DBG:Z

    if-eqz v1, :cond_2

    .line 120
    const-string v1, "Fade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created animator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    if-eqz p4, :cond_0

    .line 123
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method


# virtual methods
.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/transition/VisibilityPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 138
    invoke-direct {p0, p1}, Landroid/support/transition/FadePort;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 139
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 145
    iget v4, p0, Landroid/support/transition/FadePort;->mFadingMode:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-nez p4, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v3

    .line 148
    :cond_1
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 149
    .local v0, "endView":Landroid/view/View;
    sget-boolean v4, Landroid/support/transition/FadePort;->DBG:Z

    if-eqz v4, :cond_2

    .line 150
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 151
    .local v1, "startView":Landroid/view/View;
    :goto_1
    const-string v4, "Fade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "startView":Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 155
    new-instance v2, Landroid/support/transition/FadePort$1;

    invoke-direct {v2, p0, v0}, Landroid/support/transition/FadePort$1;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;)V

    .line 184
    .local v2, "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    invoke-virtual {p0, v2}, Landroid/support/transition/FadePort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 185
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v7, v4, v3}, Landroid/support/transition/FadePort;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_0

    .end local v2    # "transitionListener":Landroid/support/transition/TransitionPort$TransitionListener;
    :cond_3
    move-object v1, v3

    .line 150
    goto :goto_1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 23
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/transition/FadePort;->mFadingMode:I

    and-int/lit8 v3, v3, 0x2

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v3, v0, :cond_0

    .line 193
    const/4 v3, 0x0

    .line 350
    :goto_0
    return-object v3

    .line 195
    :cond_0
    const/16 v19, 0x0

    .line 196
    .local v19, "view":Landroid/view/View;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v18, v0

    .line 197
    .local v18, "startView":Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 198
    .local v10, "endView":Landroid/view/View;
    :goto_2
    sget-boolean v3, Landroid/support/transition/FadePort;->DBG:Z

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "Fade"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Fade.onDisappear: startView, startVis, endView, endVis = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    const/4 v13, 0x0

    .line 203
    .local v13, "overlayView":Landroid/view/View;
    const/16 v20, 0x0

    .line 204
    .local v20, "viewToKeep":Landroid/view/View;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 205
    :cond_2
    if-eqz v10, :cond_6

    .line 207
    move-object v13, v10

    move-object/from16 v19, v10

    .line 243
    :cond_3
    :goto_3
    move/from16 v6, p5

    .line 245
    .local v6, "finalVisibility":I
    if-eqz v13, :cond_b

    .line 247
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v21, "android:fade:screenX"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 248
    .local v14, "screenX":I
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v21, "android:fade:screenY"

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 249
    .local v15, "screenY":I
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 250
    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 251
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int v3, v14, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v21

    sub-int v3, v3, v21

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 252
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v15, v3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v3, v3, v21

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 253
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewGroupOverlay;->createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/support/transition/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 256
    const/high16 v16, 0x3f800000    # 1.0f

    .line 257
    .local v16, "startAlpha":F
    const/4 v9, 0x0

    .line 258
    .local v9, "endAlpha":F
    move-object/from16 v4, v19

    .line 259
    .local v4, "finalView":Landroid/view/View;
    move-object v7, v13

    .line 260
    .local v7, "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v20

    .line 261
    .local v5, "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 262
    .local v8, "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Landroid/support/transition/FadePort$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/transition/FadePort$2;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 290
    .local v2, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v9, v2}, Landroid/support/transition/FadePort;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 196
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v6    # "finalVisibility":I
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v10    # "endView":Landroid/view/View;
    .end local v12    # "loc":[I
    .end local v13    # "overlayView":Landroid/view/View;
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v16    # "startAlpha":F
    .end local v18    # "startView":Landroid/view/View;
    .end local v20    # "viewToKeep":Landroid/view/View;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 197
    .restart local v18    # "startView":Landroid/view/View;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 208
    .restart local v10    # "endView":Landroid/view/View;
    .restart local v13    # "overlayView":Landroid/view/View;
    .restart local v20    # "viewToKeep":Landroid/view/View;
    :cond_6
    if-eqz v18, :cond_3

    .line 212
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_7

    .line 214
    move-object/from16 v13, v18

    move-object/from16 v19, v18

    goto/16 :goto_3

    .line 215
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 216
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 217
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 218
    .local v17, "startParent":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v11

    .line 219
    .local v11, "id":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/FadePort;->mCanRemoveViews:Z

    if-eqz v3, :cond_3

    .line 223
    move-object/from16 v13, v18

    move-object/from16 v19, v18

    goto/16 :goto_3

    .line 229
    .end local v11    # "id":I
    .end local v17    # "startParent":Landroid/view/View;
    :cond_8
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_9

    .line 230
    move-object/from16 v19, v10

    .line 231
    move-object/from16 v20, v19

    goto/16 :goto_3

    .line 234
    :cond_9
    move-object/from16 v0, v18

    if-ne v0, v10, :cond_a

    .line 235
    move-object/from16 v19, v10

    .line 236
    move-object/from16 v20, v19

    goto/16 :goto_3

    .line 238
    :cond_a
    move-object/from16 v19, v18

    .line 239
    move-object/from16 v13, v19

    goto/16 :goto_3

    .line 292
    .restart local v6    # "finalVisibility":I
    :cond_b
    if-eqz v20, :cond_c

    .line 295
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const/high16 v16, 0x3f800000    # 1.0f

    .line 298
    .restart local v16    # "startAlpha":F
    const/4 v9, 0x0

    .line 299
    .restart local v9    # "endAlpha":F
    move-object/from16 v4, v19

    .line 300
    .restart local v4    # "finalView":Landroid/view/View;
    move-object v7, v13

    .line 301
    .restart local v7    # "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v20

    .line 302
    .restart local v5    # "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 303
    .restart local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Landroid/support/transition/FadePort$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/support/transition/FadePort$3;-><init>(Landroid/support/transition/FadePort;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 348
    .restart local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3, v9, v2}, Landroid/support/transition/FadePort;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 350
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v16    # "startAlpha":F
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
