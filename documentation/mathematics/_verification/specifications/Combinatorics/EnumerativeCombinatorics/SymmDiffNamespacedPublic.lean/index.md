# Verification target: Symm Diff Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dff71deef7956f8ecb4b8df61729d5973789a7ed",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dff71deef7956f8ecb4b8df61729d5973789a7ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/mem-symmdiff.md) | 52 | `result-track:1e88cd909c8915d4517a7406702ae592975e2b2e95c77e62da68fc72ef5a6d59` |
| 2 | `theorem` | [symmDiff_def](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-def.md) | 55 | `result-track:2d405a5540d117e8547e8fc1ad2136094605ed240b10146e0224e5dce2db3707` |
| 3 | `theorem` | [coe_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/coe-symmdiff.md) | 58 | `result-track:8cbc953e0d81cc01f7e15988ea159de1678109e3e0d6257933a4259ed2efb627` |
| 4 | `lemma` | [symmDiff_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-eq-empty.md) | 61 | `result-track:60e5f08d098370b203d3c8866a3e4e5f21ebab5d6a8a715276aa4696cfcad176` |
| 5 | `lemma` | [symmDiff_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-nonempty.md) | 62 | `result-track:28be6184ac5bd3fe4a208c3936ff2ed587ea39e51afa3291f7cc329c00b6b6e0` |
| 6 | `theorem` | [image_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/image-symmdiff.md) | 65 | `result-track:dfa2c8470a7c8e6e17f698f2736cd25d4f847c9efe98e67c66803bb6f73b759f` |
| 7 | `lemma` | [symmDiff_subset_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-subset-sdiff.md) | 70 | `result-track:76c3f212d89f7c282b9741e3a4be7ad998ee15f780bf94fe1473e4350f64164a` |
| 8 | `lemma` | [symmDiff_subset_sdiff'](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-subset-sdiff-source-edition-2.md) | 73 | `result-track:9b8ec6946f77e978635aeacb2a56e667e71b33f959b0a14a25c32c7997ee3caf` |
| 9 | `lemma` | [symmDiff_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-subset-union.md) | 75 | `result-track:fce417bea4ebed15aeb12044a40616bf87c3d9008a1b5d405496ed9ffce35192` |
| 10 | `lemma` | [symmDiff_eq_union_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-eq-union-iff.md) | 77 | `result-track:c1449e8c871963be4551cfb011bc49187c78f818824bad15a89a475dfe0d92ed` |
| 11 | `lemma` | [symmDiff_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffNamespacedPublic.lean/declarations/symmdiff-eq-union.md) | 79 | `result-track:d617b93b313e8882ade8b9a3b479cdd6363ee980c6b2f627f65951ae699e13e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9cc78ef96298328c540679527c3c8c4865fead8c2517139b86960993fcb74cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SymmDiff/Variant112e6d21e698624aa3c8da5a1c505278c87667ed60df9b926b9c886815ecfcfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
