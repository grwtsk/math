# Verification target: Hom Completion Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "952e3578590de9a9ba4b8fed91c623c8266b6b34",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `952e3578590de9a9ba4b8fed91c623c8266b6b34`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Completion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NormedAddGroupHom.completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion.md) | 70 | `declaration-track:784b664d5391fdb9d2588ef35b591ce05c7667b1578c979dfe2353bbec3c5485` |
| 2 | `theorem` | [NormedAddGroupHom.completion_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-def.md) | 75 | `result-track:55f7ac05268b551e6f876a887d542c790d400925c7d47bcc2f549a195916d3b9` |
| 3 | `theorem` | [NormedAddGroupHom.completion_coe_to_fun](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-coe-to-fun.md) | 81 | `result-track:7db28d8978215493db2017c9df79603c6fe46f36f6cdcac373cc0ec5ada4b865` |
| 4 | `theorem` | [NormedAddGroupHom.completion_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-coe.md) | 86 | `result-track:36dc3867bd33e1e38b1e8f81b182ef5251fe02111c5e5d63cb8ca488c1927dd7` |
| 5 | `theorem` | [NormedAddGroupHom.completion_coe'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-coe-source-edition-2.md) | 92 | `result-track:3c470bc6c315baf99f90da68f807fa6d835cc51182408f08f61703b23bdf70ec` |
| 6 | `def` | [normedAddGroupHomCompletionHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphomcompletionhom.md) | 98 | `declaration-track:fd0553bb7bd225c20d028cd77299ee68a6c8a6e7ce67874e6b344212e48eb7fa` |
| 7 | `theorem` | [NormedAddGroupHom.completion_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-id.md) | 108 | `result-track:3c59730449be9d84908f744f5f161e560c332b3103f90821483d6f27133c2a24` |
| 8 | `theorem` | [NormedAddGroupHom.completion_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-comp.md) | 115 | `result-track:a42c6a9159c0ad35396d29b92b506b302ba05c5f0bd5c4651601f95ee991a067` |
| 9 | `theorem` | [NormedAddGroupHom.completion_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-neg.md) | 124 | `result-track:e8636f9525f667050b7092e3fbc9b3d5cb4353661d2fb53eb32373b37dbfff53` |
| 10 | `theorem` | [NormedAddGroupHom.completion_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-add.md) | 129 | `result-track:432f41046623958c636ca2b13d65cd93d369ab42695b30fb14aa51e90d79e855` |
| 11 | `theorem` | [NormedAddGroupHom.completion_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-sub.md) | 134 | `result-track:3973e49a6fa1f3ea078336f2abf37bdfde0215b4379bcf4f6cfa27c7dcd61a5d` |
| 12 | `theorem` | [NormedAddGroupHom.zero_completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-zero-completion.md) | 140 | `result-track:96d8606286877b7fdeb76a8d4e0c70389a2400cd3d57143194fc6c5f04b7b9fa` |
| 13 | `def` | [NormedAddCommGroup.toCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddcommgroup-tocompl.md) | 146 | `declaration-track:144bf466d816ea070969656d69982cddad478a9d3c2c9d15459d8997e348bd49` |
| 14 | `theorem` | [NormedAddCommGroup.norm_toCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddcommgroup-norm-tocompl.md) | 154 | `result-track:930690d1c46d85b4b0811812de1f47dedcb2cd61b3b1e7ee035a04c3c1462749` |
| 15 | `theorem` | [NormedAddCommGroup.denseRange_toCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddcommgroup-denserange-tocompl.md) | 158 | `result-track:d16181ab5168d66eb31296b9097c93077597119f5c76e97e547a5a5303420747` |
| 16 | `theorem` | [NormedAddGroupHom.completion_toCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-completion-tocompl.md) | 163 | `result-track:c7f21b8dc89a9fd4f8a1bf4d92d9ed8a95faf80d70ee87ee5f0439b1fb7dc171` |
| 17 | `theorem` | [NormedAddGroupHom.norm_completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-norm-completion.md) | 168 | `result-track:6500f9582e29801ebf47b05fbbb86688bf075a5f2e267ad49274600ec9f6408d` |
| 18 | `theorem` | [NormedAddGroupHom.ker_le_ker_completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-ker-le-ker-completion.md) | 173 | `result-track:72610e994ed0bdc881e654851c58954c931ead100caf26441723b3f38f56759a` |
| 19 | `theorem` | [NormedAddGroupHom.ker_completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-ker-completion.md) | 179 | `result-track:3133d85a5017a3cdd0676317b1a53d3991e6e4638d4249fb9fb9c2877c687bac` |
| 20 | `def` | [NormedAddGroupHom.extension](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-extension.md) | 214 | `declaration-track:209cf6573281eae45c0ae41db6280c46839836c0b8d772d9d3b77bf5745a77ce` |
| 21 | `theorem` | [NormedAddGroupHom.extension_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-extension-def.md) | 220 | `result-track:b765808328aebed76d1dbb208cc786ea19cfc497a9a3ecd18e54bdd026159b79` |
| 22 | `theorem` | [NormedAddGroupHom.extension_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-extension-coe.md) | 226 | `result-track:4287449cf159bc77f370a3e4797a109f8ffafa40c2a85aab5135dfb14ba8bf24` |
| 23 | `theorem` | [NormedAddGroupHom.extension_coe_to_fun](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-extension-coe-to-fun.md) | 230 | `result-track:d8a7057f4594517d34dbf01c16ceccca525906f2d7c81a5638118c41788d90e2` |
| 24 | `theorem` | [NormedAddGroupHom.extension_unique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/HomCompletionNamespacedAligned.lean/declarations/normedaddgrouphom-extension-unique.md) | 235 | `result-track:0e339ef445f8f534c9d04eab79a26356f87d646759694171216534b30126f919` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b87ff44c943b9cdf177c69dfcf1b314141181884311f7095c9fcaee602f6ce0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
