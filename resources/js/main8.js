

// const transformSignin = document.querySelector('.form-transfer-signup')
// const transformSignup = document.querySelector('.form-transfer-signin')
// const form_Signin = document.querySelector('.signin')
// const form_Signup = document.querySelector('.signup')


// transformSignup.onclick = () => {
//   if (form_Signup.classList.contains('d-none')) {
//     form_Signup.classList.remove('d-none')
//     form_Signin.classList.add('d-none')
//     transformSignup.classList.add('d-none')
//     transformSignin.classList.remove('d-none')
//     transformSignin.style.transition = "all 2s";
//   }
// }
// transformSignin.onclick = () => {
//   if (form_Signin.classList.contains('d-none')) {
//     form_Signup.classList.add('d-none')
//     form_Signin.classList.remove('d-none')
//     transformSignup.classList.remove('d-none')
//     transformSignup.style.transition = "all 2s";
//     transformSignin.classList.add('d-none')

//   }
// }
let parent = document.querySelectorAll('.sub-nav-bar');
console.log(parent)
let children = document.querySelectorAll('.subnav');
console.log($('.sub-nav-bar').children(''));

function hoverParent(parents, children) {
    parents.forEach((parent, index) => {
        parent.addEventListener('mouseover', () => {
            if (children[index].classList.contains('d-none')) {
                children[index].classList.remove('d-none')
                children[index].classList.add('d-flex')
            }
        })
        parent.addEventListener('mouseout', () => {
            if (!children[index].classList.contains('d-none')) {
                children[index].classList.add('d-none')
                children[index].classList.remove('d-flex')
            }
        })
    })
}

hoverParent(parent, children);


const formSignup = document.querySelectorAll('.form-signin');

const header = document.querySelector('.nav-bar');
// console.log(header)
let lastScrollTop = 0;
window.onscroll = () => {
    let currentScroll = window.pageYOffset.toFixed(0);
    // console.log(currentScroll)
    if (lastScrollTop < 90) {
        if (header.classList.contains('position-fixed')) {
            header.classList.remove('position-fixed')
        }
    } else {
        header.classList.add('position-fixed')
        header.style.transition = "0.5s linear"
        header.style.top = "0"
        header.style.left = "0"
        header.style.width = "100vw"
    }

    if (currentScroll > lastScrollTop) {
        // header.style.opacity = 0 
        // header.style.transition = 'opacity 0.5s ease-in-out'
    } else if (currentScroll < lastScrollTop) {
        // header.style.opacity = 1
    }
    lastScrollTop = currentScroll
}


// tab products home page
const homeCosmeticsItem = document.querySelectorAll('.cosmetics-item');
const activeLine = document.querySelector('.active-line');
const locationLine = document.querySelector('.cosmetics-item.status-on');
const productsItem = document.querySelectorAll('.products-item')
activeLine.style.left = locationLine.offsetLeft + 'px';
activeLine.style.width = locationLine.offsetWidth + 'px';
// console.log(homeCosmeticsItem)
homeCosmeticsItem.forEach((item, index) => {
    item.onclick = () => {
        document.querySelector('.cosmetics-item.status-on').classList.remove('status-on')
        document.querySelector('.products-item.status-on').classList.remove('status-on')
        document.querySelector('.products-item.row.row-cols-4').classList.remove('row', 'row-cols-4')
        activeLine.style.left = item.offsetLeft + 'px'
        activeLine.style.width = item.offsetWidth + 'px'

        productsItem[index].classList.add('status-on', 'row', 'row-cols-4')
        item.classList.add('status-on')
    }
});

// form login

//COMPARE





