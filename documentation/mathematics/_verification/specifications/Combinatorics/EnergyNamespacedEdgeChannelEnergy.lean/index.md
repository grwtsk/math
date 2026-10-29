# Verification target: Energy Namespaced Edge Channel Energy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96cd6609776aa318367503daf3970f840af89aa6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant672c5e25a57ca12bd09c7029bcfaafb558ef7a19a18d1d62ba17d740ea1c94fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/index.md) · [Full source](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96cd6609776aa318367503daf3970f840af89aa6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant672c5e25a57ca12bd09c7029bcfaafb558ef7a19a18d1d62ba17d740ea1c94fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Energy/Variant672c5e25a57ca12bd09c7029bcfaafb558ef7a19a18d1d62ba17d740ea1c94fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Graph` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeChannelEnergy](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/edgechannelenergy.md) | 30 | `declaration-track:da045c69591c4f54d4ced817dd0e566fcebf848e626d83c49b5a0638ca0aa367` |
| 2 | `def` | [cellEnergy](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/cellenergy.md) | 36 | `declaration-track:15c4ef14143defb8a1cde85eecfb6a02bf39c8ea7851e560d09ccfb6b32204b7` |
| 3 | `def` | [energy](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/energy.md) | 49 | `declaration-track:2c8859ecf7420e99c9ebd6a3fc33a98185acb10f730335b24bbadedcabf17008` |
| 4 | `def` | [HasChannelContrast](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/haschannelcontrast.md) | 55 | `declaration-track:c4cefddb31639bb3b86e80899f08959645b409b9fb2a453394be0261c163eb82` |
| 5 | `def` | [CenteredAroundHalf](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/centeredaroundhalf.md) | 63 | `declaration-track:998e88ceecc5d517156afeb0e115fb91626015dc9499d85970afa86c072fc8d6` |
| 6 | `theorem` | [edgeChannelEnergy_nonneg](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/edgechannelenergy-nonneg.md) | 69 | `result-track:a12178cf799320e033ce65359788ee480896f3051d5b0cf1df79d37ccc05778f` |
| 7 | `theorem` | [cellEnergy_nonneg](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/cellenergy-nonneg.md) | 77 | `result-track:e8e8d67d77d5e1a82a81ebb5d8f9d860410484557da755e4de71a34e7d12737a` |
| 8 | `theorem` | [energy_nonneg](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/energy-nonneg.md) | 87 | `result-track:125ed480b0028a1ed0ef6906a6367e6cd0e6bfb775b573301e13b4dbda682c8c` |
| 9 | `theorem` | [energy_positive_of_contrast](../../../../Combinatorics/EnergyNamespacedEdgeChannelEnergy.lean/declarations/energy-positive-of-contrast.md) | 95 | `result-track:48c8c313b8f6a08c823b17854b4d86a656311ab8b5f90d6aa02d9730f36a6800` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc52f7d87f2721c3533ce4077d86e30eb7751d08e369285909d4fcb984392fd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant672c5e25a57ca12bd09c7029bcfaafb558ef7a19a18d1d62ba17d740ea1c94fc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Energy/Variant672c5e25a57ca12bd09c7029bcfaafb558ef7a19a18d1d62ba17d740ea1c94fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
