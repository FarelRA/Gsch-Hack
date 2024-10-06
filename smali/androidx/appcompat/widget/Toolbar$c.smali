.class public final Landroidx/appcompat/widget/Toolbar$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Landroidx/appcompat/view/menu/f;

.field public c:Landroidx/appcompat/view/menu/h;

.field public final synthetic d:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$c;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 0

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/h;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->d:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 4
    .line 5
    instance-of v2, v1, Le/b;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Le/b;

    .line 10
    .line 11
    invoke-interface {v1}, Le/b;->onActionViewCollapsed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 34
    .line 35
    if-ltz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar$c;->c:Landroidx/appcompat/view/menu/h;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p1, Landroidx/appcompat/view/menu/h;->C:Z

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/appcompat/view/menu/h;->n:Landroidx/appcompat/view/menu/f;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/f;->p(Z)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$c;->b:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->c:Landroidx/appcompat/view/menu/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/f;->d(Landroidx/appcompat/view/menu/h;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$c;->b:Landroidx/appcompat/view/menu/f;

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->c:Landroidx/appcompat/view/menu/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->b:Landroidx/appcompat/view/menu/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$c;->b:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/f;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar$c;->c:Landroidx/appcompat/view/menu/h;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar$c;->b(Landroidx/appcompat/view/menu/h;)Z

    :cond_2
    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/h;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$c;->d:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 4
    .line 5
    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->o:I

    .line 6
    .line 7
    const v3, 0x800003

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lg/k;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    const v7, 0x7f030200

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v5, v6, v7}, Lg/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 27
    .line 28
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {v1, v5}, Lg/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 34
    .line 35
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->h:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    .line 41
    .line 42
    invoke-direct {v1}, Landroidx/appcompat/widget/Toolbar$d;-><init>()V

    .line 43
    .line 44
    .line 45
    and-int/lit8 v5, v2, 0x70

    .line 46
    .line 47
    or-int/2addr v5, v3

    .line 48
    iput v5, v1, Lb/a$a;->a:I

    .line 49
    .line 50
    iput v4, v1, Landroidx/appcompat/widget/Toolbar$d;->b:I

    .line 51
    .line 52
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 58
    .line 59
    new-instance v5, Lg/s0;

    .line 60
    .line 61
    invoke-direct {v5, v0}, Lg/s0;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eq v1, v0, :cond_2

    .line 74
    .line 75
    instance-of v5, v1, Landroid/view/ViewGroup;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .line 81
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Lg/k;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->getActionView()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 96
    .line 97
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$c;->c:Landroidx/appcompat/view/menu/h;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eq v1, v0, :cond_4

    .line 104
    .line 105
    instance-of v5, v1, Landroid/view/ViewGroup;

    .line 106
    .line 107
    if-eqz v5, :cond_3

    .line 108
    .line 109
    check-cast v1, Landroid/view/ViewGroup;

    .line 110
    .line 111
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    .line 117
    .line 118
    invoke-direct {v1}, Landroidx/appcompat/widget/Toolbar$d;-><init>()V

    .line 119
    .line 120
    .line 121
    and-int/lit8 v2, v2, 0x70

    .line 122
    .line 123
    or-int/2addr v2, v3

    .line 124
    iput v2, v1, Lb/a$a;->a:I

    .line 125
    .line 126
    iput v4, v1, Landroidx/appcompat/widget/Toolbar$d;->b:I

    .line 127
    .line 128
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    :cond_5
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 143
    .line 144
    if-ltz v1, :cond_6

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroidx/appcompat/widget/Toolbar$d;

    .line 155
    .line 156
    iget v3, v3, Landroidx/appcompat/widget/Toolbar$d;->b:I

    .line 157
    .line 158
    if-eq v3, v4, :cond_5

    .line 159
    .line 160
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 161
    .line 162
    if-eq v2, v3, :cond_5

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 165
    .line 166
    .line 167
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 174
    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    iput-boolean v1, p1, Landroidx/appcompat/view/menu/h;->C:Z

    .line 178
    .line 179
    iget-object p1, p1, Landroidx/appcompat/view/menu/h;->n:Landroidx/appcompat/view/menu/f;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/f;->p(Z)V

    .line 183
    .line 184
    .line 185
    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 186
    .line 187
    instance-of v0, p1, Le/b;

    .line 188
    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    check-cast p1, Le/b;

    .line 192
    .line 193
    invoke-interface {p1}, Le/b;->onActionViewExpanded()V

    .line 194
    .line 195
    .line 196
    :cond_7
    return v1
.end method

.method public final k(Landroidx/appcompat/view/menu/m;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
