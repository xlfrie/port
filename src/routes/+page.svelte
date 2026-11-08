<script>
  import DownArrow from "#lib/downArrow.svelte";
  import { browser } from "$app/env";
  import Project from "../lib/project.svelte";

  let scroll = $state(0);

  let opacity = $derived(
    browser ? (innerHeight * 0.5 - scroll) / (innerHeight * 0.5) : 0,
  );
</script>

<svelte:window bind:scrollY={scroll} />

<div class="intro">
  <div class="intro-beginning">
    <h2>Hello</h2>
    <h3>I'm XLFrie</h3>
    <p class="subtext">And I like to make things <i>(sometimes)</i></p>

    <DownArrow class="intro-arrow" {opacity} />
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

    text-align: center;
    height: calc(100vh - 4.3em);

    background-color: salmon;
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
