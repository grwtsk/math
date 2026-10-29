# Verification target: Surgery Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e3d4e40253ed6f1f623f4d2c49c11ca2d86b2f2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SurgeryEdition2.lean/index.md) · [Full source](../../../../Combinatorics/SurgeryEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e3d4e40253ed6f1f623f4d2c49c11ca2d86b2f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Surgery/Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AvalanchePartition` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Legality` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryLayer](../../../../Combinatorics/SurgeryEdition2.lean/declarations/surgerylayer.md) | 21 | `declaration-track:33acbe44dcd0925d1ec2c24e89880cbb0fe170205ddee9e4fae52eb006a7c0e6` |
| 2 | `structure` | [GlobalSurgeryLocus](../../../../Combinatorics/SurgeryEdition2.lean/declarations/globalsurgerylocus.md) | 36 | `declaration-track:8877030cbd66ddeec5f129e1d2972d02e08087913e3fd4c71627e3cc90eac8b5` |
| 3 | `structure` | [SurgeryPatch](../../../../Combinatorics/SurgeryEdition2.lean/declarations/surgerypatch.md) | 42 | `declaration-track:6064fc2a0348d73f502f6683e5274c5687810062518e1b0845cdb5daa25c11f3` |
| 4 | `inductive` | [TerrainSurgeryMode](../../../../Combinatorics/SurgeryEdition2.lean/declarations/terrainsurgerymode.md) | 60 | `declaration-track:dce327807f48a88aed559af03c20876b0d14b78da5708a6727f0f56d6f695f3c` |
| 5 | `structure` | [TerrainRollback](../../../../Combinatorics/SurgeryEdition2.lean/declarations/terrainrollback.md) | 66 | `declaration-track:2f482ebd423331ccedc4fafc44b6c015050bb49053a988835769518f4d38ac00` |
| 6 | `structure` | [TerrainSurgery](../../../../Combinatorics/SurgeryEdition2.lean/declarations/terrainsurgery.md) | 72 | `declaration-track:2438db646c96febb33e1eafd37f679698646a6e681c528b974f54dcd022e865f` |
| 7 | `theorem` | [changed_vertex_has_global_locus](../../../../Combinatorics/SurgeryEdition2.lean/declarations/changed-vertex-has-global-locus.md) | 120 | `result-track:23a97c1a438108690c708a3be3b00ff0003f417211ec3467c410c7e4fabaa0c7` |
| 8 | `theorem` | [complement_adjacency_unchanged](../../../../Combinatorics/SurgeryEdition2.lean/declarations/complement-adjacency-unchanged.md) | 126 | `result-track:d1ef91c2207d8343d309b2fbaca0b0b3d54caa1e068569b1a263b4d8dbba2f54` |
| 9 | `theorem` | [rollback_recovers_before](../../../../Combinatorics/SurgeryEdition2.lean/declarations/rollback-recovers-before.md) | 133 | `result-track:d5b4681c0a97f1cdeb54a8ee206330aa360bda12804d1ac198f4328d2d7a2ca6` |
| 10 | `structure` | [ReversibleTerrainSurgery](../../../../Combinatorics/SurgeryEdition2.lean/declarations/reversibleterrainsurgery.md) | 143 | `declaration-track:94d1a99f9b6ee8c2ba52c28cf0e23c4f1986acfc2a9fda3e4e1796fc1f80972b` |
| 11 | `structure` | [SurgeryObstruction](../../../../Combinatorics/SurgeryEdition2.lean/declarations/surgeryobstruction.md) | 151 | `declaration-track:bc5acfac28e97c6b3622e883fc1440dec5885b2856bf5767ef64d28c3b992206` |
| 12 | `theorem` | [overlay_ne_rulesetRewrite](../../../../Combinatorics/SurgeryEdition2.lean/declarations/overlay-ne-rulesetrewrite.md) | 160 | `result-track:bb42d899ad168e92e6cbfc76ee2b1ce6cc9c3dbcf30e538711fb162de6abd3e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fc7c8db801a9fff207f5159016f300a2807bacc40f2c3be4b40fdecc6d1a922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Surgery/Variantcec70f168b012b5be96da641964879d6232733c39912dcfc3a3ba6b2ab37c929.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
