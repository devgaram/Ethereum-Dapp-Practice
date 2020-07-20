// SPDX-License-Identifier: MIT
// solidity 버전 선언
pragma solidity >=0.4.21 <0.7.0;

// 스마트 컨트랙트 선언
contract Election {
    // state variable: 블록체인에 데이터를 쓸 수 있게 해줌
    // public 으로 하면 solidity가 getter 함수를 제공한다.
    // 스마트 컨트랙트 밖에서 이 값에 접근할 때 getter 함수를 사용한다.
    //string public candidate;

    // Model
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // mapping은 배열 또는 해시를 적용할 때 사용하며 key-value 쌍으로 구성된다.
    mapping(uint256 => Candidate) public candidates;

    // 후보자 수
    // 솔리디티에는 mapping 사이즈와 순회 방법이 없다.
    uint256 public candidatesCount;

    // 생성자 함수는 블록체인에 스마트 컨트랙트가 배포될 때마다 호출된다.
    // 마이그레이션 하자마자 블록체인에 저장된 값을 얻어 state variable 값에 셋팅한다.
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
