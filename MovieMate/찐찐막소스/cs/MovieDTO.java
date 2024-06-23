/**============================
 * 작성자 : whtk
 * 작성일 : 2024. 6. 24.
 * 기능 : 
 ============================*/
package cs;

/**
 * @author whtk
 *
 */
public class MovieDTO {
	   public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	private String id;  // 게시판 아이디를 저장하는 변수
	   private String title; // 작성자 닉네임을 저장하는 변수
	   private String summary; // 글 제목을 저장하는 변수
	   private String release_date; // 글 내용을 저장하는 변수
	   private int rating;
	   private String genre;
	   private String country;
	   private String runtime;
	   private String filename;
	   
	   public MovieDTO(String title, String summary, String release_date, int rating, String genre, String country,
	   String runtime, String filename) {
		   super();
		   this.title = title;
		   this.summary = summary;
		   this.release_date = release_date;
		   this.rating = rating;
		   this.genre = genre;
		   this.country = country;
		   this.runtime = runtime;
		   this.filename = filename;
}
}
