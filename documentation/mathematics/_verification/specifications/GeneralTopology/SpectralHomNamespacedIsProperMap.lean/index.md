# Verification target: Spectral Hom Namespaced Is Proper Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20ccf3b062274f8e53ef4780358615736cc38a0d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/index.md) · [Full source](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20ccf3b062274f8e53ef4780358615736cc38a0d`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.StacksAttribute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSpectralMap](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/isspectralmap.md) | 47 | `declaration-track:c7bc06bbd34f70359e95aeba880cc52d4e85b87b47c344949200ab98af0b5e38` |
| 2 | `theorem` | [IsCompact.preimage_of_isOpen](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/iscompact-preimage-of-isopen.md) | 52 | `result-track:1deb541b9012e29c8c5303306226f0754f359780e0ff3db2b0cb6a3f3567c113` |
| 3 | `theorem` | [IsSpectralMap.continuous](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/isspectralmap-continuous.md) | 56 | `result-track:0156e259abe14c401a1bbbc3217a827fa87c3717bd53bb49379003059ab1cc91` |
| 4 | `theorem` | [isSpectralMap_id](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/isspectralmap-id.md) | 59 | `result-track:8bfe613bb81c0212110ec782062c51c7ed0ae3ba595bf831311464fe505ccf53` |
| 5 | `theorem` | [IsSpectralMap.comp](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/isspectralmap-comp.md) | 63 | `result-track:eaf9640e7fa71b4ee4d1954f75f318ea72a36ca27d43035399c9a043fa965ac1` |
| 6 | `theorem` | [IsProperMap.isSpectralMap](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/ispropermap-isspectralmap.md) | 68 | `result-track:f60fd813d8d8c357b654c6aa82561d7fbcf313598106479198e5ad8f9cf19f0e` |
| 7 | `structure` | [SpectralMap](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/spectralmap.md) | 74 | `declaration-track:72541a45ea3d5420257c00e20791f4fa14c34b30b3f65c37b49d1a4450bb46dd` |
| 8 | `class` | [SpectralMapClass](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/spectralmapclass.md) | 85 | `declaration-track:448718db9c867cb36845000e11e75689d6298886b2233f8c7bcfd7312168d20b` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/instance.md) | 97 | `declaration-track:0d6e80412f46b9a420a65162989911720001d52d5082d0ed28ff936f442f1bfd` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:aa717952a4435cbd0318a376a836a9f8585522afa719d1e7fb2c93b0efc9e7da` |
| 11 | `def` | [toContinuousMap](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/tocontinuousmap.md) | 113 | `declaration-track:384091092a6abd789aae585fd2be72c316a434f877e8d3fc252ca229232b3f46` |
| 12 | `instance` | [instFunLike](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/instfunlike.md) | 116 | `declaration-track:647e6993f785400e64b1ac18426030efceddbe85ee9b6f4994c40c4005f3cd39` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/instance-source-edition-2.md) | 120 | `declaration-track:7d65e903e013ec357a803f318c706e656da19abe10ab28e4f7f536fb20efd17a` |
| 14 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/tofun-eq-coe.md) | 124 | `result-track:de831dd8fea36e99b06dff57cf026abc85911b30b786276bbd64b82ebc148b65` |
| 15 | `theorem` | [ext](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/ext.md) | 128 | `result-track:239a2002f26e2eed2903d926926665c1f7975ba997eeb02e682cfc3fa802c991` |
| 16 | `def` | [copy](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/copy.md) | 133 | `declaration-track:562fe39efc438c4ade1f2391acfaf14cd85d780533a352f0a855d9d8dca0ae74` |
| 17 | `theorem` | [coe_copy](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/coe-copy.md) | 137 | `result-track:378723d1a33bb6d590a7bc5300ca8b15566e0cff382e9c1bb4dd4e24fc2f6777` |
| 18 | `theorem` | [copy_eq](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/copy-eq.md) | 140 | `result-track:bfc13a888f6ac278c1c89d002e1fd29a00b8b9261d65708f370a5fc69ec71716` |
| 19 | `def` | [id](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/id.md) | 146 | `declaration-track:a6eb78e6a328884609edd8c5c4fea6a62dd3531ee78a2f39c4fa8d89833376d3` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/instance-source-edition-4.md) | 149 | `declaration-track:e2dbe0458730a824454f09a495a58f296e842d65fc70dabe86498b37a9c93e58` |
| 21 | `theorem` | [coe_id](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/coe-id.md) | 153 | `result-track:955e4e7fa41e7cfc31d757d16c898f1849746030f297628343b45e2559280116` |
| 22 | `theorem` | [id_apply](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/id-apply.md) | 159 | `result-track:533c05e97ff5ddab3a060d893364952c0dd4011f5235c657fc5889c7f63407e0` |
| 23 | `def` | [comp](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/comp.md) | 163 | `declaration-track:c61de7572d5c93eb78ace4cc5882f7d7d0190a2c0b53225b94a3d1ac0b4359c0` |
| 24 | `theorem` | [coe_comp](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/coe-comp.md) | 167 | `result-track:6700bceb07f9d10bfbeca4d1bfa22f818ad6270250d6d9d5207ae5a3e51a64d9` |
| 25 | `theorem` | [comp_apply](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/comp-apply.md) | 171 | `result-track:69997dab2a3d556147a03ab44fe25c9fb62179550989c6a59f017b4a25d2617f` |
| 26 | `theorem` | [coe_comp_continuousMap](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/coe-comp-continuousmap-source-edition-2.md) | 174 | `result-track:2a9325800d0e1779b9ab4a9e6b36fb418bae7c43fe731040319d1609c4ba7183` |
| 27 | `theorem` | [coe_comp_continuousMap'](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/coe-comp-continuousmap.md) | 179 | `result-track:20a7da38566d54716ac454116d273814a9f18987adb1287dccfa10b4738f66c8` |
| 28 | `theorem` | [comp_assoc](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/comp-assoc.md) | 184 | `result-track:e8f1606eeef54930a82c7f873aeee86bce3a6b19e5fa9941b827bdeac174b701` |
| 29 | `theorem` | [comp_id](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/comp-id.md) | 189 | `result-track:2cbef655fb75918fd86eb55571c3e9a2a655e31420c6003d5bc48b242a1a73c7` |
| 30 | `theorem` | [id_comp](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/id-comp.md) | 193 | `result-track:01a466aea63b042ad6d59772d4bcdc03524128f0c0e5a93edd80c4c0c01d2e4a` |
| 31 | `theorem` | [cancel_right](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/cancel-right.md) | 197 | `result-track:b23fc4ee8935d7a4736055920d4a4207455273198f8415a00a2abecb45863089` |
| 32 | `theorem` | [cancel_left](../../../../GeneralTopology/SpectralHomNamespacedIsProperMap.lean/declarations/cancel-left.md) | 203 | `result-track:109e246124ea301ed03b68a94606e200315add26b26e92e082cae025bfb577df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9aa94553a31c6020966e86a7109338debd5dbb538ec6246bf6a29809ab7f4a8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
