function evaluateAnswer(selectedAnswer) {
	if(selectedAnswer == 'true') {
		// document.querySelector('.modal .btn-next').hidden = false;
		// document.querySelector('.modal .btn-close').hidden = true;  
		// document.querySelector('.modal .btn-try').hidden = true;
		document.querySelector('.modal .modal-title').innerText = 'Correct!';
		document.querySelector('.modal .modal-body').hidden = false;
	} else {
		// document.querySelector('.modal .btn-next').hidden = true;
		// document.querySelector('.modal .btn-close').hidden = false;
		// document.querySelector('.modal .btn-try').hidden = false;
		document.querySelector('.modal .modal-title').innerText = 'Incorrect!';
		document.querySelector('.modal .modal-body').hidden = true;

	}
	document.querySelector("input[name='submission[is_correct]']").setAttribute("value", selectedAnswer);
}

window.evaluateAnswer = evaluateAnswer;

