return{
	states = {'a','b','c','d'},
	finalStates = {d = true},
	startState = 'a',
	sigma = {'0','1'},
	delta = {
		a = {['0'] = 'c',['1'] = 'b'},
		b = {['0'] = 'c',['1'] = 'b'},
		c = {['0'] = 'c',['1'] = 'd'},
		d = {['0'] = 'd',['1'] = 'd'}
	}
}
