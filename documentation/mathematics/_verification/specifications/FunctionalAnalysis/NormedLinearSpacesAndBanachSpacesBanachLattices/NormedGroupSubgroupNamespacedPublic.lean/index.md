# Verification target: Normed Group Subgroup Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c60ce0cf50c7136ad88d07b290829af5498cb2e6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c60ce0cf50c7136ad88d07b290829af5498cb2e6`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean.json)

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
| 1 | `instance` | [seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/seminormedgroup.md) | 45 | `declaration-track:762b14144cd434ab65b19332051720981455ea64a52b4608a3784c4faa1217b4` |
| 2 | `theorem` | [coe_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/coe-norm-source-edition-2.md) | 52 | `result-track:aba3b4937910cb8471d0b238ae3214e3d9cf14759f8fd22ae5681668227cded2` |
| 3 | `theorem` | [norm_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/norm-coe.md) | 63 | `result-track:5aa5c9e31ac564136f8212ff27c1836ed254b2a7e33ca595f4e7d2e4d7d56f16` |
| 4 | `instance` | [seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/seminormedcommgroup.md) | 69 | `declaration-track:9608133fdf70993386a5997bf5f4dd0c5ae220e0b2c1fde2e1bebb0fdb11694a` |
| 5 | `instance` | [normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/normedgroup.md) | 73 | `declaration-track:55bd7f336c539f39979da3f9210a77e5d0e51fafeec253549835d71b62dae010` |
| 6 | `instance` | [normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/normedcommgroup.md) | 77 | `declaration-track:25af0e39a5582017eb10787988bc995630a5c8ddcbc25f4275ac539847674995` |
| 7 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/instance.md) | 95 | `declaration-track:7b99f8c7d90ac38ad6a0d5e3df82bba45dc71b8f582856ac92c7cfc551885028` |
| 8 | `theorem` | [coe_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/coe-norm.md) | 102 | `result-track:5106756bb11a2e5c5188e39a1fce30e3507fcb135c4ac4312e4eddaffc7d4082` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:ba019a56673a44529a41ce86cb25d54863feba85cfdc58c7ecc00481c3d639e2` |
| 10 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 113 | `declaration-track:f3ae938b782a4aafc36241d7a6945ea44a6a458709fb5f3d82234b69d1d3dbc2` |
| 11 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupSubgroupNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:7df1d3a03829623a111233ee23faa27f579c319e0ea431d2543c1b086ac09065` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3927902a4b09ffbbe3b78e1255ab80dbb52b5a357e264dfa5c6fb6a4f54dc37b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Subgroup/Variant7e34ee4be2a07d11f26d65b9edd32e1dfd7969014bbcf01a531357993816b55f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
