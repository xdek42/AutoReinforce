.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v2

    const/16 v3, 0x140

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 56
    .local v0, "allowStackingDefault":Z
    :goto_0
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 57
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void

    .line 54
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 157
    move v1, p1

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 158
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 162
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 157
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 167
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 169
    sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 171
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 177
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_4

    .line 178
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 177
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 166
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 167
    :cond_2
    const/16 v3, 0x50

    goto :goto_1

    .line 171
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    goto :goto_2

    .line 180
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 74
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 76
    .local v15, "widthSize":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 79
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 82
    :cond_0
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 85
    :cond_1
    const/4 v12, 0x0

    .line 91
    .local v12, "needsRemeasure":Z
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-nez v16, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 92
    const/high16 v16, -0x80000000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 95
    .local v8, "initialWidthMeasureSpec":I
    const/4 v12, 0x1

    .line 100
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v8, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-nez v16, :cond_2

    .line 105
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xb

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_8

    .line 107
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v9

    .line 108
    .local v9, "measuredWidth":I
    const/high16 v16, -0x1000000

    and-int v10, v9, v16

    .line 109
    .local v10, "measuredWidthState":I
    const/high16 v16, 0x1000000

    move/from16 v0, v16

    if-ne v10, v0, :cond_7

    const/4 v14, 0x1

    .line 120
    .end local v9    # "measuredWidth":I
    .end local v10    # "measuredWidthState":I
    .local v14, "stack":Z
    :goto_1
    if-eqz v14, :cond_2

    .line 121
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 123
    const/4 v12, 0x1

    .line 127
    .end local v14    # "stack":Z
    :cond_2
    if-eqz v12, :cond_3

    .line 128
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 133
    :cond_3
    const/4 v11, 0x0

    .line 134
    .local v11, "minHeight":I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v6

    .line 135
    .local v6, "firstVisible":I
    if-ltz v6, :cond_4

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 137
    .local v4, "firstButton":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    .local v5, "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v16

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v16, v16, v17

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int v11, v11, v16

    .line 140
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 141
    add-int/lit8 v16, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v13

    .line 142
    .local v13, "secondVisible":I
    if-ltz v13, :cond_4

    .line 143
    int-to-float v0, v11

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x41800000    # 16.0f

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v11, v0

    .line 151
    .end local v4    # "firstButton":Landroid/view/View;
    .end local v5    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "secondVisible":I
    :cond_4
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 154
    :cond_5
    return-void

    .line 97
    .end local v6    # "firstVisible":I
    .end local v8    # "initialWidthMeasureSpec":I
    .end local v11    # "minHeight":I
    :cond_6
    move/from16 v8, p1

    .restart local v8    # "initialWidthMeasureSpec":I
    goto/16 :goto_0

    .line 109
    .restart local v9    # "measuredWidth":I
    .restart local v10    # "measuredWidthState":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 113
    .end local v9    # "measuredWidth":I
    .end local v10    # "measuredWidthState":I
    :cond_8
    const/4 v2, 0x0

    .line 114
    .local v2, "childWidthTotal":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_3
    if-ge v7, v3, :cond_9

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v2, v2, v16

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 117
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v16

    add-int v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    if-le v0, v15, :cond_a

    const/4 v14, 0x1

    .restart local v14    # "stack":Z
    :goto_4
    goto/16 :goto_1

    .end local v14    # "stack":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    .line 147
    .end local v2    # "childWidthTotal":I
    .end local v3    # "count":I
    .end local v7    # "i":I
    .restart local v4    # "firstButton":Landroid/view/View;
    .restart local v5    # "firstParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "firstVisible":I
    .restart local v11    # "minHeight":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v16

    add-int v11, v11, v16

    goto :goto_2
.end method

.method public setAllowStacking(Z)V
    .locals 2
    .param p1, "allowStacking"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_1

    .line 64
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 65
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 70
    :cond_1
    return-void
.end method
