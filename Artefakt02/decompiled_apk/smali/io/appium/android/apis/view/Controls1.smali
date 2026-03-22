.class public Lio/appium/android/apis/view/Controls1;
.super Landroid/app/Activity;
.source "Controls1.java"


# static fields
.field private static final mStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mercury"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Venus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Earth"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Mars"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Jupiter"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Saturn"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Uranus"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Neptune"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/Controls1;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Controls1;->setContentView(I)V

    .line 41
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Controls1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "disabledButton":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    const v1, 0x7f0901db

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/Controls1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 45
    .local v1, "s1":Landroid/widget/Spinner;
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget-object v3, Lio/appium/android/apis/view/Controls1;->mStrings:[Ljava/lang/String;

    const v4, 0x1090008

    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 47
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    return-void
.end method
