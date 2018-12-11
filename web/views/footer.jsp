<%--
  Created by IntelliJ IDEA.
  User: Pauxd
  Date: 03/12/2018
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="page-footer purple">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">&copy; 2018 SIMULADOR DE NEGOCIOS</h5>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Made by <a class="orange-text text-lighten-3" href="aaa" target="_blank">Pau</a>
        </div>
    </div>
</footer>

<!--  Scripts-->
<!--Import jQuery before materialize.js-->
<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/js/materialize.js"></script>
<script type="text/javascript" src="/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/data-tables-script.js"></script>
<script type="text/javascript" src="/js/init.js"></script>
<script type="text/javascript" src="/js/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="/js/sweetalert.min.js"></script>
<script type="text/javascript" src="/js/scrollspy.js"></script>
<!--scrollbar-->
<script type="text/javascript" src="/js/perfect-scrollbar.min.js"></script>
<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="/js/plugins.js"></script>
<!--custom-script.js - Add your own theme custom JS-->
<script type="text/javascript" src="/js/custom-script.js"></script>
<script>
    $(document).ready(function() {
        $('.collapsible').collapsible();
        $('.button-collapse').sideNav({});
        $('.materialboxed').materialbox();
        $(".button-collapse").sideNav();
        $('.scrollspy').scrollSpy();
        $('.modal').modal();
    });
    $(document).ready(function() {
        $('#usuarios').DataTable( {
            columnDefs: [
                {
                    targets: [ 0, 1, 2 ],
                    className: 'mdl-data-table__cell--non-numeric'
                }
            ]
        } );
    } );
</script>
</body>
</html>
