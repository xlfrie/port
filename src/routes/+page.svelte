<script>
  import DownArrow from "#lib/downArrow.svelte";
  import Project from "../lib/project.svelte";

  let scroll = $state(0);
  let innerHeight = $state(0);
  let hasScrolledDown = false;

  let scrollPercent = $derived(
    (innerHeight * 0.3 - scroll) / (innerHeight * 0.3),
  );
  let opacity = $derived(hasScrolledDown ? 0 : scrollPercent);

  $effect(() => {
    if (scrollPercent <= 0) {
      hasScrolledDown = true;
    }
  });

  let scale = $derived(1 / scrollPercent);
</script>

<svelte:window bind:scrollY={scroll} bind:innerHeight />

<div class="intro">
  <div class="intro-beginning">
    <h2 class="hello">Hello</h2>
    <h3>I'm XLFrie</h3>
    <p class="subtext">And I like to make things <i>(sometimes)</i></p>

    <DownArrow class="intro-arrow" {opacity} style="scale: {0.65 * scale}" />
  </div>
  <div class="page-section">
    <p>
      Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae deleniti
      illum qui mollitia at eos expedita ratione sapiente sit esse nihil
      perspiciatis saepe odio cum, quo non maxime! Id, officia labore, dolorem
      pariatur obcaecati cupiditate sapiente nemo atque, nam culpa porro! Qui
      cumque beatae quibusdam, quis eaque laudantium incidunt asperiores tenetur
      error quaerat, aut esse ut. Earum perspiciatis officia aliquid rerum.
      Dolorum commodi debitis quia vero, dicta reiciendis labore quod? Nostrum
      unde omnis itaque possimus culpa, laborum fugit sapiente natus molestiae
      quae nemo eum magni eius veritatis deserunt ea animi reiciendis quas,
      consequatur aperiam alias esse veniam aut. Magnam illo, ducimus illum
      commodi enim molestiae earum quod aut velit tenetur quia quam alias
      similique. Cumque iste provident vero eum ipsa nihil voluptas asperiores
      iure ab. Impedit accusantium sed ipsa, blanditiis ex quos. Vel nobis
      laboriosam distinctio blanditiis perspiciatis ipsa libero explicabo
      voluptatem, mollitia reprehenderit repellat voluptates minima placeat sint
      veritatis dolorum eum culpa. Accusantium illo aperiam eos nulla
      praesentium blanditiis repudiandae veniam similique laborum nemo molestias
      tempora placeat, voluptas, quam tenetur? Porro ab explicabo harum dolorem.
      Distinctio ipsam expedita, quam nobis unde et ab. Minus similique quisquam
      amet. Magnam amet unde, perferendis doloribus id voluptatum, quam numquam
      quaerat iusto eligendi temporibus. Aliquam, quisquam quaerat optio facere
      deserunt provident commodi odit repellat ipsam dolores. Repellat
      temporibus sapiente itaque nisi culpa ex perspiciatis nobis ducimus
      adipisci et fugiat reprehenderit ipsum, distinctio nostrum voluptates
      maiores rem laudantium. Ad exercitationem maiores fugiat nesciunt
      recusandae accusamus pariatur possimus itaque rem optio earum eius, quam
      repellat? Enim, dolor earum? Voluptatem reiciendis provident quas hic iste
      officia aspernatur saepe quia est vitae. Mollitia, nihil et molestias
      placeat dolore recusandae nam reiciendis. Quibusdam recusandae eius eos
      accusantium quasi earum suscipit corrupti reprehenderit in fugiat facilis,
      sapiente atque sint modi! Accusamus adipisci veritatis dolore eos
      nesciunt, dignissimos corrupti similique officiis tenetur amet obcaecati
      id ipsa quidem ipsum dolores nemo dolorem numquam, dolorum at mollitia
      quae eaque quas cupiditate? Quo nostrum quae debitis sit, id dolor
      perferendis aliquam! Voluptatem corrupti obcaecati architecto ipsum
      voluptates reprehenderit, rem consequatur praesentium quae, ut
      consequuntur in atque earum asperiores quia quidem maxime explicabo quis
      eos pariatur facere sint! Quam itaque ipsum quae optio, provident non quis
      aliquam tempora similique asperiores! Saepe voluptatibus enim rem
      doloribus provident aliquam aperiam vero, dolorem maiores, animi
      dignissimos inventore laboriosam quas esse. Facere libero pariatur, illum
      excepturi beatae eligendi necessitatibus? Dolorem voluptatem impedit
      numquam ad accusamus non necessitatibus laborum, reprehenderit deserunt
      quibusdam reiciendis, ullam in neque enim placeat voluptatum, odio sunt
      autem similique et quisquam veritatis omnis nostrum aut. Cum ut
      repudiandae, reiciendis quod ipsam dolore, illum voluptas recusandae iure
      itaque magni magnam numquam nihil eaque consectetur ab eveniet quam hic
      asperiores non earum similique mollitia. Atque, placeat. Reiciendis
      maiores omnis illo obcaecati sed ratione dolores autem eum exercitationem
      tempora, earum facere quis ab aliquam voluptates aliquid, architecto vel
      libero minima magnam. Quis dolore eveniet reprehenderit officia fugiat
      tempora at illo quasi dolorem officiis consectetur ut eos quibusdam quo
      non, minus incidunt. Cupiditate tempora, eum consequuntur sed voluptatem
      minus.
    </p>
  </div>
  <br />
  <p></p>
</div>

<div class="projects">
  <Project name="Megaviir" description="hello world" />
  <Project name="Swerve Drive Software" description="hello world" />
  <Project name="Trithium" description="hello world" />

  <Project name="Megaviir" description="hello world" />
  <Project name="Swerve Drive Software" description="hello world" />
  <Project name="Trithium" description="hello world" />

  <Project name="Megaviir" description="hello world" />
  <Project name="Swerve Drive Software" description="hello world" />
  <Project name="Trithium" description="hello world" />

  <Project name="Megaviir" description="hello world" />
  <Project name="Swerve Drive Software" description="hello world" />
  <Project name="Trithium" description="hello world" />
</div>

<style>
  @font-face {
    font-family: "Macintosh";

    font-style: normal;
    font-weight: 300;

    src: url("src/lib/assets/MacintoshSkeletalVariable.otf") format("opentype");
  }

  @keyframes draw {
    to {
      stroke-dashoffset: 0;
    }
  }

  .hello {
    font-family: "Macintosh";

    font-weight: 100 !important;
  }

  :root {
    --grid-amount: 4;
  }

  .projects {
    display: grid;
    width: fit-content;
    gap: 1.5em;
    grid-template-columns: repeat(var(--grid-amount), auto);

    margin-left: auto;
    margin-right: auto;

    position: relative;
    top: 15em;
  }

  .intro {
    position: relative;
    top: 0;
    display: flex;
    flex-direction: column;

    text-align: center;
    height: fit-content;
  }

  i {
    font-style: italic;
  }

  /* TODO make look like macintosh hello + animation (whoa) */
  h2 {
    font-size: 4em;
    font-weight: lighter;
    font-style: italic;
  }

  h3 {
    font-size: 1.5em;
  }

  .intro-beginning {
    top: 0;
    /* padding-top: 3em; */

    position: relative;
    height: calc(100vh - 4.3em);
  }

  .intro-beginning > h2 {
    padding-top: 1em;
  }

  .intro-beginning > h3 {
    margin-top: 1em;
  }

  .intro-beginning > p {
    margin-top: 2.5em;
  }

  :global(.intro-arrow) {
    position: absolute;
    left: 50%;
    transform: translate(-50%);

    bottom: 1.5em;
  }

  .subtext {
    color: gray;
    font-weight: lighter;
  }
</style>
