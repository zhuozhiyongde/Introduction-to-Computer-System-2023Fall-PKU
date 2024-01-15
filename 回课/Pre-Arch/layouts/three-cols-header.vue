<!--
  Usage:
```md
---
layout: two-cols-header
---
This spans both
::left::
# Left
This shows on the left
::right::
# Right
This shows on the right
```
-->

<script setup lang="ts">
const props = defineProps({
    class: {
        type: String,
    },
    layoutClass: {
        type: String,
    },
});
</script>

<template>
    <div class="slidev-layout three-cols-header w-full h-full" :class="layoutClass">
        <div class="col-header">
            <slot />
        </div>
        <div class="col-left" :class="props.class">
            <slot name="left" />
        </div>
        <div class="col-center" :class="props.class">
            <slot name="center" />
        </div>
        <div class="col-right" :class="props.class">
            <slot name="right" />
        </div>
    </div>
</template>

<style scoped>
.three-cols-header {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: repeat(3, 1fr);
}

.col-header {
    grid-area: 1 / 1 / 2 / 4;
}
.col-left {
    grid-area: 2 / 1 / 3 / 2;
}
.col-center {
    grid-area: 2 / 2 / 3 / 3;
}
.col-right {
    grid-area: 2 / 3 / 3 / 4;
}
</style>
