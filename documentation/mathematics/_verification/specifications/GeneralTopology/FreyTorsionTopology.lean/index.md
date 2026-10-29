# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3079bd94e5a609cce1ebf748bb052d8906edae62",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FreyTorsionTopology.lean/index.md) · [Full source](../../../../GeneralTopology/FreyTorsionTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3079bd94e5a609cce1ebf748bb052d8906edae62`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion`](../../../../CommutativeAlgebra/FreyTorsionCompletion.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology`](../../../../GeneralTopology/FreyCompletionTopology.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.Topology.Algebra.DiscreteProjectionRigidity`](../../../../GeneralTopology/DiscreteProjectionRigidity.lean/index.md) — import line 15; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [completion_continuous](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/completion-continuous.md) | 29 | `result-track:fc1fcaff5d3bab3040ec088e148d0f7e5fca05bbccf09a4b6a87b6d59a5446f0` |
| 2 | `theorem` | [completion_symm_continuous](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/completion-symm-continuous.md) | 39 | `result-track:4ab20a922f50ed22c2d85977dabd753bfef545c066800919bd2793d53696035b` |
| 3 | `def` | [completionHomeomorph](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/completionhomeomorph.md) | 50 | `declaration-track:d4033ad0a1e876f5c26a5d755258fd55dbad58f0b281736de19a8bc88c5cf8e0` |
| 4 | `theorem` | [completionHomeomorph_apply](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/completionhomeomorph-apply.md) | 57 | `result-track:7915d4bd6f9c76fb4838f85ef5627b208666ed995724f12df04d0b3cab4d0cbf` |
| 5 | `theorem` | [completion_fiber_preimage](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/completion-fiber-preimage.md) | 63 | `result-track:90e6d834cbb3ff6276496c2ac2b4725c3cde371ce4e046167b8574b8efa3f7b8` |
| 6 | `theorem` | [series_symm_projection](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/series-symm-projection.md) | 79 | `result-track:43d55d81fe660ae870abad823bac9852bbbc39613758bc6ea0779560e940261f` |
| 7 | `theorem` | [series_continuous](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/series-continuous.md) | 91 | `result-track:bbd287cb833482e9f5356d7a3d772080ad8c316492153067aab7654863fb5051` |
| 8 | `theorem` | [series_symm_continuous](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/series-symm-continuous.md) | 100 | `result-track:4dc47eee775dc9340bbc2760c40a843a8831896414edaa6c94165ba687ac2152` |
| 9 | `def` | [seriesHomeomorph](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/serieshomeomorph.md) | 110 | `declaration-track:e91f27100330fae86d9fca57567b1fd5b669946b99236da6ec9c237edcd32bae` |
| 10 | `theorem` | [seriesHomeomorph_apply](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/serieshomeomorph-apply.md) | 117 | `result-track:431df9843e98233f3da4b74ef90fcece4a020bcef66c3f2d25015e9eb4aec3a9` |
| 11 | `theorem` | [series_difference_filtration](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/series-difference-filtration.md) | 124 | `result-track:ae7bd23b479ef8feb0945a4663b504e7c2574ae36542ee2640d268ff936805da` |
| 12 | `theorem` | [canonical_path_constant](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/canonical-path-constant.md) | 137 | `result-track:15feb936bd9eba944b12898c58fa38b8f7f6dc5bdb74ecef2072326af3797700` |
| 13 | `theorem` | [series_path_constant](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/series-path-constant.md) | 151 | `result-track:7b63bf2ae1059b9221d4f36e253429a6f45b10bad7bcb51526240ac660067087` |
| 14 | `theorem` | [scalar_path_not_continuous](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/scalar-path-not-continuous.md) | 164 | `result-track:0924e4ee88c162299432052b65775ce809fdb5fdf68abf413b1f9fbd92fadf66` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyT0CanonicalHomeomorph](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/primitiveadditivetriple-freyt0canonicalhomeomorph.md) | 177 | `declaration-track:33c1858686f508480ef0b1be4fdb7b0c376c2987d189f0e65fef854d16cec3ea` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyT0CanonicalHomeomorph_agrees](../../../../GeneralTopology/FreyTorsionTopology.lean/declarations/primitiveadditivetriple-freyt0canonicalhomeomorph-agrees.md) | 186 | `result-track:479626e76154a1a84ed35a86c5b17c69a8ca1e099f7b5ba53ea5731fb3bf3874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4857cc281cf0947dc0ef194166b54e9b3c6fc6d0b294917886e4dc46cd90bbaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
