return{
	states = {'0','1','2','3','4'},
	finalStates = {['3'] = true},
	startState = '0',
	sigma = {'a','b'},
	delta = {
		['0'] = {a = '1', b = '4'},
		['1'] = {a = '2', b = '4'},
		['2'] = {a = '3', b = '1'},
		['3'] = {a = '4', b = '4'},
		['4'] = {a = '4', b = '4'}
	}
}