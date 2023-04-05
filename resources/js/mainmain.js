const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const formSignup = $$('.form-signin');

const header = $('header');
console.log(header)
let lastScrollTop = 0;
window.onscroll = () => {
    let currentScroll = window.pageYOffset.toFixed(0);
    if (lastScrollTop < 4) {
        if (header.classList.contains('position-fixed')) {
            header.classList.remove('position-fixed')
        }
    } else {
        header.classList.add('position-fixed')
    }

    if (currentScroll > lastScrollTop) {
        header.style.opacity = 0
        // header.style.transition = 'opacity 0.5s ease-in-out'
    } else if (currentScroll < lastScrollTop) {
        header.style.opacity = 1
    }
    lastScrollTop = currentScroll
}

const homeCosmeticsItem = $$('.cosmetics-item');
const activeLine = $('.active-line');
const locationLine = $('.cosmetics-item.status-on');
const productsItem = $$('.products-item')
activeLine.style.left = locationLine.offsetLeft + 'px';
activeLine.style.width = locationLine.offsetWidth + 'px';
console.log(homeCosmeticsItem)
homeCosmeticsItem.forEach((item, index )=> {
    item.onclick = () => {
        $('.cosmetics-item.status-on').classList.remove('status-on')
        $('.products-item.status-on').classList.remove('status-on')
        $('.products-item.row.row-cols-4').classList.remove('row', 'row-cols-4')
        activeLine.style.left = item.offsetLeft + 'px'
        activeLine.style.width = item.offsetWidth + 'px'
        
        productsItem[index].classList.add('status-on', 'row', 'row-cols-4')
        item.classList.add('status-on')
    }
});
