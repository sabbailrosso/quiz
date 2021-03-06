<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>CTFLY</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
  <link rel='stylesheet'
    href='https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/chartist/0.11.3/chartist.min.css'>
  <link rel="stylesheet" href="./resources/css/stylehome.css">

</head>

<body>
  <main id="app">
    <div class="backdrop"></div>

    <aside class="sidebar">
      <div class="sidebar__logo">
        <div>
          <c:if test="${pageContext.request.userPrincipal.name != null}">
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>

            <h2>Bentornato ${pageContext.request.userPrincipal.name} | <a
                onclick="document.forms['logoutForm'].submit()">Logout</a></h2>
          </c:if>
        </div>
        <ul class="nav">
          <li class="nav__item">
            <a href="" class="nav__link nav__link--active">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">content_paste</i>
              <p>Lista Tabelle</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">person</i>
              <p>Profilo Utente</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">library_books</i>
              <p>Tipografia</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">bubble_chart</i>
              <p>Icone</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">location_ons</i>
              <p>Mappe</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
          <li class="nav__item">
            <a href="" class="nav__link">
              <i class="material-icons">language</i>
              <p>Supporto linguaggio</p>
            </a>
          </li>
        </ul>
    </aside>

    <section>
      <nav class="navbar navbar-expand-lg navbar-transparent">
        <div class="navbar-wrapper">
          <a href="" class="navbar-brand">Dashboard</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
      </nav>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6 col-lg-3">
              <div class="card">
                <div class="card__header">
                  <div class="card__icon card__icon--orange">
                    <i class="material-icons">content_copy</i>
                  </div>
                  <p class="card__category">Spazio utilizzato</p>
                  <h3 class="card__title">
                    34/50
                    <small>GB</small>
                  </h3>
                </div>
                <div class="card__footer">
                  <i class="material-icons text-danger">warning</i>
                  <a href="https://www.googiehost.com/signup.html">Apri database</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="card">
                <div class="card__header">
                  <div class="card__icon card__icon--green">
                    <i class="material-icons">store</i>
                  </div>
                  <p class="card__category">Introiti</p>
                  <h3 class="card__title">
                    €49,500
                  </h3>
                </div>
                <div class="card__footer">
                  <i class="material-icons">date_range</i>
                  <a href="">Ultime 24 ore</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="card">
                <div class="card__header">
                  <div class="card__icon card__icon--red">
                    <i class="material-icons">info_outline</i>
                  </div>
                  <p class="card__category">Issue sistemate</p>
                  <h3 class="card__title">
                    75
                    <small></small>
                  </h3>
                </div>
                <div class="card__footer">
                  <i class="material-icons">local_offer</i>
                  <a href="">Traccia da git</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-3">
              <div class="card">
                <div class="card__header">
                  <div class="card__icon card__icon--blue">
                    <i class="fab fa-twitter"></i>
                  </div>
                  <p class="card__category">Followers</p>
                  <h3 class="card__title">
                    +250
                    <small></small>
                  </h3>
                </div>
                <div class="card__footer">

                  <i class="material-icons">update</i><a href="">Appena aggiornato</a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4">
              <div class="card">
                <div class="card__header">
                  <div class="chart chart--green" id="pieChartExample">
                  </div>
                </div>
                <div class="card__body">
                  <h4>Composition</h4>
                  <p>Lorem ipsum dolor sit.</p>
                </div>
                <div class="card__footer">
                  <i class="material-icons">update</i><a href="">Updated 4mins ago</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4">
              <div class="card">
                <div class="card__header">
                  <div class="chart chart--orange" id="lineBarExample">
                  </div>
                </div>
                <div class="card__body">
                  <h4>Nuove iscrizioni</h4>
                </div>
                <div class="card__footer">
                  <i class="material-icons">update</i><a href="">Updated 4mins ago</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4">
              <div class="card">
                <div class="card__header">
                  <div class="chart chart--red" id="lineB-ChartExample">
                  </div>
                </div>
                <div class="card__body">
                  <h4>Utenti giornalieri</h4>
                </div>
                <div class="card__footer">
                  <i class="material-icons">update</i><a href="">Updated 4mins ago</a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 col-lg-6">
              <div class="card">
                <div class="card__header">

                </div>
                <table class="table">
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Taiwan</td>
                      <td>6562</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>USA</td>
                      <td>5354</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>Italy</td>
                      <td>3173</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="col-md-6 col-md-12 col-lg-6">
              <div class="card">
                <div class="card__header">

                </div>
                <div class="card__body">

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="container-fluid">
        <nav class="float-left">
          Links
        </nav>
        <div class="copy float-right">
          Copy right
        </div>
      </div>
    </footer>
  </main>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/chartist/0.11.3/chartist.min.js'></script>
  <script src="./resources/js/scripthome.js"></script>

</body>

</html>
