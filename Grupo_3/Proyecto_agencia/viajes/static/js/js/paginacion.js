const pagination = document.querySelector('.pagination');
const pages = document.querySelectorAll('.page');
const content = document.querySelector('.content');

let currentPage = 1;

pagination.addEventListener('click', (e) => {
    if (e.target.classList.contains('prev')) {
        currentPage--;
    } else if (e.target.classList.contains('next')) {
        currentPage++;
    } else if (e.target.classList.contains('page')) {
        currentPage = parseInt(e.target.textContent);
    }

    updatePagination();
    updateContent();
});

function updatePagination() {
    pages.forEach((page) => {
        page.classList.remove('active');
        if (parseInt(page.textContent) === currentPage) {
            page.classList.add('active');
        }
    });
}

function updateContent() {
    if (currentPage === 1) {
        const contentHtml = `
        <div class="content">
            <div class="acordion" id="itinerary">
                <div class="card">
                    
                        <img loading="lazy" class="offer-card-image-main-not-eva imag"
                            src="../../static/assets/img/lag.jpeg" alt="">
                        <p>Nombre</p>
                        <p>Descripcion</p>
                        <P>Incluye</P>
                        <p>No Incluye</p>
                        <p>Precio</p>

                        <div class="butdeta">
                            <button><a href="detallepaquete.html"> ver mas</a></button>
                        </div>                 
                </div>

                <div class="acordion" id="itinerary">
                    <div class="card">
                     
                            <img loading="lazy" class="offer-card-image-main-not-eva imag"
                                src="../../static/assets/img/cono.jpeg" alt="">
                            <p>Nombre</p>
                            <p>Descripcion</p>
                            <P>Incluye</P>
                            <p>No Incluye</p>
                            <p>Precio</p>

                        <div class="butdeta">
                            <button><a href="detallepaquete.html"> ver mas</a></button>
                        </div>                       
                    </div>
                </div>

                <div class="acordion" id="itinerary">
                <div class="card">
                
                        <img loading="lazy" class="offer-card-image-main-not-eva imag"
                            src="../../static/assets/img/col.jpeg" alt="">
                        <p>Nombre</p>
                        <p>Descripcion</p>
                        <P>Incluye</P>
                        <p>No Incluye</p>
                        <p>Precio</p>

                        <div class="butdeta">
                            <button><a href="detallepaquete.html"> ver mas</a></button>
                        </div>                   
                </div>
            </div>
            </div>
        </div>
    `;
        content.innerHTML = contentHtml;
    } else if (currentPage === 2) {
        const contentHtml = `
        <div class="acordion" id="itinerary">
            <div class="card">
                
                    <img loading="lazy" class="offer-card-image-main-not-eva imag"
                        src="../../static/assets/img/bos.jpeg" alt="">
                    <p>Nombre</p>
                    <p>Descripcion</p>
                    <P>Incluye</P>
                    <p>No Incluye</p>
                    <p>Precio</p>

                        <div class="butdeta">
                            <button><a href="detallepaquete.html"> ver mas</a></button>
                        </div>             
            </div>

            <div class="acordion" id="itinerary">
                <div class="card">
                
                        <img loading="lazy" class="offer-card-image-main-not-eva imag"
                            src="../../static/assets/img/col.jpeg" alt="">
                        <p>Nombre</p>
                        <p>Descripcion</p>
                        <P>Incluye</P>
                        <p>No Incluye</p>
                        <p>Precio</p>

                        <div class="butdeta">
                            <button><a href="detallepaquete.html"> ver mas</a></button>
                        </div>            
                </div>
            </div>

            <div class="acordion" id="itinerary">
                <div class="card">
                 
                        <img loading="lazy" class="offer-card-image-main-not-eva imag"
                            src="../../static/assets/img/car.jpeg" alt="">
                        <p>Nombre</p>
                        <p>Descripcion</p>
                        <P>Incluye</P>
                        <p>No Incluye</p>
                        <p>Precio</p>

                        <div class="butdeta">
                            <button><a href="detallepaquete.html"> ver mas</a></button>
                        </div>                 
                </div>
            </div>
        </div>
    `;
        content.innerHTML = contentHtml;
    }
};

