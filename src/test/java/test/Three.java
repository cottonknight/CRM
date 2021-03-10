package test;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeUnit;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;


public class Three {
	 private static final OkHttpClient client = new OkHttpClient.Builder()
	            .connectTimeout(10, TimeUnit.SECONDS)
	            .writeTimeout(15, TimeUnit.SECONDS)
	            .readTimeout(15, TimeUnit.SECONDS)
	            .connectionPool(new ConnectionPool(10, 60, TimeUnit.SECONDS))
	            .retryOnConnectionFailure(true)
	            .build();
	   public static void main(String[] args) {

	        Request request = new Request.Builder()
	                .url("http://123.56.191.196:8080/a/a/d/list_slide_1_0.json")
	                .get()
	                .build();
	        //请求URL下载内容
	        try (Response response = client.newCall(request).execute()) {
	            if (!response.isSuccessful()) throw new IOException("Unexpected code " + response);
	            String responseText = response.body().string();
	            //转为json数组
	            JSONArray objects = JSON.parseArray(responseText);
	            for (int i = 0; i < objects.size(); i++) {
	                JSONObject jsonObject = objects.getJSONObject(i);
	                String photoUrl = jsonObject.getString("photo");
	                String title = jsonObject.getString("title");
	                //下载图片
	                downloadPicture(photoUrl, title);
	            }
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }
	    private static void downloadPicture(String url, String title) {
	        Request request = new Request.Builder()
	                .url(url)
	                .get()
	                .build();
	        try (Response response = client.newCall(request).execute()) {
	            if (!response.isSuccessful()) throw new IOException("Unexpected code " + response);
	            InputStream inputStream = response.body().byteStream();
	            String fileName = "D:\\data" + title + ".jpg";
	            FileOutputStream outputStream = new FileOutputStream(fileName);
	            byte[] data = new byte[1024];
	            int i, fileSize = 0;
	            while ((i = inputStream.read(data, 0, data.length)) > 0) {
	                outputStream.write(data, 0, i);
	                fileSize += i;
	            }
	            System.out.println("文件名：" + fileName);
	            System.out.println("文件大小：" + fileSize + "B");
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }
}
