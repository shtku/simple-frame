package com.softline.common;

import java.io.File;
import java.security.Security;

import com.softline.util.ThreeDes;


public class DES {
	
	/**
	 * 加密
	 * @param args
	 * @return
	 */
	public static String encryptMode(String args) {  
        String key ="BIMA.hnaholding.com";
        byte[] keyBytes;
		try {
			keyBytes = ThreeDes.getKeyBtyes(key);
			byte[] encoded = ThreeDes.encryptMode(keyBytes, args.getBytes());  
	        return ThreeDes.byte2hex(encoded);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
    }  
	/**
	 * 解密
	 * @param args
	 * @return
	 */
	public static String decryptMode(String args) {  
        String key ="BIMA.hnaholding.com";
        byte[] keyBytes;
		try {
			keyBytes = ThreeDes.getKeyBtyes(key);
			byte[] srcBytes = ThreeDes.decryptMode(keyBytes, ThreeDes.hexStringToByte(args));  
	        return new String(srcBytes);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
    }  
	
	
}
