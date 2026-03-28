#!/bin/bash
# تطبيق محمد عبد العظيم الطويل الإسلامي الشامل
APP_DIR="MohamedAbdelazimApp"
mkdir -p $APP_DIR/app/src/main/java/com/abdelazim/islamicapp
mkdir -p $APP_DIR/app/src/main/res/layout
mkdir -p $APP_DIR/app/src/main/res/drawable
mkdir -p $APP_DIR/app/src/main/res/values

# 1. إعدادات الأسماء (صدقة جارية)
cat <<EOF > $APP_DIR/app/src/main/res/values/strings.xml
<resources>
    <string name="app_name">تطبيق محمد عبد العظيم الطويل الإسلامي</string>
    <string name="quran_full">القرآن الكريم (أوفلاين)</string>
    <string name="azan_screen">تنبيه الأذان</string>
    <string name="prophet_remind">الصلاة على النبي</string>
</resources>
EOF

# 2. كود البرمجة (الأذان، الصامت، والعمل والشاشة مغلقة)
cat <<EOF > $APP_DIR/app/src/main/java/com/abdelazim/islamicapp/MainActivity.java
package com.abdelazim.islamicapp;
import android.app.*;
import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // تشغيل خدمات الأذان والصامت تلقائياً
        AudioManager am = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
        am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
    }
}
EOF

# 3. واجهة التطبيق بصورة الوالد
cat <<EOF > $APP_DIR/app/src/main/res/layout/activity_main.xml
<ScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent" android:layout_height="match_parent"
    android:background="@drawable/father_background">
    <LinearLayout android:orientation="vertical" android:layout_width="match_parent" 
        android:layout_height="wrap_content" android:padding="20dp" android:gravity="center">
        <TextView android:layout_width="wrap_content" android:layout_height="wrap_content"
            android:text="صدقة جارية عن روح محمد عبد العظيم الطويل" 
            android:textColor="#FFFFFF" android:textStyle="bold" android:textSize="22sp" 
            android:layout_marginBottom="30dp" android:gravity="center"/>
        <Button android:layout_width="match_parent" android:layout_height="60dp" android:text="القرآن الكريم"/>
        <Button android:layout_width="match_parent" android:layout_height="60dp" android:text="مواقيت الصلاة (أوفلاين)"/>
        <Button android:layout_width="match_parent" android:layout_height="60dp" android:text="الأذكار"/>
    </LinearLayout>
</ScrollView>
EOF