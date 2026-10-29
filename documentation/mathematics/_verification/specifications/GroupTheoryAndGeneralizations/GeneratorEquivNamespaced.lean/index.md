# Verification target: Generator Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b264d7a6bb1b1a1c551e82d4b3f812fdab165c1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variant9f784ab2ba0aaca2599d083366316a9f32bf245a647a87ba19760db4999b6295.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b264d7a6bb1b1a1c551e82d4b3f812fdab165c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variant9f784ab2ba0aaca2599d083366316a9f32bf245a647a87ba19760db4999b6295.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variant9f784ab2ba0aaca2599d083366316a9f32bf245a647a87ba19760db4999b6295.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAbelianGroup.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.IsFreeGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeAbelianGroup.basis](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/declarations/freeabeliangroup-basis.md) | 37 | `declaration-track:1fceb387b05d2de8921785bbc740fe65596ae4fa300aa30f5ca5ceb46269eb21` |
| 2 | `def` | [Equiv.ofFreeAbelianGroupLinearEquiv](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/declarations/equiv-offreeabeliangrouplinearequiv.md) | 41 | `declaration-track:e0f5a0295fe21539e3d31f051ee30f8db8d0fc0db77a6284ac9e642548ca0496` |
| 3 | `def` | [Equiv.ofFreeAbelianGroupEquiv](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/declarations/equiv-offreeabeliangroupequiv.md) | 46 | `declaration-track:ce278dc71e6ad0798f2fc652ed6a3509025f79e68d76d80760f7de995a06228a` |
| 4 | `def` | [Equiv.ofFreeGroupEquiv](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/declarations/equiv-offreegroupequiv.md) | 50 | `declaration-track:84ca6b49279e92565a9a49ef925cffd0049178a3036d26f9cacca47f589fa463` |
| 5 | `def` | [Equiv.ofIsFreeGroupEquiv](../../../../GroupTheoryAndGeneralizations/GeneratorEquivNamespaced.lean/declarations/equiv-ofisfreegroupequiv.md) | 54 | `declaration-track:f2d4fd7d02f6cce192b44f09fe8b581ce4d78c6500a4b72bc653a81051b0613c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f38003704bd11d457c230d356ee0e2d01eaf93665bf9bb0bb6e96a6dff71b277 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variant9f784ab2ba0aaca2599d083366316a9f32bf245a647a87ba19760db4999b6295.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/GeneratorEquiv/Variant9f784ab2ba0aaca2599d083366316a9f32bf245a647a87ba19760db4999b6295.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
