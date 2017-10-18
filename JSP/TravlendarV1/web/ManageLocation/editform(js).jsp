<!-- The Modal -->
    <div id="myModal" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <div class="modal-header">
                <span class="close">&times;</span>
                <h2>Update Location</h2>
            </div>
            <div class="modal-body">
                <div class="form" style="left:0%;width:100%;border-radius:0px;padding:0px;background-color:white;">
                    <form action="#">
                    <label for="fLocation">Location</label>
                    <input type="text" style="" id="mLocation" name="locationName" placeholder="Location...">
                    <label for="faddres">Address</label>
                    <input type="text" id="mAddress" name="address" placeholder="Address...">
                    <label for="fCity">City</label>
                    <select name="districtId" class="minimal">
                        <c:forEach items="${districts}" var="item">
                        <option value="${item.districtId}">${item.districtName}</option>
                        </c:forEach>
                    </select>
                    <input type="submit" name="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>
