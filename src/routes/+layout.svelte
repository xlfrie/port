<script lang="ts">
  import favicon from "#lib/assets/favicon.svg";
  import type { LayoutProps } from "./$types";
  import Navbar from "../lib/navbar.svelte";
  import Footer from "#lib/footer.svelte";

  let { children }: LayoutProps = $props();
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
  <link
    rel="stylesheet"
    href="https://meyerweb.com/eric/tools/css/reset/reset.css"
  />
  <link rel="stylesheet" href="global.css" />
</svelte:head>

<Navbar />
{@render children()}
<Footer />
