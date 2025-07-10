

const section2Heading = document.querySelector(".section2 h1");




const observer1 = new IntersectionObserver(
    (entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                
                section2Heading.classList.add("animate");
            }else{

                entry.target.classList.remove("animate");
            }
            
        });
    },
    { threshold: 1 } 
);


observer1.observe(section2Heading);



const items = document.querySelector(".section2-item-container-div");

const observer2 = new IntersectionObserver(
    (entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                
                entry.target.classList.add("animate2");
            }else {
                // When the element leaves the viewport, remove the animation class
                entry.target.classList.remove("animate2");
            }
        });
    },
    { threshold: 0.3 } 
);


observer2.observe(items);



const seeMoreButton = document.querySelector(".text-container-button");
const section2 = document.getElementById("section2");

seeMoreButton.addEventListener("click", function () {
    section2.scrollIntoView({ behavior: "smooth" });
});


