.class public final Landroidx/appcompat/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/j;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/d$a;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/LayoutInflater;

.field public d:Landroidx/appcompat/view/menu/f;

.field public e:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public f:Landroidx/appcompat/view/menu/j$a;

.field public g:Landroidx/appcompat/view/menu/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/j$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j$a;->a(Landroidx/appcompat/view/menu/f;Z)V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/f;

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final i(Landroidx/appcompat/view/menu/j$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/j$a;

    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k(Landroidx/appcompat/view/menu/m;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/g;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroidx/appcompat/view/menu/f;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lb/f;->c(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    new-instance v4, Landroidx/appcompat/app/AlertController$b;

    .line 21
    .line 22
    new-instance v5, Landroid/view/ContextThemeWrapper;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lb/f;->c(Landroid/content/Context;I)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-direct {v5, v2, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Landroidx/appcompat/view/menu/d;

    .line 35
    .line 36
    invoke-direct {v6, v5}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v6, v0, Landroidx/appcompat/view/menu/g;->d:Landroidx/appcompat/view/menu/d;

    .line 40
    .line 41
    iput-object v0, v6, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/j$a;

    .line 42
    .line 43
    invoke-virtual {p1, v6, v2}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Landroidx/appcompat/view/menu/g;->d:Landroidx/appcompat/view/menu/d;

    .line 47
    .line 48
    iget-object v6, v2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 49
    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    new-instance v6, Landroidx/appcompat/view/menu/d$a;

    .line 53
    .line 54
    invoke-direct {v6, v2}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 55
    .line 56
    .line 57
    iput-object v6, v2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 58
    .line 59
    :cond_1
    iget-object v2, v2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 60
    .line 61
    iput-object v2, v4, Landroidx/appcompat/app/AlertController$b;->f:Landroid/widget/ListAdapter;

    .line 62
    .line 63
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$b;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    .line 65
    iget-object v2, p1, Landroidx/appcompat/view/menu/f;->o:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iput-object v2, v4, Landroidx/appcompat/app/AlertController$b;->d:Landroid/view/View;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v2, p1, Landroidx/appcompat/view/menu/f;->n:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    iput-object v2, v4, Landroidx/appcompat/app/AlertController$b;->b:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    iget-object v2, p1, Landroidx/appcompat/view/menu/f;->m:Ljava/lang/CharSequence;

    .line 77
    .line 78
    iput-object v2, v4, Landroidx/appcompat/app/AlertController$b;->c:Ljava/lang/CharSequence;

    .line 79
    .line 80
    :goto_0
    iput-object v0, v4, Landroidx/appcompat/app/AlertController$b;->e:Landroid/content/DialogInterface$OnKeyListener;

    .line 81
    .line 82
    new-instance v2, Lb/f;

    .line 83
    .line 84
    invoke-direct {v2, v5, v3}, Lb/f;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v4, Landroidx/appcompat/app/AlertController$b;->d:Landroid/view/View;

    .line 88
    .line 89
    iget-object v6, v2, Lb/f;->d:Landroidx/appcompat/app/AlertController;

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    iput-object v3, v6, Landroidx/appcompat/app/AlertController;->o:Landroid/view/View;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v3, v4, Landroidx/appcompat/app/AlertController$b;->c:Ljava/lang/CharSequence;

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    iput-object v3, v6, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 101
    .line 102
    iget-object v7, v6, Landroidx/appcompat/app/AlertController;->m:Landroid/widget/TextView;

    .line 103
    .line 104
    if-eqz v7, :cond_4

    .line 105
    .line 106
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v3, v4, Landroidx/appcompat/app/AlertController$b;->b:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    iput-object v3, v6, Landroidx/appcompat/app/AlertController;->k:Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    iput v1, v6, Landroidx/appcompat/app/AlertController;->j:I

    .line 116
    .line 117
    iget-object v7, v6, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    .line 118
    .line 119
    if-eqz v7, :cond_5

    .line 120
    .line 121
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v6, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/ImageView;

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_1
    iget-object v1, v4, Landroidx/appcompat/app/AlertController$b;->f:Landroid/widget/ListAdapter;

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    iget v1, v6, Landroidx/appcompat/app/AlertController;->s:I

    .line 135
    .line 136
    iget-object v7, v4, Landroidx/appcompat/app/AlertController$b;->a:Landroid/view/LayoutInflater;

    .line 137
    .line 138
    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 143
    .line 144
    iget-object v7, v4, Landroidx/appcompat/app/AlertController$b;->f:Landroid/widget/ListAdapter;

    .line 145
    .line 146
    if-eqz v7, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    new-instance v7, Landroidx/appcompat/app/AlertController$d;

    .line 150
    .line 151
    iget v8, v6, Landroidx/appcompat/app/AlertController;->t:I

    .line 152
    .line 153
    invoke-direct {v7, v5, v8}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;I)V

    .line 154
    .line 155
    .line 156
    :goto_2
    iput-object v7, v6, Landroidx/appcompat/app/AlertController;->p:Landroid/widget/ListAdapter;

    .line 157
    .line 158
    const/4 v5, -0x1

    .line 159
    iput v5, v6, Landroidx/appcompat/app/AlertController;->q:I

    .line 160
    .line 161
    iget-object v5, v4, Landroidx/appcompat/app/AlertController$b;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 162
    .line 163
    if-eqz v5, :cond_7

    .line 164
    .line 165
    new-instance v5, Landroidx/appcompat/app/a;

    .line 166
    .line 167
    invoke-direct {v5, v4, v6}, Landroidx/appcompat/app/a;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    iput-object v1, v6, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 174
    .line 175
    :cond_8
    const/4 v1, 0x1

    .line 176
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v4, Landroidx/appcompat/app/AlertController$b;->e:Landroid/content/DialogInterface$OnKeyListener;

    .line 189
    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    iput-object v2, v0, Landroidx/appcompat/view/menu/g;->c:Lb/f;

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v2, v0, Landroidx/appcompat/view/menu/g;->c:Lb/f;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const/16 v3, 0x3eb

    .line 211
    .line 212
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 213
    .line 214
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 215
    .line 216
    const/high16 v4, 0x20000

    .line 217
    .line 218
    or-int/2addr v3, v4

    .line 219
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 220
    .line 221
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->c:Lb/f;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/j$a;

    .line 227
    .line 228
    if-eqz v0, :cond_a

    .line 229
    .line 230
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/j$a;->b(Landroidx/appcompat/view/menu/f;)Z

    .line 231
    .line 232
    .line 233
    :cond_a
    return v1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/f;

    iget-object p2, p0, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/d$a;->c(I)Landroidx/appcompat/view/menu/h;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/f;->q(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/j;I)Z

    return-void
.end method
