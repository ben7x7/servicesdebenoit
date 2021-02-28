import AOS from 'aos';
import 'aos/dist/aos.css';

const initAos = () => {
  AOS.init({
    duration: 700, // values from 0 to 3000, with step 50ms
    easing: 'ease-out',
    once: true,
  });
}

export { initAos }

