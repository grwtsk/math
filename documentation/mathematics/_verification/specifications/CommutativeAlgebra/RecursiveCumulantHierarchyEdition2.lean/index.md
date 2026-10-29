# Verification target: Recursive Cumulant Hierarchy Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24cb97fcd9249a683daa5ae97c81a7df4f350672",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24cb97fcd9249a683daa5ae97c81a7df4f350672`.

Source path: `GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteCumulantPrefix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionMomentFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/directionmomentfamily.md) | 34 | `declaration-track:4d7b552051990a5f18bbb528c53195404391424510b465a66185fa8ddfd604ff` |
| 2 | `def` | [lowerFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/lowerfamily.md) | 41 | `declaration-track:eeac73493e590f54dd2c1875bf5fdb1b1bb919bf869dbc597090a72641113619` |
| 3 | `def` | [recursiveCumulantStep](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantstep.md) | 50 | `declaration-track:bd302c31abc3794259baad6b9fa12e43a8b3c7e3bcc6616ca7bb023c820ac1a1` |
| 4 | `def` | [recursiveCumulantAux](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantaux.md) | 65 | `declaration-track:3c4674b2d27bdd8425978a44f3f3736bb29a36bf7b77611424e24d93fd874e7d` |
| 5 | `def` | [recursiveCumulantFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily.md) | 75 | `declaration-track:b4cb88a976df2048a41396ffe571d5af1df4849ef95f86d3fe02ffa44ce686df` |
| 6 | `theorem` | [recursiveCumulantAux_eq_step](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantaux-eq-step.md) | 81 | `result-track:a3c168eb8bc832cb4db9e59cb94027e18c9177ab4386d3359b8b543cf92dfe63` |
| 7 | `theorem` | [recursiveCumulantFamily_zero](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-zero.md) | 92 | `result-track:41248bf18b0522dbb02b740bd47bd74bec0479ee97bd9466238534b5ba83669e` |
| 8 | `theorem` | [recursiveCumulantFamily_succ](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-succ.md) | 103 | `result-track:84904ebdcca12a4f8fb3137b2d8f9982bd18c6167418a56ddbe04e3b549fb904` |
| 9 | `theorem` | [recursiveCumulantFamily_eq_recursive](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-eq-recursive.md) | 138 | `result-track:64616cfa56090df0b522fc3a89a11f9ab6148393ad1185b999ff1c3bcb222252` |
| 10 | `theorem` | [recursiveCumulantFamily_eq_moment_sub_proper](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-eq-moment-sub-proper.md) | 155 | `result-track:03d9b9163c56d49b08b60b726d6bdc230fefb5f563732f5a2ff0cace582e8e58` |
| 11 | `structure` | [IsRecursiveCumulantFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/isrecursivecumulantfamily.md) | 170 | `declaration-track:9e4e1ec66a8079e80bbb2fc15d243f40a66e8443344dc4c48c6851966539fc81` |
| 12 | `theorem` | [recursiveCumulantFamily_isRecursive](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-isrecursive.md) | 184 | `result-track:050b6ac9d88edabf563a457fdb5ee10647b78f7237a1ef6688f6905e66f3714d` |
| 13 | `theorem` | [IsRecursiveCumulantFamily.unique](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/isrecursivecumulantfamily-unique.md) | 193 | `result-track:6b798cc06e299245d836085d8fed1f05ce735cab0b591be3b4cfceaa057176c1` |
| 14 | `theorem` | [recursiveCumulantFamily_unique](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-unique.md) | 216 | `result-track:4ccd042e8793bceff4a9e4e74aa5aee5dc5b26df945632a9c812cc25c632ebae` |
| 15 | `def` | [MomentsAgreeBelow](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/momentsagreebelow.md) | 225 | `declaration-track:cbb761717cd7766062d38efbba7a30fdc5e5a98ee696ef78dc5a691a6974d872` |
| 16 | `theorem` | [MomentsAgreeBelow.refl](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/momentsagreebelow-refl.md) | 233 | `result-track:cca42ce6604e8968f0736b5b612b8d4a8220eb2029616a473a390f2b6af82bdd` |
| 17 | `theorem` | [MomentsAgreeBelow.symm](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/momentsagreebelow-symm.md) | 241 | `result-track:7d0b46a1265fdf3d06f6630b8e44305a239af4c3188e516eebc8c018266353af` |
| 18 | `theorem` | [MomentsAgreeBelow.trans](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/momentsagreebelow-trans.md) | 250 | `result-track:d8173b8356fb17e837cf9b25545c6436d9874388fecd6789c29a8e14cbcb31cd` |
| 19 | `theorem` | [recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-agreebelow-of-momentsagreebelow.md) | 261 | `result-track:9a6de8bc8232d726382beb7f9db92656ee6d5bd1fdf009b2febb9e6b5a09e107` |
| 20 | `theorem` | [recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyEdition2.lean/declarations/recursivecumulantfamily-eq-of-momentsagreebelow-succ.md) | 295 | `result-track:62d3d33dd54599b5efcf3d125ea32e793bf1b7b80fdaf34230f15865c7f525ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=340a618723fe789bd38d96ce63ecca856b8ad67d735aa9aa3933092e81cdaee1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean","GRWTSK/_verification/specifications/Algebra/RecursiveCumulantHierarchy/Variant9fa15e756b756f02be6d3b1348d9187956e49bf640830172d725e07c6d9cbb02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
