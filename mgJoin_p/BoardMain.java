package mgJoin_p;

import java.util.ArrayList;

public class BoardMain {

	public static void main(String[] args) {
		ArrayList<BoardDTO> arr = new BoardDAO().list();
		
		for (BoardDTO dto : arr) {
			System.out.println(dto);
		}

	}

}
