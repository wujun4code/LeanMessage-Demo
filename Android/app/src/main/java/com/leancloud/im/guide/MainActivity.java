package com.leancloud.im.guide;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.AVIMException;
import com.avos.avoscloud.im.v2.callback.AVIMClientCallback;

public class MainActivity extends BaseActivity {
  EditText clientIdEditText;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    if (!TextUtils.isEmpty(Application.getClientIdFromPre())) {
      openClient(Application.getClientIdFromPre());
    }

    setContentView(R.layout.activity_main);
    clientIdEditText = (EditText) findViewById(R.id.client_id);

    findViewById(R.id.login).setOnClickListener(new View.OnClickListener() {
      @Override
      public void onClick(View view) {
        final String selfId = clientIdEditText.getText().toString();
        if (!TextUtils.isEmpty(selfId)) {
          Application.setClientIdToPre(selfId);
          openClient(selfId);
        }
      }
    });
  }

  public void openClient(String selfId) {
    AVIMClient imClient = AVIMClient.getInstance(selfId);
    imClient.open(new AVIMClientCallback() {
      @Override
      public void done(AVIMClient avimClient, AVIMException e) {
        if (filterException(e)) {
          Intent intent = new Intent(MainActivity.this, ConversationActivity.class);
          startActivity(intent);
          finish();
        }
      }
    });
  }
}
