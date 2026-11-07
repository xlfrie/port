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
    padding: 1rem;
    height: 21rem;
    width: 17rem;
  }

  .project > h3 {
    font-size: 1.5rem;

    padding-bottom: 0.3rem;
    margin-bottom: 1rem;

    border-bottom: 1px solid gray;
  }
</style>
