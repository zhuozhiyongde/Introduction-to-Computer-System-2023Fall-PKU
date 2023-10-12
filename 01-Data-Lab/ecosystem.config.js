module.exports = {
  apps : [{
    name: 'ics-automake',
    script:'cd datlab-handout && make',
    watch: 'datalab-handout/bits.c',
  }],
};
