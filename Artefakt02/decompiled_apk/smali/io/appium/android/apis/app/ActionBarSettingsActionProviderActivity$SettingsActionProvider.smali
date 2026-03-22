.class public Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;
.super Landroid/view/ActionProvider;
.source "ActionBarSettingsActionProviderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsActionProvider"
.end annotation


# static fields
.field private static final sSettingsIntent:Landroid/content/Intent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->sSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p1, p0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .line 64
    sget-object v0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->sSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreateActionView()Landroid/view/View;
    .locals 4

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0b0020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 92
    .local v2, "button":Landroid/widget/ImageButton;
    new-instance v3, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider$1;-><init>(Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-object v1
.end method

.method public onPerformDefaultAction()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->mContext:Landroid/content/Context;

    sget-object v1, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->sSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
