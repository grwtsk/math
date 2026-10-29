# Verification target: Submonoid Center Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9df9ff1cbc2c987355fe15a293687ee03ea431b8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9df9ff1cbc2c987355fe15a293687ee03ea431b8`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center.md) | 39 | `declaration-track:b453c2b9296d52a0bbdad9bb68e50f2f8dd1202092552e5d37067d1ca6e02127` |
| 2 | `theorem` | [coe_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/coe-center.md) | 45 | `result-track:4bdf58099b2292ad57c8d3691670350aa8a2b0452634c1eaa68518ffe3cbd345` |
| 3 | `theorem` | [center_toSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-tosubsemigroup.md) | 49 | `result-track:61dafda0d9bde8eabd293f3e49bc087cad50d85173cd3e7ff2b7860b5e8c0628` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/instance.md) | 52 | `declaration-track:1220d616d3283ab4284fa12418ef67e6bc36a6bc178da1481563dd88eee9c58b` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:f61a2483c0f2332731230892a482efa97256da5694a57d067d23776e08992fbb` |
| 6 | `abbrev` | [center.commMonoid'](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-commmonoid.md) | 69 | `declaration-track:0c81e6a6ce866dbc1776dc95236ee1f42bcff91829bbc010db1f9c48f00c9ddd` |
| 7 | `theorem` | [center_prod](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-prod.md) | 73 | `result-track:f1feaafaf3a5a1e1fd89319d7a521b4b293e9f049468d56049d64be079fbd206` |
| 8 | `theorem` | [center_pi](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-pi.md) | 78 | `result-track:299cc326efd8631b9c5f8dcd511e876882f4ecbde000cd3b70c057fdc273960d` |
| 9 | `theorem` | [map_center_le_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/map-center-le-center.md) | 83 | `result-track:67fb922f5d4f85dc1cc6dad2e58d5ffea531d6ea2dd457295e215539eac76318` |
| 10 | `theorem` | [comap_center_le_center](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/comap-center-le-center.md) | 88 | `result-track:40bce8d8db179afe6de34f8a16c3f3384f8da2c6023190b8d968ef7f8a76acb7` |
| 11 | `theorem` | [map_center_eq](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/map-center-eq.md) | 93 | `result-track:380d59cf3363309a7faf376f06af4b08190e2726e445137f5cb705e666424ea5` |
| 12 | `instance` | [center.commMonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-commmonoid-source-edition-2.md) | 105 | `declaration-track:744b80151757dd1bff2527c95de6e8929120ec989ce655a05fa255dbcdbb2b5d` |
| 13 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/example.md) | 109 | `declaration-track:405d5b7507b98ea1f71787ce4d7f36df2ae55af668c8a826835e28df09a80d81` |
| 14 | `theorem` | [mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/mem-center-iff.md) | 113 | `result-track:91f44a01cd31f30ae5cca13426409cd92dc8a4cd3768c719924127bc788d08b3` |
| 15 | `instance` | [decidableMemCenter](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/decidablememcenter.md) | 118 | `declaration-track:61a17818090b41568a7cdf60e20526e86ff06493aa643be5078fffeeaf61cf2c` |
| 16 | `instance` | [center.smulCommClass_left](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-smulcommclass-left.md) | 122 | `declaration-track:d8643ac4a7e35515df45774e7aa07564e129af95f4a4e49e9cf648d57fb38256` |
| 17 | `instance` | [center.smulCommClass_right](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-smulcommclass-right.md) | 126 | `declaration-track:185394b1ea7abea8845c375f7ff37538d6242c00e814a71f1434c910a6c848d8` |
| 18 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/example-source-edition-2.md) | 132 | `declaration-track:88f6d17daec5f838f1e05bbc71e3436372e75f176e77af2f751b5711861b2d00` |
| 19 | `theorem` | [center_eq_top](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/center-eq-top.md) | 141 | `result-track:8e307c17e19c3619781d20bef7f5dc144b947cedcd503328d60496edee72dd51` |
| 20 | `def` | [unitsCenterToCenterUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/unitscentertocenterunits.md) | 155 | `declaration-track:3e86bed61958aec0004f6c1ffc29ad33c706977aebf5e390edddbd9ace7def9e` |
| 21 | `theorem` | [unitsCenterToCenterUnits_injective](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/unitscentertocenterunits-injective.md) | 163 | `result-track:5e91902b12a9cda52f1f4561a823119f1b3152d6a58d599c99941a192e3486de` |
| 22 | `def` | [Subsemigroup.centerCongr](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/subsemigroup-centercongr.md) | 173 | `declaration-track:6e73c6fa04eb9d09c56295739cf43e157084bdfde31f2c97f431c06d7f27771a` |
| 23 | `def` | [Submonoid.centerCongr](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/submonoid-centercongr.md) | 182 | `declaration-track:5631e10ddfd96ab9724e1d5824a94fe6ee24f8d4b0bbf09aa3ffcd5761d05661` |
| 24 | `theorem` | [MulOpposite.op_mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/mulopposite-op-mem-center-iff.md) | 185 | `result-track:c1b25467667276e3febba6e758c2816b89f47f3a9c8c486906c57f63334853d7` |
| 25 | `theorem` | [MulOpposite.unop_mem_center_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/mulopposite-unop-mem-center-iff.md) | 189 | `result-track:df9052dbcbe0c6180dacca55c8da0efec2b88fabf8964accb53038cad6e218fa` |
| 26 | `def` | [Subsemigroup.centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/subsemigroup-centertomulopposite.md) | 196 | `declaration-track:3d39bf760780a74662ead81f093a6c743a3dc9830cd8a22973f25e3f2df17a25` |
| 27 | `def` | [Submonoid.centerToMulOpposite](../../../../GroupTheoryAndGeneralizations/SubmonoidCenterPublic.lean/declarations/submonoid-centertomulopposite.md) | 204 | `declaration-track:953ebd27e5c44de0ae8b2c73da904f806cbc036298afd46ad88ec96849c5cbea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab99758199603a820df61efc07b521b6bd148215275ffc1c0174f4c5792f75ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Center/Variant34875204a0e78a0f9acd48cec2a331bf7b7622bc9508f4f2be80583e811ee566.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
