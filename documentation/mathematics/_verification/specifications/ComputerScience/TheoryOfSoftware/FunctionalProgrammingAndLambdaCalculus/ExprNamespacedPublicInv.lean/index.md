# Verification target: Expr Namespaced Public Inv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ea5178550fe77198884c1a12c87350cc8fe6ac4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ea5178550fe77198884c1a12c87350cc8fe6ac4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 28; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 29; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Inv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/inv.md) | 51 | `declaration-track:09475c8e9354fb711090ef546c811b597b3ec86d0c053e9856dda1d184671dac` |
| 2 | `theorem` | [Inv_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/inv-empty.md) | 57 | `result-track:a5cea5f516c9e6348cd22129018f039000a4d32a367028b8ecec0864b5397360` |
| 3 | `theorem` | [Inv_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/inv-cast.md) | 61 | `result-track:81e30c2a3a5d9e8b35fbbfe8329a8937922fdb9471ef00a7f747ab8a06c990b0` |
| 4 | `theorem` | [Inv_insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/inv-insert.md) | 71 | `result-track:0f5641e37e8b47c90388158c32c9ad72f19215dcc5d8fa1ff8f0e0ae29c3421e` |
| 5 | `theorem` | [get?_eq_some_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/get-eq-some-iff.md) | 108 | `result-track:0b8285592cddfa4ddd80102259d83d4f6f4bdd57656e23aafbd0535a43099b81` |
| 6 | `theorem` | [denote_eq_eval_of_get?_eq_some_of_Inv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/denote-eq-eval-of-get-eq-some-of-inv.md) | 114 | `result-track:0a8e1b3fcd600ad296ef3297f7117b84924b9c504fd7892ea8b19b51c775f7db` |
| 7 | `theorem` | [goCache_val_eq_bitblast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/gocache-val-eq-bitblast.md) | 137 | `result-track:3f098ca96ac64d275a5192004a07ceea557b88dc0e5b736a9a6b69d37d2410d7` |
| 8 | `theorem` | [go_denote_mem_prefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/go-denote-mem-prefix.md) | 141 | `result-track:62de7d442f5d26965ed6166c1e28b6fa26d9ff57b713a68920728a71ddd0331a` |
| 9 | `theorem` | [goCache_denote_mem_prefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/gocache-denote-mem-prefix.md) | 157 | `result-track:ad9f62332cfe10f75f20746cd0f4c299c0896e66426b51718c593aa072c06546` |
| 10 | `theorem` | [goCache_Inv_of_Inv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/gocache-inv-of-inv.md) | 178 | `result-track:0b115fc40e8b76de8eba1836ff2f6c24bbcf01fc7bddd9f08c362ee9952dd26e` |
| 11 | `theorem` | [go_Inv_of_Inv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/go-inv-of-inv.md) | 197 | `result-track:4d77906162c9622a0d82e20a6b2870032843e4c2e110baf74b9a7d3c7938d6c5` |
| 12 | `theorem` | [goCache_denote_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/gocache-denote-eq.md) | 282 | `result-track:68b8c6dfe916164d333f3024cccf63f9e78d0a1f5073f6c2812e906131e23acc` |
| 13 | `theorem` | [go_denote_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/go-denote-eq.md) | 303 | `result-track:adf989b162f86f90b673ff471c46390ffa01fb9086c7792d0bc813eb5d3527e1` |
| 14 | `theorem` | [bitblast_aig_IsPrefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/bitblast-aig-isprefix.md) | 522 | `result-track:e861e7b8d2797d0d509e624a97fc001f971e20b7455425293be29eed9593d9f4` |
| 15 | `theorem` | [bitblast_denote_mem_prefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/bitblast-denote-mem-prefix.md) | 530 | `result-track:f9a5deb87cd9a04430dce32052cab14f7eba39bfe249345ea227b77f782a7df3` |
| 16 | `theorem` | [bitblast_Inv_of_Inv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/bitblast-inv-of-inv.md) | 542 | `result-track:0964a1662fc12cb147124c0a693af08cc6f678a2d94d44c7b0e19aa0c14c77b5` |
| 17 | `theorem` | [denote_bitblast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExprNamespacedPublicInv.lean/declarations/denote-bitblast.md) | 549 | `result-track:b19352861ee47f395e4d18eda4a7f3f0013dd2ecdbf36d302142c0b7c77069fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42f8b067a67b970059edc520c976f2bcb9f0b1b57bf7d7eee8d66e86428e5eb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantbd4019f93a745a85038956ac295a94a513d96ec4decd23cba3249d5e7875b708.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
