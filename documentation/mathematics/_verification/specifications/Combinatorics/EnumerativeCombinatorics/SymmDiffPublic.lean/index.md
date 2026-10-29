# Verification target: Symm Diff Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1f09101c8aecbf64c9e8f6238ed30e7af89c2ac",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1f09101c8aecbf64c9e8f6238ed30e7af89c2ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SymmDiff/Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494.lean.json)

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
| 1 | `theorem` | [mem_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/mem-symmdiff.md) | 44 | `result-track:09f8e04876875b5ded7fb570e0cb1b26d6c5caeaabdc2ad6c51f59aebb95efd6` |
| 2 | `theorem` | [symmDiff_def](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-def.md) | 47 | `result-track:920f74aaf3fe6fb9d9314200fb9039791b1b84745484eae45b79e9c94400bb5e` |
| 3 | `theorem` | [coe_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/coe-symmdiff.md) | 50 | `result-track:6bff3c1adf6f96999d6c128c511724d03dec17eb68a4f47b2f321ba638b58b4b` |
| 4 | `lemma` | [symmDiff_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-eq-empty.md) | 53 | `result-track:a64d0a7886c39b7e073882dc791763c1f4fd21891205f4559abbc8d7480c6e3f` |
| 5 | `lemma` | [symmDiff_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-nonempty.md) | 54 | `result-track:956193874e38b2ac37c4d91ddeaa30f1cc2d06067d4b55528945dd772a05fa3a` |
| 6 | `theorem` | [image_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/image-symmdiff.md) | 57 | `result-track:9f662f4a02b8d7bf473c7ea322aade009e810c70e5e5132ebb048101af412c66` |
| 7 | `lemma` | [symmDiff_subset_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-subset-sdiff.md) | 62 | `result-track:3a90a13f609a46a9a6e407635d2e9982dde6ebbdae6c08b7e5f33163c8215e5b` |
| 8 | `lemma` | [symmDiff_subset_sdiff'](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-subset-sdiff-source-edition-2.md) | 65 | `result-track:ce12f3e47f3100239bfe8701b3b31ae194b427fce196f14543283e5a8ae0e39a` |
| 9 | `lemma` | [symmDiff_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-subset-union.md) | 67 | `result-track:e5df6eaafe6c8c846a89d4ce0b344a73443312a8aa68fe2c7753707057b5a4ac` |
| 10 | `lemma` | [symmDiff_eq_union_iff](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-eq-union-iff.md) | 69 | `result-track:5186233b56d83ce56f233c9ebcb57bff36005383a7aaf02a3a12e53587e57405` |
| 11 | `lemma` | [symmDiff_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/SymmDiffPublic.lean/declarations/symmdiff-eq-union.md) | 71 | `result-track:a5ebb969ecba23be7cd7e734469ebc0d27e1ccccd65597380e429e51fef430bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d48408839761406c1d08126e7240bbdc48003ff3a36c562b7c23289a1b186291 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SymmDiff/Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SymmDiff/Varianta28791e624c0fa2a80601d94dd45dd882902698ec28937b29b3725cd115fa494.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
