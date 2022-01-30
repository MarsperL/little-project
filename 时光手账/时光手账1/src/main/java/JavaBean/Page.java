package JavaBean;

import java.util.List;

public class Page {
    // ��ҳ��
    private int totalPageCount = 0;
    // ҳ���С����ÿҳ��ʾ��¼��
    private int pageSize = 3;
    // ��¼����
    private int totalCount;
    // ��ǰҳ��
    private int currPageNo = 1;
    // ÿҳ��վ����
    private List<Book> websiteList;
    public int getTotalPageCount() {
        return totalPageCount;
    }
    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        if (pageSize > 0)
            this.pageSize = pageSize;
    }
    public int getTotalCount() {
        return totalCount;
    }
    public void setTotalCount(int totalCount) {
        if (totalCount > 0) {
            this.totalCount = totalCount;
            // ������ҳ��
            totalPageCount = this.totalCount % pageSize == 0 ? (this.totalCount / pageSize)
                    : (this.totalCount / pageSize + 1);
        }
    }
    public int getCurrPageNo() {
        if (currPageNo == 0)
            return 0;
        return currPageNo;
    }
    public void setCurrPageNo(int currPageNo) {
        if (currPageNo > 0)
            this.currPageNo = currPageNo;
    }
    public List<Book> getWebsiteList() {
        return websiteList;
    }
    public void setWebsiteList(List<Book> websiteList) {
        this.websiteList = websiteList;
    }
}
