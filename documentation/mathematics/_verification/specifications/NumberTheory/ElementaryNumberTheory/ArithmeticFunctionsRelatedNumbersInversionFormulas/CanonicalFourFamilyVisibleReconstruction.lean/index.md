# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyVisibleReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "700259ff0436b89eede082e8eaea36105fc32f24",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `700259ff0436b89eede082e8eaea36105fc32f24`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilySharpResidualFrame`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilySharpResidualFrame.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalVisibleCofactor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblecofactor.md) | 20 | `declaration-track:9f11381b7a6ac5d327fb5c43b1c754b9b3a43e5aac962fb9cba09a3b6642057f` |
| 2 | `def` | [canonicalVisibleRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblerow.md) | 22 | `declaration-track:0a581c3bf95138402ee59a0c712ff66e9aff646e2a31283a07140e4b87bd3382` |
| 3 | `theorem` | [canonicalVisibleCofactor_ge_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblecofactor-ge-two.md) | 24 | `result-track:95cff80821f7c3142db430d11466231c4f0dc7db5ee223632a2da789e8ee98f1` |
| 4 | `theorem` | [canonicalVisibleRow_mem](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblerow-mem.md) | 29 | `result-track:22fab0c3bb2d10c8cd75c543b255cdcf0e2897b890c66cbac6fd89804c5047bf` |
| 5 | `theorem` | [canonicalVisibleColumn_anchor_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblecolumn-anchor-unique.md) | 35 | `result-track:5284df29ce79c0bce03382665e2281945b81ee28b12f010b1390d120baed7edd` |
| 6 | `theorem` | [canonicalVisibleRow_entry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblerow-entry.md) | 45 | `result-track:57c490effde0800d259c748c4fff8f97bf22470018fa9069eeb801bbe6d73f55` |
| 7 | `theorem` | [canonicalVisibleRow_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblerow-apply.md) | 78 | `result-track:1f842aa0c58c8a551c2154000f4dcac166c5802bb75fd3d743762f8f68286590` |
| 8 | `theorem` | [canonicalVisibleCell_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblecell-energy.md) | 87 | `result-track:cfe646dfea8e1619634c9582242532c36d6a6ce2f63dc37f2a4ce6de5d1122d6` |
| 9 | `def` | [canonicalVisibleReconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblereconstruction.md) | 94 | `declaration-track:010621202e7bef8445970aa148c6d3e29d923d0f3f1a8717855f8a50f236ed76` |
| 10 | `theorem` | [canonicalVisible_log_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisible-log-pos.md) | 100 | `result-track:bc07b1dca06e48da9ae48af7aab07f544025b91e462e046f6e907dd42b6d43ac` |
| 11 | `theorem` | [canonicalVisibleReconstruction_exact](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblereconstruction-exact.md) | 106 | `result-track:6d09dd785061942537b5421faebc14680dcd3619a35319bc7d4883023062ed0e` |
| 12 | `theorem` | [canonicalVisibleReconstruction_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblereconstruction-bound.md) | 117 | `result-track:3087c362554d5e5eaff297232f37a0627eb843a312fd4624ab8556d7e0fed510` |
| 13 | `theorem` | [canonicalVisibleReconstruction_uniform_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblereconstruction-uniform-constant.md) | 131 | `result-track:81e56e7c625a85050b86e9c3b850b484afa0fc45c1004de2485d0fcdd3b91427` |
| 14 | `theorem` | [canonicalVisibleReconstruction_uniform_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblereconstruction-uniform-bound.md) | 141 | `result-track:4454aa110a1225925da78af0107838fca8698a6579b97fa7c319851a66ca29f9` |
| 15 | `theorem` | [canonicalVisibleReconstruction_residual_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblereconstruction-residual-zero.md) | 152 | `result-track:4b74e78f8429e736fe78171a43e3d5f7a18f5ab82a4d20b9bb51ce85c9d8d353` |
| 16 | `def` | [canonicalVisibleRestriction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblerestriction.md) | 160 | `declaration-track:12fbdde70dea4cb5680db3c3fe86a2514055e596a3b5a1c63231edaad4e60235` |
| 17 | `theorem` | [canonicalVisible_actual_amplitude](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisible-actual-amplitude.md) | 169 | `result-track:b775859e4fd115c2f74e7b5c3d116752e904f142dd336828d21453179a03e8e2` |
| 18 | `theorem` | [canonicalVisible_actual_packet](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisible-actual-packet.md) | 186 | `result-track:d1bed5d98809b556bf666df26355286fdab5d421a392ed736f62f16f0de347be` |
| 19 | `def` | [CanonicalVisibleArithmeticDifferences](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblearithmeticdifferences.md) | 197 | `declaration-track:3754906d84f137afcbc1e3ab52c75ab96699da86b76da176a564e746771a75c9` |
| 20 | `theorem` | [canonicalVisibleArithmetic_subset](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblearithmetic-subset.md) | 205 | `result-track:211d765104f67473249f45fac5683438daeedb320d2b26d7fa3184ccda598bd1` |
| 21 | `theorem` | [canonicalVisibleArithmetic_shape](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblearithmetic-shape.md) | 212 | `result-track:04de16932c3cf04944edf5bb000efe943b3b7a82ec157707272c38d524dbcf3f` |
| 22 | `theorem` | [canonicalVisibleArithmetic_residual_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblearithmetic-residual-zero.md) | 233 | `result-track:e167311f4aad3d5408af399e010393e73b3f3732eb3eed58d9ea99a4f8b677a0` |
| 23 | `theorem` | [canonicalVisibleArithmetic_uniform_frame](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblearithmetic-uniform-frame.md) | 239 | `result-track:b3bc9042b97eea83a37c13a6780e76d7a20674eea6326c8983278fba7312393d` |
| 24 | `theorem` | [canonicalVisibleArithmetic_nontrivial](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyVisibleReconstruction.lean/declarations/canonicalvisiblearithmetic-nontrivial.md) | 261 | `result-track:3895f706049e134712325cf1372263a65a4b057f948dfd376a8b4a6f544c0899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dcb20ab3e7d306435f7f79f1841115632b7c9c70c566bfdcada46db583de50f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CanonicalFourFamilyVisibleReconstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
