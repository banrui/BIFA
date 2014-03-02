class UsersController < ApplicationController
  def data
  end
  def index
   unless cookies[:count]
     cookie_count = 0 
     cookies[:count] = cookie_count
   else
    cookie_count = cookies[:count].to_i
    cookies[:count] = cookie_count + 1
   end
   #data
    @inEntry =[
   {"name"=>"@kazudance_11", "point"=>300, :country =>"1.png", :photo =>"1_2.jpg"},
   {"name"=>"@inagarchi_gazzetta", "point"=>200, :country =>"2.jpeg", :photo =>"1_1.jpg"},
   {"name"=>"@asahi_soccer1", "point"=>100, :country =>"1.png", :photo =>"1_3.png"},
   {"name"=>"@Inagaki7K", "point"=>150, :country =>"1.png", :photo =>"1_4.jpg"},
   {"name"=>"@masa_ariyoshi", "point"=>200, :country =>"1.png", :photo =>"1_5.jpeg"},
   {"name"=>"@michiamochu", "point"=>300, :country =>"1.png", :photo =>"1_6.jpeg"},
   {"name"=>"@nezumi32", "point"=>400, :country =>"1.png", :photo =>"1_7.jpeg"},
   {"name"=>"@hira_ryuu", "point"=>450, :country =>"1.png", :photo =>"1_8.jpg"},
   {"name"=>"@banrui", "point"=>600, :country =>"1.png", :photo =>"1_9.JPG"},
   {"name"=>"@Take_OKD", "point"=>799, :country =>"1.png", :photo =>"1_10.jpeg"},
   {"name"=>"@asahi", "point"=>300, :country =>"1.png", :photo =>"1_11.png"},
   {"name"=>"@Sergio_Echizen_", "point"=>200, :country =>"1.png", :photo =>"1_12"},
   {"name"=>"name13", "point"=>100, :country =>"1.png", :photo =>"1_13"},
   {"name"=>"name14", "point"=>150, :country =>"1.png", :photo =>"1_14"},
   {"name"=>"name15", "point"=>200, :country =>"1.png", :photo =>"1_15"},
   {"name"=>"name16", "point"=>300, :country =>"1.png", :photo =>"1_16"},
   {"name"=>"name17", "point"=>400, :country =>"1.png", :photo =>"1_17"},
   {"name"=>"name18", "point"=>450, :country =>"1.png", :photo =>"1_18"},
   {"name"=>"name19", "point"=>600, :country =>"1.png", :photo =>"1_19"},
   {"name"=>"name20", "point"=>799, :country =>"1.png", :photo =>"1_20"}
   ]
   outEntryList = resortEntryCtr(@inEntry)
   
   # for debug
   puts "--  output Data ---"
   outEntryList.each{|eachEntry|
     puts "name=>#{eachEntry["name"]} point=>#{eachEntry["point"]} country=>#{eachEntry["country"]}"
    
   }
   
   if cookies[:count].to_i%3 == 0
     @user_array =[
       {"name"=>"@banrui", "point"=>965, :country =>"1.png", :photo =>"1_9.JPG"},
       {"name"=>"@kazudance_11", "point"=>823, :country =>"1.png", :photo =>"1_2.jpg"},
       {"name"=>"@asahi_soccer1", "point"=>783, :country =>"1.png", :photo =>"1_3.png"},
       {"name"=>"@Inagaki7K", "point"=>776, :country =>"1.png", :photo =>"1_4.jpg"},
       {"name"=>"@masa_ariyoshi", "point"=>773, :country =>"1.png", :photo =>"1_5.jpeg"},
       {"name"=>"@michiamochu", "point"=>769, :country =>"1.png", :photo =>"1_6.jpeg"},
       {"name"=>"@inagarchi_gazzetta", "point"=>755, :country =>"2.jpeg", :photo =>"1_1.jpg"},
       {"name"=>"@nezumi32", "point"=>736, :country =>"1.png", :photo =>"1_7.jpeg"},
       {"name"=>"@hira_ryuu", "point"=>625, :country =>"1.png", :photo =>"1_8.jpg"},     
       {"name"=>"@Take_OKD", "point"=>620, :country =>"1.png", :photo =>"1_10.jpeg"},
       {"name"=>"@asahi", "point"=>588, :country =>"1.png", :photo =>"1_11.png"},
       {"name"=>"@Sergio_Echizen_", "point"=>557, :country =>"1.png", :photo =>"1_12"},
       {"name"=>"name13", "point"=>381, :country =>"1.png", :photo =>"1_13"},
       {"name"=>"name14", "point"=>371, :country =>"1.png", :photo =>"1_14"},
       {"name"=>"name15", "point"=>367, :country =>"1.png", :photo =>"1_15"},
       {"name"=>"name16", "point"=>200, :country =>"1.png", :photo =>"1_16"},
       {"name"=>"name17", "point"=>146, :country =>"1.png", :photo =>"1_17"},
       {"name"=>"name18", "point"=>96, :country =>"1.png", :photo =>"1_18"},
       {"name"=>"name19", "point"=>47, :country =>"1.png", :photo =>"1_19"},
       {"name"=>"name20", "point"=>45, :country =>"1.png", :photo =>"1_20"}
    ]
  else
    @user_array = outEntryList
  end

  end
 
  def resortEntryCtr(entryList)
    resortEntryList = Array.new(0)
    resortEntryHash = Hash.new(0)  #リソート用ハッシュ
    #ポイントの入れ替え
    entryList.each{|eachEntry|
      randPoint =  rand(1000) + 1
      eachEntry["point"] = randPoint
      resortEntryHash[randPoint] = eachEntry
    }
    #リソート
    resortEntryHash.sort.each{|point,eachEntry|
      resortEntryList << eachEntry
    }
    return resortEntryList.reverse
  end
  
  def country_master
    if params[:cid] == "col"    
      result = {:country => "col", "players" => [{:num => "1", :name => "David Ospina"},
              {:num => "2", :name => "Faryd Mondragon"},
              {:num => "3", :name => "Camilo Vargas"}, 
              {:num => "4", :name => "Mario Yepes"},
              {:num => "5", :name => "Luis Amaranto"},
              {:num => "6", :name => "Pablo Armero"},
              {:num => "7", :name => "Cristian Zapata"},
              {:num => "8", :name => "Santiago Arias"},
              {:num => "8", :name => "Stefan Medina"},
              {:num => "9", :name => "Eder Alvarez Balanta"},
              {:num => "10", :name => "Fredy Guarin"}, 
              {:num => "11", :name => "Abel Aguilar"},
              {:num => "12", :name => "Carlos Alberto Sanchez Moreno"},
              {:num => "13", :name => "Macnelly Torres"}, 
              {:num => "14", :name => "Aldo Leao Ramirez"},
              {:num => "15", :name => "Juan Guillermo Cuadrado"},
              {:num => "16", :name => "James Rodriguez"},
              {:num => "17", :name => "Edwin Valencia"},
              {:num => "18", :name => "Alexander Mejia"},
              {:num => "19", :name => "Victor Ibarbo"},
              {:num => "20", :name => "Juan Fernando Quintero"},
              {:num => "21", :name => "Teofilo Gutierrez"},
              {:num => "22", :name => "Jackson Martinez"},
              {:num => "23", :name => "Adrian Ramos"}]}
    elsif params[:cid] == "gre"   
      result = {:country => "gre", "players" => [{:num => "1", :name => "a"},
        {:num => "2", :name => "a"},
        {:num => "3", :name => "a"}, 
        {:num => "4", :name => "a"},
        {:num => "5", :name => "a"},
        {:num => "6", :name => "a"},
        {:num => "7", :name => "a"},
        {:num => "8", :name => "a"},
        {:num => "8", :name => "a"},
        {:num => "9", :name => "a"},
        {:num => "10", :name => "a"}, 
        {:num => "11", :name => "a"},
        {:num => "12", :name => "a"},
        {:num => "13", :name => "a"}, 
        {:num => "14", :name => "a"},
        {:num => "15", :name => "a"},
        {:num => "16", :name => "a"},
        {:num => "17", :name => "a"},
        {:num => "18", :name => "a"},
        {:num => "19", :name => "a"},
        {:num => "20", :name => "a"},
        {:num => "21", :name => "a"},
        {:num => "22", :name => "a"},
        {:num => "23", :name => "a"}]}
    elsif params[:cid] == "cot"
      result = {:country => "cat", "1" => "a", "2" => "b"}
    else
      result = {:country => "jpn", "players" => [{:num => "1", :name => "Eiji Kawashima"},
              {:num => "2", :name => "Shusaku Nishikawa"},
              {:num => "3", :name => "Shuichi Gonda"}, 
              {:num => "4", :name => "Yuichi Komano"},
              {:num => "5", :name => "Yasuyuki Konno"},
              {:num => "6", :name => "Yuto Nagatomo"},
              {:num => "7", :name => "Maya Yoshida"},
              {:num => "8", :name => "Masahiko Inoha"},
              {:num => "8", :name => "Hiroki Sakai"},
              {:num => "9", :name => "Gotoku Sakai"},
              {:num => "10", :name => "Masato Morishige"}, 
              {:num => "11", :name => "Yasuhito Endo"},
              {:num => "12", :name => "Shinji Kagawa"},
              {:num => "13", :name => "Keisuke Honda"}, 
              {:num => "14", :name => "Hajime Hosogai"},
              {:num => "15", :name => "Hiroshi Kiyotake"},
              {:num => "16", :name => "Hotaru Yamaguchi"},
              {:num => "17", :name => "Manabu Saito"},
              {:num => "18", :name => "Toshihiro Aoyama"},
              {:num => "19", :name => "Shinji Okazaki"},
              {:num => "20", :name => "Yoichiro Kakitani"},
              {:num => "21", :name => "Yuya Osako"},
              {:num => "22", :name => "Masato Kudo"},
              {:num => "23", :name => "Atsuto Uchida"}]}
    end
    render :json => result.to_json
  end
end
