  function goToNextStep(){
    var index = 0;
    console.log(this.id);
    this.parentNode.style.display = "none"
    console.log(`div_step${Number(this.id.slice(-1)) + 1}`);
    document.getElementById(`div_step_${Number(this.id.slice(-1)) + 1}`).style.display = "inline";

    var ul = document.querySelectorAll('.li-inactive')
    ul[index].classList.remove("li-active");
    index += 1;
    ul[index].classList.add("li-active");
    console.log('add css changes')
  }

  document.querySelectorAll("button").forEach(function(elem) {
    elem.addEventListener("click", goToNextStep);
  })

// export {goToNextStep};
