package com.faceunity.fulivedemo;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class authpack {
	public static int sha1_32(byte[] buf){int ret=0;try{byte[] digest=MessageDigest.getInstance("SHA1").digest(buf);return ((int)(digest[0]&0xff)<<24)+((int)(digest[1]&0xff)<<16)+((int)(digest[2]&0xff)<<8)+((int)(digest[3]&0xff)<<0);}catch(Exception e){}return ret;}
	public static byte[] A(){
		int bufLen = 1024;
		byte[] buf=new byte[bufLen];
		int i=0;
		//请替换证书

		return buf;
	}
}
