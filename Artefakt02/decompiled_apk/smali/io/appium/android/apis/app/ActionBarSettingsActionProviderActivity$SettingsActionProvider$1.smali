.class Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider$1;
.super Ljava/lang/Object;
.source "ActionBarSettingsActionProviderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->onCreateActionView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;

    .line 92
    iput-object p1, p0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider$1;->this$0:Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider$1;->this$0:Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;

    invoke-static {v0}, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->access$100(Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/appium/android/apis/app/ActionBarSettingsActionProviderActivity$SettingsActionProvider;->access$000()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
