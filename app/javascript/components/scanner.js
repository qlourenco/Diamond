//= require quagga
//= require_tree .
import Quagga from 'quagga';

function order_by_occurence(arr) {
  var counts = {};
  arr.forEach(function(value){
    if (!counts[value]) {
      counts[value] = 0;
    }
    counts[value]++;
  });
  return Object.keys(counts).sort(function(curKey,nextKey) {
    return counts[curKey] < counts[nextKey];
  });
}


function loadQuagga() {
  if (navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') { //TODO: $('#barcode-scanner)').length > 0 &&
    console.log("Initialization");
    var last_result = [];
    if (Quagga.initialized == undefined) {
      Quagga.onDetected(function (result) {
        var last_code = result.codeResult.code;
        last_result.push(last_code);
        if (last_result.length > 20) {
          code = order_by_occurence(last_result)[0];
          last_result = [];
          Quagga.stop();
          $.ajax({
            type: "POST",
            url: "/vinyls/barcode",
            data: { upc: code }
          });
        }
      });
    }
    Quagga.init({
      inputStream : {
        name : "Live",
        type : "LiveStream",
        numOfWorkers: navigator.hardwareConcurrency,
        target: document.querySelector('#barcode-scanner')
      },
      decoder: {
        readers: ['ean_reader', 'ean_8reader', 'code_39_reader', 'code_39_vin_reader', 'codebar_reader', 'upc_reader', 'upc_e_reader']
      }
    }, function (err) {
      if (err) { console.log(err); return }
      console.log("Initialization finished. Ready to start");
      Quagga.initialized = true;
      Quagga.start();
    });
  }
};

export { loadQuagga };
