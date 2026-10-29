# Verification target: Iterated Fixed Point Conjugacy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e543a35033227cee270c617822a2b593affe7b8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/FiniteBooleanStructure/Variantec14e8913e14ac2b/IteratedFixedPointConjugacy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e543a35033227cee270c617822a2b593affe7b8`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/FiniteBooleanStructure/Variantec14e8913e14ac2b/IteratedFixedPointConjugacy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/FiniteBooleanStructure/Variantec14e8913e14ac2b/IteratedFixedPointConjugacy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [Hamming Conjugacy And Avalanche](../../../../GroupTheoryAndGeneralizations/HammingConjugacyAndAvalanche.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPoints](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpoints.md) | 58 | `declaration-track:20c8b4de1df8e9af565287d29775e831bd323aebb75f3b6d90831942bb02f741` |
| 2 | `def` | [fixedPointCount](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpointcount.md) | 62 | `declaration-track:8dde2ffc578d375c0e195f1d0ded36c9aef3f4591fb149864fdb69a9f997e20e` |
| 3 | `theorem` | [mem_fixedPoints_iff](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/mem-fixedpoints-iff.md) | 65 | `result-track:b8bd1c8f16e35a3335c8ea370a30ef5a68a2f012cb693a5ca1f3c6767b9b67a2` |
| 4 | `theorem` | [fixedPoints_zero](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpoints-zero.md) | 73 | `result-track:dc9d22ec6bb305463428175297ecbe4f54c5713ec71dd55fad108aa23f9ae575` |
| 5 | `theorem` | [fixedPointCount_zero](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpointcount-zero.md) | 79 | `result-track:781fdc18295d7ff009957f85a3aff0fd5a48fcdec3a883b6754cb2760720f215` |
| 6 | `theorem` | [fixedPointCount_le](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpointcount-le.md) | 84 | `result-track:f9016e0760eb68cdb69b92d985577c47403cd8782587ad657db458356975cf6a` |
| 7 | `theorem` | [fixedPointCount_conjugate](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpointcount-conjugate.md) | 90 | `result-track:857b1eed686386a78a8864cf2be3568c683bd2a043da867ab4e895bb0b1ce27f` |
| 8 | `theorem` | [fixedPointCount_identity](../../../../GroupTheoryAndGeneralizations/IteratedFixedPointConjugacy.lean/declarations/fixedpointcount-identity.md) | 108 | `result-track:79f9975410e40dad51854b74d5e1fbfa4901dc6a5020962b8afc6f0b64a7100a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaafbf2ba4b857cdce103ee438c18b5682268f49e695caf9a79d3a1fa302b08a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/FiniteBooleanStructure/Variantec14e8913e14ac2b/IteratedFixedPointConjugacy.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/FiniteBooleanStructure/Variantec14e8913e14ac2b/IteratedFixedPointConjugacy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
