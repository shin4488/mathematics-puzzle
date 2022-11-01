// 参考：https://drken1215.hatenablog.com/entry/2019/12/14/171657
// aの要素をいくつか選択して、合計がwになる組み合わせ（部分和）
w = 10;
a = [1, 2, 3, 4, 5];

n = a.length;
for (let i = 0; i < 1 << n; i++) {
  const targets = [];
  for (let j = 0; j < n; j++) {
    if ((i & (1 << j)) === 0) {
      continue;
    }

    targets.push(a[j]);
  }

  const sum = targets.reduce((sum, element) => sum + element, 0);
  if (sum === w) {
    const resultNumberText = targets.join('');
    console.log(resultNumberText);
  }
}
