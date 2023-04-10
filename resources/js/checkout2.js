
function deleteCart(id) {
    $.post('api/cookie.php', {
        'action': 'delete',
        'id': id
    }, function (data) {
        location.reload()
    })
}


let provinces = document.getElementById('province');
console.log(provinces.options[0].value)
let district = document.getElementById('district');
let totalDistrict = district.options.length;
console.log(totalDistrict)
district.setAttribute('disabled', 'disabled');
provinces.addEventListener('change', () => {
    let selectedValue = provinces.value;
    for (let i = 1; i < totalDistrict; i++) {
        if (selectedValue > 0 && district.options[i].value === selectedValue) {
            district.removeAttribute('disabled');
            district.options[i].classList.remove('d-none')
        } else {
            district.options[i].classList.add('d-none')
        }
    }
})