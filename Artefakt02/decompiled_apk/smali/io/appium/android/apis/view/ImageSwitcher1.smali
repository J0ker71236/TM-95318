.class public Lio/appium/android/apis/view/ImageSwitcher1;
.super Landroid/app/Activity;
.source "ImageSwitcher1.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;
    }
.end annotation


# instance fields
.field private mImageIds:[Ljava/lang/Integer;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mThumbIds:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Integer;

    .line 110
    const v2, 0x7f0800a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0800aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 111
    const v2, 0x7f0800ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, 0x7f0800ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 112
    const v2, 0x7f0800ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const v2, 0x7f0800ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 113
    const v2, 0x7f0800af

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const v2, 0x7f0800b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    iput-object v1, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mThumbIds:[Ljava/lang/Integer;

    .line 115
    new-array v0, v0, [Ljava/lang/Integer;

    .line 116
    const v1, 0x7f0800a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0800a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0800a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 117
    const v1, 0x7f0800a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0800a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x7f0800a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    .line 118
    const v1, 0x7f0800a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const v1, 0x7f0800a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mImageIds:[Ljava/lang/Integer;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/ImageSwitcher1;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/ImageSwitcher1;

    .line 37
    iget-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mThumbIds:[Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "i":Landroid/widget/ImageView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 69
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ImageSwitcher1;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ImageSwitcher1;->setContentView(I)V

    .line 47
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ImageSwitcher1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mSwitcher:Landroid/widget/ImageSwitcher;

    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mSwitcher:Landroid/widget/ImageSwitcher;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 54
    const v0, 0x7f0900d6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ImageSwitcher1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 55
    .local v0, "g":Landroid/widget/Gallery;
    new-instance v1, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;-><init>(Lio/appium/android/apis/view/ImageSwitcher1;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 57
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lio/appium/android/apis/view/ImageSwitcher1;->mImageIds:[Ljava/lang/Integer;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 61
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
