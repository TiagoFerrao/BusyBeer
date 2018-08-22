import flatpickr from 'flatpickr';

const toggleDateInputs = function() {
  const startDateinput = document.getElementById('datepicker');

  if (startDateinput != null) {
    flatpickr(startDateinput, {
      allowInput: true,
      minDate: 'today',
      dateFormat: "Y-m-d",
      enableTime: true,
      dateFormat: "Y-m-d H:i"
      // onChange: function(_, selectedDate) {
      //   let splitted = selectedDate.split(" to ");
      //   startDateinput.value = splitted[0];
      //   endDateinput.value = splitted[1];
      // }
    });
  }

};

export { toggleDateInputs }
