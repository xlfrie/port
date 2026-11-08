<script>
  let { class: propsClass = "", opacity = 1, style = "" } = $props();
</script>

<div class="arrows {propsClass}" style="opacity: {opacity}; {style}">
  <span class="downArrow1 arrow">
    <div class="left-angle angle"></div>
    <div class="right-angle angle"></div>
  </span>
  <span class="downArrow2 arrow">
    <div class="left-angle angle"></div>
    <div class="right-angle angle"></div>
  </span>
  <span class="downArrow3 arrow">
    <div class="left-angle angle"></div>
    <div class="right-angle angle"></div>
  </span>
</div>

<style>
  @keyframes arrowPulse {
    0% {
      opacity: 0.25;
    }

    50% {
      opacity: 0.75;
    }

    100% {
      opacity: 0.25;
    }
  }

  .angle {
    background-color: black;
    width: 0.195em;
    height: 1em;

    position: relative;

    border-radius: 48px;
  }

  .arrows {
    width: fit-content;
    margin: 0 auto;

    z-index: 1;

    display: flex;
    flex-direction: column;

    scale: 0.65;
  }

  .arrow {
    display: inline-flex;
    height: 0.6em;

    animation-name: arrowPulse;
    animation-duration: 1500ms;
    animation-iteration-count: infinite;
    animation-direction: normal;
  }

  .downArrow1 {
    animation-delay: 0%;
  }

  .downArrow2 {
    animation-delay: 150ms;
  }

  .downArrow3 {
    animation-delay: 300ms;
  }

  .left-angle {
    rotate: -65deg;
    right: 0.28em;
  }

  .right-angle {
    rotate: 65deg;

    left: 0.28em;
  }
</style>
