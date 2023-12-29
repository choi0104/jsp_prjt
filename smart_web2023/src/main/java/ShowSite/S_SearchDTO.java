package ShowSite;

//list.jsp에서 검색관련 데이터를 저장할 수 있는 DTO
public class S_SearchDTO {
	private String searchField;
	private String searchWord;
	public String getSearchField() {
		return searchField;
	}
	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
}
