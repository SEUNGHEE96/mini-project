package main;

import episodes.EpisodesDTO;
import java.util.HashMap;
import java.util.List;

public interface NovelService {

    //νμ
    public NovelDTO getOneNovel(int id);

    public int getTotalNovel(int id);

    public List<EpisodesDTO> getNovelList(int id, int limit);

    public int updateViewCount(int id);

    public void insertCart(int user_id, Integer episode_id);

    public void insertLibraries(int user_id, Integer episode_id);

    public void updateSand(int novel_cnt, int user_id);

    public List<Integer> getLibraries(int user_id);

    //μΉν¬
    public List<HashMap<Object, Object>> getNumberOfNovels();

    public List<NovelDTO> getNewNovels(int page);

    public List<NovelDTO> getRomanceNovels(int page);

    public List<NovelDTO> getFantasyNovels(int page);

    public List<NovelDTO> getBLNovels(int page);

    public List<NovelDTO> searchSimple(NovelDTO dto);

}
 