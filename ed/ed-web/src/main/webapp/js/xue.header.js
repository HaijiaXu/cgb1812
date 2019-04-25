/*******************************************
 *
 * 活动专题页公共头尾业务逻辑方法封装
 * @authors Du xin li
 * @date    2017-11-23
 *  
 *********************************************/

var xueTopic = xueTopic || {};
xueTopic.fn = xueTopic.fn || {};
//搜索相关对象
xueTopic.search = xueTopic.search || {};
//点击搜索按钮时的请求url
xueTopic.search.path = 'search-1.htm'/*tpa=http://www.xueersi.com/search*/;

//活动专题页公共头尾需要用到的元素框架
xueTopic.box = { 
  //搜索框元素层
  searchBox: '#xue-topic-header-search-box',
  //搜索文本框父级div元素
  searchParent: '.xue-topic-search-box',
  //搜索文本框元素
  searchInput: '#xue-topic-search-input',
  //搜索按钮元素
  searchBtn: '#xue-topic-search-btn',
  //历史搜索弹层
  historySearchLayer: '#xue-topic-historySearch-list',
  //热词框元素
  hotWordBox: '.xue-topic-hotWord-box',
  //删除历史记录按钮
  delAllSearchBtn: '.xue-topic-delAllHistorySeach'
};

/**
 * 匿名方法封装，防止污染全局方法
 */
(function (mf) {
  /******----------------------[搜索相关方法]-----------------------******/

  /**
   * 搜索框获取焦点方法
   */
  mf.searchFocus = function () {
    //搜索框元素
    var searchBox = $(xueTopic.box.searchBox),
        //搜索历史列表框元素
        historySearchBox = searchBox.find(xueTopic.box.historySearchLayer);
    //获取焦点热点词消失
    searchBox.find(xueTopic.box.hotWordBox).hide();

    /****------判断是否存在历史搜索记录，如果存在则需弹出历史搜索记录列表弹层------****/

    //获取历史搜索记录列表数
    var historyLen = historySearchBox.find('li').length;
    //如果historyLen >0说明存在历史搜索记录，则需要显示历史搜索记录弹层
    if ( historyLen > 0 ) {
      //计算历史记录弹层的高度，为了动画效果，默认的时候高度为0
      var listHeight = historySearchBox.find('ul').outerHeight(true);
      //给列表框赋值高度
      historySearchBox.css({
        height: listHeight
      });
      //获取焦点列表框和历史记录框的动画效果
      searchBox.find(xueTopic.box.searchParent).addClass('xue-topic-search-showing');
      historySearchBox.removeClass('xue-topic-historyList-hiding');
    }
  }

  /**
   * 搜索框失去焦点方法
   * @param {Number | String} type 判断搜索框失去焦点效果的类型 1、失去搜索框正常情况，即不删除历史搜索的情况和点击历史搜索的情况，2、点击删除全部历史搜索列表情况
   */
  mf.searchBlur = function (type) {
    //失去焦点时，搜索框内容为空，则显示热点词，否则不显示热词
    //搜索框元素
    var searchBox = $(xueTopic.box.searchBox),
        //搜索历史列表框元素
        historySearchBox = searchBox.find(xueTopic.box.historySearchLayer),
        //获取搜索框内容
        searchVal = $.trim($(xueTopic.box.searchInput).val());
    //如果搜索框内容为空，则重新显示热点词
    if( searchVal == '' ){
      //显示热点词
      searchBox.find(xueTopic.box.hotWordBox).show();
    }
    //获取历史搜索记录列表数
    var historyLen = historySearchBox.find('li').length;
    //如果historyLen >0 说明存在历史搜索，则需要隐藏历史搜索记录弹层
    if ( historyLen > 0) {
      searchBox.find(xueTopic.box.searchParent).removeClass('xue-topic-search-showing');
      historySearchBox.addClass('xue-topic-historyList-hiding');
    }
    //根据type判断是否删除历史搜索列表
    type = Number(type);
    switch (type) {
      //删除全部历史搜索列表情况
      case 2:
        //清空历史搜索列表
        historySearchBox.find('li').remove();
        console.log(43)
        break;
    }
  }

  /**
   * 点击搜索方法
   */
  mf.search = function () {
    //获取搜索框的内容
    var searchVal = $.trim($(xueTopic.box.searchInput).val());
    //判断搜索框内容是否为空
    if ( searchVal == '' ) {
        return false;
    }
    //拼接请求地址
    var url = xueTopic.search.path += '?keyword=' + searchVal + '&category=1005';
    window.location.href = url;
  }

  /**
   * 删除所有历史搜索方法
   */
  mf.delAllHistorySeach = function () {
    var stuId = '1489370';
    var isAllDelete = 1;
    var _t = this;
    $.ajax({
      url: 'allDeleteStuSearchHistory-1.htm'/*tpa=http://www.xueersi.com/HotWords/allDeleteStuSearchHistory*/,
      type: 'get',
      dataType: 'json',
      data: {
        stu_id: stuId,
        isAllDelete: isAllDelete
      },
      success: function(data) {
        if (data.stat == 1) {
            _t.searchBlur(2);
        }else{
          alert("删除失败");
        }
      }
    });
  }

  /**
   * 点击历史搜索列表方法
   * @param {Object} obj 当前点击元素节点
   */
  mf.clickSearchList = function (obj) {
    //获取当前选择的历史搜索值
    var historyVal = $(obj).find('a').text();
    //搜索框赋值当前选择历史搜索值
    $(xueTopic.box.searchInput).val(historyVal);
    //调用隐藏历史搜索列表方法
    this.searchBlur(1);
  }

  // ----------------------- 【 点击整个页面事件相关 】 ---------------------- //
  
  /**
   * 点击空白区域隐藏选择地区定位弹层方法
   * @param {Object} e 当前节点元素对象
   */
  mf.clickDocument = function(e){
    //过滤掉搜索框元素和历史搜索列表框
    if( !($(e.target).hasClass('xue-topic-search-input') || ($(e.target).hasClass('xue-topic-historySearch-list') || $(e.target).closest(xueTopic.box.historySearchLayer).hasClass('xue-topic-historySearch-list'))) ){
        this.searchBlur(1);
    } 
  }
})(xueTopic.fn);

/*******************************************
 *
 * 活动专题页公共头尾业务事件绑定
 * @authors Du xin li
 * @date    2017-11-23
 *  
 *********************************************/

$(function () {
  
  // ----------------------- 【 搜索框相关事件 】 ---------------------- //
  
  //搜索框获取焦点事件
  $('body').off('focus', xueTopic.box.searchInput).on('focus', xueTopic.box.searchInput, function() {
    xueTopic.fn.searchFocus();
  })
  //点击搜索按钮事件
  $('body').off('click', xueTopic.box.searchBtn).on('click', xueTopic.box.searchBtn, function() {
    xueTopic.fn.search();
  })
  //搜索框按enter键事件
  $('body').off('keydown', xueTopic.box.searchInput).on('keydown', xueTopic.box.searchInput, function(e) {
    if( e.keyCode == 13 ) {
      //按enter键搜索
      xueTopic.fn.search();
    }
  })
  //删除所有历史搜索按钮事件
  $('body').off('click', xueTopic.box.delAllSearchBtn).on('click', xueTopic.box.delAllSearchBtn, function() {
    xueTopic.fn.delAllHistorySeach();
  })
  //点击历史搜索列表事件
  $('body').off('click', xueTopic.box.historySearchLayer + ' li').on('click', xueTopic.box.historySearchLayer + ' li', function() {
    xueTopic.fn.clickSearchList(this);
  })

  // ----------------------- 【 点击整个页面事件相关 】 ---------------------- //
  $(document).on('click', function(e) {
    xueTopic.fn.clickDocument(e);
  })
})




