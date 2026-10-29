# Verification target: Whole Selection And Lookup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22c7a3a3f756e1b42c6f66651d194b2b9c18b2ae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/FiniteSelectedListCoherence/Variant03d73452c99c6fd3/WholeSelectionAndLookup.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/WholeSelectionAndLookup.lean/index.md) · [Full source](../../../../Combinatorics/WholeSelectionAndLookup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22c7a3a3f756e1b42c6f66651d194b2b9c18b2ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/FiniteSelectedListCoherence/Variant03d73452c99c6fd3/WholeSelectionAndLookup.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/FiniteSelectedListCoherence/Variant03d73452c99c6fd3/WholeSelectionAndLookup.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [selectedMaskListCount](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/selectedmasklistcount.md) | 43 | `declaration-track:4c68e3af464e086656e8249498ade9cbf20f7cae432ed9828c69730fc382a4df` |
| 2 | `def` | [normalizedMaskListWeights](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/normalizedmasklistweights.md) | 47 | `declaration-track:1b672fa2d5f71c9c796fa109238b96f687eda71d59a1981c5760e84e731c8a85` |
| 3 | `def` | [selectedCarrierOwners](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/selectedcarrierowners.md) | 53 | `declaration-track:74e5f00ddcc3a86847780656587de4a5b0566abd38dd781eb163d477774c850d` |
| 4 | `structure` | [CarrierOwnershipResult](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/carrierownershipresult.md) | 60 | `declaration-track:6677b351d5e28dd3908e1f467365a38ebdd05b85368714c4e4f09e104960046d` |
| 5 | `def` | [CarrierOwnershipResult.Coherent](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/carrierownershipresult-coherent.md) | 69 | `declaration-track:7432df8b7a7ea114e02e03c179b4a83bc7e942d106a1830e53e23f724b3e1a80` |
| 6 | `instance` | [carrierOwnershipResultCoherentDecidable](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/carrierownershipresultcoherentdecidable.md) | 77 | `declaration-track:69f3911c5db75cdcb802917f7cc3a4893b2752ae249a4bfb47e2ea04ce8af33c` |
| 7 | `def` | [CarrierOwnershipResult.ownerSelection](../../../../Combinatorics/WholeSelectionAndLookup.lean/declarations/carrierownershipresult-ownerselection.md) | 86 | `declaration-track:3ab22c70c0bffcbf6beb5557d91d5d2d500da536e5e0c904661060ee21bd3e92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e5d0d076ace8ab06e909364368f840ed2a39f8b64a3578ad2c4e53f78e28871 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/FiniteSelectedListCoherence/Variant03d73452c99c6fd3/WholeSelectionAndLookup.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/FiniteSelectedListCoherence/Variant03d73452c99c6fd3/WholeSelectionAndLookup.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
