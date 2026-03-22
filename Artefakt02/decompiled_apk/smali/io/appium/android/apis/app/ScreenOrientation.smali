.class public Lio/appium/android/apis/app/ScreenOrientation;
.super Landroid/app/Activity;
.source "ScreenOrientation.java"


# static fields
.field static final mOrientationValues:[I


# instance fields
.field mOrientation:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/app/ScreenOrientation;->mOrientationValues:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ScreenOrientation;->setContentView(I)V

    .line 56
    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ScreenOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lio/appium/android/apis/app/ScreenOrientation;->mOrientation:Landroid/widget/Spinner;

    .line 57
    const v0, 0x7f030007

    const v1, 0x1090008

    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 59
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 60
    iget-object v1, p0, Lio/appium/android/apis/app/ScreenOrientation;->mOrientation:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 61
    iget-object v1, p0, Lio/appium/android/apis/app/ScreenOrientation;->mOrientation:Landroid/widget/Spinner;

    new-instance v2, Lio/appium/android/apis/app/ScreenOrientation$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/ScreenOrientation$1;-><init>(Lio/appium/android/apis/app/ScreenOrientation;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    return-void
.end method
