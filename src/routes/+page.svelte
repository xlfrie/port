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
</div>

<style>
  .projects {
    display: grid;
    gap: 1.5rem;
    flex: 1;

    margin-left: auto;
    margin-right: auto;
    width: max-content;

    position: relative;
    top: 10rem;
  }
</style>
