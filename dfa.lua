function importDFA(filename) -- Wrapper Function for buildDFA, allows filebased import
	dfaTable = require(filename)
	return buildDFA(dfaTable.states, dfaTable.finalStates, dfaTable.startState, dfaTable.sigma, dfaTable.delta)
end

function buildDFA (states, finalStates, startState, sigma, delta)
	local funTable = {} --Build a table of functions, one for each state
	for _,v in ipairs(states) do
		funTable[v] = function(str, index, seq)
			seq = seq .. ", " .. v
			if(str:len() <  index) then return finalStates[v],seq or false end --if at end of string, check if we are a final state
			
			local cur = str:sub(index,index) --read the character

			--if the char is in the state's transition table, then call the next state, otherwise fail
			targetFunction = funTable[delta[v][cur]]
			if targetFunction then return targetFunction(str, index+1, seq)
			else return false,seq end
		end			
	end

	return function(str) --Wrapper function to convert the output to true/false and build the first call 
		accept, seq = funTable[startState](str,1,'')
		seq = seq:sub(3,seq:len())
		
		return accept, seq
	end
end
