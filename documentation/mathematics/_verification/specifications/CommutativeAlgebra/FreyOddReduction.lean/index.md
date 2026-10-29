# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4b87626794d06bcd42bb0fdb344f8d077f7f07d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FreyOddReduction.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FreyOddReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4b87626794d06bcd42bb0fdb344f8d077f7f07d`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality`](../../../../CommutativeAlgebra/UnitInvariantMinimality.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedJInvariant`](../../../../NumberTheory/DiophantineEquations/FreyMarkedJInvariant.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.RingTheory.DedekindDomain.Dvr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maximal` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePlace](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/primeplace.md) | 26 | `declaration-track:e392d90d7643ad11f67206de9c9de0f6b5b55ccc64694af3ed91929f6770dc31` |
| 2 | `abbrev` | [LocalRing](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localring.md) | 35 | `declaration-track:95e2aa6dc32bbf9f1549d4f7d7797d880c717a17a92e63c4770f45dbb12b346f` |
| 3 | `instance` | [localDiscreteValuationRing](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localdiscretevaluationring.md) | 39 | `declaration-track:3167de97341b9ece9d0bf627e292f06bb812f9703e16554e83f6bcfd8b033ee9` |
| 4 | `theorem` | [int_unit_iff](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/int-unit-iff.md) | 45 | `result-track:01c236ed595d6b68f23c5d55f913f9540da2d1a6d3d4191437d3d818289779b9` |
| 5 | `def` | [localizedModel](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localizedmodel.md) | 52 | `declaration-track:447b2c7b9fd31b6fa8dd316ad0a0404d31f156496a7e267799907a629d43568a` |
| 6 | `theorem` | [localizedModel_baseChange](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localizedmodel-basechange.md) | 57 | `result-track:89ecb6d2ebc1ee0eaa3c67837c044bb5c670f9611ecf6a0c5f12db8262a461b4` |
| 7 | `theorem` | [curve_integral](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/curve-integral.md) | 66 | `result-track:8bcaec06c035a1fa647e5004793a0b16c00186af0aecf580d7ebd254188cd16e` |
| 8 | `theorem` | [localized_delta_unit_iff](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localized-delta-unit-iff.md) | 71 | `result-track:898b827c2282ae9be381e68325b65fc3219f513ab21051fe104e14f979611ff2` |
| 9 | `theorem` | [localized_c4_unit](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localized-c4-unit.md) | 78 | `result-track:43c91b5aa060d2ec16e39d98ea473155bf08514a3b55ef7136d7987352b6deac` |
| 10 | `theorem` | [good_at_odd_prime](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/good-at-odd-prime.md) | 85 | `result-track:e07c9622eddd426125dce2e3302c950934db141355fa63fd851a7f3abcdefca2` |
| 11 | `theorem` | [multiplicative_at_odd_prime](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/multiplicative-at-odd-prime.md) | 93 | `result-track:a05fece58aca6a8bc37000c3819df55825d678348f77bebad36fedbaf79ddb52` |
| 12 | `theorem` | [minimal_at_odd_prime](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/minimal-at-odd-prime.md) | 104 | `result-track:01aeea650bf2e81d7c0ea9ed524320f0bd6f613be93fc1d930be41a618e0bd4f` |
| 13 | `theorem` | [good_iff_at_odd_prime](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/good-iff-at-odd-prime.md) | 110 | `result-track:e7ea96a71f3b85a22a7cdde0dbca30b6742d852a3fb6556868c8747e48c568ce` |
| 14 | `theorem` | [multiplicative_iff_at_odd_prime](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/multiplicative-iff-at-odd-prime.md) | 118 | `result-track:04dcf32cea237fa4481784e289b59b1216b61aba05a488e2a653dc2b0f506b44` |
| 15 | `theorem` | [not_additive_at_odd_prime](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/not-additive-at-odd-prime.md) | 127 | `result-track:d18c5341430ecdd10a5afcfc5813e8bfacd58e558da36207bb71c7c6c8adf7f2` |
| 16 | `theorem` | [multiplicative_iff_markedSupport](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/multiplicative-iff-markedsupport.md) | 135 | `result-track:ac825586414c5e8fe0a2b9f9405d7a9b27a365f6bad74dc2282469656c3828d9` |
| 17 | `theorem` | [multiplicative_iff_chartSupport](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/multiplicative-iff-chartsupport.md) | 145 | `result-track:ecea75088385a2f3e7a332c662363776d14f9268289626b3c003a3cf51f2ab8f` |
| 18 | `theorem` | [raw_discriminant_natAbs](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/raw-discriminant-natabs.md) | 154 | `result-track:16ae12ee34ba53520813f75c21cd745eac540b267b4434614a199fd5e1548ce9` |
| 19 | `theorem` | [odd_discriminant_depth](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/odd-discriminant-depth.md) | 163 | `result-track:0279c285c955b815bb784c5f4ad9adc52a64332530a5a13a5ce2489a1ef3b511` |
| 20 | `theorem` | [localized_delta_nonunit_at_two](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localized-delta-nonunit-at-two.md) | 176 | `result-track:2028e8092a2e290cd8f9fc20d73a25a9e6b472a99c439dda661c835a2a927b43` |
| 21 | `theorem` | [localized_c4_nonunit_at_two](../../../../CommutativeAlgebra/FreyOddReduction.lean/declarations/localized-c4-nonunit-at-two.md) | 185 | `result-track:aa34bc9cbd22047bdd13f7611ef3d5168b1565e028537863f2d9a999b3380370` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f507eb2de6979f6941a983f90d369297affff39b5792196606bf62962ff2483 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddReduction.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
