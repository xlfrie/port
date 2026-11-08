<script lang="ts">
  let { name, description } = $props();
</script>

<div class="project">
  <h3 class="name">{name}</h3>
  <p class="description">{description}</p>
</div>

<style>
  .project {
    background-color: lightgray;
    padding: 1em;
    height: 21em;
    width: 17em;
  }

  .project > h3 {
    font-size: 1.5em;

    padding-bottom: 0.3em;
    margin-bottom: 1em;

    border-bottom: 1px solid gray;
  }
</style>
