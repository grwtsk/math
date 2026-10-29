# Verification target: Category Theory Comm Sq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec4b0c6f19775e54dedf1f52676f715158a2803b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantbac8b6363e5d3774885a7619b5f27f34576e5f54b75f9cdcea378f3ff7bfaa63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec4b0c6f19775e54dedf1f52676f715158a2803b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantbac8b6363e5d3774885a7619b5f27f34576e5f54b75f9cdcea378f3ff7bfaa63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantbac8b6363e5d3774885a7619b5f27f34576e5f54b75f9cdcea378f3ff7bfaa63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CommSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/commsq.md) | 42 | `declaration-track:64f02c966354999bb841d81eb0a05a6d391009c668b8d1eacb8456940e953f79` |
| 2 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/flip.md) | 52 | `result-track:d0a3a425c121bb29cea8ee11aa6caaeccdcdc78b21aad02ce5095780888beecc` |
| 3 | `theorem` | [of_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/of-arrow.md) | 55 | `result-track:43b122536e2215793d10927496f08b9de0a2a3509dbdcfcc5d199a246f87730b` |
| 4 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/op-source-edition-2.md) | 59 | `result-track:e4997751a734e6f13dee654a504a6a0327351ba49da9135353638bd8ee18c8f1` |
| 5 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/unop-source-edition-2.md) | 63 | `result-track:4df75214ba0c7c73391b1928e273758d1f26210fb54c1f4a5c6c6d1be032765c` |
| 6 | `theorem` | [vert_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/vert-inv.md) | 67 | `result-track:0139caede25c3ed923264564002a37bf16cd3f7fb0d33c761677e3d33d39de4e` |
| 7 | `theorem` | [horiz_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/horiz-inv.md) | 71 | `result-track:306157d52ba1ff1a4492f74de352ceeebc4f4b3a87222a4c15bce1192df98fdf` |
| 8 | `lemma` | [horiz_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/horiz-comp.md) | 86 | `result-track:573f8fa3c0e2484a192095a70ba3570d1b3a7f16774e852343af0ab9205f04a2` |
| 9 | `lemma` | [vert_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/vert-comp.md) | 107 | `result-track:5b007ef956a6abff69b93e5a70e3b43981241170b5ee43c217757f9d2b4486c9` |
| 10 | `theorem` | [eq_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/eq-of-mono.md) | 117 | `result-track:53320865dc5c392291169678de3818cdbd6ef6eb34e94a5172a2e0ba0835b2bc` |
| 11 | `theorem` | [eq_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/eq-of-epi.md) | 120 | `result-track:98f99634294db21440d43ef2743ee4d4cc3df4a89524408b3f21c6ebed0a389d` |
| 12 | `theorem` | [map_commSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/map-commsq.md) | 132 | `result-track:eade16d906d7853593096b4a6394817fd8e1aba5f69a0488de590b7e094e8d74` |
| 13 | `structure` | [LiftStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/liftstruct.md) | 157 | `declaration-track:34442aabdf61984739bc98064acac2154ac65a1009798dbd776b9163683fd2f4` |
| 14 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/op.md) | 170 | `declaration-track:304b83bfb37161bbca0048c877272f6156748c74c444ab7a9e809a618cb5d58f` |
| 15 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/unop.md) | 178 | `declaration-track:2b82f02f19c0f1aaeac7779ce68e518fac89607a637498cddd8b182520a79da7` |
| 16 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/opequiv.md) | 187 | `declaration-track:ad8c2536ba219187176d8719cf8f15582e173f327848c1e5f4de24f6e6c04891` |
| 17 | `def` | [unopEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/unopequiv.md) | 195 | `declaration-track:16740d004a233eb109310aed2b1e625ac0e3c0d4d0a14c7d7fdca08f49c1132d` |
| 18 | `instance` | [subsingleton_liftStruct_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/subsingleton-liftstruct-of-epi.md) | 204 | `declaration-track:b6601be462c31882f9a6751f1271aab032b28550248c3fac922f0461a4f213f4` |
| 19 | `instance` | [subsingleton_liftStruct_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/subsingleton-liftstruct-of-mono.md) | 211 | `declaration-track:6ea2feea9fa762e21521d54b3b469c77a33dd843131d817842dccac480569e93` |
| 20 | `class` | [HasLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/haslift.md) | 222 | `declaration-track:89f86bc8cacb45d696f445bc5d140ccc65b796b7d30198580c0bc1f14f7b1833` |
| 21 | `theorem` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/mk.md) | 229 | `result-track:5c4f477a065517a33ceb5fc9614db53bb64b4536ca812c3442887dfc303ab4d1` |
| 22 | `theorem` | [iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/iff.md) | 232 | `result-track:29d05268c1b7a4b293ac028e1afa5de3499823a6cb5afa7dc7832cbda8d517ff` |
| 23 | `theorem` | [iff_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/iff-op.md) | 236 | `result-track:c752a07370d4f77611171a1c2780e82b4a855f215b294d912e51a3032fae3f5d` |
| 24 | `theorem` | [iff_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/iff-unop.md) | 240 | `result-track:e70bddee72d17db723c859bb5b1027087988cc9edda5d27cfffd918a6058f27b` |
| 25 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/lift.md) | 249 | `declaration-track:e7bf9d1157d650cb4f09eebfb8bc465238991bf1761849fccc7e9043aa0b9520` |
| 26 | `theorem` | [fac_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/fac-left.md) | 253 | `result-track:bc4293c6d3028f2cde090cfd160e73fb9d4e56d98d8602b506e75a8e01a32f07` |
| 27 | `theorem` | [fac_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCommSq.lean/declarations/fac-right.md) | 257 | `result-track:cc01a3a9e037dee24738818cbc1cc468293075847723992f4fbe8ecc034a86c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bab3c237fa8bef20ffc5616ab229200a808252f091510207b4c0a6978ee43dd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantbac8b6363e5d3774885a7619b5f27f34576e5f54b75f9cdcea378f3ff7bfaa63.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variantbac8b6363e5d3774885a7619b5f27f34576e5f54b75f9cdcea378f3ff7bfaa63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
