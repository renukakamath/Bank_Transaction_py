package com.example.bank_transaction;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

public class UserHome extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE); //will hide the title
        getSupportActionBar().hide(); // hide the title bar
        this.getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.FLAG_FULLSCREEN); //enable full sc
        setContentView(R.layout.activity_user_home);

        ImageView b1 = findViewById(R.id.button2);
        ImageView b2 = findViewById(R.id.button1);
        ImageView b4 = findViewById(R.id.button4);
        ImageView b5 = findViewById(R.id.button5);
        ImageView b6 = findViewById(R.id.button6);
        ImageView b7 = findViewById(R.id.button7);
        ImageView b8 = findViewById(R.id.button8);
        ImageView b9 = findViewById(R.id.button9);

        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),ViewMyAccountDetails.class));
            }
        });

        b5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),AndroidBarcodeQrExample.class));
            }
        });


        b2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),IpSettings.class));
            }
        });


        b4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),SearchWithMobile.class));
            }
        });

        b6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),AvailableLoans.class));
            }
        });

        b7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),MyLoan.class));
            }
        });

        b8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),ViewEmployees.class));
            }
        });

        b9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
//                Toast.makeText(getApplicationContext(),"Registration Succesfull",Toast.LENGTH_LONG).show();
                startActivity(new Intent(getApplicationContext(),Complaints.class));
            }
        });
    }

    public void onBackPressed()
    {
        // TODO Auto-generated method stub
        super.onBackPressed();
        Intent b=new Intent(getApplicationContext(),UserHome.class);
        startActivity(b);
    }
}