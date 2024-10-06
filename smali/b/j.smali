.class public final Lb/j;
.super Lb/i;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/f$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/j$b;,
        Lb/j$f;,
        Lb/j$e;,
        Lb/j$g;,
        Lb/j$h;,
        Lb/j$c;,
        Lb/j$i;,
        Lb/j$d;
    }
.end annotation


# static fields
.field public static final R:[I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:[Lb/j$h;

.field public E:Lb/j$h;

.field public F:Z

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Lb/j$f;

.field public K:Z

.field public L:I

.field public final M:Lb/j$a;

.field public N:Z

.field public O:Landroid/graphics/Rect;

.field public P:Landroid/graphics/Rect;

.field public Q:Landroidx/appcompat/app/AppCompatViewInflater;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/view/Window;

.field public final d:Landroid/view/Window$Callback;

.field public final e:Lb/j$e;

.field public final f:Lb/h;

.field public g:Lb/a;

.field public h:Le/f;

.field public i:Ljava/lang/CharSequence;

.field public j:Lg/z;

.field public k:Lb/j$c;

.field public l:Lb/j$i;

.field public m:Le/a;

.field public n:Landroidx/appcompat/widget/ActionBarContextView;

.field public o:Landroid/widget/PopupWindow;

.field public p:Lb/m;

.field public q:Ly/q;

.field public r:Z

.field public s:Landroid/view/ViewGroup;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/view/View;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010054

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lb/j;->R:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lb/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/i;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/j;->q:Ly/q;

    .line 6
    .line 7
    const/16 v1, -0x64

    .line 8
    .line 9
    iput v1, p0, Lb/j;->H:I

    .line 10
    .line 11
    new-instance v1, Lb/j$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lb/j$a;-><init>(Lb/j;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lb/j;->M:Lb/j$a;

    .line 17
    .line 18
    iput-object p1, p0, Lb/j;->b:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lb/j;->c:Landroid/view/Window;

    .line 21
    .line 22
    iput-object p3, p0, Lb/j;->f:Lb/h;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Lb/j;->d:Landroid/view/Window$Callback;

    .line 29
    .line 30
    instance-of v1, p3, Lb/j$e;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Lb/j$e;

    .line 35
    .line 36
    invoke-direct {v1, p0, p3}, Lb/j$e;-><init>(Lb/j;Landroid/view/Window$Callback;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lb/j;->e:Lb/j$e;

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 42
    .line 43
    .line 44
    sget-object p3, Lb/j;->R:[I

    .line 45
    .line 46
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-static {}, Lg/i;->g()Lg/i;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, p1, v1, v2}, Lg/i;->j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_0
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string p2, "AppCompat has already installed itself into the Window"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb/j;->s()Landroid/view/Window$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v2, p0, Lb/j;->G:Z

    .line 9
    .line 10
    if-nez v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->k()Landroidx/appcompat/view/menu/f;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v2, p0, Lb/j;->D:[Lb/j$h;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    array-length v3, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    :goto_0
    const/4 v4, 0x0

    .line 24
    :goto_1
    if-ge v4, v3, :cond_2

    .line 25
    .line 26
    aget-object v5, v2, v4

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    iget-object v6, v5, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 31
    .line 32
    if-ne v6, p1, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v5, 0x0

    .line 39
    :goto_2
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget p1, v5, Lb/j$h;->a:I

    .line 42
    .line 43
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_3
    return v1
.end method

.method public final b(Landroidx/appcompat/view/menu/f;)V
    .locals 5

    iget-object p1, p0, Lb/j;->j:Lg/z;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lg/z;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/j;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/j;->j:Lg/z;

    invoke-interface {p1}, Lg/z;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lb/j;->s()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lb/j;->j:Lg/z;

    invoke-interface {v2}, Lg/z;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lb/j;->j:Lg/z;

    invoke-interface {v0}, Lg/z;->d()Z

    iget-boolean v0, p0, Lb/j;->G:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lb/j;->r(I)Lb/j$h;

    move-result-object v0

    iget-object v0, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lb/j;->G:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lb/j;->K:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lb/j;->L:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/j;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lb/j;->M:Lb/j$a;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lb/j$a;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lb/j;->r(I)Lb/j$h;

    move-result-object v0

    iget-object v2, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lb/j$h;->o:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lb/j$h;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lb/j;->j:Lg/z;

    invoke-interface {p1}, Lg/z;->e()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lb/j;->r(I)Lb/j$h;

    move-result-object p1

    iput-boolean v0, p1, Lb/j$h;->n:Z

    invoke-virtual {p0, p1, v1}, Lb/j;->m(Lb/j$h;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/j;->u(Lb/j$h;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 12

    .line 1
    iget v0, p0, Lb/j;->H:I

    .line 2
    .line 3
    const/16 v1, -0x64

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    :goto_0
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    iget-object v5, p0, Lb/j;->b:Landroid/content/Context;

    .line 13
    .line 14
    const/16 v6, 0x17

    .line 15
    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v1, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    if-lt v1, v6, :cond_2

    .line 25
    .line 26
    invoke-static {v5}, La0/c;->n(Landroid/content/Context;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/app/UiModeManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Lb/j;->p()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lb/j;->J:Lb/j$f;

    .line 43
    .line 44
    iget-object v7, v1, Lb/j$f;->a:Lb/t;

    .line 45
    .line 46
    invoke-virtual {v7}, Lb/t;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iput-boolean v7, v1, Lb/j$f;->b:Z

    .line 51
    .line 52
    if-eqz v7, :cond_3

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    :goto_1
    const/4 v1, -0x1

    .line 59
    :goto_2
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    if-eq v1, v2, :cond_15

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    iget v10, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 72
    .line 73
    and-int/lit8 v10, v10, 0x30

    .line 74
    .line 75
    if-ne v1, v3, :cond_5

    .line 76
    .line 77
    const/16 v1, 0x20

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    const/16 v1, 0x10

    .line 81
    .line 82
    :goto_3
    if-eq v10, v1, :cond_15

    .line 83
    .line 84
    iget-boolean v3, p0, Lb/j;->I:Z

    .line 85
    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    instance-of v3, v5, Landroid/app/Activity;

    .line 89
    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-direct {v10, v5, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v10, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    and-int/lit16 v3, v3, 0x200

    .line 112
    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catch_0
    move-exception v3

    .line 117
    const-string v8, "AppCompatDelegate"

    .line 118
    .line 119
    const-string v10, "Exception while getting ActivityInfo"

    .line 120
    .line 121
    invoke-static {v8, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    :goto_4
    const/4 v8, 0x1

    .line 125
    :cond_6
    if-eqz v8, :cond_7

    .line 126
    .line 127
    check-cast v5, Landroid/app/Activity;

    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/app/Activity;->recreate()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_d

    .line 133
    .line 134
    :cond_7
    new-instance v3, Landroid/content/res/Configuration;

    .line 135
    .line 136
    invoke-direct {v3, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iget v8, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 144
    .line 145
    and-int/lit8 v8, v8, -0x31

    .line 146
    .line 147
    or-int/2addr v1, v8

    .line 148
    iput v1, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 149
    .line 150
    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 151
    .line 152
    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    const/16 v3, 0x1a

    .line 156
    .line 157
    if-ge v1, v3, :cond_14

    .line 158
    .line 159
    const/16 v3, 0x1c

    .line 160
    .line 161
    if-lt v1, v3, :cond_8

    .line 162
    .line 163
    goto/16 :goto_d

    .line 164
    .line 165
    :cond_8
    const/16 v3, 0x18

    .line 166
    .line 167
    const-string v5, "mDrawableCache"

    .line 168
    .line 169
    const-class v8, Landroid/content/res/Resources;

    .line 170
    .line 171
    const-string v9, "ResourcesFlusher"

    .line 172
    .line 173
    if-lt v1, v3, :cond_e

    .line 174
    .line 175
    sget-boolean v1, Lb/q;->h:Z

    .line 176
    .line 177
    if-nez v1, :cond_9

    .line 178
    .line 179
    :try_start_1
    const-string v1, "mResourcesImpl"

    .line 180
    .line 181
    invoke-virtual {v8, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    sput-object v1, Lb/q;->g:Ljava/lang/reflect/Field;

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :catch_1
    move-exception v1

    .line 192
    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    .line 193
    .line 194
    invoke-static {v9, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .line 196
    .line 197
    :goto_5
    sput-boolean v4, Lb/q;->h:Z

    .line 198
    .line 199
    :cond_9
    sget-object v1, Lb/q;->g:Ljava/lang/reflect/Field;

    .line 200
    .line 201
    if-nez v1, :cond_a

    .line 202
    .line 203
    goto/16 :goto_d

    .line 204
    .line 205
    :cond_a
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    goto :goto_6

    .line 210
    :catch_2
    move-exception v1

    .line 211
    const-string v2, "Could not retrieve value from Resources#mResourcesImpl"

    .line 212
    .line 213
    invoke-static {v9, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .line 215
    .line 216
    move-object v1, v7

    .line 217
    :goto_6
    if-nez v1, :cond_b

    .line 218
    .line 219
    goto/16 :goto_d

    .line 220
    .line 221
    :cond_b
    sget-boolean v2, Lb/q;->b:Z

    .line 222
    .line 223
    if-nez v2, :cond_c

    .line 224
    .line 225
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    sput-object v2, Lb/q;->a:Ljava/lang/reflect/Field;

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :catch_3
    move-exception v2

    .line 240
    const-string v3, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 241
    .line 242
    invoke-static {v9, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .line 244
    .line 245
    :goto_7
    sput-boolean v4, Lb/q;->b:Z

    .line 246
    .line 247
    :cond_c
    sget-object v2, Lb/q;->a:Ljava/lang/reflect/Field;

    .line 248
    .line 249
    if-eqz v2, :cond_d

    .line 250
    .line 251
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 255
    goto :goto_8

    .line 256
    :catch_4
    move-exception v1

    .line 257
    const-string v2, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 258
    .line 259
    invoke-static {v9, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .line 261
    .line 262
    :cond_d
    move-object v1, v7

    .line 263
    :goto_8
    if-eqz v1, :cond_14

    .line 264
    .line 265
    invoke-static {v1}, Lb/q;->a(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_d

    .line 269
    :cond_e
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    .line 270
    .line 271
    const-string v10, "Could not retrieve value from Resources#mDrawableCache"

    .line 272
    .line 273
    if-lt v1, v6, :cond_12

    .line 274
    .line 275
    sget-boolean v1, Lb/q;->b:Z

    .line 276
    .line 277
    if-nez v1, :cond_f

    .line 278
    .line 279
    :try_start_5
    invoke-virtual {v8, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    sput-object v1, Lb/q;->a:Ljava/lang/reflect/Field;

    .line 284
    .line 285
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 286
    .line 287
    .line 288
    goto :goto_9

    .line 289
    :catch_5
    move-exception v1

    .line 290
    invoke-static {v9, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .line 292
    .line 293
    :goto_9
    sput-boolean v4, Lb/q;->b:Z

    .line 294
    .line 295
    :cond_f
    sget-object v1, Lb/q;->a:Ljava/lang/reflect/Field;

    .line 296
    .line 297
    if-eqz v1, :cond_10

    .line 298
    .line 299
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    .line 303
    goto :goto_a

    .line 304
    :catch_6
    move-exception v1

    .line 305
    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .line 307
    .line 308
    :cond_10
    move-object v1, v7

    .line 309
    :goto_a
    if-nez v1, :cond_11

    .line 310
    .line 311
    goto :goto_d

    .line 312
    :cond_11
    invoke-static {v1}, Lb/q;->a(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    goto :goto_d

    .line 316
    :cond_12
    sget-boolean v1, Lb/q;->b:Z

    .line 317
    .line 318
    if-nez v1, :cond_13

    .line 319
    .line 320
    :try_start_7
    invoke-virtual {v8, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    sput-object v1, Lb/q;->a:Ljava/lang/reflect/Field;

    .line 325
    .line 326
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    .line 327
    .line 328
    .line 329
    goto :goto_b

    .line 330
    :catch_7
    move-exception v1

    .line 331
    invoke-static {v9, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .line 333
    .line 334
    :goto_b
    sput-boolean v4, Lb/q;->b:Z

    .line 335
    .line 336
    :cond_13
    sget-object v1, Lb/q;->a:Ljava/lang/reflect/Field;

    .line 337
    .line 338
    if-eqz v1, :cond_14

    .line 339
    .line 340
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    .line 345
    .line 346
    goto :goto_c

    .line 347
    :catch_8
    move-exception v1

    .line 348
    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .line 350
    .line 351
    move-object v1, v7

    .line 352
    :goto_c
    if-eqz v1, :cond_14

    .line 353
    .line 354
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 355
    .line 356
    .line 357
    :cond_14
    :goto_d
    const/4 v8, 0x1

    .line 358
    :cond_15
    if-nez v0, :cond_19

    .line 359
    .line 360
    invoke-virtual {p0}, Lb/j;->p()V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lb/j;->J:Lb/j$f;

    .line 364
    .line 365
    iget-object v1, v0, Lb/j$f;->c:Lb/o;

    .line 366
    .line 367
    if-eqz v1, :cond_16

    .line 368
    .line 369
    iget-object v2, v0, Lb/j$f;->e:Lb/j;

    .line 370
    .line 371
    iget-object v2, v2, Lb/j;->b:Landroid/content/Context;

    .line 372
    .line 373
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    .line 375
    .line 376
    iput-object v7, v0, Lb/j$f;->c:Lb/o;

    .line 377
    .line 378
    :cond_16
    iget-object v1, v0, Lb/j$f;->c:Lb/o;

    .line 379
    .line 380
    if-nez v1, :cond_17

    .line 381
    .line 382
    new-instance v1, Lb/o;

    .line 383
    .line 384
    invoke-direct {v1, v0}, Lb/o;-><init>(Lb/j$f;)V

    .line 385
    .line 386
    .line 387
    iput-object v1, v0, Lb/j$f;->c:Lb/o;

    .line 388
    .line 389
    :cond_17
    iget-object v1, v0, Lb/j$f;->d:Landroid/content/IntentFilter;

    .line 390
    .line 391
    if-nez v1, :cond_18

    .line 392
    .line 393
    new-instance v1, Landroid/content/IntentFilter;

    .line 394
    .line 395
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    .line 397
    .line 398
    iput-object v1, v0, Lb/j$f;->d:Landroid/content/IntentFilter;

    .line 399
    .line 400
    const-string v2, "android.intent.action.TIME_SET"

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lb/j$f;->d:Landroid/content/IntentFilter;

    .line 406
    .line 407
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 408
    .line 409
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lb/j$f;->d:Landroid/content/IntentFilter;

    .line 413
    .line 414
    const-string v2, "android.intent.action.TIME_TICK"

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :cond_18
    iget-object v1, v0, Lb/j$f;->e:Lb/j;

    .line 420
    .line 421
    iget-object v1, v1, Lb/j;->b:Landroid/content/Context;

    .line 422
    .line 423
    iget-object v2, v0, Lb/j$f;->c:Lb/o;

    .line 424
    .line 425
    iget-object v0, v0, Lb/j$f;->d:Landroid/content/IntentFilter;

    .line 426
    .line 427
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    .line 429
    .line 430
    :cond_19
    iput-boolean v4, p0, Lb/j;->I:Z

    .line 431
    .line 432
    return v8
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/j;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lb/j;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "AppCompatDelegate"

    .line 26
    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/j;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb/j;->g:Lb/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lb/a;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p0, Lb/j;->L:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    or-int/2addr v0, v1

    .line 19
    iput v0, p0, Lb/j;->L:I

    .line 20
    .line 21
    iget-boolean v0, p0, Lb/j;->K:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lb/j;->c:Landroid/view/Window;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v2, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    iget-object v2, p0, Lb/j;->M:Lb/j$a;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v1, p0, Lb/j;->K:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/j;->d:Landroid/view/Window$Callback;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lo/d;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 25
    :catch_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lb/j;->g:Lb/a;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iput-boolean v1, p0, Lb/j;->N:Z

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lb/a;->l(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget v0, p0, Lb/j;->H:I

    .line 42
    .line 43
    const/16 v1, -0x64

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    const-string v0, "appcompat:local_night_mode"

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lb/j;->H:I

    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final g(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x6d

    .line 2
    .line 3
    const/16 v1, 0x6c

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-string v3, "AppCompatDelegate"

    .line 8
    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x6c

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v2, 0x9

    .line 20
    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 24
    .line 25
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x6d

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lb/j;->B:Z

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne p1, v1, :cond_2

    .line 36
    .line 37
    return v3

    .line 38
    :cond_2
    iget-boolean v2, p0, Lb/j;->x:Z

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    if-ne p1, v4, :cond_3

    .line 44
    .line 45
    iput-boolean v3, p0, Lb/j;->x:Z

    .line 46
    .line 47
    :cond_3
    if-eq p1, v4, :cond_9

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq p1, v2, :cond_8

    .line 51
    .line 52
    const/4 v2, 0x5

    .line 53
    if-eq p1, v2, :cond_7

    .line 54
    .line 55
    const/16 v2, 0xa

    .line 56
    .line 57
    if-eq p1, v2, :cond_6

    .line 58
    .line 59
    if-eq p1, v1, :cond_5

    .line 60
    .line 61
    if-eq p1, v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lb/j;->c:Landroid/view/Window;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_4
    invoke-virtual {p0}, Lb/j;->x()V

    .line 71
    .line 72
    .line 73
    iput-boolean v4, p0, Lb/j;->y:Z

    .line 74
    .line 75
    return v4

    .line 76
    :cond_5
    invoke-virtual {p0}, Lb/j;->x()V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, p0, Lb/j;->x:Z

    .line 80
    .line 81
    return v4

    .line 82
    :cond_6
    invoke-virtual {p0}, Lb/j;->x()V

    .line 83
    .line 84
    .line 85
    iput-boolean v4, p0, Lb/j;->z:Z

    .line 86
    .line 87
    return v4

    .line 88
    :cond_7
    invoke-virtual {p0}, Lb/j;->x()V

    .line 89
    .line 90
    .line 91
    iput-boolean v4, p0, Lb/j;->w:Z

    .line 92
    .line 93
    return v4

    .line 94
    :cond_8
    invoke-virtual {p0}, Lb/j;->x()V

    .line 95
    .line 96
    .line 97
    iput-boolean v4, p0, Lb/j;->v:Z

    .line 98
    .line 99
    return v4

    .line 100
    :cond_9
    invoke-virtual {p0}, Lb/j;->x()V

    .line 101
    .line 102
    .line 103
    iput-boolean v4, p0, Lb/j;->B:Z

    .line 104
    .line 105
    return v4
.end method

.method public final h(I)V
    .locals 2

    invoke-virtual {p0}, Lb/j;->q()V

    iget-object v0, p0, Lb/j;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lb/j;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lb/j;->d:Landroid/view/Window$Callback;

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/j;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lb/j;->j:Lg/z;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lg/z;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lb/j;->g:Lb/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lb/a;->n(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lb/j;->t:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final j(Le/a$a;)Le/a;
    .locals 8

    if-eqz p1, :cond_13

    iget-object v0, p0, Lb/j;->m:Le/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a;->c()V

    :cond_0
    new-instance v0, Lb/j$d;

    invoke-direct {v0, p0, p1}, Lb/j$d;-><init>(Lb/j;Le/a$a;)V

    .line 1
    invoke-virtual {p0}, Lb/j;->t()V

    iget-object p1, p0, Lb/j;->g:Lb/a;

    .line 2
    iget-object v1, p0, Lb/j;->f:Lb/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lb/a;->o(Lb/j$d;)Le/a;

    move-result-object p1

    iput-object p1, p0, Lb/j;->m:Le/a;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lb/h;->onSupportActionModeStarted(Le/a;)V

    :cond_1
    iget-object p1, p0, Lb/j;->m:Le/a;

    if-nez p1, :cond_12

    .line 3
    iget-object p1, p0, Lb/j;->q:Ly/q;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ly/q;->b()V

    .line 4
    :cond_2
    iget-object p1, p0, Lb/j;->m:Le/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Le/a;->c()V

    :cond_3
    const/4 p1, 0x0

    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lb/j;->G:Z

    if-nez v2, :cond_4

    :try_start_0
    invoke-interface {v1, v0}, Lb/h;->onWindowStartingSupportActionMode(Le/a$a;)Le/a;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_4
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_5

    iput-object v2, p0, Lb/j;->m:Le/a;

    goto/16 :goto_6

    :cond_5
    iget-object v2, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lb/j;->A:Z

    iget-object v5, p0, Lb/j;->b:Landroid/content/Context;

    if-eqz v2, :cond_7

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030009

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Le/c;

    invoke-direct {v6, v5, v4}, Le/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Le/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-direct {v6, v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v6, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f030017

    invoke-direct {v6, v5, p1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lb/j;->o:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, La0/f;->b(Landroid/widget/PopupWindow;I)V

    iget-object v6, p0, Lb/j;->o:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p0, Lb/j;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f030003

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iget-object v5, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v2, p0, Lb/j;->o:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v2, Lb/m;

    invoke-direct {v2, p0}, Lb/m;-><init>(Lb/j;)V

    iput-object v2, p0, Lb/j;->p:Lb/m;

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lb/j;->s:Landroid/view/ViewGroup;

    const v6, 0x7f080035

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_a

    .line 7
    invoke-virtual {p0}, Lb/j;->t()V

    iget-object v6, p0, Lb/j;->g:Lb/a;

    if-eqz v6, :cond_8

    .line 8
    invoke-virtual {v6}, Lb/a;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, p1

    :goto_1
    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move-object v5, v6

    .line 9
    :goto_2
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_a
    :goto_3
    iget-object v2, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v2, :cond_10

    .line 10
    iget-object v2, p0, Lb/j;->q:Ly/q;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ly/q;->b()V

    .line 11
    :cond_b
    iget-object v2, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    .line 12
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    iput-object p1, v2, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    iput-object p1, v2, Lg/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    .line 14
    new-instance v2, Le/d;

    iget-object v5, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v2, v5, v6, v0}, Le/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Le/a$a;)V

    .line 15
    iget-object v5, v2, Le/d;->i:Landroidx/appcompat/view/menu/f;

    .line 16
    invoke-virtual {v0, v2, v5}, Lb/j$d;->a(Le/a;Landroidx/appcompat/view/menu/f;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Le/d;->i()V

    iget-object p1, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->f(Le/a;)V

    iput-object v2, p0, Lb/j;->m:Le/a;

    .line 17
    iget-boolean p1, p0, Lb/j;->r:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lb/j;->s:Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iget-object v0, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v3, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ly/m;->a(Landroid/view/View;)Ly/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly/q;->a(F)V

    iput-object v0, p0, Lb/j;->q:Ly/q;

    new-instance p1, Lb/n;

    invoke-direct {p1, p0}, Lb/n;-><init>(Lb/j;)V

    invoke-virtual {v0, p1}, Ly/q;->d(Ly/r;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lb/j;->n:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 21
    :cond_e
    :goto_5
    iget-object p1, p0, Lb/j;->o:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lb/j;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/j;->p:Lb/m;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_f
    iput-object p1, p0, Lb/j;->m:Le/a;

    :cond_10
    :goto_6
    iget-object p1, p0, Lb/j;->m:Le/a;

    if-eqz p1, :cond_11

    if-eqz v1, :cond_11

    invoke-interface {v1, p1}, Lb/h;->onSupportActionModeStarted(Le/a;)V

    :cond_11
    iget-object p1, p0, Lb/j;->m:Le/a;

    .line 22
    iput-object p1, p0, Lb/j;->m:Le/a;

    :cond_12
    iget-object p1, p0, Lb/j;->m:Le/a;

    return-object p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(ILb/j$h;Landroidx/appcompat/view/menu/f;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/j;->D:[Lb/j$h;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lb/j$h;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Lb/j;->G:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lb/j;->d:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/f;)V
    .locals 2

    iget-boolean v0, p0, Lb/j;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/j;->C:Z

    iget-object v0, p0, Lb/j;->j:Lg/z;

    invoke-interface {v0}, Lg/z;->i()V

    invoke-virtual {p0}, Lb/j;->s()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lb/j;->G:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/j;->C:Z

    return-void
.end method

.method public final m(Lb/j$h;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lb/j$h;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/j;->j:Lg/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p0, p1}, Lb/j;->l(Landroidx/appcompat/view/menu/f;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/j;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lb/j$h;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lb/j$h;->e:Lb/j$g;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lb/j$h;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lb/j;->k(ILb/j$h;Landroidx/appcompat/view/menu/f;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lb/j$h;->k:Z

    iput-boolean p2, p1, Lb/j$h;->l:Z

    iput-boolean p2, p1, Lb/j$h;->m:Z

    iput-object v1, p1, Lb/j$h;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/j$h;->n:Z

    iget-object p2, p0, Lb/j;->E:Lb/j$h;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lb/j;->E:Lb/j$h;

    :cond_2
    return-void
.end method

.method public final n(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lb/j;->d:Landroid/view/Window$Callback;

    .line 2
    .line 3
    instance-of v1, v0, Ly/c$a;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    instance-of v1, v0, Lb/p;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lb/j;->c:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {v1, p1}, Ly/c;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v3, 0x52

    .line 32
    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v4, 0x0

    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    :goto_0
    const/4 v5, 0x4

    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    if-eq v0, v5, :cond_5

    .line 60
    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_16

    .line 70
    .line 71
    invoke-virtual {p0, v4}, Lb/j;->r(I)Lb/j$h;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-boolean v1, v0, Lb/j$h;->m:Z

    .line 76
    .line 77
    if-nez v1, :cond_16

    .line 78
    .line 79
    invoke-virtual {p0, v0, p1}, Lb/j;->w(Lb/j$h;Landroid/view/KeyEvent;)Z

    .line 80
    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    and-int/lit16 p1, p1, 0x80

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const/4 v2, 0x0

    .line 94
    :goto_1
    iput-boolean v2, p0, Lb/j;->F:Z

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_7
    if-eq v0, v5, :cond_11

    .line 99
    .line 100
    if-eq v0, v3, :cond_8

    .line 101
    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :cond_8
    iget-object v0, p0, Lb/j;->m:Le/a;

    .line 105
    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :cond_9
    invoke-virtual {p0, v4}, Lb/j;->r(I)Lb/j$h;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lb/j;->j:Lg/z;

    .line 115
    .line 116
    iget-object v3, p0, Lb/j;->b:Landroid/content/Context;

    .line 117
    .line 118
    if-eqz v1, :cond_b

    .line 119
    .line 120
    invoke-interface {v1}, Lg/z;->g()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_b

    .line 125
    .line 126
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_b

    .line 135
    .line 136
    iget-object v1, p0, Lb/j;->j:Lg/z;

    .line 137
    .line 138
    invoke-interface {v1}, Lg/z;->c()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_a

    .line 143
    .line 144
    iget-boolean v1, p0, Lb/j;->G:Z

    .line 145
    .line 146
    if-nez v1, :cond_e

    .line 147
    .line 148
    invoke-virtual {p0, v0, p1}, Lb/j;->w(Lb/j$h;Landroid/view/KeyEvent;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_e

    .line 153
    .line 154
    iget-object p1, p0, Lb/j;->j:Lg/z;

    .line 155
    .line 156
    invoke-interface {p1}, Lg/z;->e()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    goto :goto_4

    .line 161
    :cond_a
    iget-object p1, p0, Lb/j;->j:Lg/z;

    .line 162
    .line 163
    invoke-interface {p1}, Lg/z;->d()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    goto :goto_4

    .line 168
    :cond_b
    iget-boolean v1, v0, Lb/j$h;->m:Z

    .line 169
    .line 170
    if-nez v1, :cond_f

    .line 171
    .line 172
    iget-boolean v5, v0, Lb/j$h;->l:Z

    .line 173
    .line 174
    if-eqz v5, :cond_c

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_c
    iget-boolean v1, v0, Lb/j$h;->k:Z

    .line 178
    .line 179
    if-eqz v1, :cond_e

    .line 180
    .line 181
    iget-boolean v1, v0, Lb/j$h;->o:Z

    .line 182
    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    iput-boolean v4, v0, Lb/j$h;->k:Z

    .line 186
    .line 187
    invoke-virtual {p0, v0, p1}, Lb/j;->w(Lb/j$h;Landroid/view/KeyEvent;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    goto :goto_2

    .line 192
    :cond_d
    const/4 v1, 0x1

    .line 193
    :goto_2
    if-eqz v1, :cond_e

    .line 194
    .line 195
    invoke-virtual {p0, v0, p1}, Lb/j;->u(Lb/j$h;Landroid/view/KeyEvent;)V

    .line 196
    .line 197
    .line 198
    const/4 p1, 0x1

    .line 199
    goto :goto_4

    .line 200
    :cond_e
    const/4 p1, 0x0

    .line 201
    goto :goto_4

    .line 202
    :cond_f
    :goto_3
    invoke-virtual {p0, v0, v2}, Lb/j;->m(Lb/j$h;Z)V

    .line 203
    .line 204
    .line 205
    move p1, v1

    .line 206
    :goto_4
    if-eqz p1, :cond_16

    .line 207
    .line 208
    const-string p1, "audio"

    .line 209
    .line 210
    invoke-virtual {v3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/media/AudioManager;

    .line 215
    .line 216
    if-eqz p1, :cond_10

    .line 217
    .line 218
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_10
    const-string p1, "AppCompatDelegate"

    .line 223
    .line 224
    const-string v0, "Couldn\'t get audio manager"

    .line 225
    .line 226
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_11
    iget-boolean p1, p0, Lb/j;->F:Z

    .line 231
    .line 232
    iput-boolean v4, p0, Lb/j;->F:Z

    .line 233
    .line 234
    invoke-virtual {p0, v4}, Lb/j;->r(I)Lb/j$h;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-boolean v1, v0, Lb/j$h;->m:Z

    .line 239
    .line 240
    if-eqz v1, :cond_12

    .line 241
    .line 242
    if-nez p1, :cond_16

    .line 243
    .line 244
    invoke-virtual {p0, v0, v2}, Lb/j;->m(Lb/j$h;Z)V

    .line 245
    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_12
    iget-object p1, p0, Lb/j;->m:Le/a;

    .line 249
    .line 250
    if-eqz p1, :cond_13

    .line 251
    .line 252
    invoke-virtual {p1}, Le/a;->c()V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_13
    invoke-virtual {p0}, Lb/j;->t()V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lb/j;->g:Lb/a;

    .line 260
    .line 261
    if-eqz p1, :cond_14

    .line 262
    .line 263
    invoke-virtual {p1}, Lb/a;->b()Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_14

    .line 268
    .line 269
    :goto_5
    const/4 p1, 0x1

    .line 270
    goto :goto_6

    .line 271
    :cond_14
    const/4 p1, 0x0

    .line 272
    :goto_6
    if-eqz p1, :cond_15

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_15
    :goto_7
    const/4 v2, 0x0

    .line 276
    :cond_16
    :goto_8
    return v2
.end method

.method public final o(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lb/j;->r(I)Lb/j$h;

    move-result-object v0

    iget-object v1, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/f;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lb/j$h;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->w()V

    iget-object v1, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/j$h;->o:Z

    iput-boolean v1, v0, Lb/j$h;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lb/j;->j:Lg/z;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/j;->r(I)Lb/j$h;

    move-result-object v0

    iput-boolean p1, v0, Lb/j$h;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lb/j;->w(Lb/j$h;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Lb/j;->Q:Landroidx/appcompat/app/AppCompatViewInflater;

    if-nez v0, :cond_2

    sget-object v0, Lm1/h;->p:[I

    iget-object v1, p0, Lb/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v1, p0, Lb/j;->Q:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    :goto_1
    iput-object v0, p0, Lb/j;->Q:Landroidx/appcompat/app/AppCompatViewInflater;

    :cond_2
    :goto_2
    const/4 v6, 0x0

    iget-object v1, p0, Lb/j;->Q:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget v0, Lg/x0;->a:I

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lb/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/j;->J:Lb/j$f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lb/j$f;

    .line 6
    .line 7
    sget-object v1, Lb/t;->d:Lb/t;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lb/j;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lb/t;

    .line 18
    .line 19
    const-string v3, "location"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/location/LocationManager;

    .line 26
    .line 27
    invoke-direct {v2, v1, v3}, Lb/t;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lb/t;->d:Lb/t;

    .line 31
    .line 32
    :cond_0
    sget-object v1, Lb/t;->d:Lb/t;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lb/j$f;-><init>(Lb/j;Lb/t;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lb/j;->J:Lb/j$f;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 11

    iget-boolean v0, p0, Lb/j;->r:Z

    if-nez v0, :cond_1b

    .line 1
    sget-object v0, Lm1/h;->p:[I

    iget-object v1, p0, Lb/j;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x78

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v6}, Lb/j;->g(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lb/j;->g(I)Z

    :cond_1
    :goto_0
    const/16 v3, 0x70

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x6d

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lb/j;->g(I)Z

    :cond_2
    const/16 v3, 0x71

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lb/j;->g(I)Z

    :cond_3
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lb/j;->A:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lb/j;->c:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-boolean v7, p0, Lb/j;->B:Z

    const/4 v8, 0x0

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lb/j;->A:Z

    if-eqz v7, :cond_4

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-boolean v5, p0, Lb/j;->y:Z

    iput-boolean v5, p0, Lb/j;->x:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v3, p0, Lb/j;->x:Z

    if-eqz v3, :cond_8

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v9, 0x7f030009

    invoke-virtual {v7, v9, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    new-instance v7, Le/c;

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v7, v1, v3}, Le/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v7, v1

    :goto_1
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0b0017

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v7, 0x7f08005d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lg/z;

    iput-object v7, p0, Lb/j;->j:Lg/z;

    invoke-virtual {p0}, Lb/j;->s()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v7, v9}, Lg/z;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v7, p0, Lb/j;->y:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lb/j;->j:Lg/z;

    invoke-interface {v7, v4}, Lg/z;->h(I)V

    :cond_6
    iget-boolean v4, p0, Lb/j;->v:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lb/j;->j:Lg/z;

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Lg/z;->h(I)V

    :cond_7
    iget-boolean v4, p0, Lb/j;->w:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lb/j;->j:Lg/z;

    const/4 v7, 0x5

    invoke-interface {v4, v7}, Lg/z;->h(I)V

    goto :goto_3

    :cond_8
    move-object v3, v8

    goto :goto_3

    :cond_9
    iget-boolean v4, p0, Lb/j;->z:Z

    if-eqz v4, :cond_a

    const v4, 0x7f0b0016

    goto :goto_2

    :cond_a
    const v4, 0x7f0b0015

    :goto_2
    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Lb/k;

    invoke-direct {v4, p0}, Lb/k;-><init>(Lb/j;)V

    sget-object v7, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 2
    new-instance v7, Ly/l;

    invoke-direct {v7, v4}, Ly/l;-><init>(Ly/j;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_b
    :goto_3
    if-eqz v3, :cond_19

    .line 3
    iget-object v4, p0, Lb/j;->j:Lg/z;

    if-nez v4, :cond_c

    const v4, 0x7f0800f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lb/j;->t:Landroid/widget/TextView;

    :cond_c
    sget-object v4, Lg/y0;->a:Ljava/lang/reflect/Method;

    const-string v4, "ViewUtils"

    .line 4
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "makeOptionalFitsSystemWindows"

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_d
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_4

    :catch_1
    move-exception v7

    :goto_4
    const-string v9, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v4, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_2
    const-string v7, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const v4, 0x7f080028

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    :goto_6
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_e

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_e
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    instance-of v10, v9, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_f

    check-cast v9, Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v8, Lb/l;

    invoke-direct {v8, p0}, Lb/l;-><init>(Lb/j;)V

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 6
    iput-object v3, p0, Lb/j;->s:Landroid/view/ViewGroup;

    .line 7
    iget-object v3, p0, Lb/j;->d:Landroid/view/Window$Callback;

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_10

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :cond_10
    iget-object v3, p0, Lb/j;->i:Ljava/lang/CharSequence;

    .line 8
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Lb/j;->j:Lg/z;

    if-eqz v4, :cond_11

    invoke-interface {v4, v3}, Lg/z;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 9
    :cond_11
    iget-object v4, p0, Lb/j;->g:Lb/a;

    if-eqz v4, :cond_12

    .line 10
    invoke-virtual {v4, v3}, Lb/a;->n(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    iget-object v4, p0, Lb/j;->t:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_13
    :goto_8
    iget-object v3, p0, Lb/j;->s:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 12
    iget-object v10, v3, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v10, v7, v8, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Ly/m;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 16
    :cond_14
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v3}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x77

    invoke-virtual {v3}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v3}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 17
    iput-boolean v6, p0, Lb/j;->r:Z

    invoke-virtual {p0, v5}, Lb/j;->r(I)Lb/j$h;

    move-result-object v0

    iget-boolean v1, p0, Lb/j;->G:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    if-nez v0, :cond_1b

    .line 18
    iget v0, p0, Lb/j;->L:I

    const/16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lb/j;->L:I

    iget-boolean v0, p0, Lb/j;->K:Z

    if-nez v0, :cond_1b

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lb/j;->M:Lb/j$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 20
    iput-boolean v6, p0, Lb/j;->K:Z

    goto :goto_9

    .line 21
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lb/j;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/j;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/j;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/j;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/j;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_9
    return-void
.end method

.method public final r(I)Lb/j$h;
    .locals 4

    iget-object v0, p0, Lb/j;->D:[Lb/j$h;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lb/j$h;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lb/j;->D:[Lb/j$h;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lb/j$h;

    invoke-direct {v1, p1}, Lb/j$h;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final s()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lb/j;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final t()V
    .locals 3

    invoke-virtual {p0}, Lb/j;->q()V

    iget-boolean v0, p0, Lb/j;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/j;->g:Lb/a;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb/j;->d:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lb/u;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lb/j;->y:Z

    invoke-direct {v1, v0, v2}, Lb/u;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v1, p0, Lb/j;->g:Lb/a;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lb/u;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lb/u;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lb/j;->g:Lb/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lb/j;->N:Z

    invoke-virtual {v0, v1}, Lb/a;->l(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final u(Lb/j$h;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1
    iget-boolean v0, p1, Lb/j$h;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_1d

    .line 4
    .line 5
    iget-boolean v0, p0, Lb/j;->G:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_d

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lb/j;->b:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    iget v3, p1, Lb/j$h;->a:I

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 28
    .line 29
    and-int/lit8 v4, v4, 0xf

    .line 30
    .line 31
    const/4 v5, 0x4

    .line 32
    if-ne v4, v5, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-eqz v4, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0}, Lb/j;->s()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget-object v5, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 47
    .line 48
    invoke-interface {v4, v3, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Lb/j;->m(Lb/j$h;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    const-string v3, "window"

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/view/WindowManager;

    .line 65
    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    invoke-virtual {p0, p1, p2}, Lb/j;->w(Lb/j$h;Landroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_5

    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    iget-object p2, p1, Lb/j$h;->e:Lb/j$g;

    .line 77
    .line 78
    const/4 v4, -0x2

    .line 79
    if-eqz p2, :cond_7

    .line 80
    .line 81
    iget-boolean v5, p1, Lb/j$h;->n:Z

    .line 82
    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_6
    iget-object p2, p1, Lb/j$h;->g:Landroid/view/View;

    .line 87
    .line 88
    if-eqz p2, :cond_1c

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_1c

    .line 95
    .line 96
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    .line 98
    const/4 v0, -0x1

    .line 99
    if-ne p2, v0, :cond_1c

    .line 100
    .line 101
    const/4 v6, -0x1

    .line 102
    goto/16 :goto_c

    .line 103
    .line 104
    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 105
    .line 106
    invoke-virtual {p0}, Lb/j;->t()V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lb/j;->g:Lb/a;

    .line 110
    .line 111
    if-eqz p2, :cond_8

    .line 112
    .line 113
    invoke-virtual {p2}, Lb/a;->e()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    goto :goto_2

    .line 118
    :cond_8
    const/4 p2, 0x0

    .line 119
    :goto_2
    if-nez p2, :cond_9

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    move-object v0, p2

    .line 123
    :goto_3
    new-instance p2, Landroid/util/TypedValue;

    .line 124
    .line 125
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 141
    .line 142
    .line 143
    const v6, 0x7f030002

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v6, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 147
    .line 148
    .line 149
    iget v6, p2, Landroid/util/TypedValue;->resourceId:I

    .line 150
    .line 151
    if-eqz v6, :cond_a

    .line 152
    .line 153
    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 154
    .line 155
    .line 156
    :cond_a
    const v6, 0x7f030171

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v6, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 160
    .line 161
    .line 162
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 163
    .line 164
    if-eqz p2, :cond_b

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_b
    const p2, 0x7f0e0135

    .line 168
    .line 169
    .line 170
    :goto_4
    invoke-virtual {v5, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 171
    .line 172
    .line 173
    new-instance p2, Le/c;

    .line 174
    .line 175
    invoke-direct {p2, v0, v2}, Le/c;-><init>(Landroid/content/Context;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Le/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 183
    .line 184
    .line 185
    iput-object p2, p1, Lb/j$h;->j:Le/c;

    .line 186
    .line 187
    sget-object v0, Lm1/h;->p:[I

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    const/16 v0, 0x50

    .line 194
    .line 195
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p1, Lb/j$h;->b:I

    .line 200
    .line 201
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    iput v0, p1, Lb/j$h;->d:I

    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    .line 209
    .line 210
    new-instance p2, Lb/j$g;

    .line 211
    .line 212
    iget-object v0, p1, Lb/j$h;->j:Le/c;

    .line 213
    .line 214
    invoke-direct {p2, p0, v0}, Lb/j$g;-><init>(Lb/j;Le/c;)V

    .line 215
    .line 216
    .line 217
    iput-object p2, p1, Lb/j$h;->e:Lb/j$g;

    .line 218
    .line 219
    const/16 p2, 0x51

    .line 220
    .line 221
    iput p2, p1, Lb/j$h;->c:I

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_c
    iget-boolean v0, p1, Lb/j$h;->n:Z

    .line 225
    .line 226
    if-eqz v0, :cond_d

    .line 227
    .line 228
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-lez p2, :cond_d

    .line 233
    .line 234
    iget-object p2, p1, Lb/j$h;->e:Lb/j$g;

    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 237
    .line 238
    .line 239
    :cond_d
    :goto_5
    iget-object p2, p1, Lb/j$h;->g:Landroid/view/View;

    .line 240
    .line 241
    if-eqz p2, :cond_e

    .line 242
    .line 243
    iput-object p2, p1, Lb/j$h;->f:Landroid/view/View;

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_e
    iget-object p2, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 247
    .line 248
    if-nez p2, :cond_f

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_f
    iget-object p2, p0, Lb/j;->l:Lb/j$i;

    .line 252
    .line 253
    if-nez p2, :cond_10

    .line 254
    .line 255
    new-instance p2, Lb/j$i;

    .line 256
    .line 257
    invoke-direct {p2, p0}, Lb/j$i;-><init>(Lb/j;)V

    .line 258
    .line 259
    .line 260
    iput-object p2, p0, Lb/j;->l:Lb/j$i;

    .line 261
    .line 262
    :cond_10
    iget-object p2, p0, Lb/j;->l:Lb/j$i;

    .line 263
    .line 264
    iget-object v0, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 265
    .line 266
    if-nez v0, :cond_11

    .line 267
    .line 268
    new-instance v0, Landroidx/appcompat/view/menu/d;

    .line 269
    .line 270
    iget-object v5, p1, Lb/j$h;->j:Le/c;

    .line 271
    .line 272
    invoke-direct {v0, v5}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    iput-object v0, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 276
    .line 277
    iput-object p2, v0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/j$a;

    .line 278
    .line 279
    iget-object p2, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 280
    .line 281
    iget-object v5, p2, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {p2, v0, v5}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    :cond_11
    iget-object p2, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 287
    .line 288
    iget-object v0, p1, Lb/j$h;->e:Lb/j$g;

    .line 289
    .line 290
    iget-object v5, p2, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 291
    .line 292
    if-nez v5, :cond_13

    .line 293
    .line 294
    iget-object v5, p2, Landroidx/appcompat/view/menu/d;->c:Landroid/view/LayoutInflater;

    .line 295
    .line 296
    const v6, 0x7f0b000d

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    check-cast v0, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 304
    .line 305
    iput-object v0, p2, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 306
    .line 307
    iget-object v0, p2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 308
    .line 309
    if-nez v0, :cond_12

    .line 310
    .line 311
    new-instance v0, Landroidx/appcompat/view/menu/d$a;

    .line 312
    .line 313
    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 314
    .line 315
    .line 316
    iput-object v0, p2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 317
    .line 318
    :cond_12
    iget-object v0, p2, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 319
    .line 320
    iget-object v5, p2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 321
    .line 322
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, p2, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 326
    .line 327
    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 328
    .line 329
    .line 330
    :cond_13
    iget-object p2, p2, Landroidx/appcompat/view/menu/d;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 331
    .line 332
    iput-object p2, p1, Lb/j$h;->f:Landroid/view/View;

    .line 333
    .line 334
    if-eqz p2, :cond_14

    .line 335
    .line 336
    :goto_6
    const/4 p2, 0x1

    .line 337
    goto :goto_8

    .line 338
    :cond_14
    :goto_7
    const/4 p2, 0x0

    .line 339
    :goto_8
    if-eqz p2, :cond_1d

    .line 340
    .line 341
    iget-object p2, p1, Lb/j$h;->f:Landroid/view/View;

    .line 342
    .line 343
    if-nez p2, :cond_15

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_15
    iget-object p2, p1, Lb/j$h;->g:Landroid/view/View;

    .line 347
    .line 348
    if-eqz p2, :cond_16

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_16
    iget-object p2, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 352
    .line 353
    iget-object v0, p2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 354
    .line 355
    if-nez v0, :cond_17

    .line 356
    .line 357
    new-instance v0, Landroidx/appcompat/view/menu/d$a;

    .line 358
    .line 359
    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    .line 360
    .line 361
    .line 362
    iput-object v0, p2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 363
    .line 364
    :cond_17
    iget-object p2, p2, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    .line 365
    .line 366
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/d$a;->getCount()I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    if-lez p2, :cond_18

    .line 371
    .line 372
    :goto_9
    const/4 p2, 0x1

    .line 373
    goto :goto_b

    .line 374
    :cond_18
    :goto_a
    const/4 p2, 0x0

    .line 375
    :goto_b
    if-nez p2, :cond_19

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_19
    iget-object p2, p1, Lb/j$h;->f:Landroid/view/View;

    .line 379
    .line 380
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    if-nez p2, :cond_1a

    .line 385
    .line 386
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 387
    .line 388
    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 389
    .line 390
    .line 391
    :cond_1a
    iget v0, p1, Lb/j$h;->b:I

    .line 392
    .line 393
    iget-object v5, p1, Lb/j$h;->e:Lb/j$g;

    .line 394
    .line 395
    invoke-virtual {v5, v0}, Lb/j$g;->setBackgroundResource(I)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p1, Lb/j$h;->f:Landroid/view/View;

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_1b

    .line 405
    .line 406
    instance-of v5, v0, Landroid/view/ViewGroup;

    .line 407
    .line 408
    if-eqz v5, :cond_1b

    .line 409
    .line 410
    check-cast v0, Landroid/view/ViewGroup;

    .line 411
    .line 412
    iget-object v5, p1, Lb/j$h;->f:Landroid/view/View;

    .line 413
    .line 414
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    .line 416
    .line 417
    :cond_1b
    iget-object v0, p1, Lb/j$h;->e:Lb/j$g;

    .line 418
    .line 419
    iget-object v5, p1, Lb/j$h;->f:Landroid/view/View;

    .line 420
    .line 421
    invoke-virtual {v0, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .line 423
    .line 424
    iget-object p2, p1, Lb/j$h;->f:Landroid/view/View;

    .line 425
    .line 426
    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    .line 427
    .line 428
    .line 429
    move-result p2

    .line 430
    if-nez p2, :cond_1c

    .line 431
    .line 432
    iget-object p2, p1, Lb/j$h;->f:Landroid/view/View;

    .line 433
    .line 434
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 435
    .line 436
    .line 437
    :cond_1c
    const/4 v6, -0x2

    .line 438
    :goto_c
    iput-boolean v2, p1, Lb/j$h;->l:Z

    .line 439
    .line 440
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 441
    .line 442
    const/4 v7, -0x2

    .line 443
    const/4 v8, 0x0

    .line 444
    const/4 v9, 0x0

    .line 445
    const/16 v10, 0x3ea

    .line 446
    .line 447
    const/high16 v11, 0x820000

    .line 448
    .line 449
    const/4 v12, -0x3

    .line 450
    move-object v5, p2

    .line 451
    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 452
    .line 453
    .line 454
    iget v0, p1, Lb/j$h;->c:I

    .line 455
    .line 456
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 457
    .line 458
    iget v0, p1, Lb/j$h;->d:I

    .line 459
    .line 460
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 461
    .line 462
    iget-object v0, p1, Lb/j$h;->e:Lb/j$g;

    .line 463
    .line 464
    invoke-interface {v3, v0, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    .line 466
    .line 467
    iput-boolean v1, p1, Lb/j$h;->m:Z

    .line 468
    .line 469
    :cond_1d
    :goto_d
    return-void
.end method

.method public final v(Lb/j$h;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lb/j$h;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lb/j;->w(Lb/j$h;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/f;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final w(Lb/j$h;Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lb/j;->G:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p1, Lb/j$h;->k:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-object v0, p0, Lb/j;->E:Lb/j$h;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eq v0, p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lb/j;->m(Lb/j$h;Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-virtual {p0}, Lb/j;->s()Landroid/view/Window$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v3, p1, Lb/j$h;->a:I

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iput-object v4, p1, Lb/j$h;->g:Landroid/view/View;

    .line 35
    .line 36
    :cond_3
    const/16 v4, 0x6c

    .line 37
    .line 38
    if-eqz v3, :cond_5

    .line 39
    .line 40
    if-ne v3, v4, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    const/4 v5, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_5
    :goto_0
    const/4 v5, 0x1

    .line 46
    :goto_1
    if-eqz v5, :cond_6

    .line 47
    .line 48
    iget-object v6, p0, Lb/j;->j:Lg/z;

    .line 49
    .line 50
    if-eqz v6, :cond_6

    .line 51
    .line 52
    invoke-interface {v6}, Lg/z;->f()V

    .line 53
    .line 54
    .line 55
    :cond_6
    iget-object v6, p1, Lb/j$h;->g:Landroid/view/View;

    .line 56
    .line 57
    if-nez v6, :cond_1e

    .line 58
    .line 59
    if-eqz v5, :cond_7

    .line 60
    .line 61
    iget-object v6, p0, Lb/j;->g:Lb/a;

    .line 62
    .line 63
    instance-of v6, v6, Lb/r;

    .line 64
    .line 65
    if-nez v6, :cond_1e

    .line 66
    .line 67
    :cond_7
    iget-object v6, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    if-eqz v6, :cond_8

    .line 71
    .line 72
    iget-boolean v8, p1, Lb/j$h;->o:Z

    .line 73
    .line 74
    if-eqz v8, :cond_18

    .line 75
    .line 76
    :cond_8
    if-nez v6, :cond_11

    .line 77
    .line 78
    iget-object v6, p0, Lb/j;->b:Landroid/content/Context;

    .line 79
    .line 80
    if-eqz v3, :cond_9

    .line 81
    .line 82
    if-ne v3, v4, :cond_d

    .line 83
    .line 84
    :cond_9
    iget-object v4, p0, Lb/j;->j:Lg/z;

    .line 85
    .line 86
    if-eqz v4, :cond_d

    .line 87
    .line 88
    new-instance v4, Landroid/util/TypedValue;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const v9, 0x7f030009

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    .line 102
    .line 103
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 104
    .line 105
    const v10, 0x7f03000a

    .line 106
    .line 107
    .line 108
    if-eqz v9, :cond_a

    .line 109
    .line 110
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 119
    .line 120
    .line 121
    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    .line 122
    .line 123
    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_a
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    .line 132
    .line 133
    move-object v9, v7

    .line 134
    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 135
    .line 136
    if-eqz v10, :cond_c

    .line 137
    .line 138
    if-nez v9, :cond_b

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 149
    .line 150
    .line 151
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 152
    .line 153
    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 154
    .line 155
    .line 156
    :cond_c
    if-eqz v9, :cond_d

    .line 157
    .line 158
    new-instance v4, Le/c;

    .line 159
    .line 160
    invoke-direct {v4, v6, v1}, Le/c;-><init>(Landroid/content/Context;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Le/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 168
    .line 169
    .line 170
    move-object v6, v4

    .line 171
    :cond_d
    new-instance v4, Landroidx/appcompat/view/menu/f;

    .line 172
    .line 173
    invoke-direct {v4, v6}, Landroidx/appcompat/view/menu/f;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    iput-object p0, v4, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/f$a;

    .line 177
    .line 178
    iget-object v6, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 179
    .line 180
    if-ne v4, v6, :cond_e

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_e
    if-eqz v6, :cond_f

    .line 184
    .line 185
    iget-object v8, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 186
    .line 187
    invoke-virtual {v6, v8}, Landroidx/appcompat/view/menu/f;->r(Landroidx/appcompat/view/menu/j;)V

    .line 188
    .line 189
    .line 190
    :cond_f
    iput-object v4, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 191
    .line 192
    iget-object v6, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 193
    .line 194
    if-eqz v6, :cond_10

    .line 195
    .line 196
    iget-object v8, v4, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    :cond_10
    :goto_3
    iget-object v4, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 202
    .line 203
    if-nez v4, :cond_11

    .line 204
    .line 205
    return v1

    .line 206
    :cond_11
    if-eqz v5, :cond_13

    .line 207
    .line 208
    iget-object v4, p0, Lb/j;->j:Lg/z;

    .line 209
    .line 210
    if-eqz v4, :cond_13

    .line 211
    .line 212
    iget-object v6, p0, Lb/j;->k:Lb/j$c;

    .line 213
    .line 214
    if-nez v6, :cond_12

    .line 215
    .line 216
    new-instance v6, Lb/j$c;

    .line 217
    .line 218
    invoke-direct {v6, p0}, Lb/j$c;-><init>(Lb/j;)V

    .line 219
    .line 220
    .line 221
    iput-object v6, p0, Lb/j;->k:Lb/j$c;

    .line 222
    .line 223
    :cond_12
    iget-object v6, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 224
    .line 225
    iget-object v8, p0, Lb/j;->k:Lb/j$c;

    .line 226
    .line 227
    invoke-interface {v4, v6, v8}, Lg/z;->b(Landroidx/appcompat/view/menu/f;Lb/j$c;)V

    .line 228
    .line 229
    .line 230
    :cond_13
    iget-object v4, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 231
    .line 232
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/f;->w()V

    .line 233
    .line 234
    .line 235
    iget-object v4, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 236
    .line 237
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_17

    .line 242
    .line 243
    iget-object p2, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 244
    .line 245
    if-nez p2, :cond_14

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_14
    if-eqz p2, :cond_15

    .line 249
    .line 250
    iget-object v0, p1, Lb/j$h;->i:Landroidx/appcompat/view/menu/d;

    .line 251
    .line 252
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/f;->r(Landroidx/appcompat/view/menu/j;)V

    .line 253
    .line 254
    .line 255
    :cond_15
    iput-object v7, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 256
    .line 257
    :goto_4
    if-eqz v5, :cond_16

    .line 258
    .line 259
    iget-object p1, p0, Lb/j;->j:Lg/z;

    .line 260
    .line 261
    if-eqz p1, :cond_16

    .line 262
    .line 263
    iget-object p2, p0, Lb/j;->k:Lb/j$c;

    .line 264
    .line 265
    invoke-interface {p1, v7, p2}, Lg/z;->b(Landroidx/appcompat/view/menu/f;Lb/j$c;)V

    .line 266
    .line 267
    .line 268
    :cond_16
    return v1

    .line 269
    :cond_17
    iput-boolean v1, p1, Lb/j$h;->o:Z

    .line 270
    .line 271
    :cond_18
    iget-object v3, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 272
    .line 273
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/f;->w()V

    .line 274
    .line 275
    .line 276
    iget-object v3, p1, Lb/j$h;->p:Landroid/os/Bundle;

    .line 277
    .line 278
    if-eqz v3, :cond_19

    .line 279
    .line 280
    iget-object v4, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 281
    .line 282
    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/f;->s(Landroid/os/Bundle;)V

    .line 283
    .line 284
    .line 285
    iput-object v7, p1, Lb/j$h;->p:Landroid/os/Bundle;

    .line 286
    .line 287
    :cond_19
    iget-object v3, p1, Lb/j$h;->g:Landroid/view/View;

    .line 288
    .line 289
    iget-object v4, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 290
    .line 291
    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_1b

    .line 296
    .line 297
    if-eqz v5, :cond_1a

    .line 298
    .line 299
    iget-object p2, p0, Lb/j;->j:Lg/z;

    .line 300
    .line 301
    if-eqz p2, :cond_1a

    .line 302
    .line 303
    iget-object v0, p0, Lb/j;->k:Lb/j$c;

    .line 304
    .line 305
    invoke-interface {p2, v7, v0}, Lg/z;->b(Landroidx/appcompat/view/menu/f;Lb/j$c;)V

    .line 306
    .line 307
    .line 308
    :cond_1a
    iget-object p1, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 309
    .line 310
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->v()V

    .line 311
    .line 312
    .line 313
    return v1

    .line 314
    :cond_1b
    if-eqz p2, :cond_1c

    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    goto :goto_5

    .line 321
    :cond_1c
    const/4 p2, -0x1

    .line 322
    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-eq p2, v2, :cond_1d

    .line 331
    .line 332
    const/4 p2, 0x1

    .line 333
    goto :goto_6

    .line 334
    :cond_1d
    const/4 p2, 0x0

    .line 335
    :goto_6
    iget-object v0, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 336
    .line 337
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f;->setQwertyMode(Z)V

    .line 338
    .line 339
    .line 340
    iget-object p2, p1, Lb/j$h;->h:Landroidx/appcompat/view/menu/f;

    .line 341
    .line 342
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/f;->v()V

    .line 343
    .line 344
    .line 345
    :cond_1e
    iput-boolean v2, p1, Lb/j$h;->k:Z

    .line 346
    .line 347
    iput-boolean v1, p1, Lb/j$h;->l:Z

    .line 348
    .line 349
    iput-object p1, p0, Lb/j;->E:Lb/j$h;

    .line 350
    .line 351
    return v2
.end method

.method public final x()V
    .locals 2

    iget-boolean v0, p0, Lb/j;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
