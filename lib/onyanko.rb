# -*- coding: utf-8 -*-
require "onyanko/version"

module Onyanko
  class Member
    attr_reader :name, :number, :groups
    def initialize(number)
      if number.to_i > 52 || number.to_i < 1
        raise NotOnyankoError.new("not Onyanko member")
      end
      @number = number
      data = Array.new
      data << [1, "奥田美香", nil]
      data << [2, "榎田道子", nil]
      data << [3, "吉野佳代子", nil]
      data << [4, "新田恵利", nil]
      data << [5, "中島美春", nil]
      data << [6, "樹原亜紀", ["ニャンギラス"]]
      data << [7, "友田麻美子", nil]
      data << [8, "国生さゆり", ["国生さゆり with おニャン子クラブ"]]
      data << [9, "名越美香", ["ニャンギラス"]]
      data << [10, "佐藤真由美", nil]
      data << [11, "福永恵規", nil]
      data << [12, "河合その子", nil]
      data << [13, "内海和子", nil]
      data << [14, "富川春美", nil]
      data << [15, "立見里歌", ["ニャンギラス"]]
      data << [16, "高井麻巳子", ["うしろゆびさされ組"]]
      data << [17, "城之内早苗", nil]
      data << [18, "永田ルリ子", nil]
      data << [19, "岩井由紀子", ["うしろゆびさされ組"]]
      data << [20, "寺本容子", nil]
      data << [21, "五味岡たまき", nil]
      data << [22, "白石麻子", ["ニャンギラス", "国生さゆり with おニャン子クラブ"]]
      data << [23, "林香織", nil]
      data << [24, "三田文代", nil]
      data << [25, "吉沢秋絵", nil]
      data << [26, "赤坂芳恵", nil]
      data << [27, "松本亜紀", nil]
      data << [28, "横田睦美", nil]
      data << [29, "渡辺美奈代", ["国生さゆり with おニャン子クラブ"]]
      data << [30, "三上千晶", nil]
      data << [31, "矢島裕子", nil]
      data << [32, "山本スーザン久美子", nil]
      data << [33, "布川智子", nil]
      data << [34, "弓岡真美", nil]
      data << [35, "岡本貴子", nil]
      data << [36, "渡辺満里奈", nil]
      data << [37, "大貫かおり", nil]
      data << [38, "工藤静香", ["うしろ髪ひかれ隊"]]
      data << [39, "高畠真紀", nil]
      data << [40, "生稲晃子", ["うしろ髪ひかれ隊"]]
      data << [41, "貝瀬典子", nil]
      data << [42, "斉藤満喜子", ["うしろ髪ひかれ隊"]]
      data << [43, "守屋寿恵", nil]
      data << [44, "高田尚子", nil]
      data << [45, "吉田裕美子", nil]
      data << [46, "中島早苗", nil]
      data << [47, "山森由里子", nil]
      data << [48, "我妻佳代", nil]
      data << [49, "吉見美津子", nil]
      data << [50, "杉浦美雪", nil]
      data << [51, "宮野久美子", nil]
      data << [52, "鈴木和佳子", nil]
      data.each do |m|
        if @number == m[0]
          @name = m[1]
          @groups = m[2]
        end
      end
    end
  end
end
