# Verification target: Recursive Cumulant Hierarchy Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "941fc480b26df1bb458d045be67c5e059c5d70df",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `941fc480b26df1bb458d045be67c5e059c5d70df`.

Source path: `GRWTSK/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteCumulantPrefix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirectionMomentFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/directionmomentfamily.md) | 42 | `declaration-track:45d659577898ca8142c60cfd096f97c531b8386e454f59e124cd31c416161894` |
| 2 | `def` | [lowerFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/lowerfamily.md) | 49 | `declaration-track:4d9fcc08de4c5b14ab411cfe2c0e50401bf6fe3432455ca449af793e2dec9a87` |
| 3 | `def` | [recursiveCumulantStep](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantstep.md) | 58 | `declaration-track:8497c6bf36125d81077e57857c5a81f91d00b1d1a3f40c6479ccfe10e7657678` |
| 4 | `def` | [recursiveCumulantAux](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantaux.md) | 73 | `declaration-track:ab564ac837e6db9f91e9eb902b0b45222e31fbe11718fe9d0a521656d7850b46` |
| 5 | `def` | [recursiveCumulantFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily.md) | 83 | `declaration-track:ec60be92685ede683777fcbbd15af52cdab02a9123c8ffa467b2a34e8095fef2` |
| 6 | `theorem` | [recursiveCumulantAux_eq_step](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantaux-eq-step.md) | 89 | `result-track:ae53387fbf4afc339ce06592535ca1f051f21a980cf2e3cb76b560620adacdae` |
| 7 | `theorem` | [recursiveCumulantFamily_zero](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-zero.md) | 100 | `result-track:1c8eeff4b93c3068bdacd482e785203de30b5575df9ae752640c9a7469b7f1e1` |
| 8 | `theorem` | [recursiveCumulantFamily_succ](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-succ.md) | 111 | `result-track:824b7298f9bebd4837df2d1d38f134098038041da49d837e9697ac13279a14ec` |
| 9 | `theorem` | [recursiveCumulantFamily_eq_recursive](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-eq-recursive.md) | 146 | `result-track:3ac3ed57bbc3495dedfc79b8ecf615254eda763f6d583aca657d8efd349c2252` |
| 10 | `theorem` | [recursiveCumulantFamily_eq_moment_sub_proper](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-eq-moment-sub-proper.md) | 163 | `result-track:0139d513cbb80428ad5ad7853e68db38d9613bb5e406c17fbfb93d77cdd526e2` |
| 11 | `structure` | [IsRecursiveCumulantFamily](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/isrecursivecumulantfamily.md) | 178 | `declaration-track:d7579b6167d7f70b21a2fb5289e9ee798a1257825d168698490168238aa5e6d4` |
| 12 | `theorem` | [recursiveCumulantFamily_isRecursive](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-isrecursive.md) | 192 | `result-track:decbd570c2d1504183715773aded3e370be21b022d91e9fc91866688534979a3` |
| 13 | `theorem` | [IsRecursiveCumulantFamily.unique](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/isrecursivecumulantfamily-unique.md) | 201 | `result-track:58bc2eaefd235b983866fb1bb84c3ed606fc1c7de3c3e323acf2d7bb25709e89` |
| 14 | `theorem` | [recursiveCumulantFamily_unique](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-unique.md) | 224 | `result-track:f5f7b9fb9e3041d81823d40d5a5ad14a8741c95a231980b20034b7e4503c88e8` |
| 15 | `def` | [MomentsAgreeBelow](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/momentsagreebelow.md) | 233 | `declaration-track:3905a5f0cac54a942ddee9b05be7ef4bfb16ad5dd179a5eb29c61dcdc2dcd666` |
| 16 | `theorem` | [MomentsAgreeBelow.refl](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/momentsagreebelow-refl.md) | 241 | `result-track:901d0ce07a25ced0385a0bb4b2da98ca2507af67ffb6811fa2eacb25d873dd41` |
| 17 | `theorem` | [MomentsAgreeBelow.symm](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/momentsagreebelow-symm.md) | 249 | `result-track:99bf5ed7cb1d5bae5c3e2d49c581ec847684768f79aa060d4c81d7873089b928` |
| 18 | `theorem` | [MomentsAgreeBelow.trans](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/momentsagreebelow-trans.md) | 258 | `result-track:25574a237c456d95ca8356b003e22aad30fd704009ced8354339680f1e7ac9ae` |
| 19 | `theorem` | [recursiveCumulantFamily_agreeBelow_of_momentsAgreeBelow](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-agreebelow-of-momentsagreebelow.md) | 269 | `result-track:3978a688a4119415dffb1f7179d1211b8c32fe722b0ba80613cb911a39aff5df` |
| 20 | `theorem` | [recursiveCumulantFamily_eq_of_momentsAgreeBelow_succ](../../../../CommutativeAlgebra/RecursiveCumulantHierarchyNamespacedEdition1.lean/declarations/recursivecumulantfamily-eq-of-momentsagreebelow-succ.md) | 303 | `result-track:fc74b1a46b7a39942e66a6009145ec0ae54dd11ea0a2a7fb91775e3e1ef2b6fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e18ca1d05f21211709977ed352e66d367d39f8c51554c8d63d13542eb1c61693 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean","GRWTSK/_verification/specifications/Algebra/RecursiveCumulantHierarchy/Variantd02aba7d960716e16a5beb5fce9e08f5959eea0575663fc8a61d7c2085d216cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
