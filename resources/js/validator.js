const Validator = (formSelector) => {

    let formRules = {};

    // rules
    let validatorRules = {
        required: (value) => {
            return value ? undefined : 'Please enter'
        },
        email: (value) => {
            let regex = /^\w+([\.\-_]?\w+)*@\w+([\.\-_]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : 'Enter the correct email format'
        },
        phone: (value) => {
            let regex = /^(\+84|0)\d{9}$/;
            return regex.test(value) ? undefined : 'Enter the correct phone number format'
        },
        strongPassword: (value) => {
            let regex = /^(?=(?:.*[a-z]){2})(?=(?:.*[A-Z]){2})(?=(?:.*\d){2})(?=(?:.*[!@#$%^&*-]){2}).{6,18}$/;
            return regex.test(value) ? undefined : 'Your password is weak <br> Password includes 2 '
        },
        min: (min) => {
            return (value) => {
                return value.length >= min ? undefined : `Enter at least ${min} characters`
            }
        },
        max: (max) => {
            return (value) => {
                return value.length <= max ? undefined : `Enter at least ${max} characters`
            }
        },
    };

    function getParent(element, selector) {
        while (element.parentElement) {
            // if parent is selector
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }


    // take form
    let formElement = document.querySelector(formSelector);

    // if form exists in DOM
    if (formElement) {
        let inputs = formElement.querySelectorAll('[name][rules]');
        for (let input of inputs) {
            let rules = input.getAttribute('rules').split('|');
            for (let rule of rules) {
                let isRuleHasValue = rule.includes(':');
                let ruleInfo;
                if (isRuleHasValue) {
                    ruleInfo = rule.split(':');
                    rule = ruleInfo[0];
                    // console.log(validatorRules[rule]);
                };

                let ruleFunc = validatorRules[rule];
                if (isRuleHasValue) {
                    ruleFunc = ruleFunc((ruleInfo[1]));
                }

                if (Array.isArray(formRules[input.name])) {
                    formRules[input.name].push(ruleFunc)
                } else {
                    formRules[input.name] = [ruleFunc];
                }
            }

            // event validate
            input.onblur = handleValidate;
            input.oninput = handleClearError;
        }

        function handleValidate(event) {
            let rules = formRules[event.target.name];
            let errorMessage;
            rules.find((rule) => {
                errorMessage = rule(event.target.value);
                return errorMessage;
            });
            // console.log(errorMessage)
            // console.log(event.target)
            //display message error
            if (errorMessage) {
                let input = event.target;
                let formGroup = getParent(event.target, '.form-group');
                // console.log(event.target)
                if (!formGroup) return;

                if (formGroup) {
                    input.classList.add('is-invalid');
                    let formMessage = formGroup.querySelector('.form-message');
                    // console.log(formMessage);
                    if (formMessage) {
                        formMessage.innerText = errorMessage;
                    }
                }
            }
            return !errorMessage;
        };


        function handleClearError(event) {
            let input = event.target;
            let formGroup = getParent(event.target, '.form-group');
            if (input.classList.contains('is-invalid')) {
                input.classList.remove('is-invalid');

                let formMessage = formGroup.querySelector('.form-message');
                if (formMessage) {
                    formMessage.innerText = '';
                }
            }
        }

    }


    // submit form
    formElement.onsubmit = (e) => {
        let inputs = formElement.querySelectorAll('[name][rules]');
        let isValid = true;
        for (let input of inputs) {
            if (!handleValidate({ target: input })) {
                isValid = false;
            }
        }
        // no message error
        if (isValid) {
            formElement.submit();
        } else {
            e.preventDefault();
        }
    }
    // console.log(formRules)
}