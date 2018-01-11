return{
	states = {'q0','q1','q2'},
	finalStates = {q1 = true},
	startState = 'q0',
	sigma = {'0','1'},
	delta = {
		q0 = {['0'] = "q2",['1'] = "q1"},
		q1 = {['0'] = "q2",['1'] = "q1"},
		q2 = {['0'] = "q2",['1'] = "q2"}
	}
}
