<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/aboutus.css">
</head>
<body>
    <header>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <div class="brand-area">
            <a class="brand-logo"><img class="brand-image" src="image/logo.png" width="150" height="35"  /></a>
            <div class="cart">
              <a href="cart.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
              </svg></a>
            </div>
        </div>
       
        <div class="navbar">
      <a class="active" href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
      <div class="dropdown">
        <button class="dropbtn"><i class="fa fa-fw fa-search"></i>商品快搜
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
			<%
		try {
		//載入資料庫驅動程式 
			Class.forName("com.mysql.jdbc.Driver");
			try {
		//建立連線 	
				String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
				String sql="";
				Connection con=DriverManager.getConnection(url,"root","up654xu;6");
				if(con.isClosed())
				   out.println("連線建立失敗");
				else {
		//選擇資料庫   
						sql="use np";
						con.createStatement().execute(sql);
		//執行 SQL 指令
						sql = "SELECT DISTINCT `name`,`type` FROM `product` ORDER BY `type` ";
						ResultSet rs=  con.createStatement().executeQuery(sql);
						while(rs.next()){
							String str =rs.getString(1);
							String num =rs.getString(2);
							out.print("<a href='good.jsp?ptype="+num+"'>"+str+"</a>&nbsp;");
						}
					}
				}
			catch (SQLException sExec) {
				   out.println("SQL錯誤"+sExec.toString());
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("class錯誤"+err.toString());
		}
		%>
        </div>
      </div>
      <a href="shop.jsp">商店</a>
      <a href="aboutus.jsp">關於我們</a>
      <a href="policy.jsp">政策</a>
      <div class="nav-right"><a href="contact.jsp"><i class="fa fa-fw fa-envelope"></i> 聯絡我們</a>
      <%
		try {
		//載入資料庫驅動程式 
			Class.forName("com.mysql.jdbc.Driver");
			try {
		//建立連線 	
				String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
				String sql="";
				Connection con=DriverManager.getConnection(url,"root","up654xu;6");
				if(con.isClosed())
				   out.println("連線建立失敗");
				else {
		//選擇資料庫   
					   sql="use np";
					   con.createStatement().execute(sql);
		//執行 SQL 指令	          
						String name = "";
						if(session.getAttribute("name")!=null ){  //session讓他變成字串
							name = session.getAttribute("name").toString();
							out.print("<a href='member.jsp'><i class='fa fa-fw fa-user'></i>"+name+"</a><a href='logout.jsp'><i class='fa fa-fw fa-user'></i>登出</a>");
							con.close();
						}
						else{
							out.print("<a href='login.jsp'><i class='fa fa-fw fa-user'></i>登入</a>");
							con.close();
						}
					}
				}
			catch (SQLException sExec) {
				   out.println("SQL錯誤"+sExec.toString());
			}
		}
		catch (ClassNotFoundException err) {
		   out.println("class錯誤"+err.toString());
		}	
		%>
		</div>
      </div>
        </header>
        <h1>沿革</h1>
        <section class="body2">
        <div class="timeline">
            <div class="container left">
              <div class="content">
                <h2>2021</h2>
                <p>中原著衣有限公司成立</p>
              </div>
            </div>
            <div class="container right">
              <div class="content">
                <h2>2022</h2>
                <p>開始發展電商業務，官方電商網站設立</p>
              </div>
            </div>
          </div>
        </section>
        <section>
            <h1>我們的堅持</h1>
            <div class="h3-container">
                <h3>
                    在追尋時尚的旅程裡，我們一路堅持、不停嘗試，
                    只希望在無數可能之中，選出專屬於自己的風景。</h3>
                    
                <h3>為了讓每個顧客，都能找到最好、最新、最精彩的選擇。
                    我們貫徹最尖端的流行趨勢。</h3> 
                    
                <h3>為了讓每個顧客，都能找到最好、最新、最精彩的選擇。
                        我們隨著時間的淬鍊、美感的精進、品質的革新，
                    不但衣著款式更加迷人，也回歸了最簡單的初衷－</h3> 
                    
                    <h3>「認真做好每件衣服，分享讓人自信的單純感動。
                    力求最舒適的手感、堅持最用心的服務。」</h3> 
            </div>
        </section>
        <section>
            <h1>團隊</h1>
            <div class="row">
                <div class="column">
                  <div class="card">
                    <img src="image/p1.jpg" alt="yao" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>張維銚</h2>
                      <p class="title">組長</p>
                      <p>前端設計人員</p>
                      <p>980072g@gmail.com</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
              
                <div class="column">
                  <div class="card">
                    <img src="image/p2.jpg" alt="thomas" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>楊宗霖</h2>
                      <p class="title">組員</p>
                      <p>前端設計人員</p>
                      <p>thomas.yang3939@gmail.com</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
              
                <div class="column">
                  <div class="card">
                    <img src="image/p3.jpg" alt="howard" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>徐睿智</h2>
                      <p class="title">組員</p>
                      <p>前端設計人員</p>
                      <p>howardhsu9@hotmail.com</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
				
				<div class="column">
                  <div class="card">
                    <img src="image/p4.jpg" alt="yao" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>林鑫磊</h2>
                      <p class="title">組長</p>
                      <p>後端設計人員</p>
                      <p>michael168888@gmail.com</p>
					  <p>首先，感謝前端的團隊能提早完成網頁版面設計，使我們能有充分的時間進行後端動態網頁系統的開發。我分配到工作有「會員註冊(含所有網頁登入控制)」、「忘記密碼」、「網頁計數器」、「隨機廣告板」、「最新特惠消息跑馬燈公告」、「留言板」、「五星評價」及「購物車保留1個月以上」等加分功能，為了避免系統發生錯誤，除了前端版面設計的除錯外，我也一併考量各種可能發生問題的地方進行規劃、撰寫、測試，如期完成一個嚴謹不易出錯的購物網站。整個開發過程中，我應用到了「多媒體程式設計」、「資料庫管理」及「網路程式設計」課程所學到的各種技巧，深刻了解到這些課程的重要性及實用性。除了我自己負責的部份外，另外也陪同組員完成其它各個功能，看著系統從單純的靜態網頁，逐漸開發出我們想要的各項動態功能，真是一件令人感動並很有成就感的事情。從前端玩到後端，及從產品清單製作、產品進階搜尋、庫存管理、購物車、隨機廣告等的程式撰寫，讓我對網頁系統開發也有更深一層的體會。真的非常感謝老師能給我們這次做中學的寶貴經驗，讓我學習到如何與不同夥伴們互相溝通、分工合作，以順利完成專案。 </P>
                      <p><button class="button"><a href="back">Contact</a></button></p>
                    </div>
                  </div>
                </div>
				
				<div class="column">
                  <div class="card">
                    <img src="image/p5.jpg" alt="yao" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>鄞志良</h2>
                      <p class="title">組員</p>
                      <p>後端設計人員</p>
                      <p>yinzl7592@gmail.com</p>
					  <p>雖然在大三的時候我就已經修了資料庫系統了，但我還是對資料庫的應用不熟悉，不知道資料庫的內容如何用到其他地方，此課程真的是讓我學到許多東西，它讓我知道如何利用java語言取得資料庫的內容，期末的網頁設計是我最期待的，能看著自己做出來的網頁一步步成形，如何解決眼前面臨的bug，真的是蠻有成就感的，非常感謝老師給我們這個專題的機會，老實說我很討厭考試，利用考試來看我這堂課所學的東西，我還真的不知道我學了甚麼，這個專題讓我可以充分發揮所學，學習與不同夥伴們互相溝通合作，有了這次的經驗，相信在未來能夠有所運用，讚讚讚。</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
				
				<div class="column">
                  <div class="card">
                    <img src="image/p6.jpg" alt="yao" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>李柏翰</h2>
                      <p class="title">組員</p>
                      <p>後端設計人員</p>
                      <p>hipeter.lee88@gmail.com</p>
					  <p>這學期參與網路程式設計學習到後端的部分，真的讓我對於這些事物大開了眼界，因為之前是待在化工系的我從未接觸過程式設計。
然而在上學期接觸過多媒體後，真的覺得程式設計的部分很需要花時間做調整，但在來學習網路程式設計的部分時，覺得這部分一方面其實不需要擁有美感去設計網頁風格，另一方面也不用擔心網頁呈現出來的排版是如何，反而是需要好好的瞭解使用者需要的結果是什麼？抑或是需要好好的收集使用者所提供出來的資料，因此是對這部分感到比較興趣的。
最後很感謝老師在這學期的用心教導，並在期末的時間中願意讓我們發表各組的成果，雖然在製作專案的過程中有所不易，但組員們能夠一起解決、一起討論，並將專案給一起完結是很感謝大家的。</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
				
				<div class="column">
                  <div class="card">
                    <img src="image/p7.jpg" alt="yao" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>李俐樺</h2>
                      <p class="title">組員</p>
                      <p>後端設計人員</p>
                      <p>livia.viennitha10@gmail.com</p>
					  <p>做這個項目真的讓我在硬技能和軟技能的提升上有了全新的體驗。 激勵我繼續努力獲得最好的結果。 很感謝組裡的小伙伴們一起奮鬥，互相幫助，一起討論。 感謝老師給我們機會，讓我們有這樣的機會，我希望這對未來有用。</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
				
				<div class="column">
                  <div class="card">
                    <img src="image/p8.jpg" alt="yao" style="width:100%;height:500px;">
                    <div class="container2">
                      <h2>張瑋鐘</h2>
                      <p class="title">組員</p>
                      <p>後端設計人員</p>
                      <p>cwc61013084@gmail.com</p>
					  <p>在學習這堂課之前，我只是把普通的代碼，變成一個簡單的程序，可能是乘法表，計數器，表單等等。可是經過這一次的網頁製作，其中我明白了網頁不單單只是表面的東西，也許一些網頁可以令我學習知識，可是那些網頁的背後，都有很多不同結構的代碼，才是資管系要學的東西，可以把之前學到的東西學習之用。</p>
                      <p><button class="button">Contact</button></p>
                    </div>
                  </div>
                </div>
              </div>
        </section>
        <footer>
            <div class="footer-text">
            <div class="brand-area">
              <a class="brand-logo"><img class="brand-image" src="image/logo.png" width="150" height="50"  /></a>
            </div>
            <p>234 桃園市中壢區利民路44號,台灣</p> 
            <P>Call us: 0900-613-766</P>
            <p>Email: 980072g@gmail.com</p>
            </div>
            <div class="footer-li">
              <ul><div class="footer-font">販售商品種類</div>
                <li>休閒褲</li>
                <li>牛仔褲</li>
                <li>襯衫</li>
                <li>帽T</li>
                <li>T恤</li>
              </ul>
            </div>
            <div class="footer-li">
              <ul><div class="footer-font">本站資訊</div>
                <li>關於我們</li>
                <li>政策</li>
                <li>商店</li>
              </ul>
            </div>
            <div class="footer-brand">
            <p>社群媒體</p>
            <div class="footer-float" ></div>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-line" viewBox="0 0 16 16">
              <path d="M8 0c4.411 0 8 2.912 8 6.492 0 1.433-.555 2.723-1.715 3.994-1.678 1.932-5.431 4.285-6.285 4.645-.83.35-.734-.197-.696-.413l.003-.018.114-.685c.027-.204.055-.521-.026-.723-.09-.223-.444-.339-.704-.395C2.846 12.39 0 9.701 0 6.492 0 2.912 3.59 0 8 0ZM5.022 7.686H3.497V4.918a.156.156 0 0 0-.155-.156H2.78a.156.156 0 0 0-.156.156v3.486c0 .041.017.08.044.107v.001l.002.002.002.002a.154.154 0 0 0 .108.043h2.242c.086 0 .155-.07.155-.156v-.56a.156.156 0 0 0-.155-.157Zm.791-2.924a.156.156 0 0 0-.156.156v3.486c0 .086.07.155.156.155h.562c.086 0 .155-.07.155-.155V4.918a.156.156 0 0 0-.155-.156h-.562Zm3.863 0a.156.156 0 0 0-.156.156v2.07L7.923 4.832a.17.17 0 0 0-.013-.015v-.001a.139.139 0 0 0-.01-.01l-.003-.003a.092.092 0 0 0-.011-.009h-.001L7.88 4.79l-.003-.002a.029.029 0 0 0-.005-.003l-.008-.005h-.002l-.003-.002-.01-.004-.004-.002a.093.093 0 0 0-.01-.003h-.002l-.003-.001-.009-.002h-.006l-.003-.001h-.004l-.002-.001h-.574a.156.156 0 0 0-.156.155v3.486c0 .086.07.155.156.155h.56c.087 0 .157-.07.157-.155v-2.07l1.6 2.16a.154.154 0 0 0 .039.038l.001.001.01.006.004.002a.066.066 0 0 0 .008.004l.007.003.005.002a.168.168 0 0 0 .01.003h.003a.155.155 0 0 0 .04.006h.56c.087 0 .157-.07.157-.155V4.918a.156.156 0 0 0-.156-.156h-.561Zm3.815.717v-.56a.156.156 0 0 0-.155-.157h-2.242a.155.155 0 0 0-.108.044h-.001l-.001.002-.002.003a.155.155 0 0 0-.044.107v3.486c0 .041.017.08.044.107l.002.003.002.002a.155.155 0 0 0 .108.043h2.242c.086 0 .155-.07.155-.156v-.56a.156.156 0 0 0-.155-.157H11.81v-.589h1.525c.086 0 .155-.07.155-.156v-.56a.156.156 0 0 0-.155-.157H11.81v-.589h1.525c.086 0 .155-.07.155-.156Z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-globe" viewBox="0 0 16 16">
              <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855A7.97 7.97 0 0 0 5.145 4H7.5V1.077zM4.09 4a9.267 9.267 0 0 1 .64-1.539 6.7 6.7 0 0 1 .597-.933A7.025 7.025 0 0 0 2.255 4H4.09zm-.582 3.5c.03-.877.138-1.718.312-2.5H1.674a6.958 6.958 0 0 0-.656 2.5h2.49zM4.847 5a12.5 12.5 0 0 0-.338 2.5H7.5V5H4.847zM8.5 5v2.5h2.99a12.495 12.495 0 0 0-.337-2.5H8.5zM4.51 8.5a12.5 12.5 0 0 0 .337 2.5H7.5V8.5H4.51zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5H8.5zM5.145 12c.138.386.295.744.468 1.068.552 1.035 1.218 1.65 1.887 1.855V12H5.145zm.182 2.472a6.696 6.696 0 0 1-.597-.933A9.268 9.268 0 0 1 4.09 12H2.255a7.024 7.024 0 0 0 3.072 2.472zM3.82 11a13.652 13.652 0 0 1-.312-2.5h-2.49c.062.89.291 1.733.656 2.5H3.82zm6.853 3.472A7.024 7.024 0 0 0 13.745 12H11.91a9.27 9.27 0 0 1-.64 1.539 6.688 6.688 0 0 1-.597.933zM8.5 12v2.923c.67-.204 1.335-.82 1.887-1.855.173-.324.33-.682.468-1.068H8.5zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.65 13.65 0 0 1-.312 2.5zm2.802-3.5a6.959 6.959 0 0 0-.656-2.5H12.18c.174.782.282 1.623.312 2.5h2.49zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7.024 7.024 0 0 0-3.072-2.472c.218.284.418.598.597.933zM10.855 4a7.966 7.966 0 0 0-.468-1.068C9.835 1.897 9.17 1.282 8.5 1.077V4h2.355z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
              <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
              <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
              <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
            </svg>
            </div>
        
          </footer>
</body>
</html>