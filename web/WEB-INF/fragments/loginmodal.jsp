<%-- 
    Document   : loginmodal
    Created on : Mar 11, 2016, 3:22:55 PM
    Author     : KaminaSan <www.kaminasan.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="modal fade" role="dialog">
    
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title">Login Form</h2>
                <button class="btn btn-danger close" data-dismiss="modal">X</button>
            </div>
            <div class="modal-body">
                <form>
                <div class="form-group">
                Username:<input class="form-control" type="text" required>
                Password:<input class="form-control" type="password" required>
               <button class="btn btn-primary form-control " data-dismiss="modal">Close Login</button>
            </div>
                </form>
        </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">CLOSE</button>
            </div>
            
    </div>
</div>