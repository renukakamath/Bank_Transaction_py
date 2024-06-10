package com.example.bank_transaction;

import android.app.Activity;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class Cust_aloan extends ArrayAdapter<String>  {

    private Activity context;       //for to get current activity context
    SharedPreferences sh;
    private String[] loan;
    private String[] details;

    private String[] intrest_name;
    private String[] max_amount;
//    private String[] sts;





    public Cust_aloan(Activity context, String[] loan, String[] details, String[] intrest_name, String[] max_amount) {
        //constructor of this class to get the values from main_activity_class

        super(context, R.layout.activity_cust_aloan,loan);
        this.context = context;

        this.loan = loan;

        this.details = details;
        this.intrest_name = intrest_name;
        this.max_amount = max_amount;
//        this.sts = sts;




    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        //override getView() method

        LayoutInflater inflater = context.getLayoutInflater();
        View listViewItem = inflater.inflate(R.layout.activity_cust_aloan, null, true);
        //cust_list_view is xml file of layout created in step no.2

//	        ImageView im = (ImageView) listViewItem.findViewById(R.id.imageView1);
        TextView t1=(TextView)listViewItem.findViewById(R.id.names);

//        TextView t2=(TextView)listViewItem.findViewById(R.id.griv);
//			TextView t3=(TextView)listViewItem.findViewById(R.id.det);
//			TextView t4=(TextView)listViewItem.findViewById(R.id.reply);
//			TextView t5=(TextView)listViewItem.findViewById(R.id.date);
        t1.setText("Loan: "+loan[position]+"\nDetails: "+details[position]+"\nInterest name: "+intrest_name[position]+ "\nMax Amount: "+max_amount[position]);
//        t2.setText(grivenc[position]);
//			t3.setText(detail[position]);
//			t4.setText(reply[position]);
//			t5.setText(date[position]);

//	       Toast.makeText(context, pth, Toast.LENGTH_LONG).show();

        return  listViewItem;
    }

    private TextView setText(String string) {
        // TODO Auto-generated method stub
        return null;
    }
}