const changingTextElement = document.querySelector('.changing-text');

/*checks if the changing text element exists.
Needed otherwise gsaap fires an error each time it calls when not on the public homepage*/

  if (changingTextElement) {
    gsap.registerPlugin(TextPlugin);

    let text = ["Investments", "Budget", "Savings", "Finances"];
    let currentIndex = 0;

    function changeText() {
      gsap.to(".title span", {
        duration: 1,
        text: text[currentIndex],
        ease: "none",
      });
      currentIndex = currentIndex + 1;
      if (currentIndex > text.length - 1) {
        currentIndex = 0;
      }
    }

    setInterval(function () {
      changeText();
    }, 2500);
  }
