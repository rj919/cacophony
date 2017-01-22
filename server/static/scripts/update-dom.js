/* JAVASCRIPT EXTENSION */
/* MIT License 2017 rcj1492 */
/* Requires jQuery >= 2.2.3 */

function updateVTP(volume, tempo, pitch) {

/* a method to update volume, tempo and pitch data in the DOM */

// retrieve vtp data from DOM
    element_selector = $('meta[name=vtp]')
    vtp_data = element_selector.data()

// construct initial vtp data map
    if (!Object.keys(vtp_data).length){
        vtp_data = {
            'volume': 0,
            'tempo': 0,
            'pitch': 0,
            'changed': false,
            'oldvolume': 0,
            'oldtempo': 0,
            'oldpitch': 0
        }
    }

// update vtp data map with arguments
    vtp_data.volume = volume
    vtp_data.tempo = tempo
    vtp_data.pitch = pitch
    vtp_data.changed = true

// inject new data into DOM
    element_selector.data(vtp_data)

}