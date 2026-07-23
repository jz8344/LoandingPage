<template>
  <div class="page-container">
    <!-- TICKER -->
    <div class="ticker" aria-hidden="true">
      <div class="ticker__track" ref="tickerTrack">
        <span>ALBAÑILERÍA</span><span class="dot">◆</span><span>FONTANERÍA</span><span class="dot">◆</span><span>ELECTRICIDAD</span><span class="dot">◆</span><span>PINTURA</span><span class="dot">◆</span><span>IMPERMEABILIZACIONES</span><span class="dot">◆</span><span>REMODELACIÓN TOTAL</span><span class="dot">◆</span><span>PRESUPUESTO A TU MEDIDA</span><span class="dot">◆</span>
      </div>
    </div>

    <!-- NAVBAR -->
    <header class="nav">
      <div class="nav__inner">
        <a class="brand" href="#top" aria-label="Inicio Rodrigo Martínez Remodelaciones">
          <span class="brand__badge" aria-hidden="true">
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 12l-8.5 8.5a2.12 2.12 0 1 1-3-3L12 9"/><path d="M17.64 15L22 10.64"/><path d="M20.91 11.7l-1.25-1.25c-.6-.6-.93-1.4-.93-2.25v-.86L16.01 4.6a5.56 5.56 0 0 0-3.94-1.64H9l.92.82A6.18 6.18 0 0 1 12 8.4v1.56l2 2h.86c.85 0 1.65.33 2.25.93l1.25 1.25"/></svg>
          </span>
          <span class="brand__name">Rodrigo<b>Martínez</b><small>Remodelaciones</small></span>
        </a>
        <nav class="nav__links" aria-label="Navegación principal">
          <a href="#servicios">Servicios</a>
          <a href="#porque">Por qué</a>
          <a href="#proceso">Proceso</a>
          <a href="#presupuesto">Presupuesto</a>
          <a href="#zonas">Zonas</a>
          <a href="#faq">FAQ</a>
        </nav>
        <span class="status" :class="{ closed: isClosed }" title="Horario de atención">
          <span class="dot"></span><span>{{ statusText }}</span>
        </span>
        <a class="btn btn--wa nav__cta" :href="waUrl" target="_blank" rel="noopener">
          <svg viewBox="0 0 24 24" fill="currentColor"><path d="M.057 24l1.687-6.163a11.867 11.867 0 01-1.587-5.945C.16 5.335 5.495 0 12.05 0a11.817 11.817 0 018.413 3.488 11.824 11.824 0 013.48 8.414c-.003 6.557-5.338 11.892-11.893 11.892a11.9 11.9 0 01-5.688-1.448L.057 24zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884a9.86 9.86 0 001.51 5.26l-.999 3.648 3.978-1.607zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.767.967-.94 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.52.151-.174.2-.298.3-.497.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.095 3.2 5.076 4.487.71.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z"/></svg>
          Pide tu cotización
        </a>
      </div>
    </header>

    <!-- HERO -->
    <section class="hero" id="top">
      <div class="wrap hero__grid">
        <div class="hero__copy reveal">
          <span class="hero__eyebrow">Tu casa, en buenas manos 🤠</span>
          <h1>TODO TU HOGAR<br>EN UN <span class="accent">SOLO LUGAR</span></h1>
          <p class="hero__sub"><b>Albañil, plomero y electricista en Tlajomulco.</b> Albañilería, plomería, electricidad, pintura e impermeabilización — un solo contacto de confianza para todo lo que tu casa necesita.</p>
          <div class="hero__ctas">
            <a class="btn btn--wa btn--lg" :href="waUrl" target="_blank" rel="noopener">
              <svg viewBox="0 0 24 24" fill="currentColor"><path d="M.057 24l1.687-6.163a11.867 11.867 0 01-1.587-5.945C.16 5.335 5.495 0 12.05 0a11.817 11.817 0 018.413 3.488 11.824 11.824 0 013.48 8.414c-.003 6.557-5.338 11.892-11.893 11.892a11.9 11.9 0 01-5.688-1.448L.057 24zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884a9.86 9.86 0 001.51 5.26l-.999 3.648 3.978-1.607zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.767.967-.94 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.52.151-.174.2-.298.3-.497.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.095 3.2 5.076 4.487.71.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z"/></svg>
              Pídeme cotización
            </a>
            <a class="btn btn--ghost btn--lg" href="#servicios" style="color:var(--cream);border-color:var(--cream)">Ver servicios</a>
          </div>
          <div class="hero__trust">
            <div><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6L9 17l-5-5"/></svg> Trabajo garantizado</div>
            <div><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6L9 17l-5-5"/></svg> Presupuesto claro</div>
            <div><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6L9 17l-5-5"/></svg> Puntualidad</div>
          </div>
        </div>

        <div class="hero__art reveal">
          <div class="emblem">
            <span class="tape" aria-hidden="true"></span>
            <img v-if="!showEmblemFallback" src="/Images/logo.png" alt="Rodrigo Martínez Remodelaciones" @error="showEmblemFallback = true" />
            <div v-else class="emblem__fallback">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M15 12l-8.5 8.5a2.12 2.12 0 1 1-3-3L12 9"/><path d="M17.64 15L22 10.64"/><path d="M20.91 11.7l-1.25-1.25c-.6-.6-.93-1.4-.93-2.25v-.86L16.01 4.6a5.56 5.56 0 0 0-3.94-1.64H9l.92.82A6.18 6.18 0 0 1 12 8.4v1.56l2 2h.86c.85 0 1.65.33 2.25.93l1.25 1.25"/></svg>
              <span class="ring">RODRIGO MARTÍNEZ<small>Remodelaciones 🤠🔨</small></span>
            </div>
          </div>
          <span class="badge-float">¡Pide tu cotización!</span>
        </div>
      </div>
    </section>

    <!-- SERVICIOS -->
    <section class="section section--cream" id="servicios">
      <div class="wrap">
        <div class="head-center reveal">
          <span class="kicker">Lo que hacemos</span>
          <h2 class="sec-title">Un solo experto para <span class="hl">toda la casa</span></h2>
        </div>
        <div class="grid-serv">
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 21h18M4 21V10l4-3 4 3M12 21V7l8-4v18M8 21v-5M16 11h.01M16 15h.01"/></svg></div>
            <h3>Albañilería</h3>
            <p>Bardas, muros, pisos, firmes, ampliaciones y obra nueva. Cimientos sólidos y acabados parejos.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M8 11l2.5 2.5L16 8"/></svg></div>
            <h3>Fontanería</h3>
            <p>Fugas, tuberías, tinacos, calentadores, baños y cocinas. Se acaban las goteras y el agua sucia.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg></div>
            <h3>Electricidad</h3>
            <p>Instalaciones, cableado, contactos, apagones y corto circuitos. Trabajo seguro y a norma.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 3H5a2 2 0 0 0-2 2v6h18V5a2 2 0 0 0-2-2z"/><path d="M21 11v3a2 2 0 0 1-2 2h-7v3a2 2 0 0 1-2 2H8v-5"/></svg></div>
            <h3>Pintura</h3>
            <p>Interior y exterior, texturizados y acabados. Le devolvemos la vida a tus paredes.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 12s3-7 10-7 10 7 10 7-3 7-10 7-10-7-10-7z"/><path d="M12 8v4M12 15h.01"/></svg></div>
            <h3>Impermeabilización</h3>
            <p>Azoteas, techos y muros. Adiós a las goteras en época de lluvias — protección que dura.</p>
          </article>
          <article class="card reveal">
            <span class="card__tag">Todo en 1</span>
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg></div>
            <h3>Remodelación</h3>
            <p>Renovamos cocinas, baños, recámaras o tu casa completa. Un solo equipo de principio a fin.</p>
          </article>
        </div>
      </div>
    </section>

    <!-- POR QUÉ -->
    <section class="section section--paper" id="porque">
      <div class="wrap why">
        <div class="reveal">
          <span class="kicker">¿Por qué con Rodrigo?</span>
          <h2 class="sec-title" style="margin-bottom:24px">Confianza que <span class="hl">se nota</span> en cada obra</h2>
          <div class="why__list">
            <div class="why__item">
              <div class="why__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg></div>
              <div><h4>Todo en un solo lugar</h4><p>No busques cinco personas distintas. Un mismo maestro coordina toda tu obra.</p></div>
            </div>
            <div class="why__item">
              <div class="why__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6L9 17l-5-5"/></svg></div>
              <div><h4>Trabajo garantizado</h4><p>Materiales de calidad y mano de obra que respalda lo que entrega.</p></div>
            </div>
            <div class="why__item">
              <div class="why__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg></div>
              <div><h4>Presupuesto claro</h4><p>Cotización transparente antes de empezar. Sin sorpresas ni cobros escondidos.</p></div>
            </div>
            <div class="why__item">
              <div class="why__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg></div>
              <div><h4>Puntualidad y limpieza</h4><p>Llegamos a tiempo, respetamos tu espacio y dejamos todo limpio al terminar.</p></div>
            </div>
          </div>
        </div>
        <aside class="why__panel reveal">
          <span class="kicker">Nuestro compromiso</span>
          <h3>Tratamos tu casa como si fuera <span class="accent">la nuestra</span></h3>
          <p>Servicio honesto, cercano y responsable. Desde una fuga pequeña hasta remodelar la casa completa — aquí encuentras a alguien de confianza.</p>
          <div class="stat-row">
            <div class="stat"><b>6+</b><span>Especialidades</span></div>
            <div class="stat"><b>100%</b><span>Presupuesto a tu medida</span></div>
            <div class="stat"><b>1</b><span>Contacto para todo</span></div>
          </div>
        </aside>
      </div>
    </section>

    <!-- PROCESO -->
    <section class="section section--cream" id="proceso">
      <span class="deco" style="top:34px; right:5%; width:74px; --r:14deg;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg></span>
      <span class="deco" style="bottom:24px; left:4%; width:66px; --r:-12deg; animation-delay:-2s;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M19 3H5a2 2 0 0 0-2 2v6h18V5a2 2 0 0 0-2-2z"/><path d="M21 11v3a2 2 0 0 1-2 2h-7v3a2 2 0 0 1-2 2H8v-5"/></svg></span>
      <div class="wrap">
        <div class="head-center reveal">
          <span class="kicker">Fácil y directo</span>
          <h2 class="sec-title">Cómo <span class="hl">trabajamos</span></h2>
        </div>
        <div class="steps">
          <div class="step reveal"><h4>Cuéntame</h4><p>Mándame un WhatsApp con lo que necesitas. Una foto ayuda muchísimo.</p></div>
          <div class="step reveal">
            <h4>Visita y cotizo</h4>
            <p>Voy a tu casa, reviso el trabajo en detalle y te paso un presupuesto claro y a tu medida. <b>(Tiene un costo.)</b></p>
          </div>
          <div class="step reveal"><h4>Manos a la obra</h4><p>Acordamos fecha. Yo consigo los materiales (o aportamos lo que falte) y empezamos con mano de obra garantizada.</p></div>
          <div class="step reveal"><h4>Entrega limpia</h4><p>Todo listo, limpio y revisado. Garantía según el tipo de trabajo — cada proyecto es diferente.</p></div>
        </div>
      </div>
    </section>

    <!-- PRESUPUESTO Y FORMA DE PAGO -->
    <section class="section section--paper" id="presupuesto">
      <span class="deco" style="top:40px; left:4%; width:70px; --r:-14deg;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M9.06 11.9l8.07-8.06a2.85 2.85 0 1 1 4.03 4.03l-8.06 8.08"/><path d="M7.07 14.94c-1.66 0-3 1.35-3 3.02 0 1.33-2.5 1.52-2 2.02 1.08 1.1 2.49 2.02 4 2.02 2.2 0 4-1.8 4-4.04a3.01 3.01 0 0 0-3-3.02z"/></svg></span>
      <span class="deco" style="bottom:30px; right:5%; width:78px; --r:12deg; animation-delay:-3s;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M3 21h18M4 21V10l4-3 4 3M12 21V7l8-4v18M8 21v-5M16 11h.01M16 15h.01"/></svg></span>
      <div class="wrap">
        <div class="head-center reveal">
          <span class="kicker">Claro desde el inicio</span>
          <h2 class="sec-title">Presupuesto y <span class="hl">forma de pago</span></h2>
        </div>

        <div class="pay-mini reveal">
          <span class="pay-mini__ic">💡</span>
          <p>Elaborar tu presupuesto <b>tiene un costo</b>, y depende de cada proyecto.</p>
        </div>

        <div class="grid-serv">
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M12 6v6l4 2"/></svg></div>
            <h3>A tu propio ritmo</h3>
            <p>Tras la visita, te tomas el tiempo que necesites para decidir. Sin presiones — cuando estés listo, arrancamos.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 12l2 2 4-4"/><circle cx="12" cy="12" r="10"/></svg></div>
            <h3>Trato claro y honesto</h3>
            <p>Antes de empezar sabes qué incluye tu presupuesto. Sin cobros escondidos ni sorpresas al final.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/><path d="M3.27 6.96L12 12.01l8.73-5.05M12 22.08V12"/></svg></div>
            <h3>Yo pongo los materiales</h3>
            <p>Casi siempre yo consigo los materiales. Si ya tienes algunos en casa, los aprovechamos y se toman en cuenta.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M9 12l2 2 4-4"/></svg></div>
            <h3>Garantía según el trabajo</h3>
            <p>Respaldo lo que entrego. La garantía varía según el proyecto: no es lo mismo una fachada que una barda con acabado.</p>
          </article>
          <article class="card reveal">
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75"/></svg></div>
            <h3>Mi propio equipo</h3>
            <p>Trabajo con mi equipo de contratistas de confianza para que tu obra avance a buen ritmo y quede bien hecha.</p>
          </article>
          <article class="card reveal">
            <span class="card__tag">Mi fuerte</span>
            <div class="card__ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg></div>
            <h3>Especialista en remodelación</h3>
            <p>Mi fuerte es remodelar casas, cocinas y baños — y también hago albañilería, plomería, electricidad, pintura e impermeabilización.</p>
          </article>
        </div>
      </div>
    </section>

    <!-- ZONAS + CONTACTO -->
    <section class="section section--cream" id="zonas">
      <span class="deco" style="top:36px; right:6%; width:60px; --r:16deg;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg></span>
      <span class="deco" style="bottom:26px; left:5%; width:66px; --r:-10deg; animation-delay:-2.5s;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M19 3H5a2 2 0 0 0-2 2v6h18V5a2 2 0 0 0-2-2z"/><path d="M21 11v3a2 2 0 0 1-2 2h-7v3a2 2 0 0 1-2 2H8v-5"/></svg></span>
      <div class="wrap">
        <div class="head-center reveal">
          <span class="kicker">Dónde trabajamos</span>
          <h2 class="sec-title">Servicio en <span class="hl">Tlajomulco</span> y alrededores</h2>
        </div>
        <div class="zones">
          <div class="zones__box reveal">
            <h3>Zonas de cobertura</h3>
            <div class="chips">
              <span class="chip main">Tlajomulco de Zúñiga</span>
              <span class="chip">Santa Anita</span>
              <span class="chip">La Noria</span>
              <span class="chip">Lomas del Sur</span>
              <span class="chip">Los Eucaliptos</span>
              <span class="chip">Cuexcomatitlán</span>
              <span class="chip">San Isidro</span>
              <span class="chip">Guadalajara</span>
            </div>
            <p class="zones__note">¿Tu colonia no está en la lista? Escríbeme — si el proyecto es viable, con gusto voy.</p>
          </div>
          <div class="zones__contact reveal">
            <a class="contact-row" :href="waUrl" target="_blank" rel="noopener">
              <span class="ic"><svg viewBox="0 0 24 24" fill="currentColor"><path d="M.057 24l1.687-6.163a11.867 11.867 0 01-1.587-5.945C.16 5.335 5.495 0 12.05 0a11.817 11.817 0 018.413 3.488 11.824 11.824 0 013.48 8.414c-.003 6.557-5.338 11.892-11.893 11.892a11.9 11.9 0 01-5.688-1.448L.057 24zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884a9.86 9.86 0 001.51 5.26l-.999 3.648 3.978-1.607zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.767.967-.94 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.52.151-.174.2-.298.3-.497.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.095 3.2 5.076 4.487.71.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z"/></svg></span>
              <span><small>WhatsApp — respuesta rápida</small><b>33 1372 1026</b></span>
            </a>
            <a class="contact-row" href="tel:+523313721026">
              <span class="ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72c.13.96.36 1.9.7 2.81a2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45c.9.34 1.85.57 2.81.7A2 2 0 0 1 22 16.92z"/></svg></span>
              <span><small>Llámame directo</small><b>33 1372 1026</b></span>
            </a>
            <a class="contact-row" href="mailto:martinezcharro125@gmail.com">
              <span class="ic"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="4" width="20" height="16" rx="2"/><path d="M22 7l-10 6L2 7"/></svg></span>
              <span><small>Correo</small><b>martinezcharro125@gmail.com</b></span>
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- PREGUNTAS FRECUENTES (SEO + UX) -->
    <section class="section section--paper" id="faq">
      <span class="deco" style="top:38px; left:4%; width:66px; --r:-12deg;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><path d="M9 12l2 2 4-4"/></svg></span>
      <span class="deco" style="bottom:28px; right:5%; width:72px; --r:12deg; animation-delay:-3.5s;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg></span>
      <div class="wrap">
        <div class="head-center reveal">
          <span class="kicker">Dudas comunes</span>
          <h2 class="sec-title">Preguntas <span class="hl">frecuentes</span></h2>
        </div>
        <div class="faq reveal">
          <details class="faq__item" open>
            <summary>¿Qué servicios de remodelación ofrece Rodrigo Martínez en Tlajomulco?</summary>
            <p>Albañilería, fontanería y plomería, instalaciones eléctricas, pintura, impermeabilización y remodelación completa de casas, cocinas y baños. Todo con un solo contacto de confianza.</p>
          </details>
          <details class="faq__item">
            <summary>¿El presupuesto tiene costo?</summary>
            <p>Sí. Elaborar tu presupuesto tiene un costo y depende de cada proyecto. Se cobra el día de la visita y, si me contratas, se te descuenta del total.</p>
          </details>
          <details class="faq__item">
            <summary>¿En qué zonas trabajan?</summary>
            <p>Tlajomulco de Zúñiga y alrededores: Santa Anita, La Noria, Lomas del Sur, Los Eucaliptos, Cuexcomatitlán, San Isidro y Guadalajara. Si tu proyecto es viable, con gusto acudo a otras zonas.</p>
          </details>
          <details class="faq__item">
            <summary>¿Cuánto cobra un albañil o plomero en Tlajomulco?</summary>
            <p>Depende del trabajo (metros, materiales y tiempo); cada proyecto es distinto y me adapto a tu presupuesto, sin precios fijos. Elaborar el presupuesto tiene un costo que, si me contratas, se descuenta del total. Sin sorpresas ni cobros escondidos.</p>
          </details>
          <details class="faq__item">
            <summary>¿Quién pone los materiales?</summary>
            <p>Normalmente yo me encargo de conseguir los materiales. Si ya tienes algunos en casa (cemento, arena, pintura, etc.), los aprovechamos y se toman en cuenta en tu presupuesto.</p>
          </details>
          <details class="faq__item">
            <summary>¿Ofreces garantía en los trabajos?</summary>
            <p>Sí. Respaldo mi trabajo con una garantía que varía según el tipo de proyecto — no es lo mismo arreglar una fachada que levantar una barda con empastado y pintura. Te la explico claramente al entregarte tu presupuesto.</p>
          </details>
        </div>
      </div>
    </section>

    <!-- CTA FINAL -->
    <section class="finalcta">
      <span class="deco deco--light" style="top:30px; left:5%; width:66px; --r:-14deg;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg></span>
      <span class="deco deco--light" style="top:40px; left:16%; width:52px; --r:10deg; animation-delay:-2s;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/></svg></span>
      <div class="worker-wrap" aria-hidden="true">
        <svg class="worker" viewBox="0 0 120 132" xmlns="http://www.w3.org/2000/svg">
          <ellipse cx="60" cy="122" rx="27" ry="5" fill="rgba(0,0,0,.18)"/>
          <circle cx="60" cy="80" r="26" fill="#F3D6A4" stroke="#20201E" stroke-width="3.5"/>
          <circle cx="50" cy="78" r="3.4" fill="#20201E"/>
          <circle cx="70" cy="78" r="3.4" fill="#20201E"/>
          <circle cx="43" cy="87" r="4" fill="#E27B5B" opacity=".55"/>
          <circle cx="77" cy="87" r="4" fill="#E27B5B" opacity=".55"/>
          <path d="M49 88 q11 12 22 0" fill="none" stroke="#20201E" stroke-width="3.5" stroke-linecap="round"/>
          <rect x="15" y="54" width="90" height="11" rx="5.5" fill="#E0A32C" stroke="#20201E" stroke-width="3.5"/>
          <path d="M28 57 a32 27 0 0 1 64 0 Z" fill="#E0A32C" stroke="#20201E" stroke-width="3.5"/>
          <rect x="53" y="23" width="14" height="10" rx="3" fill="#C0432E" stroke="#20201E" stroke-width="3"/>
          <path d="M60 33 v23" stroke="#8C2E1E" stroke-width="4" stroke-linecap="round"/>
        </svg>
      </div>
      <div class="wrap">
        <h2>¿Tienes un pendiente en casa?<br><span class="accent">Yo te lo resuelvo.</span></h2>
        <p>Una fuga, una barda, un cuarto nuevo o la remodelación completa. Escríbeme hoy, agendamos la visita y te paso tu presupuesto a la medida.</p>
        <a class="btn btn--wa btn--lg" :href="waUrl" target="_blank" rel="noopener">
          <svg viewBox="0 0 24 24" fill="currentColor"><path d="M.057 24l1.687-6.163a11.867 11.867 0 01-1.587-5.945C.16 5.335 5.495 0 12.05 0a11.817 11.817 0 018.413 3.488 11.824 11.824 0 013.48 8.414c-.003 6.557-5.338 11.892-11.893 11.892a11.9 11.9 0 01-5.688-1.448L.057 24zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884a9.86 9.86 0 001.51 5.26l-.999 3.648 3.978-1.607zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.767.967-.94 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.52.151-.174.2-.298.3-.497.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.095 3.2 5.076 4.487.71.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z"/></svg>
          Escríbeme por WhatsApp
        </a>
      </div>
    </section>

    <!-- FOOTER -->
    <footer>
      <span class="deco deco--light" style="top:24px; right:6%; width:58px; --r:14deg; opacity:.09;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M9.06 11.9l8.07-8.06a2.85 2.85 0 1 1 4.03 4.03l-8.06 8.08"/><path d="M7.07 14.94c-1.66 0-3 1.35-3 3.02 0 1.33-2.5 1.52-2 2.02 1.08 1.1 2.49 2.02 4 2.02 2.2 0 4-1.8 4-4.04a3.01 3.01 0 0 0-3-3.02z"/></svg></span>
      <span class="deco deco--light" style="bottom:30px; left:4%; width:50px; --r:-12deg; opacity:.09; animation-delay:-2s;" aria-hidden="true"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg></span>
      <div class="wrap">
        <div class="foot-grid">
          <div>
            <div class="foot-brand">Rodrigo Martínez</div>
            <p>Remodelaciones y mantenimiento para tu hogar. Albañilería, plomería, electricidad, pintura e impermeabilización — todo en un solo lugar.</p>
          </div>
          <div>
            <h5>Servicios</h5>
            <ul>
              <li><a href="#servicios">Albañilería</a></li>
              <li><a href="#servicios">Fontanería</a></li>
              <li><a href="#servicios">Electricidad</a></li>
              <li><a href="#servicios">Pintura e impermeabilización</a></li>
            </ul>
          </div>
          <div>
            <h5>Contacto</h5>
            <ul>
              <li><a href="tel:+523313721026">📞 33 1372 1026</a></li>
              <li><a :href="waUrl" target="_blank" rel="noopener">💬 WhatsApp</a></li>
              <li><a href="mailto:martinezcharro125@gmail.com">✉️ martinezcharro125@gmail.com</a></li>
              <li>📍 Tlajomulco de Zúñiga, Jal.</li>
            </ul>
          </div>
        </div>
        <div class="foot-bottom">
          <span>© {{ currentYear }} Rodrigo Martínez Remodelaciones. Todos los derechos reservados.</span>
          <span>Hecho con orgullo tapatío 🤠</span>
        </div>
      </div>
    </footer>

    <!-- WHATSAPP FLOTANTE -->
    <a class="wa-float" :href="waUrl" target="_blank" rel="noopener" aria-label="Escríbenos por WhatsApp">
      <svg viewBox="0 0 24 24" fill="currentColor"><path d="M.057 24l1.687-6.163a11.867 11.867 0 01-1.587-5.945C.16 5.335 5.495 0 12.05 0a11.817 11.817 0 018.413 3.488 11.824 11.824 0 013.48 8.414c-.003 6.557-5.338 11.892-11.893 11.892a11.9 11.9 0 01-5.688-1.448L.057 24zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884a9.86 9.86 0 001.51 5.26l-.999 3.648 3.978-1.607zm11.387-5.464c-.074-.124-.272-.198-.57-.347-.297-.149-1.758-.868-2.031-.967-.272-.099-.47-.149-.669.149-.198.297-.767.967-.94 1.165-.173.198-.347.223-.644.074-.297-.149-1.255-.462-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.297-.347.446-.52.151-.174.2-.298.3-.497.099-.198.05-.372-.025-.521-.075-.148-.669-1.611-.916-2.206-.242-.579-.487-.501-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.095 3.2 5.076 4.487.71.306 1.263.489 1.694.626.712.226 1.36.194 1.872.118.571-.085 1.758-.719 2.006-1.413.248-.695.248-1.29.173-1.414z"/></svg>
    </a>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue';

const phone = '523313721026';
const msg = encodeURIComponent('¡Hola Rodrigo! Vi tu página y me gustaría una cotización para mi casa. Te cuento: ');
const waUrl = `https://wa.me/${phone}?text=${msg}`;

const currentYear = new Date().getFullYear();
const showEmblemFallback = ref(false);
const tickerTrack = ref(null);

const statusInfo = computed(() => {
  const openHour = 8;
  const closeHour = 18;
  const now = new Date();
  const day = now.getDay();
  const h = now.getHours();

  const isOpen = (day >= 1 && day <= 6) && (h >= openHour && h < closeHour);

  if (isOpen) {
    return { isClosed: false, text: 'Disponible ahora' };
  } else {
    let text = 'Fuera de horario';
    if (day === 0) {
      text = 'Hoy descanso';
    } else if (h < openHour) {
      text = 'Abre 8:00 AM';
    }
    return { isClosed: true, text };
  }
});

const isClosed = computed(() => statusInfo.value.isClosed);
const statusText = computed(() => statusInfo.value.text);

onMounted(() => {
  if (tickerTrack.value) {
    tickerTrack.value.innerHTML += tickerTrack.value.innerHTML;
  }

  const els = document.querySelectorAll('.reveal');
  if (!('IntersectionObserver' in window)) {
    els.forEach((e) => e.classList.add('in'));
    return;
  }

  const io = new IntersectionObserver((entries) => {
    entries.forEach((en) => {
      if (en.isIntersecting) {
        en.target.classList.add('in');
        io.unobserve(en.target);
      }
    });
  }, { threshold: 0.14 });

  els.forEach((e) => io.observe(e));

  setTimeout(() => {
    const anyIn = document.querySelector('.reveal.in');
    if (!anyIn) {
      els.forEach((e) => e.classList.add('in'));
    }
  }, 1600);
});
</script>

<style scoped>
:root{
  --red:#C0432E;
  --red-deep:#8C2E1E;
  --gold:#E0A32C;
  --gold-soft:#F1CB7A;
  --cream:#FAF7F1;
  --cream-2:#F0EADE;
  --ink:#20201E;
  --ink-2:#343029;
  --brick:#2F5D62;
  --wood:#8A6A3B;
  --line:#E6DDCB;
  --ok:#2E9E5B;

  --font-brand:'Alfa Slab One',serif;
  --font-poster:'Anton',sans-serif;
  --font-brush:'Permanent Marker',cursive;
  --font-body:'Inter',system-ui,sans-serif;

  --shadow-hard:6px 6px 0 #20201E;
  --shadow-hard-red:6px 6px 0 #8C2E1E;
  --maxw:1180px;
}

.page-container {
  font-family: 'Inter', system-ui, sans-serif;
  color: #20201E;
  background: #FAF7F1;
  line-height: 1.55;
  overflow-x: hidden;
  min-height: 100vh;
  position: relative;
}

.page-container::before {
  content: "";
  position: fixed;
  inset: 0;
  z-index: 0;
  pointer-events: none;
  opacity: .5;
  background-image: radial-gradient(rgba(138,90,43,.06) 1px, transparent 1px);
  background-size: 18px 18px;
}

a { color: inherit; text-decoration: none; }
img { max-width: 100%; display: block; }
section { scroll-margin-top: 88px; }

.wrap { max-width: 1180px; margin: 0 auto; padding: 0 22px; }
.kicker {
  font-family: 'Permanent Marker', cursive;
  color: #C0432E;
  font-size: 1.25rem;
  transform: rotate(-2deg);
  display: inline-block;
  margin-bottom: .3rem;
  letter-spacing: .5px;
}
.sec-title {
  font-family: 'Anton', sans-serif;
  text-transform: uppercase;
  line-height: .95;
  font-size: clamp(2rem, 6vw, 3.6rem);
  letter-spacing: .5px;
  color: #20201E;
}
.sec-title .hl { color: #C0432E; }

/* TICKER */
.ticker {
  background: #20201E;
  color: #F1CB7A;
  overflow: hidden;
  white-space: nowrap;
  border-bottom: 3px solid #E0A32C;
  font-family: 'Anton', sans-serif;
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: .92rem;
}
.ticker__track { display: inline-block; padding: 9px 0; animation: scrollX 26s linear infinite; }
.ticker__track span { margin: 0 20px; }
.ticker__track .dot { color: #C0432E; }
@keyframes scrollX { from { transform: translateX(0); } to { transform: translateX(-50%); } }

/* NAVBAR */
header.nav {
  position: sticky;
  top: 0;
  z-index: 50;
  background: #FAF7F1;
  border-bottom: 3px solid #20201E;
}
.nav__inner { display: flex; align-items: center; gap: 18px; padding: 10px 22px; max-width: 1180px; margin: 0 auto; }
.brand { display: flex; align-items: center; gap: 12px; font-family: 'Alfa Slab One', serif; }
.brand__badge {
  width: 44px; height: 44px; flex: 0 0 44px; border-radius: 50%;
  background: #C0432E; color: #FAF7F1; display: grid; place-items: center;
  border: 3px solid #20201E; box-shadow: 2px 2px 0 #20201E;
}
.brand__badge svg { width: 26px; height: 26px; }
.brand__name { line-height: 1; font-size: 1.05rem; color: #20201E; }
.brand__name b { display: block; color: #C0432E; font-size: 1.2rem; letter-spacing: .3px; }
.brand__name small { font-family: 'Inter', sans-serif; font-weight: 700; font-size: .6rem; letter-spacing: 2px; color: #8A6A3B; text-transform: uppercase; }
.nav__links { display: flex; gap: 22px; margin-left: auto; align-items: center; }
.nav__links a { font-weight: 700; font-size: .95rem; position: relative; padding: 4px 0; }
.nav__links a::after { content: ""; position: absolute; left: 0; bottom: -2px; width: 0; height: 3px; background: #E0A32C; transition: width .25s; }
.nav__links a:hover::after { width: 100%; }
.status {
  display: inline-flex; align-items: center; gap: 7px; font-size: .78rem; font-weight: 700;
  background: #fff; border: 2px solid #20201E; border-radius: 30px; padding: 4px 11px; color: #20201E;
}
.status .dot { width: 9px; height: 9px; border-radius: 50%; background: #2E9E5B; box-shadow: 0 0 0 0 rgba(46,158,91,.6); animation: pulse 2s infinite; }
.status.closed .dot { background: #c0392b; animation: none; }
@keyframes pulse { 0% { box-shadow: 0 0 0 0 rgba(46,158,91,.55); } 70% { box-shadow: 0 0 0 9px rgba(46,158,91,0); } 100% { box-shadow: 0 0 0 0 rgba(46,158,91,0); } }

.btn {
  font-family: 'Inter', sans-serif; font-weight: 800; cursor: pointer;
  display: inline-flex; align-items: center; gap: 9px; text-align: center; justify-content: center;
  padding: 13px 22px; border-radius: 12px; font-size: 1rem; transition: transform .12s, box-shadow .12s;
  border: 3px solid #20201E;
}
.btn svg { width: 20px; height: 20px; }
.btn--wa { background: #25D366; color: #0a3d1f; }
.btn--wa:hover { transform: translateY(-3px); box-shadow: 6px 6px 0 #20201E; }
.btn--wa:active { transform: translate(3px, 3px); box-shadow: none; }
.btn--call { background: #E0A32C; color: #20201E; }
.btn--call:hover { transform: translateY(-3px); box-shadow: 6px 6px 0 #20201E; }
.btn--call:active { transform: translate(3px, 3px); box-shadow: none; }
.btn--ghost { background: transparent; color: #20201E; border-color: #20201E; }
.btn--ghost:hover { background: #20201E; color: #FAF7F1; }
.btn--lg { padding: 17px 30px; font-size: 1.12rem; }
.nav__cta { margin-left: 4px; }

/* HERO */
.hero { position: relative; background: linear-gradient(140deg, #20201E 0%, #343029 46%, #8C2E1E 100%); color: #FAF7F1; overflow: hidden; }
.hero::after {
  content: ""; position: absolute; inset: 0; opacity: .10; pointer-events: none;
  background-image: radial-gradient(circle at 80% 20%, #E0A32C 0, transparent 38%), radial-gradient(circle at 12% 88%, #C0432E 0, transparent 40%);
}
.hero__grid { display: grid; grid-template-columns: 1.15fr .85fr; gap: 30px; align-items: center; padding: 60px 0 66px; position: relative; z-index: 2; }
.hero__eyebrow { font-family: 'Permanent Marker', cursive; color: #F1CB7A; font-size: 1.35rem; transform: rotate(-2deg); display: inline-block; }
.hero h1 { font-family: 'Alfa Slab One', serif; line-height: 1; font-size: clamp(2.6rem, 6.6vw, 5rem); margin: .35rem 0 .2rem; letter-spacing: .5px; text-shadow: 4px 4px 0 rgba(0,0,0,.35); }
.hero h1 .accent { color: #E0A32C; }
.hero__sub { font-size: clamp(1.05rem, 2.2vw, 1.3rem); max-width: 34ch; color: #F3E7CE; font-weight: 500; margin-bottom: 22px; }
.hero__sub b { color: #fff; }
.hero__ctas { display: flex; gap: 14px; flex-wrap: wrap; }
.hero__trust { display: flex; gap: 20px; flex-wrap: wrap; margin-top: 26px; }
.hero__trust div { display: flex; align-items: center; gap: 8px; font-weight: 700; font-size: .9rem; color: #F3E7CE; }
.hero__trust svg { width: 20px; height: 20px; color: #E0A32C; }

/* EMBLEM */
.hero__art { display: grid; place-items: center; position: relative; }
.emblem {
  width: min(360px, 80vw); aspect-ratio: 1; border-radius: 50%; position: relative;
  background: radial-gradient(circle at 50% 40%, #FAF7F1 0, #F0EADE 70%, #E0A32C 71%, #E0A32C 100%);
  border: 6px solid #20201E; box-shadow: 0 0 0 8px #C0432E, 12px 14px 0 rgba(0,0,0,.35);
  display: grid; place-items: center; transform: rotate(-3deg);
  animation: stampIn .8s cubic-bezier(.2, 1.5, .4, 1) both;
}
.emblem img { width: 100%; height: 100%; object-fit: cover; border-radius: 50%; }
.emblem__fallback { display: grid; place-items: center; text-align: center; padding: 20px; }
.emblem__fallback svg { width: 120px; height: 120px; color: #C0432E; }
.emblem__fallback .ring { font-family: 'Alfa Slab One', serif; color: #C0432E; font-size: 1.35rem; line-height: 1; margin-top: 6px; }
.emblem__fallback .ring small { display: block; font-family: 'Permanent Marker', cursive; color: #20201E; font-size: .85rem; margin-top: 4px; }
.emblem .tape { position: absolute; top: -14px; left: 50%; transform: translateX(-50%) rotate(3deg); background: rgba(226,162,43,.85); width: 96px; height: 26px; box-shadow: 0 2px 6px rgba(0,0,0,.25); }
@keyframes stampIn { 0% { opacity: 0; transform: rotate(14deg) scale(.4); } 60% { opacity: 1; transform: rotate(-6deg) scale(1.08); } 100% { transform: rotate(-3deg) scale(1); } }
.badge-float {
  position: absolute; bottom: 6%; right: 2%; background: #C0432E; color: #FAF7F1; font-family: 'Anton', sans-serif;
  text-transform: uppercase; font-size: .95rem; padding: 10px 14px; border: 3px solid #20201E; border-radius: 12px;
  transform: rotate(5deg); box-shadow: 6px 6px 0 #20201E; animation: beat 2.4s ease-in-out infinite;
}
@keyframes beat { 0%, 100% { transform: rotate(5deg) scale(1); } 50% { transform: rotate(5deg) scale(1.06); } }

/* SERVICIOS */
.section { padding: 66px 0; }
.section--cream { background: #FAF7F1; }
.section--paper { background: #F0EADE; }
.head-center { text-align: center; margin-bottom: 40px; }
.grid-serv { display: grid; grid-template-columns: repeat(3, 1fr); gap: 22px; }
.card {
  background: #fff; border: 3px solid #20201E; border-radius: 16px; padding: 26px 22px;
  box-shadow: 6px 6px 0 #20201E; transition: transform .18s, box-shadow .18s; position: relative; overflow: hidden;
}
.card:hover { transform: translateY(-6px); box-shadow: 9px 12px 0 #20201E; }
.card__ic { width: 60px; height: 60px; border-radius: 14px; display: grid; place-items: center; background: #C0432E; color: #FAF7F1; margin-bottom: 16px; border: 3px solid #20201E; }
.card__ic svg { width: 32px; height: 32px; }
.card:nth-child(2n) .card__ic { background: #E0A32C; color: #20201E; }
.card:nth-child(3n) .card__ic { background: #2F5D62; color: #FAF7F1; }
.card h3 { font-family: 'Anton', sans-serif; text-transform: uppercase; font-size: 1.35rem; letter-spacing: .3px; margin-bottom: 6px; }
.card p { font-size: .96rem; color: #343029; }
.card__tag {
  position: absolute; top: 14px; right: -30px; background: #E0A32C; color: #20201E; font-weight: 800; font-size: .7rem;
  transform: rotate(38deg); padding: 4px 34px; text-transform: uppercase; letter-spacing: 1px;
}

/* DIFERENCIADORES */
.why { display: grid; grid-template-columns: 1fr 1fr; gap: 40px; align-items: center; }
.why__list { display: grid; gap: 18px; }
.why__item { display: flex; gap: 16px; align-items: flex-start; }
.why__ic { flex: 0 0 52px; width: 52px; height: 52px; border-radius: 50%; background: #FAF7F1; border: 3px solid #20201E; display: grid; place-items: center; color: #C0432E; }
.why__ic svg { width: 26px; height: 26px; }
.why__item h4 { font-size: 1.15rem; font-weight: 800; margin-bottom: 2px; }
.why__item p { color: #343029; font-size: .96rem; }
.why__panel { background: #20201E; color: #FAF7F1; border-radius: 20px; padding: 36px; border: 4px solid #20201E; box-shadow: 6px 6px 0 #8C2E1E; position: relative; }
.why__panel .kicker { color: #F1CB7A; }
.why__panel h3 { font-family: 'Alfa Slab One', serif; font-size: 1.9rem; line-height: 1.05; margin: .2rem 0 .8rem; }
.why__panel h3 .accent { color: #E0A32C; }
.why__panel p { color: #EFE2C2; margin-bottom: 22px; }
.stat-row { display: flex; gap: 26px; flex-wrap: wrap; }
.stat b { font-family: 'Anton', sans-serif; font-size: 2.2rem; color: #E0A32C; display: block; line-height: 1; }
.stat span { font-size: .82rem; text-transform: uppercase; letter-spacing: 1px; color: #EFE2C2; }

/* PROCESO */
.steps { display: grid; grid-template-columns: repeat(4, 1fr); gap: 20px; counter-reset: step; }
.step { background: #fff; border: 3px solid #20201E; border-radius: 16px; padding: 26px 20px; position: relative; box-shadow: 6px 6px 0 #20201E; }
.step::before {
  counter-increment: step; content: counter(step); position: absolute; top: -20px; left: 20px;
  width: 44px; height: 44px; border-radius: 50%; background: #C0432E; color: #FAF7F1; font-family: 'Anton', sans-serif;
  display: grid; place-items: center; font-size: 1.4rem; border: 3px solid #20201E;
}
.step h4 { margin: 14px 0 6px; font-size: 1.12rem; font-weight: 800; }
.step p { font-size: .92rem; color: #343029; }
/* DECORACIONES DE HERRAMIENTAS */
.section { position: relative; overflow: hidden; }
footer { position: relative; overflow: hidden; }
.wrap { position: relative; z-index: 1; }
.deco {
  position: absolute; z-index: 0; pointer-events: none; color: #8A6A3B; opacity: .11;
  animation: floaty 7s ease-in-out infinite;
}
.deco svg { width: 100%; height: 100%; display: block; }
.deco--light { color: #FAF7F1; opacity: .16; }
@keyframes floaty {
  0%,100% { transform: translateY(0) rotate(var(--r,0deg)); }
  50% { transform: translateY(-14px) rotate(var(--r,0deg)); }
}

/* MASCOTA TRABAJADOR FELIZ */
.worker-wrap { position: absolute; right: 4%; bottom: 0; width: 168px; z-index: 1; pointer-events: none; }
.worker { width: 100%; height: auto; display: block; transform-origin: 60px 108px; animation: workerBob 3.4s ease-in-out infinite; }
@keyframes workerBob {
  0%,100% { transform: translateY(0) rotate(-3deg); }
  50% { transform: translateY(-10px) rotate(3deg); }
}

/* PRESUPUESTO */
.pay-mini {
  display: flex; align-items: center; gap: 11px; justify-content: center;
  max-width: 580px; margin: 0 auto 40px; padding: 15px 22px;
  background: #FBF3E4; border: 2px dashed #E6C58A; border-radius: 14px; text-align: center;
}
.pay-mini__ic { font-size: 1.25rem; line-height: 1; }
.pay-mini p { font-size: 1.02rem; color: #6f5836; }
.pay-mini b { color: #C0432E; }

/* ZONAS */
.zones { display: grid; grid-template-columns: 1fr 1fr; gap: 40px; align-items: center; }
.zones__box { background: #fff; border: 3px solid #20201E; border-radius: 18px; padding: 30px; box-shadow: 6px 6px 0 #20201E; }
.zones__box h3 { font-family: 'Anton', sans-serif; text-transform: uppercase; font-size: 1.5rem; margin-bottom: 14px; }
.chips { display: flex; flex-wrap: wrap; gap: 10px; }
.chip { background: #FAF7F1; border: 2px solid #20201E; border-radius: 30px; padding: 7px 15px; font-weight: 700; font-size: .9rem; }
.chip.main { background: #C0432E; color: #FAF7F1; }
.zones__note { margin-top: 16px; font-size: .88rem; color: #8A6A3B; font-style: italic; }
.zones__contact { display: grid; gap: 14px; }
.contact-row { display: flex; align-items: center; gap: 14px; background: #20201E; color: #FAF7F1; border-radius: 14px; padding: 16px 18px; border: 3px solid #20201E; transition: transform .15s; }
.contact-row:hover { transform: translateX(5px); }
.contact-row .ic { width: 44px; height: 44px; flex: 0 0 44px; border-radius: 50%; background: #E0A32C; color: #20201E; display: grid; place-items: center; border: 2px solid #FAF7F1; }
.contact-row .ic svg { width: 22px; height: 22px; }
.contact-row small { display: block; text-transform: uppercase; letter-spacing: 1px; font-size: .68rem; color: #F1CB7A; }
.contact-row b { font-size: 1.12rem; word-break: break-word; }

/* FAQ */
.faq { max-width: 820px; margin: 0 auto; display: grid; gap: 14px; }
.faq__item { background: #fff; border: 3px solid #20201E; border-radius: 14px; padding: 6px 22px; box-shadow: 6px 6px 0 #20201E; }
.faq__item summary { list-style: none; cursor: pointer; font-weight: 800; font-size: 1.08rem; padding: 16px 0; display: flex; align-items: center; justify-content: space-between; gap: 14px; }
.faq__item summary::-webkit-details-marker { display: none; }
.faq__item summary::after { content: "+"; font-family: 'Anton', sans-serif; font-size: 1.6rem; color: #C0432E; transition: transform .2s; line-height: 1; }
.faq__item[open] summary::after { transform: rotate(45deg); }
.faq__item p { padding: 0 0 18px; color: #343029; font-size: .98rem; }

/* CTA FINAL */
.finalcta { background: linear-gradient(135deg, #C0432E 0%, #8C2E1E 100%); color: #FAF7F1; text-align: center; padding: 70px 0; position: relative; overflow: hidden; }
.finalcta::before { content: ""; position: absolute; inset: 0; opacity: .12; background-image: radial-gradient(circle at 20% 30%, #E0A32C 0, transparent 35%), radial-gradient(circle at 85% 75%, #000 0, transparent 40%); }
.finalcta .wrap { position: relative; z-index: 2; }
.finalcta h2 { font-family: 'Alfa Slab One', serif; font-size: clamp(2rem, 5.5vw, 3.6rem); line-height: 1.02; margin-bottom: 10px; text-shadow: 3px 3px 0 rgba(0,0,0,.3); }
.finalcta h2 .accent { color: #E0A32C; }
.finalcta p { font-size: 1.15rem; max-width: 44ch; margin: 0 auto 28px; color: #F7ECD4; }
.finalcta .btn--wa { border-color: #FAF7F1; }

/* FOOTER */
footer { background: #20201E; color: #FAF7F1; padding: 50px 0 26px; }
.foot-grid { display: grid; grid-template-columns: 1.4fr 1fr 1fr; gap: 32px; margin-bottom: 30px; }
.foot-brand { font-family: 'Alfa Slab One', serif; font-size: 1.5rem; color: #E0A32C; }
.foot-brand + p { color: #D9C9A6; font-size: .94rem; margin-top: 8px; max-width: 32ch; }
footer h5 { font-family: 'Anton', sans-serif; text-transform: uppercase; letter-spacing: 1px; font-size: 1rem; margin-bottom: 12px; color: #F1CB7A; }
footer ul { list-style: none; display: grid; gap: 8px; }
footer ul a { color: #E6D8B8; font-size: .92rem; }
footer ul a:hover { color: #fff; }
.foot-bottom { border-top: 2px solid #4a3a2c; padding-top: 18px; display: flex; justify-content: space-between; flex-wrap: wrap; gap: 8px; font-size: .82rem; color: #B8A784; }

/* WHATSAPP FLOTANTE */
.wa-float {
  position: fixed; bottom: 20px; right: 20px; z-index: 60; width: 60px; height: 60px; border-radius: 50%;
  background: #25D366; border: 3px solid #20201E; display: grid; place-items: center; box-shadow: 0 6px 18px rgba(0,0,0,.3);
  animation: beat 2.4s ease-in-out infinite;
}
.wa-float svg { width: 32px; height: 32px; color: #0a3d1f; }
.wa-float:hover { transform: scale(1.08); }

/* REVEAL */
.reveal { opacity: 0; transform: translateY(26px); transition: opacity .6s ease, transform .6s ease; }
.reveal.in { opacity: 1; transform: none; }

/* RESPONSIVE */
@media(max-width:1024px){
  .hero__grid { grid-template-columns: 1fr; gap: 26px; text-align: center; padding: 46px 0 54px; }
  .hero__sub { margin-inline: auto; }
  .hero__ctas, .hero__trust { justify-content: center; }
  .hero__art { order: -1; }
  .grid-serv { grid-template-columns: repeat(2, 1fr); }
  .steps { grid-template-columns: repeat(2, 1fr); gap: 34px 20px; }
  .why { grid-template-columns: 1fr; gap: 30px; }
  .zones { grid-template-columns: 1fr; gap: 28px; }
}
@media(max-width:860px){
  .nav__links { display: none; }
  .foot-grid { grid-template-columns: 1fr 1fr; }
  .worker-wrap { width: 128px; }
}
@media(max-width:560px){
  .grid-serv { grid-template-columns: 1fr; }
  .steps { grid-template-columns: 1fr; gap: 34px; }
  .hero__trust { gap: 12px 18px; }
  .foot-grid { grid-template-columns: 1fr; }
  .btn { width: 100%; }
  .hero__ctas { flex-direction: column; width: 100%; }
  .nav__cta { display: none; }
  .worker-wrap { display: none; }
  .deco { opacity: .07; }
}
@media(prefers-reduced-motion:reduce){
  * { animation: none !important; transition: none !important; }
  .reveal { opacity: 1; transform: none; }
}
</style>
