class Scraping

  def self.lcategory # 大カテゴリーのテキストを取得、テーブルに保存
    agent = Mechanize.new
    names = []
    page = agent.get("https://www.mercari.com/jp/category/")
    elements = page.search('.category-list-individual-box h3')
    elements.each do |ele|
      names << ele.inner_text
    end
    names.each do |name|
      save_lcategory_name(name)
    end
  end

  def self.save_lcategory_name(str)
    name = str.gsub(" ", "").gsub("すべて", "")
     lcategory = L_category.new(name: name)
     lcategory.save
    # puts name
  end

  def self.mcategory  # 大カテゴリーのテキストを取得、テーブルに保存

   agent = Mechanize.new
   names = []
   page = agent.get("https://www.mercari.com/jp/category/")
   elements = page.search(" .category-list-individual-box-sub-category-name h4")
   elements.each do |ele|
     names << ele.inner_text
   end
   names.each do |name|
     save_mcategory(name)
   end
 end

 def self.save_mcategory(str)
   name = str.gsub(" ", "").gsub("すべて", "")
   mcategory = M_category.new(name: name)#.first_or_initialize
   mcategory.save
   puts name
 end

  def self.scategory  # 小カテゴリーのテキストを取得、テーブルに保存

   agent = Mechanize.new
   names = []
   page = agent.get("https://www.mercari.com/jp/category/")
   elements = page.search(" .category-list-individual-box-sub-sub-category-name a")
   elements.each do |ele|
     names << ele.inner_text
   end
   names.each do |name|
     save_scategory(name)
   end
 end

 def self.save_scategory(str)
   newstr = str.gsub(/[\r\n]/,"")
   name = newstr.gsub(" ", "").gsub("すべて", "")
   scategory = S_category.new(name: name)#.first_or_initialize
   scategory.save
   # puts name
 end
end
