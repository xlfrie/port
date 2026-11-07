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
    gap: 1.5rem;
    grid-template-columns: repeat(5, auto);

    margin-left: auto;
    margin-right: auto;

    position: relative;
    top: 15rem;
  }

  .intro {
    margin-top: 3rem;
    text-align: center;
  }
</style>
