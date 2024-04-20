// Simulated data for demonstration
var sensorData = {
    temperature: 25,
    runtime: 48,
    dataCount: 1000,
    status: "En ligne"
};

// Update sensor data on the interface
function updateSensorData(sensorId, data) {
    document.getElementById("temp" + sensorId).textContent = data.temperature + " °C";
    document.getElementById("runtime" + sensorId).textContent = data.runtime + " heures";
    document.getElementById("datacount" + sensorId).textContent = data.dataCount;
    document.getElementById("status" + sensorId).textContent = data.status;
}

// Simulated update of sensor data (replace with real-time data update)
function simulateDataUpdate() {
    // Simulating data update every 5 seconds
    setInterval(function() {
        // Simulate random temperature value
        sensorData.temperature = Math.floor(Math.random() * (30 - 10 + 1)) + 10;
        // Simulate increase in runtime
        sensorData.runtime += 0.08;
        // Simulate increase in data count
        sensorData.dataCount += 10;

        // Update sensor data on the interface
        updateSensorData(1, sensorData);
    }, 5000);
}

// Initialize
simulateDataUpdate();
