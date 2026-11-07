<script>
  import Project from "./project.svelte";
</script>

<div class="intro">
  <h2>Hello</h2>
  <p>I'm XLFrie, and I like to make things (sometimes)</p>
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
  .projects {
    display: grid;
    width: fit-content;
    gap: 1.5em;
    grid-template-columns: repeat(
      round(down, calc((100vw - 20em) / (1.5em + 17em))),
      auto
    );

    /* padding-left: 10em;
    padding-right: 10em; */

    margin-left: auto;
    margin-right: auto;

    position: relative;
    top: 15em;
  }

  .intro {
    margin-top: 3em;
    text-align: center;
  }
</style>
