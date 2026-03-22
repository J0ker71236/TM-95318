.class public Lio/appium/android/apis/app/DeviceAdminSample;
.super Landroid/preference/PreferenceActivity;
.source "DeviceAdminSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;,
        Lio/appium/android/apis/app/DeviceAdminSample$EncryptionFragment;,
        Lio/appium/android/apis/app/DeviceAdminSample$LockWipeFragment;,
        Lio/appium/android/apis/app/DeviceAdminSample$ExpirationFragment;,
        Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;,
        Lio/appium/android/apis/app/DeviceAdminSample$GeneralFragment;,
        Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
    }
.end annotation


# static fields
.field private static final KEY_ACTIVATE_ENCRYPTION:Ljava/lang/String; = "key_activate_encryption"

.field private static final KEY_CATEGORY_ENCRYPTION:Ljava/lang/String; = "key_category_encryption"

.field private static final KEY_CATEGORY_EXPIRATION:Ljava/lang/String; = "key_category_expiration"

.field private static final KEY_CATEGORY_LOCK_WIPE:Ljava/lang/String; = "key_category_lock_wipe"

.field private static final KEY_CATEGORY_QUALITY:Ljava/lang/String; = "key_category_quality"

.field private static final KEY_DISABLE_CAMERA:Ljava/lang/String; = "key_disable_camera"

.field private static final KEY_DISABLE_KEYGUARD_SECURE_CAMERA:Ljava/lang/String; = "key_disable_keyguard_secure_camera"

.field private static final KEY_DISABLE_KEYGUARD_WIDGETS:Ljava/lang/String; = "key_disable_keyguard_widgets"

.field private static final KEY_ENABLE_ADMIN:Ljava/lang/String; = "key_enable_admin"

.field private static final KEY_EXPIRATION_STATUS:Ljava/lang/String; = "key_expiration_status"

.field private static final KEY_EXPIRATION_TIMEOUT:Ljava/lang/String; = "key_expiration_timeout"

.field private static final KEY_HISTORY:Ljava/lang/String; = "key_history"

.field private static final KEY_LOCK_SCREEN:Ljava/lang/String; = "key_lock_screen"

.field private static final KEY_MAX_FAILS_BEFORE_WIPE:Ljava/lang/String; = "key_max_fails_before_wipe"

.field private static final KEY_MAX_TIME_SCREEN_LOCK:Ljava/lang/String; = "key_max_time_screen_lock"

.field private static final KEY_MIN_LENGTH:Ljava/lang/String; = "key_minimum_length"

.field private static final KEY_MIN_LETTERS:Ljava/lang/String; = "key_minimum_letters"

.field private static final KEY_MIN_LOWER_CASE:Ljava/lang/String; = "key_minimum_lower_case"

.field private static final KEY_MIN_NON_LETTER:Ljava/lang/String; = "key_minimum_non_letter"

.field private static final KEY_MIN_NUMERIC:Ljava/lang/String; = "key_minimum_numeric"

.field private static final KEY_MIN_SYMBOLS:Ljava/lang/String; = "key_minimum_symbols"

.field private static final KEY_MIN_UPPER_CASE:Ljava/lang/String; = "key_minimum_upper_case"

.field private static final KEY_QUALITY:Ljava/lang/String; = "key_quality"

.field private static final KEY_REQUIRE_ENCRYPTION:Ljava/lang/String; = "key_require_encryption"

.field private static final KEY_RESET_PASSWORD:Ljava/lang/String; = "key_reset_password"

.field private static final KEY_SET_PASSWORD:Ljava/lang/String; = "key_set_password"

.field private static final KEY_WIPE_DATA:Ljava/lang/String; = "key_wipe_data"

.field private static final KEY_WIP_DATA_ALL:Ljava/lang/String; = "key_wipe_data_all"

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final MS_PER_HOUR:J = 0x36ee80L

.field private static final MS_PER_MINUTE:J = 0xea60L

.field private static final REQUEST_CODE_ENABLE_ADMIN:I = 0x1

.field private static final REQUEST_CODE_START_ENCRYPTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeviceAdminSample"


# instance fields
.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdminSample:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/DeviceAdminSample;)Z
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/DeviceAdminSample;

    .line 56
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample;->isActiveAdmin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 56
    invoke-static {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample;->alertIfMonkey(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .line 56
    invoke-static {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample;->timeToDaysMinutesSeconds(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static alertIfMonkey(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I

    .line 909
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 911
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 912
    const v1, 0x7f0e0216

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 913
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 914
    const/4 v1, 0x1

    return v1

    .line 916
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isActiveAdmin()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private static timeToDaysMinutesSeconds(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .line 898
    const-wide/32 v0, 0x5265c00

    div-long v0, p1, v0

    .line 899
    .local v0, "days":J
    const-wide/32 v2, 0x36ee80

    div-long v2, p1, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    .line 900
    .local v2, "hours":J
    const-wide/32 v4, 0xea60

    div-long v4, p1, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    .line 901
    .local v4, "minutes":J
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const v7, 0x7f0e0316

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f110006

    invoke-virtual {p0, v0, p1}, Lio/appium/android/apis/app/DeviceAdminSample;->loadHeadersFromResource(ILjava/util/List;)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 113
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample;->mDeviceAdminSample:Landroid/content/ComponentName;

    .line 114
    return-void
.end method
