// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("../../../vendor/assets/javascripts/quagga")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import Rails from '@rails/ujs'

// Loader Search
import { loaderSearch } from '../components/loader';
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

// Scanner Quagga
// import { loadQuagga } from '../components/scanner';
//

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // loadQuagga()
  loaderSearch()
});

import Quagga from 'quagga';

//= require quagga
//= require_tree .


function order_by_occurrence(arr) {
  var counts = {};
  arr.forEach(function (value) {
    if (!counts[value]) {
      counts[value] = 0;
    }
    counts[value]++;
  });

  return Object.keys(counts).sort(function (curKey, nextKey) {
    return counts[curKey] < counts[nextKey];
  });
}

function load_quagga() {
  if (navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') { //$('#barcode-scanner').length > 0 &&

    var last_result = [];
    if (Quagga.initialized == undefined) {
      Quagga.onDetected(function (result) {
        var last_code = result.codeResult.code;
       // console.log(last_code)
        last_result.push(last_code);
       // console.log(last_result)
        if (last_result.length > 20) {
          let code = order_by_occurrence(last_result)[0];
          last_result = [];
          Quagga.stop();
        //  console.log(code)
          // Rails.ajax({
          //   type: "GET",
          //   url: '/products/get_barcode',
          //   data: { upc: code }
          // });
        }
      });
    }

    Quagga.init({
      inputStream: {
        name: "Live",
        type: "LiveStream",
        numOfWorkers: navigator.hardwareConcurrency,
        target: document.querySelector('#barcode-scanner')
      },
      decoder: {
        readers: ['ean_reader', 'ean_8_reader', 'code_39_reader', 'code_39_vin_reader', 'codabar_reader', 'upc_reader', 'upc_e_reader']
      }
    }, function (err) {
      if (err) { console.log(err); return }
      Quagga.initialized = true;
      Quagga.start();
    });

  }
};
$(document).on('turbolinks:load', load_quagga);
