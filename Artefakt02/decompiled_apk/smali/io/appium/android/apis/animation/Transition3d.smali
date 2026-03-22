.class public Lio/appium/android/apis/animation/Transition3d;
.super Landroid/app/Activity;
.source "Transition3d.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/Transition3d$SwapViews;,
        Lio/appium/android/apis/animation/Transition3d$DisplayNextView;
    }
.end annotation


# static fields
.field private static final PHOTOS_NAMES:[Ljava/lang/String;

.field private static final PHOTOS_RESOURCES:[I


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mImageView:Landroid/widget/ImageView;

.field private mPhotosList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Lyon"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Livermore"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Tahoe Pier"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Lake Tahoe"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Grand Canyon"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "Bodie"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sput-object v1, Lio/appium/android/apis/animation/Transition3d;->PHOTOS_NAMES:[Ljava/lang/String;

    .line 44
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/animation/Transition3d;->PHOTOS_RESOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080094
        0x7f080095
        0x7f080096
        0x7f080097
        0x7f080098
        0x7f080099
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/animation/Transition3d;

    .line 27
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/animation/Transition3d;

    .line 27
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mPhotosList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/animation/Transition3d;

    .line 27
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private applyRotation(IFF)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "start"    # F
    .param p3, "end"    # F

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 90
    .local v0, "centerX":F
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    .line 94
    .local v1, "centerY":F
    new-instance v9, Lio/appium/android/apis/animation/Rotate3dAnimation;

    const/high16 v7, 0x439b0000    # 310.0f

    const/4 v8, 0x1

    move-object v2, v9

    move v3, p2

    move v4, p3

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lio/appium/android/apis/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 96
    .local v2, "rotation":Lio/appium/android/apis/animation/Rotate3dAnimation;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setDuration(J)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setFillAfter(Z)V

    .line 98
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    new-instance v3, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lio/appium/android/apis/animation/Transition3d$DisplayNextView;-><init>(Lio/appium/android/apis/animation/Transition3d;ILio/appium/android/apis/animation/Transition3d$1;)V

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    iget-object v3, p0, Lio/appium/android/apis/animation/Transition3d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 111
    const/4 v0, -0x1

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-direct {p0, v0, v1, v2}, Lio/appium/android/apis/animation/Transition3d;->applyRotation(IFF)V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/Transition3d;->setContentView(I)V

    .line 59
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/Transition3d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mPhotosList:Landroid/widget/ListView;

    .line 60
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/Transition3d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mImageView:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/Transition3d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mContainer:Landroid/view/ViewGroup;

    .line 64
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lio/appium/android/apis/animation/Transition3d;->PHOTOS_NAMES:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 67
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d;->mPhotosList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d;->mPhotosList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 73
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lio/appium/android/apis/animation/Transition3d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 106
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Lio/appium/android/apis/animation/Transition3d;->PHOTOS_RESOURCES:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    const/4 v0, 0x0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {p0, p3, v0, v1}, Lio/appium/android/apis/animation/Transition3d;->applyRotation(IFF)V

    .line 108
    return-void
.end method
