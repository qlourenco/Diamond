import Quagga from 'quagga';
//= require quagga
//= require_tree .

function order_by_occurrence(arr) {
  let counts = {};
  arr.forEach(function (value) {
    if (!counts[value]) { counts[value] = 0; }
    counts[value]++;
  });
  return Object.keys(counts).sort(function (curKey, nextKey) {
    return counts[curKey] < counts[nextKey];
  });
}

function load_quagga() {
  const barcodeScanner = document.querySelector("#barcode-scanner")
  if (barcodeScanner == null) {
    return
  }
  if (navigator.mediaDevices && typeof navigator.mediaDevices.getUserMedia === 'function') { //$('#barcode-scanner').length > 0 &&

    let last_result = [];
    if (Quagga.initialized == undefined) {
      Quagga.onDetected(function (result) {
        let last_code = result.codeResult.code;
        // console.log(last_code)
        if (last_code.length > 8) {
        last_result.push(last_code);
        }
        // console.log(last_result)
        if (last_result.length > 20) {
          const code = order_by_occurrence(last_result)[0];
          last_result = [];
          console.log(code)
          const inputBarcode = document.querySelector("#barcode")
          // console.log(inputBarcode)
          const formBarcode = document.querySelector("#form-barcode")
          // console.log(formBarcode)
          inputBarcode.value = code
          console.log(inputBarcode.value)
          formBarcode.submit()
          Quagga.stop();
        }
      });
    }
    Quagga.init({
      inputStream: {
        name: "Live",
        type: "LiveStream",
        constraints: {
          width: 762,
          height: 375
        },
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
// if (window.location.href == 'https://www.diamond-app.fr/vinyls/scan' || window.location.href == 'http://localhost:3000/vinyls/scan' || window.location.pathname == '/') { // window.location.pathname == '/' ||
  $(document).on('turbolinks:load', load_quagga);
// }
