pragma solidity ^0.5.0;
/**
 * The Election contract does this and that...
 */
contract Election {

	struct Candidate{
		uint id;
		string name;
		uint votecount;
	}

	mapping (uint => Candidate) public candidates;
	
	uint public candidatesCount;

	constructor() public{
		addCandidate("Candidate 1") ;
		addCandidate("Candidate 2");                            // can be modified to allow multiple candidates

		//candidate="Candidate1";

		
	}

	function addCandidate (string memory _name ) private {
		candidatesCount++; //can be improved to avoid multiple registrations of candidate
		candidates[candidatesCount]=Candidate(candidatesCount, _name , 0) ;	
		}
			
}
