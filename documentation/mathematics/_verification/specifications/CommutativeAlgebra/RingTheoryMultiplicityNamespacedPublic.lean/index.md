# Verification target: Ring Theory Multiplicity Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0d475532761e3f6d3405368eefb04a1a05a4707",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0d475532761e3f6d3405368eefb04a1a05a4707`.

Source path: `GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteMultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity.md) | 45 | `declaration-track:9c67ba8630af9f5f034b021a2703058bb90cc9faa79def77e6b102f3b891ee55` |
| 2 | `def` | [emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity.md) | 51 | `declaration-track:827d78085895ce1a7f9fd8d9144a240529f8233d5992aef3d6efc30a47772f5d` |
| 3 | `def` | [multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity.md) | 55 | `declaration-track:0b39c3da1de8347527168c037dc35fa019377a31e8cb089ee433c841181b73de` |
| 4 | `theorem` | [emultiplicity_eq_top](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-top.md) | 63 | `result-track:ee724f63646e45c9cc66a28d2552787c324c2b48ff32ca4dce84b25a21f6f347` |
| 5 | `theorem` | [emultiplicity_lt_top](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-lt-top.md) | 67 | `result-track:469fc1cc7dfd380b23cc51881f0b84f33cadf8f33d38571d2d6de19b8e9b8d1a` |
| 6 | `theorem` | [finiteMultiplicity_iff_emultiplicity_ne_top](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-iff-emultiplicity-ne-top.md) | 70 | `result-track:6d3d6652b111160f5b3529d4e9f3e3a83cf0ba0fe72c905a65244ba7cead7c2e` |
| 7 | `theorem` | [finiteMultiplicity_of_emultiplicity_eq_natCast](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-of-emultiplicity-eq-natcast.md) | 73 | `result-track:345084813f3212c7f17709681fe0d7ef215721a6adf50d890f63c8042768ef1a` |
| 8 | `theorem` | [multiplicity_eq_of_emultiplicity_eq_some](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-of-emultiplicity-eq-some.md) | 79 | `result-track:7b6e02110c8550b82a6adcc56ee311c9375c42a59b905802ebe94ac6ede22f25` |
| 9 | `theorem` | [emultiplicity_ne_of_multiplicity_ne](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-ne-of-multiplicity-ne.md) | 83 | `result-track:289e059d1fb6772ebab0ab01db5ceb3d09f2c817872f5489c6a96c50921bb446` |
| 10 | `theorem` | [FiniteMultiplicity.emultiplicity_eq_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-emultiplicity-eq-multiplicity.md) | 87 | `result-track:4a9f64dfe3aac8b950609ce32c9be0604fd21a67783a4f8e566184d518162264` |
| 11 | `theorem` | [FiniteMultiplicity.emultiplicity_eq_iff_multiplicity_eq](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-emultiplicity-eq-iff-multiplicity-eq.md) | 93 | `result-track:cac9bfc70c6a2c4eacbfd541d3e02e5a38b057bfd3f269c5b95c9aa146dc653f` |
| 12 | `theorem` | [emultiplicity_eq_iff_multiplicity_eq_of_ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-iff-multiplicity-eq-of-ne-zero.md) | 97 | `result-track:ba819359aedc79ec0ac0985a517dd19148863bd34f32b64e6fc9caf9164b95c6` |
| 13 | `theorem` | [emultiplicity_eq_zero_iff_multiplicity_eq_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-zero-iff-multiplicity-eq-zero.md) | 104 | `result-track:60e935d4eab6065d10dbda20e66a93c395d12d8fab9f3a9a192b3fb30383421f` |
| 14 | `theorem` | [multiplicity_eq_zero_of_not_finiteMultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-zero-of-not-finitemultiplicity.md) | 112 | `result-track:a291d60a3941421d219f16558448f69f8ac1e09101bf03a58b7ee605b9551da1` |
| 15 | `theorem` | [multiplicity_le_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-le-emultiplicity.md) | 121 | `result-track:7d45b959abe815866909ba55d9ab244e7b1bb63fbe82bccb0aeb1664d6b2d1e2` |
| 16 | `theorem` | [multiplicity_eq_of_emultiplicity_eq](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-of-emultiplicity-eq.md) | 128 | `result-track:dd143d68f50c341196c3108dd1933029ae1b79463190c86483a90f8d448f5c06` |
| 17 | `theorem` | [multiplicity_le_of_emultiplicity_le](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-le-of-emultiplicity-le.md) | 133 | `result-track:718eb323537342f2508534d4dc1fa32ab50ed7f4b00861b6670063b2e3ad4794` |
| 18 | `theorem` | [FiniteMultiplicity.emultiplicity_le_of_multiplicity_le](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-emultiplicity-le-of-multiplicity-le.md) | 137 | `result-track:23373489760894e2530cc3eb88661cb8e0b439209afd67a5303ed11b6fb450e4` |
| 19 | `theorem` | [le_emultiplicity_of_le_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/le-emultiplicity-of-le-multiplicity.md) | 142 | `result-track:19b1b04ccd36bcc6937e1ffc771f40158caa4ce99ecc89e05ef7d920f1f43e7b` |
| 20 | `theorem` | [FiniteMultiplicity.le_multiplicity_of_le_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-le-multiplicity-of-le-emultiplicity.md) | 146 | `result-track:c60143b51fba078d774afc214683361e5a88f87ce34803ec24499c273571d7ef` |
| 21 | `theorem` | [multiplicity_lt_of_emultiplicity_lt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-lt-of-emultiplicity-lt.md) | 151 | `result-track:89f2af6ef89f9a5797019908773551d8ee230064bef783813925068f2bee260c` |
| 22 | `theorem` | [FiniteMultiplicity.emultiplicity_lt_of_multiplicity_lt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-emultiplicity-lt-of-multiplicity-lt.md) | 155 | `result-track:bbaac430396ceb10c3adfec62a58b839dcd0c90d3a5bf84282de4f03951affcb` |
| 23 | `theorem` | [lt_emultiplicity_of_lt_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/lt-emultiplicity-of-lt-multiplicity.md) | 160 | `result-track:15ff1e9580a879a5fcf8c105808867419f3aaa5509c0a1a7d341584ae1c89427` |
| 24 | `theorem` | [FiniteMultiplicity.lt_multiplicity_of_lt_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-lt-multiplicity-of-lt-emultiplicity.md) | 164 | `result-track:041aecccaaac61a9e143a6f03a55eed568af1489d2c06fd6d27c113475345f0b` |
| 25 | `theorem` | [emultiplicity_pos_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-pos-iff.md) | 169 | `result-track:5bcb9a6fe0429d93348cc7d4764b8edac565146c2366ea561ab8b6761fb28028` |
| 26 | `theorem` | [FiniteMultiplicity.def](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-def.md) | 173 | `result-track:9eac3d21ec9633bbcaafa55649d7d4084440ab06044709ca24c4364131a1e0ae` |
| 27 | `theorem` | [FiniteMultiplicity.not_dvd_of_one_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-dvd-of-one-right.md) | 176 | `result-track:16f61ecaf60a6abf33e3dff6c53df215a65293f9163a7be8471741886a944eb1` |
| 28 | `theorem` | [Int.natCast_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-natcast-emultiplicity.md) | 180 | `result-track:9705d70cc462d9ffa1ef58fbcd30ea3870d7f57299ec02921b9dcc771be54a74` |
| 29 | `theorem` | [Int.natCast_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-natcast-multiplicity.md) | 186 | `result-track:3580353d8ed1465f9b106b8c319cbcbe7cd942fefbaef1ec22e1aafdd8427a28` |
| 30 | `theorem` | [FiniteMultiplicity.not_iff_forall](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-iff-forall.md) | 189 | `result-track:70e3191ef4133b3fb7107092c81e9839a1b481d1cc3ba134dac5385abd2f9fb6` |
| 31 | `theorem` | [FiniteMultiplicity.not_isUnit](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-isunit.md) | 198 | `result-track:cf85dacf0496198b63b9a626ca8fe6f5c1d33a7a07266d311d65c9d09e579250` |
| 32 | `theorem` | [FiniteMultiplicity.mul_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-mul-left.md) | 205 | `result-track:51f3f9b68ed27fa6a31c94f6d00559d6a2fb9fa238f1a1174b3445f20564fb38` |
| 33 | `theorem` | [pow_dvd_of_le_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/pow-dvd-of-le-emultiplicity.md) | 209 | `result-track:43a7f5f8f2537f573d066e4556b4787ab2e29ab6eefa4fc5b3d8cca267487e23` |
| 34 | `theorem` | [pow_dvd_of_le_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/pow-dvd-of-le-multiplicity.md) | 219 | `result-track:e4e2ed6a69fe4abeeb549c38033bf126bfea303e22082e503e2a46a257916362` |
| 35 | `theorem` | [pow_multiplicity_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/pow-multiplicity-dvd.md) | 223 | `result-track:4db1a6f1803171ca22ef983b4de9495431581937e66f7acfbc9432ab705a1a31` |
| 36 | `theorem` | [not_pow_dvd_of_emultiplicity_lt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/not-pow-dvd-of-emultiplicity-lt.md) | 226 | `result-track:5b735b7cc7afe4baade9b004d2cd0b2be50c77e70c50487665fb8348c0521f0f` |
| 37 | `theorem` | [FiniteMultiplicity.not_pow_dvd_of_multiplicity_lt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-pow-dvd-of-multiplicity-lt.md) | 235 | `result-track:e2448aacbc24901139ba675664a12b04a16407599d110e6040463b837ae57b9a` |
| 38 | `theorem` | [multiplicity_pos_of_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-pos-of-dvd.md) | 241 | `result-track:e1c18f942b82dcb66285b4806941e6bf6bb3f903eb0173f5faacebfe48fd4ccc` |
| 39 | `theorem` | [emultiplicity_pos_of_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-pos-of-dvd.md) | 246 | `result-track:eb0307ea5beb5a19197ec27b568ea4cd07bd33fab80a546c5dac64a403ede0c8` |
| 40 | `theorem` | [emultiplicity_eq_of_dvd_of_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-of-dvd-of-not-dvd.md) | 250 | `result-track:344f5de181a4ed1b8e4b81e10cc23748e9c8fc6934f575a9f975a0a393f0b054` |
| 41 | `theorem` | [multiplicity_eq_of_dvd_of_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-of-dvd-of-not-dvd.md) | 257 | `result-track:dc22801f68b656af5f259479c6b67b25275f4a57d45a9b4f93c4fbf72c8c5b70` |
| 42 | `theorem` | [le_emultiplicity_of_pow_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/le-emultiplicity-of-pow-dvd.md) | 261 | `result-track:bbe28404e7bff36ca122682b7d6d8da66a2ec2604bbc3513973eef5e93454be0` |
| 43 | `theorem` | [FiniteMultiplicity.le_multiplicity_of_pow_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-le-multiplicity-of-pow-dvd.md) | 265 | `result-track:22d0f741a8dac6ad21dd337c81f44db2b6e334a66cff58cf4ba8de32018d82b6` |
| 44 | `theorem` | [pow_dvd_iff_le_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/pow-dvd-iff-le-emultiplicity.md) | 269 | `result-track:cf36ecff1979106e6961178173ae22b3589a75522e766fb97de147a85ad32f21` |
| 45 | `theorem` | [FiniteMultiplicity.pow_dvd_iff_le_multiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-pow-dvd-iff-le-multiplicity.md) | 273 | `result-track:71e2ea468929827a0e289fd88f2c4837fc8cfae2a836e83d40e086c2fa7f8fef` |
| 46 | `theorem` | [emultiplicity_lt_iff_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-lt-iff-not-dvd.md) | 277 | `result-track:2d6e0adf8454740abcc26577bba54a189746630ac4f0edf5664bf203a8c1014b` |
| 47 | `theorem` | [FiniteMultiplicity.multiplicity_lt_iff_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-multiplicity-lt-iff-not-dvd.md) | 280 | `result-track:1530129d20d0f5a188a8fbe6603a4651e635e7274bfdb037d6a714b6f13919c1` |
| 48 | `theorem` | [emultiplicity_eq_coe](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-coe.md) | 283 | `result-track:dfd11c68fb886aada0d654cd9f145b2c63ba97fe391e1f3140bfed6490bfced9` |
| 49 | `theorem` | [FiniteMultiplicity.multiplicity_eq_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-multiplicity-eq-iff.md) | 297 | `result-track:beaa25d569d6c9bb579cc8e701f698473174c5a59267bf436d26ea1d5876fa78` |
| 50 | `theorem` | [emultiplicity_eq_ofNat](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-ofnat.md) | 301 | `result-track:e2973cb9df2d25ec047ab59bf9cb63d470032a32cf826ffdae10df063a05bb3f` |
| 51 | `theorem` | [FiniteMultiplicity.not_of_isUnit_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-of-isunit-left.md) | 306 | `result-track:778cb1c2fa09291eb911af11bacb333df4a45d243cffa946c3aa81d77ca751c2` |
| 52 | `theorem` | [FiniteMultiplicity.not_of_one_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-of-one-left.md) | 309 | `result-track:53b7a7697a2a6dd70508484483a23ae90710e4dcd0459a104aa5257b97eb71ad` |
| 53 | `theorem` | [emultiplicity_one_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-one-left.md) | 312 | `result-track:9171e53815ad5cb0297cdd21f5f759979b4ac9c40fddc66b24756ef32b9c63c0` |
| 54 | `theorem` | [multiplicity_one_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-one-right.md) | 316 | `result-track:232ddc547355bf60976f1c80cfcc72f3cf24a49c63f782089c2086aa9bc94f5b` |
| 55 | `theorem` | [multiplicity_one_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-one-left.md) | 323 | `result-track:dbbe061b3cb910d4ee0f966485b085b09e38955f96e970ad2726c827daa952a7` |
| 56 | `theorem` | [FiniteMultiplicity.not_of_unit_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-not-of-unit-left.md) | 326 | `result-track:b7dc9543611ff7b38c15c3e515891035058aa238e417c4c6e74c40847168390e` |
| 57 | `theorem` | [emultiplicity_eq_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-zero.md) | 329 | `result-track:fb260abbc290a0840c197ff002bb374f544eddae7d1f121fd400af5cebd2aa42` |
| 58 | `theorem` | [emultiplicity_eq_zero_of_irreducible_ne](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-zero-of-irreducible-ne.md) | 336 | `result-track:8e89eed815d606e5c49623de6eb250470a42c7cb7c040178232c3e4a86bbddaf` |
| 59 | `theorem` | [multiplicity_eq_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-zero.md) | 342 | `result-track:5a215682dbcb25a6506ed568bf31bf75762438d3ed56ea902fa5e155ee418428` |
| 60 | `theorem` | [multiplicity_eq_zero_of_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-zero-of-not-dvd.md) | 346 | `result-track:c23248de7f8cd7117d710498cf91046cacf657c6a92fa414ae668e402750fd27` |
| 61 | `theorem` | [emultiplicity_ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-ne-zero.md) | 349 | `result-track:2dcbd0bbe250b079be373aeb3d5a615039eb605d6850008453ec35b56d510181` |
| 62 | `theorem` | [multiplicity_ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-ne-zero.md) | 353 | `result-track:b46e5b2261a8d94afe2afdc95f8c6466e68589d8212c09dd57d2ff9dbe48aeb4` |
| 63 | `theorem` | [FiniteMultiplicity.exists_eq_pow_mul_and_not_dvd](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-exists-eq-pow-mul-and-not-dvd.md) | 357 | `result-track:691d3807c67e8af7ebf33cc146465ba226109cc7f0c24cd5735549affb02ccf3` |
| 64 | `theorem` | [emultiplicity_le_emultiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-le-emultiplicity-iff.md) | 366 | `result-track:c5b887ff3a6157712fc47d8ad44fdda410896e68775834ef06e9a531c83b30e9` |
| 65 | `theorem` | [FiniteMultiplicity.multiplicity_le_multiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-multiplicity-le-multiplicity-iff.md) | 385 | `result-track:2107ba6c9f3b0c22e7af48bec6d810cc9de65a5fd2d1943bbbe751c757ba84e5` |
| 66 | `theorem` | [emultiplicity_eq_emultiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-emultiplicity-iff.md) | 391 | `result-track:2df6f4f6908d29df7a5fee529110e3ba2527eb483557dd9ec3425089305b15b6` |
| 67 | `theorem` | [le_emultiplicity_map](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/le-emultiplicity-map.md) | 398 | `result-track:f614dd87be8c7cb1b7f324ff86648d088968f758a2ec642649f8f568f17c0994` |
| 68 | `theorem` | [emultiplicity_map_eq](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-map-eq.md) | 403 | `result-track:3e7fb4fc247a2d6cceabe80f4a58b5c117b3bafa215a29f1e3b19829c1b1a19c` |
| 69 | `theorem` | [multiplicity_map_eq](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-map-eq.md) | 407 | `result-track:111f6244c8dd112084f4bf8a5a46f86224adca62e8c59746c698f76aeb8343b1` |
| 70 | `theorem` | [emultiplicity_le_emultiplicity_of_dvd_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-le-emultiplicity-of-dvd-right.md) | 411 | `result-track:9566a6e7f1099bc806bbb631af55c3cdd5a4918c46d4a68db890ad7c40a6765e` |
| 71 | `theorem` | [emultiplicity_eq_of_associated_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-of-associated-right.md) | 415 | `result-track:23f2620cfd9fc71c41fbd9b5b684f3c43de912a5c7a830901cb6b7f59053b526` |
| 72 | `theorem` | [multiplicity_eq_of_associated_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-of-associated-right.md) | 420 | `result-track:61cf09121f87b9a3af68dd48dd01603a69a017324ffa4f09f4387d70f7da4f8f` |
| 73 | `theorem` | [dvd_of_emultiplicity_pos](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/dvd-of-emultiplicity-pos.md) | 424 | `result-track:d7bbfd20f86220bbe145d4a70ad6c2227e94eea89ef4d84cc808128ba43444e6` |
| 74 | `theorem` | [dvd_of_multiplicity_pos](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/dvd-of-multiplicity-pos.md) | 427 | `result-track:f9b542f2e83ea5f2575b19cbf0b7b354f5b85f0d31b343da236fd949b7579864` |
| 75 | `theorem` | [dvd_iff_multiplicity_pos](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/dvd-iff-multiplicity-pos.md) | 430 | `result-track:a5304fb0ab6b4c911d1e1403d4a6fdbf1ee5543e341592b5dbffa24e9eaafb16` |
| 76 | `theorem` | [dvd_iff_emultiplicity_pos](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/dvd-iff-emultiplicity-pos.md) | 434 | `result-track:036ebf5068733e329462e2f69a652d1f8f51c2993871e101c1e0b9bbca241978` |
| 77 | `theorem` | [Nat.finiteMultiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/nat-finitemultiplicity-iff.md) | 437 | `result-track:23e3a4c94c1ea8085788b3cf2811815cef1fbf45141e0ea1430054e152b86a5c` |
| 78 | `theorem` | [FiniteMultiplicity.mul_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-mul-right.md) | 462 | `result-track:869bbf9a942fa695a6889be5a23dc7dd6521e2a58bd78020e9c5bd5e83357d14` |
| 79 | `theorem` | [emultiplicity_of_isUnit_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-of-isunit-right.md) | 465 | `result-track:56cc01826dfa7e5dcf8f32a93184b67138c14f7ccabc928e1a868b6f3f804f44` |
| 80 | `theorem` | [multiplicity_of_isUnit_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-of-isunit-right.md) | 469 | `result-track:85a7175e9bb9de399e1633500a13ab498932b6929b9273f84684a387dadef67c` |
| 81 | `theorem` | [emultiplicity_of_one_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-of-one-right.md) | 474 | `result-track:0e3a0bc06b190005e21c7d5cfd8f6e9a34a14ec2d6c521b0ba18fd8ecdc89b86` |
| 82 | `theorem` | [emultiplicity_of_unit_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-of-unit-right.md) | 479 | `result-track:dc192169e7899fceb3a732d820c31485eab37f1f12277f957b85147de3c58d73` |
| 83 | `theorem` | [multiplicity_of_unit_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-of-unit-right.md) | 482 | `result-track:dee62d7b2ffcc61d2d2050f912b64e099655b4d69848914c0709aadb7800d5f6` |
| 84 | `theorem` | [emultiplicity_le_emultiplicity_of_dvd_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-le-emultiplicity-of-dvd-left.md) | 485 | `result-track:b82aa996c0076dd405ba2946dd1ea9aea23da243d0cc60f9e5acfae22057bfa9` |
| 85 | `theorem` | [emultiplicity_eq_of_associated_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-eq-of-associated-left.md) | 489 | `result-track:b9e74fd5ae9b72ed1bf7638a83bce4c34f041e2f8e692ffe9921fd19bce97575` |
| 86 | `theorem` | [multiplicity_eq_of_associated_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-of-associated-left.md) | 494 | `result-track:91127b467ce92fe9d148bf5e286ecaee01d7fa3c5e5ea328705a62ee7416c276` |
| 87 | `theorem` | [emultiplicity_mk_eq_emultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-mk-eq-emultiplicity.md) | 498 | `result-track:2f1ebc737730405189c59704480f4250b2537678455a1ae80c43ef1d127aae31` |
| 88 | `theorem` | [FiniteMultiplicity.ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-ne-zero.md) | 508 | `result-track:6f3fc99c9a692653d71ffa0ad30121cdb497e51fdde180959d25b27f3a5face9` |
| 89 | `theorem` | [emultiplicity_zero_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-zero-right.md) | 513 | `result-track:8b970bd50ae55ec826b826d02773fc8260a8168e3677f6c8b1922dffcaf5d222` |
| 90 | `theorem` | [multiplicity_zero_right](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-zero-right.md) | 518 | `result-track:9989dcb510a0709b5a61276c5570e32adfe8afa6ff754e5eb9756c63bcf5143e` |
| 91 | `theorem` | [emultiplicity_zero_eq_zero_of_ne_zero](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-zero-eq-zero-of-ne-zero.md) | 524 | `result-track:4092db73c6fd98f59429ea7ff9ca8e5588e3d86ea951f4fdc2fea177131d6752` |
| 92 | `theorem` | [multiplicity_zero_left](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-zero-left.md) | 528 | `result-track:09fbd4080f72b655c7346520ad5e4b99f4e9429e06d3a2a8ac9107c6cdeb6992` |
| 93 | `theorem` | [FiniteMultiplicity.or_of_add](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-or-of-add.md) | 542 | `result-track:8bf3e1893d3de2b0980a062c99017613bcb64c7bdff3d5cd41789af63b849891` |
| 94 | `theorem` | [min_le_emultiplicity_add](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/min-le-emultiplicity-add.md) | 548 | `result-track:361b4eaba6cb4fdd8d8752936a313fb8d2f7c2c92032c5ce1fb64b83dce21b47` |
| 95 | `theorem` | [FiniteMultiplicity.neg_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-neg-iff.md) | 565 | `result-track:cb207c67f1e11d993ac88bd15ab737210fa1d8da2e534f311d9c93adbad73f53` |
| 96 | `theorem` | [emultiplicity_neg](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-neg.md) | 574 | `result-track:385799a1bb20389c626a232f93a85b25243ac0c4c91d7d71eab198fa085cb0ac` |
| 97 | `theorem` | [multiplicity_neg](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-neg.md) | 579 | `result-track:54fb2b36fda6b167a0dbc8496d51d74e8d0dccaa67ff026ee5471a071bc307b3` |
| 98 | `theorem` | [Int.emultiplicity_natAbs](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-emultiplicity-natabs.md) | 582 | `result-track:eb2c78eb09861bd7df92d8b002a1d3200eea8e92a9c17c457a2a72c70017638b` |
| 99 | `theorem` | [Int.multiplicity_natAbs](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-multiplicity-natabs.md) | 588 | `result-track:2e510d37f47181d8b1db135cabcc9e1ac8c4062511d4d17961ef7960b37b40d6` |
| 100 | `theorem` | [emultiplicity_add_of_gt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-add-of-gt.md) | 592 | `result-track:366d4c52328247bdd24b5e13e06c63d38ce262d709eb3bbcb1fb892399aabc57` |
| 101 | `theorem` | [FiniteMultiplicity.multiplicity_add_of_gt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-multiplicity-add-of-gt.md) | 607 | `result-track:a1b2d2d0ffc8b6bd0e8aebf59733ea01b5e496c7fc83a107cf9f9c0407d03d92` |
| 102 | `theorem` | [emultiplicity_sub_of_gt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-sub-of-gt.md) | 613 | `result-track:27bb8bb948b90089956d91088279c6e4cc49e537bb0db69c6fd411b95294cbbf` |
| 103 | `theorem` | [multiplicity_sub_of_gt](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-sub-of-gt.md) | 617 | `result-track:f49e1957f0072f24b4b1ddae4d63e63da1efcef404b591426a32e27fe17a7c2a` |
| 104 | `theorem` | [emultiplicity_add_eq_min](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-add-eq-min.md) | 621 | `result-track:c0f221c24fd86c430e35b071b9cdc7dd53a8dce22b77c0f5261d71a03758cb73` |
| 105 | `theorem` | [multiplicity_add_eq_min](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-add-eq-min.md) | 631 | `result-track:761c45e876b1727739df1562a961f5254b822cf6ee7bdf017c61c2b2150509c5` |
| 106 | `theorem` | [finiteMultiplicity_mul_aux](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-mul-aux.md) | 647 | `result-track:25b8fc15c04ef2d0dd909f82a48e9311d0710e52ea3846e121215d02a9efe433` |
| 107 | `theorem` | [Prime.finiteMultiplicity_mul](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/prime-finitemultiplicity-mul.md) | 679 | `result-track:283c39472563252ffbc6171502db4c1fbc506b93996786c81df695f0884a9aaf` |
| 108 | `theorem` | [FiniteMultiplicity.mul_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-mul-iff.md) | 683 | `result-track:ad4b20472e3177f089abb8a11cec5560c9aa47aae4551b78d8577331edf0f5d8` |
| 109 | `theorem` | [FiniteMultiplicity.pow](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-pow.md) | 688 | `result-track:6c199b4b31f6aa4cc23199dc65faaebbe712054be9592052c1391f78a8a320db` |
| 110 | `theorem` | [multiplicity_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-self.md) | 695 | `result-track:dd4f7d687552367b4abad79120c221da86c5a2e0a8bc8114705a6407eb576e11` |
| 111 | `theorem` | [FiniteMultiplicity.emultiplicity_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-emultiplicity-self.md) | 707 | `result-track:656130958190b689c4fc0488094955d062a0923dcd4ebe2ed0690d874f3e2b2d` |
| 112 | `theorem` | [multiplicity_mul](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-mul.md) | 711 | `result-track:fc296b64ed6cc7c9f5fd7796509f1521a035bdd83585178264a01c891f1c1b74` |
| 113 | `theorem` | [emultiplicity_mul](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-mul.md) | 725 | `result-track:3eb5d34c41ef49fdb13dcc68d6ca8801bda408ab25addb2f1e9965955e76b12a` |
| 114 | `theorem` | [Finset.emultiplicity_prod](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finset-emultiplicity-prod.md) | 736 | `result-track:9b4d497fbe0efbae74697acc7f210b5b2e818538b200396bb88b66d8a25df316` |
| 115 | `theorem` | [emultiplicity_pow](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-pow.md) | 744 | `result-track:ce5c545d52cbae2e836e3f33f2cb66ec0c5e1120ea8e3a5c48c184a7efa5d5e2` |
| 116 | `theorem` | [FiniteMultiplicity.multiplicity_pow](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/finitemultiplicity-multiplicity-pow.md) | 750 | `result-track:2dd915ab0a4ca307e281ae90135a35e60df018b69a97ff2428c1efaa258c580e` |
| 117 | `theorem` | [emultiplicity_pow_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-pow-self.md) | 755 | `result-track:1acaf172f6e19c178c4042a84470554deae2d413b9c75f7cf9d92ce0a3b5161b` |
| 118 | `theorem` | [multiplicity_pow_self](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-pow-self.md) | 762 | `result-track:846454075f5e7865fdc11306caa49571084168257c66aef670b30abf06a766ee` |
| 119 | `theorem` | [emultiplicity_pow_self_of_prime](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/emultiplicity-pow-self-of-prime.md) | 766 | `result-track:2131937065fce5b5a0fa819796b7a64fd0bfc8ed3702f0c147eae1453e7068e3` |
| 120 | `theorem` | [multiplicity_pow_self_of_prime](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-pow-self-of-prime.md) | 770 | `result-track:d29e2a3626d517df6a8bb0410d804675bba0148cb350674a920f1b4b181dd0f5` |
| 121 | `theorem` | [multiplicity_eq_zero_of_coprime](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/multiplicity-eq-zero-of-coprime.md) | 778 | `result-track:a2db922b0e4441cdd24516a3a68cac3d3a864ba16d2d4a9cd71332c485e20ff3` |
| 122 | `theorem` | [Int.finiteMultiplicity_iff_finiteMultiplicity_natAbs](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-finitemultiplicity-iff-finitemultiplicity-natabs.md) | 792 | `result-track:45a453abda015f0b37348621c4113198b3274ea01450509dc9dbfac149f62ac4` |
| 123 | `theorem` | [Int.finiteMultiplicity_iff](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-finitemultiplicity-iff.md) | 796 | `result-track:b23d14d9b8f7e677121f1d0123d4dcb8f037580d5b66180198341158d7819f92` |
| 124 | `instance` | [Nat.decidableFiniteMultiplicity](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/nat-decidablefinitemultiplicity.md) | 800 | `declaration-track:da787c665432c04c9e948415389e73d2359bef09d26bc8b8e4de6ba37109c970` |
| 125 | `instance` | [Int.decidableMultiplicityFinite](../../../../CommutativeAlgebra/RingTheoryMultiplicityNamespacedPublic.lean/declarations/int-decidablemultiplicityfinite.md) | 803 | `declaration-track:8cd64da04e595f1e769786f550bd6b8cfa544d33c5ee41e943ed6a2b14aec53a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86009a2ce7769de99199764f8f6efdd17579ca27e3a7bccd208a61cf9e86a554 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
