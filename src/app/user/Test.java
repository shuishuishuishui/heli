package app.user;

import java.util.ArrayList;

public class Test {
	public static void main(String[] args) {
		
		
	/*	
	 * ����ѧ����ʾѧ����Ϣ�Ĳ���
	 * String userid = "8530";
		EleveInfo eli = new EleveInfo();
		UserBean ub = eli.showEleveProfil(userid);
		System.out.println(ub.getGroupe());
		*/
		CommInfo cif = new CommInfo();
		String groupe ="A";
		ArrayList<CommBean> alist = cif.showGroupName(groupe);
		
		for(int i=0;i<alist.size();i++){
			CommBean cb = (CommBean) alist.get(i);
		
			System.out.println(	cb.getNom());
		}
		
		
	}
}
