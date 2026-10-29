# Verification target: Ring Abs Odd Abs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a8f09f5b74f579e6a71c525987be701083ed40d",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a8f09f5b74f579e6a71c525987be701083ed40d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mabs_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/mabs-zpow.md) | 23 | `result-track:c6cfff9017a52628f31c8d7c3ffa1fd37e54d9433088304785495ddd286f33c8` |
| 2 | `lemma` | [odd_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/odd-abs.md) | 33 | `result-track:99964b2c90688a792fc3bd78e1e5a5b9298924d2e2afffe201c730c2ea6a730c` |
| 3 | `lemma` | [abs_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-one.md) | 40 | `result-track:f110afedec379cf1538d8500642d06bfecb81ee96512b7758c16142f6f138b8b` |
| 4 | `lemma` | [abs_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-two.md) | 42 | `result-track:b21f011dd95c0c998d722f5795f262ba30d5cfe13293008fec4c770910aedf49` |
| 5 | `lemma` | [abs_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-mul.md) | 44 | `result-track:53f78c0080b96676f97ecf996511f7a49ad4228184655bda1a41dacfcdbbe5c2` |
| 6 | `def` | [absHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abshom.md) | 51 | `declaration-track:579b4d29a5b0243ad39f3dca3ccca30c60bab5fb4f099e95192ce5eb5c0aa7d6` |
| 7 | `lemma` | [abs_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-pow.md) | 58 | `result-track:37b2223ad1dae191d9c1f2b1a44d0d121aa666b17e5ce7d83ca75d2221711e69` |
| 8 | `lemma` | [pow_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-abs.md) | 60 | `result-track:fdda3a8bb8aef9e0ce634c029676d99b41685661031fb09643f983b34ca8b477` |
| 9 | `lemma` | [Even.pow_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/even-pow-abs.md) | 62 | `result-track:aa24899d66b5c45e8b4eedb5dd80dc5977441f59e0c909099e5f9baca575f3c8` |
| 10 | `lemma` | [abs_neg_one_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-neg-one-pow.md) | 65 | `result-track:31b64d05a3d2780a9bcdfd22320e3180a702f0acb4613616607043ca22616b3e` |
| 11 | `lemma` | [abs_pow_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-pow-eq-one.md) | 67 | `result-track:7bcd0fc304d429e04f936fb0de074820e505db2523b5452b082e0e8619afb4bf` |
| 12 | `lemma` | [abs_mul_abs_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-mul-abs-self.md) | 72 | `result-track:20c44bc4b8076fb48dccbd59dfa1b086e87653d5b0c13ad45687dc922aaa6751` |
| 13 | `lemma` | [abs_mul_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-mul-self.md) | 76 | `result-track:dcd43ee7c57f91b9db789e448445a35d68aae06ec280184a2b0fa33cbfa2bee0` |
| 14 | `lemma` | [abs_eq_iff_mul_self_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-eq-iff-mul-self-eq.md) | 78 | `result-track:339d24824dfab0fe8f0f86d5900a0282574251f3f8d44c9f9eabcf96529fa01d` |
| 15 | `lemma` | [abs_lt_iff_mul_self_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-lt-iff-mul-self-lt.md) | 82 | `result-track:2d31515fcdbbd5476b8648333093752fe1ea345f0979b898b2fcd395d90db645` |
| 16 | `lemma` | [abs_le_iff_mul_self_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-le-iff-mul-self-le.md) | 86 | `result-track:6e410d6bc48414e733d4e558251d3c8c56fa00d3e62871fabbc131fb691d2b41` |
| 17 | `lemma` | [abs_le_one_iff_mul_self_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-le-one-iff-mul-self-le-one.md) | 90 | `result-track:c1e80c290aa75df29827c7649fe23048df6f3b341d6a746f7911b1b50fe2a97c` |
| 18 | `lemma` | [sq_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-abs.md) | 94 | `result-track:e990fd0e9058a8fe1557fb5dd88d3b60d1ab43118ebcb2cd37865774213027a7` |
| 19 | `lemma` | [abs_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-sq.md) | 96 | `result-track:01bb2322d2aa96decc804844a92405ab2c4f7c1555a1e9fb9a523d0f9ef63579` |
| 20 | `lemma` | [sq_lt_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-lt-sq.md) | 98 | `result-track:5a389ec89ab49bebb059f2790d14327c5207d30a156019a484fffec2e7c3cbee` |
| 21 | `lemma` | [sq_lt_sq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-lt-sq-source-edition-2.md) | 101 | `result-track:729502d02dd4b5de6673d04b7540e296ec17918826c2d4c4d615678965208470` |
| 22 | `lemma` | [sq_le_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-le-sq-source-edition-2.md) | 104 | `result-track:6c3d9873ba5037273c52f29cf195e7f09ea74107169bcb157c1ff1fe37ec2ad6` |
| 23 | `lemma` | [sq_le_sq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-le-sq.md) | 107 | `result-track:2af73200bfdb48624b06e498a3c3b8ecc4b32fea13ef26369c48a0ea25f778bf` |
| 24 | `lemma` | [abs_lt_of_sq_lt_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-lt-of-sq-lt-sq.md) | 110 | `result-track:725ae505a856fc4e8d31c9d4a05b52ce649807fab9caee35554b1cf678556b56` |
| 25 | `lemma` | [abs_lt_of_sq_lt_sq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-lt-of-sq-lt-sq-source-edition-2.md) | 113 | `result-track:db950c3dea3dbb7d5c7f95e50e640c27cefde388817bc4cfb1c94e1aeb7cf583` |
| 26 | `lemma` | [abs_le_of_sq_le_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-le-of-sq-le-sq.md) | 116 | `result-track:ada4d54829e736cc68a6220cb095f9fb0318cdaaa1a81e02cae86ee30ce0e5d5` |
| 27 | `theorem` | [le_of_sq_le_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/le-of-sq-le-sq.md) | 119 | `result-track:7cd17c0a2b020f0129ff4b4949f689f3873bcb03376d47925888242f6321daf8` |
| 28 | `lemma` | [abs_le_of_sq_le_sq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-le-of-sq-le-sq-source-edition-2.md) | 122 | `result-track:b3fdb88c0bbee65cdc8e3b8067150230884c6ec37cb09baeb5e2fc6ed56fbb14` |
| 29 | `lemma` | [sq_eq_sq_iff_abs_eq_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-eq-sq-iff-abs-eq-abs.md) | 125 | `result-track:65ab03720c92441851bb6dbe641bb12c989948aacce05224afa23a80e49d0f12` |
| 30 | `lemma` | [sq_le_one_iff_abs_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-le-one-iff-abs-le-one.md) | 128 | `result-track:0356a547afb4cd1ffbaf4b5c4171eb098d3f86b15c583d8a111f52701de630de` |
| 31 | `lemma` | [sq_lt_one_iff_abs_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/sq-lt-one-iff-abs-lt-one.md) | 131 | `result-track:4176949f7db5a8db5188c4063da1da91d98a57880df79bfa3ee30f8ae0ec2e39` |
| 32 | `lemma` | [one_le_sq_iff_one_le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/one-le-sq-iff-one-le-abs.md) | 134 | `result-track:93643eea1657b4e57b4e6f0095d58e5dd053a490ab059e2a6085782a66ef46c8` |
| 33 | `lemma` | [one_lt_sq_iff_one_lt_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/one-lt-sq-iff-one-lt-abs.md) | 137 | `result-track:9530d3f27fe2b68e411d495aa37cb53e7e40b9e7ec916d5512e590b6487ebb79` |
| 34 | `lemma` | [exists_abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/exists-abs-lt.md) | 140 | `result-track:874f043995a3ccabb31119e09ece9e6928d4b119b318e029f68eb78d4e4af4c2` |
| 35 | `theorem` | [abs_sub_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-sub-sq.md) | 151 | `result-track:4d911717217c5f99aef8372b2f805f95cd0c5ce450c41c5f801ca5a48fb04caf` |
| 36 | `lemma` | [abs_unit_intCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-unit-intcast.md) | 156 | `result-track:f68a7f94200e8efa59964cdfd545ad81fbfa64607964b7558640fa5b38be18d7` |
| 37 | `def` | [geomSum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/geomsum.md) | 159 | `declaration-track:36415f8ed8de522b3fbe0461bc6963c870066ae7f18672b0d7e07f3a0c1b66b9` |
| 38 | `theorem` | [abs_geomSum_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-geomsum-le.md) | 163 | `result-track:dce03c26535b3f30a8f0feda1b37b48547634e2d20819858155677b1adeab712` |
| 39 | `theorem` | [pow_sub_pow_eq_sub_mul_geomSum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-sub-pow-eq-sub-mul-geomsum.md) | 173 | `result-track:8d09489d7aa67d9a94bb0e14940d939a048d7208f41857070dab11342d0ba952` |
| 40 | `theorem` | [abs_pow_sub_pow_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-pow-sub-pow-le.md) | 179 | `result-track:e92c2d1b3deefe45c45bbeeca5843ec978459f76aa3f1ae17ed8551e94a77b65` |
| 41 | `theorem` | [abs_dvd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-dvd.md) | 191 | `result-track:2b704e2b57adb681245b2b0ca99cf7278b85d41ed0cedf860ced95ca3fb9e14f` |
| 42 | `theorem` | [abs_dvd_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-dvd-self.md) | 194 | `result-track:c2a96027165d5033117b703303fa04611cc850f6eba782cdfa8289f415e4ff78` |
| 43 | `theorem` | [dvd_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/dvd-abs.md) | 198 | `result-track:1e5c4cf71fee75e5d285fb2be20c70c2708b8b6b3ec88fb47cb35c4d132ca2f9` |
| 44 | `theorem` | [self_dvd_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/self-dvd-abs.md) | 201 | `result-track:2cefc5a39147735a53c1b7728ea5a75f8036056eafce3b7bf7a52ff6f7c7db31` |
| 45 | `theorem` | [abs_dvd_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/abs-dvd-abs.md) | 204 | `result-track:0137dbd2630786fbcc14f7c6ee07af585609f130b6ee233b4379c1a1ceac00f4` |
| 46 | `lemma` | [pow_eq_pow_iff_of_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-eq-pow-iff-of-ne-zero.md) | 214 | `result-track:a734680428eb2325e3ec431c6953ec13e9b41a36723c983b3a410509f1708e2e` |
| 47 | `lemma` | [pow_eq_pow_iff_cases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-eq-pow-iff-cases.md) | 220 | `result-track:93e4c9cafbc4e9cc4661e442bef185d24daa3cc022b06e5b4971ae2aaa7dc056` |
| 48 | `lemma` | [pow_eq_one_iff_of_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-eq-one-iff-of-ne-zero.md) | 223 | `result-track:bcd5611587a8fe427e799f76807b240c2a2e413fc15acf2b45a9c274985fc45d` |
| 49 | `lemma` | [pow_eq_one_iff_cases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-eq-one-iff-cases.md) | 226 | `result-track:82c3b1d99690dada013bb43d583ad183df1cb7d4d809b04f1e434d9d858bb1b2` |
| 50 | `lemma` | [pow_eq_neg_pow_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-eq-neg-pow-iff.md) | 229 | `result-track:b56740e6d60fc9d73fb95fafef56f1ea3720c63738893f8f155e5722edaf0815` |
| 51 | `lemma` | [pow_eq_neg_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/pow-eq-neg-one-iff.md) | 237 | `result-track:5c9c356201e00b94ef672ebcb9a4dcf3b4431c3e85a8b8eb9827f9d39d5647b8` |
| 52 | `lemma` | [Odd.mod_even_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/odd-mod-even-iff.md) | 245 | `result-track:79d5a40257b21b22d3a0842e38b5a8c07fe8fae9b0942fea7f3366b377c4efdf` |
| 53 | `lemma` | [Even.mod_even_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/even-mod-even-iff.md) | 250 | `result-track:faad8524ef0a44e984c002d9ec324eba47806405df0747d9c654af047b062533` |
| 54 | `lemma` | [Odd.mod_even](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/odd-mod-even.md) | 255 | `result-track:73d62e0b9ccb6230028fd1ea66db88d80c72ec74ce5ad0af0695908b1017bd41` |
| 55 | `lemma` | [Even.mod_even](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/even-mod-even.md) | 258 | `result-track:fb174d3421b94021dd491e60434a1144f5e1a9d1aa923662716d52dca2bc41d5` |
| 56 | `lemma` | [Odd.of_dvd_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/odd-of-dvd-nat.md) | 261 | `result-track:4f518810ea00ada7ab0063d8f8375ea69fcc7f6dd76e19e4ba04bb9b19e1cf1d` |
| 57 | `lemma` | [Odd.ne_two_of_dvd_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingAbsOddAbs.lean/declarations/odd-ne-two-of-dvd-nat.md) | 265 | `result-track:97ccf475b2d05a5ea48bb0dd911b5c58bb60d1a8256f105065380000268675cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb226beafd58bd36102e25a6291737f39023b4a8f3799b89302ef0b41a389216 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Abs/Variantd262e344f6e7cd401678f8abf784aee27643f9b44f3daee2649d55f0ed52bc9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
