# Verification target: Surjective Namespaced Surjective Is Stable Under Base Change

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f43005c2d70c9c7adfb5a1bc9f083ae6aa535e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f43005c2d70c9c7adfb5a1bc9f083ae6aa535e`.

Source path: `GRWTSK/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [surjective_stableUnderComposition](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/declarations/surjective-stableundercomposition.md) | 44 | `result-track:0f9100ee32b693e17b0c08f0a1bb22f0c49f1592f260ed4eff7bac1e45416990` |
| 2 | `theorem` | [surjective_respectsIso](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/declarations/surjective-respectsiso.md) | 47 | `result-track:a61588ae2ca63ab8c0a8ecf49b7e818d39dc522cc1a80b61e07fe55b61063d71` |
| 3 | `theorem` | [surjective_isStableUnderBaseChange](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/declarations/surjective-isstableunderbasechange.md) | 52 | `result-track:4aaeca80a774198905705389fd55b701cdb0ccfe208c281cd85190c8007d67f6` |
| 4 | `theorem` | [surjective_localizationPreserves](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/declarations/surjective-localizationpreserves.md) | 64 | `result-track:205de8a81fafadd41fc5a3db5057b99864cb9b37fae878f156c78299a1d643fa` |
| 5 | `theorem` | [surjective_ofLocalizationSpan](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/declarations/surjective-oflocalizationspan.md) | 74 | `result-track:eddfe11aa3a725cf49e40526b6768af80c00e1cde615e1cfb0fffbd2aa53de9a` |
| 6 | `theorem` | [surjective_localRingHom_of_surjective](../../../../CommutativeAlgebra/SurjectiveNamespacedSurjectiveIsStableUnderBaseChange.lean/declarations/surjective-localringhom-of-surjective.md) | 93 | `result-track:dff0fbb032ac2bb647ecf5ffb66268c20c18827276223ba5e436b3377a1c1a2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0ebbb99bcba8fb33301d64dd5b4496937f1f3d2b08cc9a08e80107ff295d298 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean","GRWTSK/_verification/specifications/Algebra/Surjective/Variant78840d9c50085aa557101b5bbc7b0e3e3b1b7d79080052afa159bf7bbf9fee47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
