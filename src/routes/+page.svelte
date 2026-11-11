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
  <div class="intro-section">
    <h3>Skills</h3>
    <p>
      I've been programming since I was 10, starting out with Discord bots and
      Scratch websocket programming. I enjoyed the ability to make something
      with nothing but my own skills.
    </p>
    <p>
      The desire to create something my own led to my desire to start learn
      robot manufacturing starting in 2025. I also started to learn to CAD, and
      applied my knowledge of manufacturing, design, and software to create more
      informed designs, and higher quality parts using CNC routers.
    </p>
    <p>Today, I manage my FRC team while teaching new students.</p>
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

    margin-top: 15em;
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

    background-image: linear-gradient(
      0deg,
      var(--tertiary-color),
      var(--accent-color)
    );

    position: relative;
    height: calc(100vh - 4.3em);
  }

  .intro-beginning > h2 {
    padding-top: 3em;
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
