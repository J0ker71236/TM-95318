.class public Lio/appium/android/apis/accessibility/ClockBackActivity;
.super Landroid/app/Activity;
.source "ClockBackActivity.java"


# static fields
.field private static final sSettingsIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/appium/android/apis/accessibility/ClockBackActivity;->sSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .line 32
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackActivity;->sSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 48
    .local v0, "button":Landroid/widget/ImageButton;
    new-instance v1, Lio/appium/android/apis/accessibility/ClockBackActivity$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/accessibility/ClockBackActivity$1;-><init>(Lio/appium/android/apis/accessibility/ClockBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
