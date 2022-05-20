// UITableViewDataSource
// 테이블 뷰를 생성하고 수정하는데 필요한 정보를 테이블 뷰 객체에 제공
// Created by 이윤석 on 2022/05/20.
//
import Foundation


public protocol UITableViewDataSource : NSObjectProtocol {
    
    // 각 섹션에 표시할 행의 개수를 묻는 메소드
    func tableView(_ tableView: UITableView, numberOfRowsInsection section: Int) -> Int
    
    // 특정 인덱스 Row의 Cell에 대한 정보를 넣어 Cell을 반환하는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    // 총 섹션 개수를 묻는 메소드
    optional func numberOfSections(int tableView: UITableView) -> Int
    
    // 특정 섹션의 헤더 타이틀을 묻는 메소드
    optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    
    // 특정 위치의 행이 편집 가능한지 묻는 메소드
    optional func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    
    // 특정 위치의 행을 재정렬 할 수 있는지 묻는 메서드
    optional func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
    
    // 테이블 뷰 섹션 인덱스 타이틀을 묻는 메서드
    optional func sectionIndexTitles(for tableView: UITableView) -> [String]?
    
    // 인덱스에 해당하는 섹션을 알려주는 메서드
    optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
    
    // 스와이프 모드, 편집 모드에서 버튼을 선택하면 호출 되는 메서드
    // 해당 메서드에서는 행에 변경사항을 Commit godi gka
    optional func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    
    // 행이 다른 위치로 이동되면 어디에서 어디로 이동했는지 알려주는 메서드
    optional func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}

// UITableViewDelegate
// 테이블 뷰의 시각적인 부분을 설정하고, 행의 액션 관리, 액세서리 뷰 지원 그리고 테이블 뷰의 개별 행 편집을 도와줌
// Created by 이윤석 on 2022/05/20.
//
public protocol UITableViewDelegate: UIScrollViewDelegate {
    // 행이 선택되었을 때 호출되는 메서드
    optional func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    
    // 행이 선택해제되었을 때 호출되는 메서드
    optional func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    
    // 특정 위치 행의 높이를 묻는 메서드
    optional func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    
    // 지정된 섹션의 헤더 뷰 또는 푸터뷰에 표시할 View가 어떤 건지 묻는 메서드
    optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
    
    // 테이블 뷰가 편집 모드에 들어갔을 때 호출되는 메서드
    optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    
    // 테이블 뷰가 편집 모드에 들어갔을 때 호출되는 메서드
    optional func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath)
    
    // 테이블 뷰가 편집 모드에서 빠져나왔을 때 호출되는 메서드
    optional func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?)
    
    // 테이블 뷰가 셀을 사용하여 행을 그리기 직전에 호출되는 메서드
    optional func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAtndexPath: IndexPath)
    
    // 테이블 뷰로부터 셀이 화면에 사라지면 호출되는 메서드
    optional func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, rRowAt indexPath: IndexPath)
}
