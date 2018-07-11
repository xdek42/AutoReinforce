.class public Landroid/support/v7/widget/AlertDialogLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/support/v7/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 221
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 224
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 225
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 227
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 228
    .local v7, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 231
    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 232
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 236
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 224
    .end local v7    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 253
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    .line 264
    .end local v0    # "minHeight":I
    :goto_0
    return v0

    .line 257
    .restart local v0    # "minHeight":I
    :cond_0
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 258
    check-cast v1, Landroid/view/ViewGroup;

    .line 259
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    move v0, v2

    .line 264
    goto :goto_0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 352
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 353
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 70
    const/16 v20, 0x0

    .line 71
    .local v20, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 72
    .local v4, "buttonPanel":Landroid/view/View;
    const/16 v18, 0x0

    .line 74
    .local v18, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getChildCount()I

    move-result v9

    .line 75
    .local v9, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_6

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 77
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 75
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v15

    .line 82
    .local v15, "id":I
    sget v24, Landroid/support/v7/appcompat/R$id;->topPanel:I

    move/from16 v0, v24

    if-ne v15, v0, :cond_1

    .line 83
    move-object/from16 v20, v6

    goto :goto_1

    .line 84
    :cond_1
    sget v24, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    move/from16 v0, v24

    if-ne v15, v0, :cond_2

    .line 85
    move-object v4, v6

    goto :goto_1

    .line 86
    :cond_2
    sget v24, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    move/from16 v0, v24

    if-eq v15, v0, :cond_3

    sget v24, Landroid/support/v7/appcompat/R$id;->customPanel:I

    move/from16 v0, v24

    if-ne v15, v0, :cond_5

    .line 87
    :cond_3
    if-eqz v18, :cond_4

    .line 89
    const/16 v24, 0x0

    .line 210
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    :goto_2
    return v24

    .line 91
    .restart local v6    # "child":Landroid/view/View;
    .restart local v15    # "id":I
    :cond_4
    move-object/from16 v18, v6

    goto :goto_1

    .line 94
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .line 98
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 99
    .local v10, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 100
    .local v11, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 102
    .local v22, "widthMode":I
    const/4 v8, 0x0

    .line 103
    .local v8, "childState":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v25

    add-int v21, v24, v25

    .line 105
    .local v21, "usedHeight":I
    if-eqz v20, :cond_7

    .line 106
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 110
    invoke-static/range {v20 .. v20}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v24

    .line 109
    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v8

    .line 113
    :cond_7
    const/4 v3, 0x0

    .line 114
    .local v3, "buttonHeight":I
    const/4 v5, 0x0

    .line 115
    .local v5, "buttonWantsHeight":I
    if-eqz v4, :cond_8

    .line 116
    const/16 v24, 0x0

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-static {v4}, Landroid/support/v7/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v5, v24, v3

    .line 120
    add-int v21, v21, v3

    .line 122
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v24

    .line 121
    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v8

    .line 125
    :cond_8
    const/16 v17, 0x0

    .line 126
    .local v17, "middleHeight":I
    if-eqz v18, :cond_9

    .line 128
    if-nez v10, :cond_e

    .line 129
    const/4 v7, 0x0

    .line 135
    .local v7, "childHeightSpec":I
    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 136
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 138
    add-int v21, v21, v17

    .line 140
    invoke-static/range {v18 .. v18}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v24

    .line 139
    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v8

    .line 143
    .end local v7    # "childHeightSpec":I
    :cond_9
    sub-int v19, v11, v21

    .line 148
    .local v19, "remainingHeight":I
    if-eqz v4, :cond_b

    .line 149
    sub-int v21, v21, v3

    .line 151
    move/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 152
    .local v13, "heightToGive":I
    if-lez v13, :cond_a

    .line 153
    sub-int v19, v19, v13

    .line 154
    add-int/2addr v3, v13

    .line 157
    :cond_a
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 159
    .restart local v7    # "childHeightSpec":I
    move/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    .line 161
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 163
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v24

    .line 162
    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v8

    .line 168
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_b
    if-eqz v18, :cond_c

    if-lez v19, :cond_c

    .line 169
    sub-int v21, v21, v17

    .line 171
    move/from16 v13, v19

    .line 172
    .restart local v13    # "heightToGive":I
    sub-int v19, v19, v13

    .line 173
    add-int v17, v17, v13

    .line 178
    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 180
    .restart local v7    # "childHeightSpec":I
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 182
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 184
    invoke-static/range {v18 .. v18}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v24

    .line 183
    move/from16 v0, v24

    invoke-static {v8, v0}, Landroid/support/v4/view/ViewCompat;->combineMeasuredStates(II)I

    move-result v8

    .line 188
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_c
    const/16 v16, 0x0

    .line 189
    .local v16, "maxWidth":I
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v9, :cond_f

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 191
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 192
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 189
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 131
    .end local v6    # "child":Landroid/view/View;
    .end local v16    # "maxWidth":I
    .end local v19    # "remainingHeight":I
    :cond_e
    const/16 v24, 0x0

    sub-int v25, v11, v21

    .line 132
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 131
    move/from16 v0, v24

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_3

    .line 196
    .end local v7    # "childHeightSpec":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "remainingHeight":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    .line 198
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1, v8}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v23

    .line 200
    .local v23, "widthSizeAndState":I
    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v12

    .line 202
    .local v12, "heightSizeAndState":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/support/v7/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 206
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 207
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Landroid/support/v7/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 210
    :cond_10
    const/16 v24, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v20

    .line 272
    .local v20, "paddingLeft":I
    sub-int v22, p4, p2

    .line 273
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v8, v22, v1

    .line 276
    .local v8, "childRight":I
    sub-int v1, v22, v20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v23

    sub-int v9, v1, v23

    .line 278
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v21

    .line 279
    .local v21, "totalLength":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getChildCount()I

    move-result v10

    .line 280
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    .line 281
    .local v13, "gravity":I
    and-int/lit8 v18, v13, 0x70

    .line 282
    .local v18, "majorGravity":I
    const v1, 0x800007

    and-int v19, v13, v1

    .line 285
    .local v19, "minorGravity":I
    sparse-switch v18, :sswitch_data_0

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v4

    .line 302
    .local v4, "childTop":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 303
    .local v11, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_3

    const/4 v12, 0x0

    .line 306
    .local v12, "dividerHeight":I
    :goto_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_4

    .line 307
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 308
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v1, v0, :cond_2

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 310
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 313
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 315
    .local v17, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 316
    .local v16, "layoutGravity":I
    if-gez v16, :cond_0

    .line 317
    move/from16 v16, v19

    .line 319
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    .line 320
    .local v15, "layoutDirection":I
    move/from16 v0, v16

    invoke-static {v0, v15}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    .line 324
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 336
    move-object/from16 v0, v17

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v3, v20, v1

    .line 340
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    add-int/2addr v4, v12

    .line 344
    :cond_1
    move-object/from16 v0, v17

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    move-object/from16 v1, p0

    .line 345
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 346
    move-object/from16 v0, v17

    iget v1, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    .line 306
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 288
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    .end local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "dividerHeight":I
    .end local v14    # "i":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int v4, v1, v21

    .line 289
    .restart local v4    # "childTop":I
    goto :goto_0

    .line 293
    .end local v4    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    sub-int v23, p5, p3

    sub-int v23, v23, v21

    div-int/lit8 v23, v23, 0x2

    add-int v4, v1, v23

    .line 294
    .restart local v4    # "childTop":I
    goto :goto_0

    .line 304
    .restart local v11    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    goto :goto_1

    .line 326
    .restart local v2    # "child":Landroid/view/View;
    .restart local v5    # "childWidth":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "absoluteGravity":I
    .restart local v12    # "dividerHeight":I
    .restart local v14    # "i":I
    .restart local v15    # "layoutDirection":I
    .restart local v16    # "layoutGravity":I
    .restart local v17    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v1, v1, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    .line 328
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 331
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v3, v1, v23

    .line 332
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 349
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v15    # "layoutDirection":I
    .end local v16    # "layoutGravity":I
    .end local v17    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_4
    return-void

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 324
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 67
    :cond_0
    return-void
.end method
