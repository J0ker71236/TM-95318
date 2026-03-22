.class public Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;
.super Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;
.source "DeviceAdminSample.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DeviceAdminSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QualityFragment"
.end annotation


# static fields
.field static final mPasswordQualityValueStrings:[Ljava/lang/String;

.field static final mPasswordQualityValues:[I


# instance fields
.field private mMinLength:Landroid/preference/EditTextPreference;

.field private mMinLetters:Landroid/preference/EditTextPreference;

.field private mMinLowerCase:Landroid/preference/EditTextPreference;

.field private mMinNonLetter:Landroid/preference/EditTextPreference;

.field private mMinNumeric:Landroid/preference/EditTextPreference;

.field private mMinSymbols:Landroid/preference/EditTextPreference;

.field private mMinUpperCase:Landroid/preference/EditTextPreference;

.field private mPasswordQuality:Landroid/preference/ListPreference;

.field private mQualityCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 363
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQualityValues:[I

    .line 374
    new-array v0, v0, [Ljava/lang/String;

    .line 375
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 376
    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 377
    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 378
    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 379
    const/high16 v1, 0x50000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 380
    const/high16 v1, 0x60000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQualityValueStrings:[Ljava/lang/String;

    .line 374
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x10000
        0x20000
        0x40000
        0x50000
        0x60000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;-><init>()V

    return-void
.end method

.method private qualityValueToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "quality"    # I

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQualityValues:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 502
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 503
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    .line 504
    invoke-virtual {v1}, Lio/appium/android/apis/app/DeviceAdminSample;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "qualities":[Ljava/lang/String;
    aget-object v2, v1, v0

    return-object v2

    .line 501
    .end local v1    # "qualities":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 396
    invoke-super {p0, p1}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 397
    const v0, 0x7f110008

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->addPreferencesFromResource(I)V

    .line 399
    const-string v0, "key_category_quality"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mQualityCategory:Landroid/preference/PreferenceCategory;

    .line 400
    const-string v0, "key_quality"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQuality:Landroid/preference/ListPreference;

    .line 401
    const-string v0, "key_minimum_length"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLength:Landroid/preference/EditTextPreference;

    .line 402
    const-string v0, "key_minimum_letters"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLetters:Landroid/preference/EditTextPreference;

    .line 403
    const-string v0, "key_minimum_numeric"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNumeric:Landroid/preference/EditTextPreference;

    .line 404
    const-string v0, "key_minimum_lower_case"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLowerCase:Landroid/preference/EditTextPreference;

    .line 405
    const-string v0, "key_minimum_upper_case"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinUpperCase:Landroid/preference/EditTextPreference;

    .line 406
    const-string v0, "key_minimum_symbols"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinSymbols:Landroid/preference/EditTextPreference;

    .line 407
    const-string v0, "key_minimum_non_letter"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNonLetter:Landroid/preference/EditTextPreference;

    .line 409
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQuality:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 411
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLetters:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 412
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNumeric:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 413
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLowerCase:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinUpperCase:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinSymbols:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 416
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNonLetter:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 419
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQuality:Landroid/preference/ListPreference;

    sget-object v1, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQualityValueStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 420
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 465
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 466
    return v1

    .line 468
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 469
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 470
    return v3

    .line 472
    :cond_1
    const/4 v2, 0x0

    .line 474
    .local v2, "value":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 478
    goto :goto_0

    .line 475
    :catch_0
    move-exception v4

    .line 476
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    const v6, 0x7f0e0222

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-virtual {v5, v6, v7}, Lio/appium/android/apis/app/DeviceAdminSample;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "warning":Ljava/lang/String;
    iget-object v6, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mActivity:Lio/appium/android/apis/app/DeviceAdminSample;

    invoke-static {v6, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 479
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "warning":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQuality:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 480
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 481
    :cond_2
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLength:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_3

    .line 482
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 483
    :cond_3
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLetters:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_4

    .line 484
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 485
    :cond_4
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNumeric:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_5

    .line 486
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 487
    :cond_5
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLowerCase:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_6

    .line 488
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 489
    :cond_6
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinUpperCase:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_7

    .line 490
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 491
    :cond_7
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinSymbols:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_8

    .line 492
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 493
    :cond_8
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNonLetter:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_9

    .line 494
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 496
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->reloadSummaries()V

    .line 497
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 424
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->onResume()V

    .line 425
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mQualityCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mAdminActive:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 426
    return-void
.end method

.method protected reloadSummaries()V
    .locals 6

    .line 433
    invoke-super {p0}, Lio/appium/android/apis/app/DeviceAdminSample$AdminSampleFragment;->reloadSummaries()V

    .line 436
    iget-object v0, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 437
    .local v0, "local":I
    iget-object v1, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    .line 438
    .local v1, "global":I
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mPasswordQuality:Landroid/preference/ListPreference;

    .line 439
    invoke-direct {p0, v0}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->qualityValueToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->qualityValueToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    .line 441
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 442
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLength:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    .line 444
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v1

    .line 445
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLetters:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    .line 447
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v1

    .line 448
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNumeric:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    .line 450
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v1

    .line 451
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinLowerCase:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    .line 453
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v1

    .line 454
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinUpperCase:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    .line 456
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v1

    .line 457
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinSymbols:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDeviceAdminSample:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    .line 459
    iget-object v3, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v1

    .line 460
    iget-object v2, p0, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->mMinNonLetter:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lio/appium/android/apis/app/DeviceAdminSample$QualityFragment;->localGlobalSummary(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    return-void
.end method
