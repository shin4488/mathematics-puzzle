// グーの人数、チョキの人数、パーの人数
// 101通り、100通り、（100 - グーの人数 - チョキの人数）
// グー・チョキ・パーで人数が一番大きいものが他と重複していない場合は、一度で手が決まるとみなす

const numberOfPeople = 100;

let timesOfResultDecided = 0;
// ある手の人数の全パターンは「0人」～「100人」の101通りとなる
for (let numberOfStone = 0; numberOfStone <= numberOfPeople; numberOfStone++) {
  for (
    let numberOfScissor = numberOfPeople - numberOfStone;
    numberOfScissor <= numberOfPeople;
    numberOfScissor++
  ) {
    const numberOfPaper = numberOfPeople - numberOfStone - numberOfScissor;
    const numberOfPeopleArray = [numberOfStone, numberOfScissor, numberOfPaper];
    const maxNumber = Math.max(...numberOfPeopleArray);
    const duplicatedNumbers = numberOfPeopleArray.filter(
      (x) => x === maxNumber,
    );
    if (duplicatedNumbers.length < 2) {
      timesOfResultDecided++;
    }
  }
}

console.log(timesOfResultDecided);
