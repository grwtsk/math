# Verification target: Canonical Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4df12f10fac8ff549e2b7f1f952cf7717c05150",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4df12f10fac8ff549e2b7f1f952cf7717c05150`.

Source path: `GRWTSK/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SameOrbit](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/declarations/sameorbit.md) | 22 | `declaration-track:5fa62941d0428fa80a383579d3fd3ad98077754889d934db5e6135fb36c00b1e` |
| 2 | `structure` | [FiniteDataCanonicalizer](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/declarations/finitedatacanonicalizer.md) | 30 | `declaration-track:c3665e63f24a79d3a63f209f627db78b3a6dd1954c4b5e9b67c3f37508228c86` |
| 3 | `theorem` | [canon_smul](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/declarations/canon-smul.md) | 55 | `result-track:775840e7611a633963eb1bf0520b294a66d3f27afeee0af395f08e198d5be913` |
| 4 | `theorem` | [canon_idempotent](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/declarations/canon-idempotent.md) | 67 | `result-track:a75ec26711e49b2fbbd0d761039534112a81640304e81d0bfa8a7b7026c6fc93` |
| 5 | `theorem` | [canon_eq_iff_same_orbit](../../../../GroupTheoryAndGeneralizations/CanonicalNamespacedSourceEdition1.lean/declarations/canon-eq-iff-same-orbit.md) | 79 | `result-track:c811003048b683f5fce2b6345d418b1804bc7fbe032beead809758f700272bbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8ec8db94f13558620cc0f4f6fbf8c5112725c5d45651b442f6bdd5ab14344ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Canonical/Variant62f64fa75d3a9e4fc8a849084a91a7dc1e766ab0e170a4ef812d88452023cefc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
