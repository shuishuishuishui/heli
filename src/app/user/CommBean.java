package app.user;

public class CommBean {
	private String nom;
	private String prenom;
	private String groupe;
	private int ecouter;
	private int dialoguer;
	private int commOral;
	private int commEcrit;
	private int userid;

	public CommBean() {
		super();
	}

	public CommBean(int userid, String nom, String prenom, String groupe, int ecouter, int dialoguer, int commOral,
			int commEcrit) {
		super();
		this.userid = userid;
		this.nom = nom;
		this.prenom = prenom;
		this.groupe = groupe;
		this.ecouter = ecouter;
		this.dialoguer = dialoguer;
		this.commOral = commOral;
		this.commEcrit = commEcrit;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getGroupe() {
		return groupe;
	}

	public void setGroupe(String groupe) {
		this.groupe = groupe;
	}

	public int getEcouter() {
		return ecouter;
	}

	public void setEcouter(int ecouter) {
		this.ecouter = ecouter;
	}

	public int getDialoguer() {
		return dialoguer;
	}

	public void setDialoguer(int dialoguer) {
		this.dialoguer = dialoguer;
	}

	public int getCommOral() {
		return commOral;
	}

	public void setCommOral(int commOral) {
		this.commOral = commOral;
	}

	public int getCommEcrit() {
		return commEcrit;
	}

	public void setCommEcrit(int commEcrit) {
		this.commEcrit = commEcrit;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + commEcrit;
		result = prime * result + commOral;
		result = prime * result + dialoguer;
		result = prime * result + ecouter;
		result = prime * result + ((groupe == null) ? 0 : groupe.hashCode());
		result = prime * result + ((nom == null) ? 0 : nom.hashCode());
		result = prime * result + ((prenom == null) ? 0 : prenom.hashCode());
		result = prime * result + userid;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CommBean other = (CommBean) obj;
		if (commEcrit != other.commEcrit)
			return false;
		if (commOral != other.commOral)
			return false;
		if (dialoguer != other.dialoguer)
			return false;
		if (ecouter != other.ecouter)
			return false;
		if (groupe == null) {
			if (other.groupe != null)
				return false;
		} else if (!groupe.equals(other.groupe))
			return false;
		if (nom == null) {
			if (other.nom != null)
				return false;
		} else if (!nom.equals(other.nom))
			return false;
		if (prenom == null) {
			if (other.prenom != null)
				return false;
		} else if (!prenom.equals(other.prenom))
			return false;
		if (userid != other.userid)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ComBean [nom=" + nom + ", prenom=" + prenom + ", groupe=" + groupe + ", ecouter=" + ecouter
				+ ", dialoguer=" + dialoguer + ", commOral=" + commOral + ", commEcrit=" + commEcrit + ", userid="
				+ userid + "]";
	}

}
