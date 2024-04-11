function updateChartColors() {
    let mode = localStorage.getItem('mode');
    if (mode === 'light') {
        Chart.defaults.color = '#000000';
    } else if (mode === 'dark') {
        Chart.defaults.color = '#FFFFFF';
    }
}


window.addEventListener('storage', function(event) {
    if (event.key === 'mode') {
        // Handle mode change here
        // For example, update chart colors
        console.log('change to dark mode')
    }
});
