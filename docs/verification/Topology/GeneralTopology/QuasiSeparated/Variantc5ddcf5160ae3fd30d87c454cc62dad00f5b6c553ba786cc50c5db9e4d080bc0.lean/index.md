# Verification target: GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2fdd2e6d0cdd0aba16037b320847a2049972835",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2fdd2e6d0cdd0aba16037b320847a2049972835`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Constructors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Equalizer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.CommRingCat` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparated--0673dd6382ec3db26babdc1a.md) | 55 | `declaration-track:0673dd6382ec3db26babdc1a97fbc5b6888f3c6ed0fe1b3b7b4ff3f1e0c168c9` |
| 2 | `theorem` | [quasiSeparatedSpace_iff_affine](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparatedspace-iff-affine--774f5dd3b07a24107e733342.md) | 59 | `result-track:774f5dd3b07a24107e7333429c4ea9bfbaebf5eefbd675fba60ffd08c82e4ff8` |
| 3 | `theorem` | [quasiCompact_affineProperty_iff_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasicompact-affineproperty-iff-quasiseparatedspace--258753bb882318a29d816450.md) | 85 | `result-track:258753bb882318a29d8164505cb7e57723a8347fb6e4d37bb475ac5ff9941aa7` |
| 4 | `theorem` | [quasiSeparated_eq_diagonal_is_quasiCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparated-eq-diagonal-is-quasicompact--5fe853129966071693c96381.md) | 114 | `result-track:5fe853129966071693c96381d5731e9d8c837c92bc6d201a43a32fb6fce7783d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--e8c08ed30e2e1f31329698ad.md) | 117 | `declaration-track:e8c08ed30e2e1f31329698adcaea83fe4214ff88b619f8cb7c011b6f4a663664` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--ffcc159b17a6c362da1d4046.md) | 122 | `declaration-track:ffcc159b17a6c362da1d4046ce28ee7b32708310c40acb52508894bb3bc35087` |
| 7 | `instance` | [quasiSeparated_isStableUnderComposition](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparated-isstableundercomposition--ef7b3e17d0ea3a058567e9a8.md) | 125 | `declaration-track:ef7b3e17d0ea3a058567e9a8d3084022584809e279162a9b12bd2b4348dc1f55` |
| 8 | `instance` | [quasiSeparated_isStableUnderBaseChange](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparated-isstableunderbasechange--3bf17bea3c5027852608c349.md) | 129 | `declaration-track:3bf17bea3c5027852608c349917c756659e591c76919e690a80ad9bee289c801` |
| 9 | `instance` | [quasiSeparatedComp](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparatedcomp--23dc4eabdcce2f283b520e49.md) | 133 | `declaration-track:23dc4eabdcce2f283b520e49c6a3bf5e7c0a8752f91472f4cc5e5303079afe74` |
| 10 | `theorem` | [quasiSeparated_over_affine_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparated-over-affine-iff--d37002fba5a1b158e8ef260c.md) | 137 | `result-track:d37002fba5a1b158e8ef260cc450f0e34e63be722f422e202ef1e040b4824a7f` |
| 11 | `theorem` | [quasiSeparatedSpace_iff_quasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparatedspace-iff-quasiseparated--7b85f2e299aeb1d097abb8c8.md) | 141 | `result-track:7b85f2e299aeb1d097abb8c86e08a421d087aaa62ad24d6f0304206fa092bdfc` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--c852330597f934b645f37868.md) | 145 | `declaration-track:c852330597f934b645f378682782f977c688060930186573882856841d071960` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--8e4716cb790dd4cd6d298792.md) | 149 | `declaration-track:8e4716cb790dd4cd6d2987920e7c84d40a8f981545d2ede6fa678788710b0e11` |
| 14 | `theorem` | [quasiSeparatedSpace_of_quasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparatedspace-of-quasiseparated--300503e920936d801fb8dff4.md) | 153 | `result-track:300503e920936d801fb8dff4c317e76540f6f400a91cc1e58cf70c2500168724` |
| 15 | `instance` | [quasiSeparatedSpace_of_isAffine](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparatedspace-of-isaffine--d6ac22e32e10cabbba181cf2.md) | 159 | `declaration-track:d6ac22e32e10cabbba181cf28885ea86accb1f95ce95d4bdb2937173701bd56d` |
| 16 | `theorem` | [IsAffineOpen.isQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/isaffineopen-isquasiseparated--9b33a600fc6e418b0c35dfe4.md) | 162 | `result-track:9b33a600fc6e418b0c35dfe492fe2794f771425963a2186d8e02cf2eaeb3f010` |
| 17 | `lemma` | [quasiSeparatedSpace_iff_quasiCompact_prod_lift](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparatedspace-iff-quasicompact-prod-lift--824b474fc48d214ab87ce63a.md) | 167 | `result-track:824b474fc48d214ab87ce63aa4faf5bdaa4f387c64d3643975decbe7632b5029` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--887c002c4f6c456553a1ff64.md) | 175 | `declaration-track:887c002c4f6c456553a1ff648859950c56c4fbf1497390c067fe9fb89174d461` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--38b88e14fce8fcbbde7076d4.md) | 178 | `declaration-track:38b88e14fce8fcbbde7076d402aa0eeca766f713810f814f608fa30f19353b25` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/instance--71f14cd073716d161d830750.md) | 182 | `declaration-track:71f14cd073716d161d8307501224660f61948da2ecf0ccf2f408c8f9401273dc` |
| 21 | `theorem` | [QuasiSeparated.of_comp](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/quasiseparated-of-comp--6169fa81ca6ff0377a3f536c.md) | 187 | `result-track:6169fa81ca6ff0377a3f536c7e67904a586de7aed107ac18e4ed8ff9761de5a5` |
| 22 | `theorem` | [exists_eq_pow_mul_of_isAffineOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-eq-pow-mul-of-isaffineopen--300b909bcfa24cbbb90d25a9.md) | 200 | `result-track:300b909bcfa24cbbb90d25a92f204bda35eccfc0f42a0f97f91dcf6d4cd1b38d` |
| 23 | `theorem` | [exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux_aux](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux-aux--73122ce70bd732e9c5eb608c.md) | 208 | `result-track:73122ce70bd732e9c5eb608c982b8433c67f8d1e5d1a447cadd0b7439502002f` |
| 24 | `theorem` | [exists_eq_pow_mul_of_is_compact_of_quasi_separated_space_aux](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-eq-pow-mul-of-is-compact-of-quasi-separated-space-aux--305eb1d3b1a6d8ce3e23e871.md) | 223 | `result-track:305eb1d3b1a6d8ce3e23e871795f86a5a2e2300d7c1e8dfbf2d54a0b6d3c7b77` |
| 25 | `theorem` | [exists_eq_pow_mul_of_isCompact_of_isQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-eq-pow-mul-of-iscompact-of-isquasiseparated--9b1c8cf5623e9aefa2885c0d.md) | 253 | `result-track:9b1c8cf5623e9aefa2885c0ded716902928ade1886b97de74369e4d9c58ac824` |
| 26 | `theorem` | [isLocalization_basicOpen_of_qcqs](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/islocalization-basicopen-of-qcqs--54a6ed623e07b6f74163f26f.md) | 338 | `result-track:54a6ed623e07b6f74163f26f15de0e2fd413405ac22d678b73a66c82ee389b34` |
| 27 | `lemma` | [exists_of_res_eq_of_qcqs](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-of-res-eq-of-qcqs--56915a995aae211f70d74c99.md) | 361 | `result-track:56915a995aae211f70d74c9909b95f5a0442bbd5eb4e789dbab7f6e88f1c9364` |
| 28 | `lemma` | [exists_of_res_eq_of_qcqs_of_top](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-of-res-eq-of-qcqs-of-top--2bcb0b4d3147145711a22f37.md) | 368 | `result-track:2bcb0b4d3147145711a22f37dd2d4ad00483220df5d07f82493a2e586461281f` |
| 29 | `lemma` | [exists_of_res_zero_of_qcqs](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-of-res-zero-of-qcqs--4fc447033f610b5342dcbcae.md) | 373 | `result-track:4fc447033f610b5342dcbcaec27ca774f57585a074bc2e8951d78b9c65a78e48` |
| 30 | `lemma` | [exists_of_res_zero_of_qcqs_of_top](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/exists-of-res-zero-of-qcqs-of-top--a78c370081abd18ea6b1259b.md) | 382 | `result-track:a78c370081abd18ea6b1259b3770a520eb907ebbd592ac3e7296b66928a0ebc5` |
| 31 | `theorem` | [isIso_ΓSpec_adjunction_unit_app_basicOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variantc5ddcf5160ae3fd30d87c454cc62dad00f5b6c553ba786cc50c5db9e4d080bc0.lean/declarations/isiso-spec-adjunction-unit-app-basicopen--1d2280d53209afeb96f33bdb.md) | 389 | `result-track:1d2280d53209afeb96f33bdbdbdcffef3eeade1512ec1ab6eb6fc8027f6838bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
