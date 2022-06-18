const totalNumberOfStaion = 29;

const firstStationNumber = 1;
const lastStationNumber = 17;
const numberOfStationFromFirstToLast = Math.abs(
  firstStationNumber - lastStationNumber,
);
// 「入場駅」～「出場駅」の間にある駅数（「入場駅」と「出場駅」は除く）
const numberOfStationBetweenFirstLast = numberOfStationFromFirstToLast - 1;

// 時計回りと反時計回りで別々で求める
const numberOfStationsByClockCycle = 1 << numberOfStationBetweenFirstLast;
const numberOfStationsByNonClockCycle =
  1 << (totalNumberOfStaion - numberOfStationFromFirstToLast - 1);

console.log(numberOfStationsByClockCycle + numberOfStationsByNonClockCycle - 1);
