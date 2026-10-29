# Verification target: Nilpotent Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179884a30f33bf3eeddb76c17eb9e662a90c88b3",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179884a30f33bf3eeddb76c17eb9e662a90c88b3`.

Source path: `GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finprod` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNilpotent.neg](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-neg.md) | 47 | `result-track:d962a6e5e3e861b181ec6f6d2a921b6e9aae2ba81e1b7892affa53efe3026eea` |
| 2 | `theorem` | [isNilpotent_neg_iff](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-neg-iff.md) | 53 | `result-track:bd4ad7bdaf653620a335056f3a746776ce662464d7642d12e7bf015617186705` |
| 3 | `lemma` | [IsNilpotent.smul](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-smul.md) | 56 | `result-track:f01e0adfd50170ddfdb1c6f76b1666ed4a803305cae17c019ac580b2b10ba64b` |
| 4 | `theorem` | [IsNilpotent.isUnit_sub_one](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-isunit-sub-one.md) | 63 | `result-track:4705707de0570a361af4c6d07213ce61be06cb2eda77ba5830611e557be74dbe` |
| 5 | `theorem` | [IsNilpotent.isUnit_one_sub](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-isunit-one-sub.md) | 69 | `result-track:fffdb23a1d324bec6162453e217175fd08d15b19db23045f6aca274df472b42e` |
| 6 | `theorem` | [IsNilpotent.isUnit_add_one](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-isunit-add-one.md) | 73 | `result-track:6b52dc115629f546d0fdae2e62f244890608769d7c4bd6c5e79ea5173607b3a2` |
| 7 | `theorem` | [IsNilpotent.isUnit_one_add](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-isunit-one-add.md) | 77 | `result-track:e54207ce5b1ef852a11f014ff510defac8f9e5507171896d62ae3075bb71151a` |
| 8 | `theorem` | [IsNilpotent.isUnit_add_left_of_commute](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-isunit-add-left-of-commute.md) | 80 | `result-track:4496ca1f9040bdd3c51991943c5faa481181a4057cae98ed394293a0296c5698` |
| 9 | `theorem` | [IsNilpotent.isUnit_add_right_of_commute](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-isunit-add-right-of-commute.md) | 88 | `result-track:70a0025416d9a58544c4d4c963cde783950fce69aba9b73099cdf0c695320d9a` |
| 10 | `lemma` | [IsUnit.not_isNilpotent](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isunit-not-isnilpotent.md) | 93 | `result-track:27ee86e6edb7b4644318a077a2540bed84fe671cde4540f465291e937c0089a6` |
| 11 | `lemma` | [IsNilpotent.not_isUnit](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-not-isunit.md) | 98 | `result-track:bacb0fc8adc971ec423c10af516e001b57b1df90c2ce2cff555a5bbb1c1761b5` |
| 12 | `lemma` | [IsIdempotentElem.eq_zero_of_isNilpotent](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isidempotentelem-eq-zero-of-isnilpotent.md) | 102 | `result-track:f7d6c625306c6c663fa38b4ab0b57809497453ae2ff560c3e0d0ab343e043667` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/instance.md) | 110 | `declaration-track:26d8df38fbf7fccf2284aac60b9112133cc4e8f476e260b7bb739fce40d6c300` |
| 14 | `theorem` | [Prime.isRadical](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/prime-isradical.md) | 114 | `result-track:206c814fc73ab6e49f75df5f1644bc2fae5373e7c72c5c3575d7f124acfd32f7` |
| 15 | `theorem` | [zero_isRadical_iff](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/zero-isradical-iff.md) | 117 | `result-track:ed30b828d25e1e04afc46940e1541360ca0a5c09586c0ca5061ac1be2d4673be` |
| 16 | `theorem` | [isReduced_iff_pow_one_lt](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isreduced-iff-pow-one-lt.md) | 121 | `result-track:6dde5f60028a3d9ced1df2241f9e1263b4dcd48163b85e4c5969fcca5b628db7` |
| 17 | `theorem` | [IsRadical.of_dvd](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isradical-of-dvd.md) | 125 | `result-track:ce61a67f4f1b87923133a8e46902094d9dc4860f52ecefc7a87a160dd2affc99` |
| 18 | `theorem` | [add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/add-pow-eq-zero-of-add-le-succ-of-pow-eq-zero.md) | 137 | `result-track:bcab2ddf9d0c749d53892b2ae1b9e65292bb45872943951709482ab6b5077f05` |
| 19 | `theorem` | [add_pow_add_eq_zero_of_pow_eq_zero](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/add-pow-add-eq-zero-of-pow-eq-zero.md) | 149 | `result-track:384565909db9d1ef9082e144678a1d7f9091f638bf0181392f079fa0cd690b89` |
| 20 | `theorem` | [isNilpotent_add](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-add.md) | 154 | `result-track:6bf8c38e43373cb5ba81efcf4e644163f6e7846a7772cbeaaa6c9c9e07f777ff` |
| 21 | `lemma` | [isNilpotent_sum](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-sum-source-edition-2.md) | 160 | `result-track:8af6f87eefa42649e9c4043b948caf8fe2facb0cb2eaa159533429d179b1043e` |
| 22 | `theorem` | [isNilpotent_finsum](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-finsum.md) | 174 | `result-track:27ababf1bc9de5969a37c5a31179dc5997714c13c7ce0854ea11dfc9c592cb46` |
| 23 | `lemma` | [isNilpotent_mul_left_iff](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-mul-left-iff.md) | 183 | `result-track:637c33c72f15c110ea03f95384f2ff65efeb60a25014b1f8bc5d27780b7e4755` |
| 24 | `lemma` | [isNilpotent_mul_right_iff](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-mul-right-iff.md) | 190 | `result-track:9b8b4e5b4ed4b1bb1bdbab8cfb7cc86bc4d1fd22e413352592d1ddcff7e96c78` |
| 25 | `theorem` | [isNilpotent_sub](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-sub.md) | 203 | `result-track:6edd99ac5a83b485e708a77c335a8911c4a3429c8c7cb43ee28edfb8abd54b3a` |
| 26 | `lemma` | [isNilpotent_sum](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-sum.md) | 218 | `result-track:2c6ef30b630a99d0bd27f94f1f8777ae8c0ddce49ce2a8678aa359b5ea1bc543` |
| 27 | `theorem` | [isNilpotent_finsum](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/isnilpotent-finsum-source-edition-2.md) | 223 | `result-track:2a5cbbb64c8babe0078b49e9cd2a22f2baa78f86298e5abb77ccf694ce995e65` |
| 28 | `lemma` | [NoZeroSMulDivisors.isReduced](../../../../CommutativeAlgebra/NilpotentBasicNamespaced.lean/declarations/nozerosmuldivisors-isreduced.md) | 230 | `result-track:9e88887a9787f71677ccea1286202745cc16e5834b630fbc856c771c5f19830f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=145efa9798c8e5a4e899908575d299fccc7211bf909e66570eef87e7f3f3f212 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Basic/Variant27587caa6d77c5035d60ee22aba5648a7517f8a1fcd0a7c8ed5f58ae90e78e93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
