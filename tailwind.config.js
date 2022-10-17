/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
  ],
  theme: {
    extend: {},
    colors: {
      first: '#FE8D2A',
      second: '#112B3C',
      third: '#71839B',
      fourth: '#F99D89',
      fifth: '#324054',
      sixth: '#989898',
      blue: '#6CBAFE',
      red: '#FE2A2A'
    }
  },
  plugins: [],
}