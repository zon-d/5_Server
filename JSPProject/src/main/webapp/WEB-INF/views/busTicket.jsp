<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>버스예매</title>
</head>
<body>
    <% 
    
        String departure = request.getParameter("departure");

        String arrival = request.getParameter("arrival");

        String seat = request.getParameter("seat");

        int amount = Integer.parseInt(request.getParameter("amount"));

        int temp = 0;
        if(seat.equals("프리미엄")) temp = 35600;
        if(seat.equals("우등고속")) temp = 30400;
        if(seat.equals("일반고속")) temp = 20500;

                
        
    %>

    <% if( departure.equals(arrival)) { %>
        <h3>출발지와 도착지를 다르게 선택해주세요.</h3>
    <% } else { %>
        <ul>
            <li>출발지 : <%= departure %></li>
            <li>도착지 : <%= arrival %></li>
            <li>좌석 : <%= seat %></li>
            <li>탑승인원 : <%= amount %> 명</li>
            
            
            금액 : <%= (amount * temp)  %> 원

        </ul>
    <% } %>
    
</body>
</html>