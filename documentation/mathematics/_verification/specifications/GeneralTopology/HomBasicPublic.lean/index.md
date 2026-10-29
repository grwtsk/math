# Verification target: Hom Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72c84cb4f860ce490cf290cf7dddead7359d8222",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantebe8040f73b384038b98a5a97db9f5ac6f13038ed5d3f9720067a3d12d07651b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HomBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72c84cb4f860ce490cf290cf7dddead7359d8222`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantebe8040f73b384038b98a5a97db9f5ac6f13038ed5d3f9720067a3d12d07651b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantebe8040f73b384038b98a5a97db9f5ac6f13038ed5d3f9720067a3d12d07651b.lean.json)

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
| 1 | `structure` | [ContinuousOrderHom](../../../../GeneralTopology/HomBasicPublic.lean/declarations/continuousorderhom.md) | 38 | `declaration-track:f5b8533f0307ad2af9e7868450c4602910e7b7401b8c3a933a8ce97ca20b0502` |
| 2 | `class` | [ContinuousOrderHomClass](../../../../GeneralTopology/HomBasicPublic.lean/declarations/continuousorderhomclass.md) | 49 | `declaration-track:ede9477c5f686ad0c103868f06582d2fe8d52296cec1207fc7b1cf6df883ef73` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instance-source-edition-5.md) | 60 | `declaration-track:cf6c5af77bb36694e7992ac8c9deaa43dd02e7ab1eae31ab8376a9d6b8b636e9` |
| 4 | `def` | [toContinuousOrderHom](../../../../GeneralTopology/HomBasicPublic.lean/declarations/tocontinuousorderhom.md) | 68 | `declaration-track:362aa6714f3c60e8d05f82f15709b4cc138093b6fbac648743684cdae5f81342` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instance-source-edition-4.md) | 73 | `declaration-track:bf5e173e19d0590ad8f9196650148f6e506c2fc90be37413b0b4830ad58782f8` |
| 6 | `def` | [toContinuousMap](../../../../GeneralTopology/HomBasicPublic.lean/declarations/tocontinuousmap.md) | 89 | `declaration-track:e9ae17770af763360466d1caa3f3c712534af6e28787530544aeb6c995cc2fb0` |
| 7 | `instance` | [instFunLike](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instfunlike.md) | 93 | `declaration-track:1a23a6b313be786cbe2109dd2f71d021ad3043f8ca572928cf6203248d13b511` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instance.md) | 100 | `declaration-track:0d748a9023c8f18e086b67af98b3043ceb9b5c97c0298bd0b2f834f7926f157d` |
| 9 | `theorem` | [coe_toOrderHom](../../../../GeneralTopology/HomBasicPublic.lean/declarations/coe-toorderhom.md) | 104 | `result-track:092f55d89149a25b190b1da36a9ed240ba12b08a5e3022a8741190e530793b30` |
| 10 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/HomBasicPublic.lean/declarations/tofun-eq-coe.md) | 106 | `result-track:fc9b96300bbcf28cf2f015fbff844757dc698321a268bcc5245021c2aa36981e` |
| 11 | `theorem` | [ext](../../../../GeneralTopology/HomBasicPublic.lean/declarations/ext.md) | 109 | `result-track:93a981978de37831f6eded71de441f18f69a42c32e8571292133af9d59968edc` |
| 12 | `def` | [copy](../../../../GeneralTopology/HomBasicPublic.lean/declarations/copy.md) | 114 | `declaration-track:5cbb236f0b8a430e0a2949a00f49a6229dd90b682b69df60358e225dc237632a` |
| 13 | `theorem` | [coe_copy](../../../../GeneralTopology/HomBasicPublic.lean/declarations/coe-copy.md) | 118 | `result-track:5631bdcc28f7384f9e0f0b7946bf140e39e7b6be0489c720355b5b0e7dba4ecf` |
| 14 | `theorem` | [copy_eq](../../../../GeneralTopology/HomBasicPublic.lean/declarations/copy-eq.md) | 121 | `result-track:841899ffe31ae4f45683001e0a97c70c200330afb92ec723589e0c38db3937e1` |
| 15 | `def` | [id](../../../../GeneralTopology/HomBasicPublic.lean/declarations/id.md) | 127 | `declaration-track:c9ce5ed4ff9b42772d642a2dde54910afedc0e92177f9a1cd91a783432130840` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instance-source-edition-6.md) | 130 | `declaration-track:faa403c83438ab4640e6e9adfc517fa06944fc22a8aed4987a194ddfc07f6f24` |
| 17 | `theorem` | [coe_id](../../../../GeneralTopology/HomBasicPublic.lean/declarations/coe-id.md) | 134 | `result-track:0d6e0ce100c171eb09724b00340934ab72c5f51bc5a7431b21f75a33e3fb2c1a` |
| 18 | `theorem` | [id_apply](../../../../GeneralTopology/HomBasicPublic.lean/declarations/id-apply.md) | 140 | `result-track:57d5b30c2289328d384c9eee66e6f114bad2d7e57c7c746ad70ac6d2d3d8fe92` |
| 19 | `def` | [comp](../../../../GeneralTopology/HomBasicPublic.lean/declarations/comp.md) | 144 | `declaration-track:2a546a09baafeb9bd665f7b9bede01eda53e6ca5baa1815e09e4acb5cec9e65f` |
| 20 | `theorem` | [coe_comp](../../../../GeneralTopology/HomBasicPublic.lean/declarations/coe-comp.md) | 148 | `result-track:892e979632f263ae0285b6dabdf477211c5d0d3cdb2c46ee4d01cde90fe96423` |
| 21 | `theorem` | [comp_apply](../../../../GeneralTopology/HomBasicPublic.lean/declarations/comp-apply.md) | 152 | `result-track:51498f772ecdd78a8e06d7b9071ab435b4f8b306ee82c7727d57950e6f8ce479` |
| 22 | `theorem` | [comp_assoc](../../../../GeneralTopology/HomBasicPublic.lean/declarations/comp-assoc.md) | 156 | `result-track:ee78e118e801bd27035e1b91c3c80f54db75ce1a609d55aec676ee14223a695d` |
| 23 | `theorem` | [comp_id](../../../../GeneralTopology/HomBasicPublic.lean/declarations/comp-id.md) | 161 | `result-track:de4cc64dea6837b71682bedf7e005bb355880bbb3fcb4f3329217f227395a9f5` |
| 24 | `theorem` | [id_comp](../../../../GeneralTopology/HomBasicPublic.lean/declarations/id-comp.md) | 165 | `result-track:2b78bd1042b9013443ec3ae43a2884336a5996a2e3af793b2d584cec5e0f7105` |
| 25 | `theorem` | [cancel_right](../../../../GeneralTopology/HomBasicPublic.lean/declarations/cancel-right.md) | 169 | `result-track:384cd63d2683c410987f203982d035eff3ce7509edfcec7d5bc19d4690b81ae0` |
| 26 | `theorem` | [cancel_left](../../../../GeneralTopology/HomBasicPublic.lean/declarations/cancel-left.md) | 174 | `result-track:f8571d58170b2862831a3d81564efa4d3af8ecc059456b02fec48cd148cf1f72` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instance-source-edition-3.md) | 178 | `declaration-track:be289f2b525f4e4c4bb9b46970ce88439557823a7cd8ae4f2f22981cce83b2a6` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/HomBasicPublic.lean/declarations/instance-source-edition-2.md) | 183 | `declaration-track:b6d5c9cbbfb6f33d26699309dccaf2bb4d00ebdc9a131ad0581ff0356bf36e96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d7966b4446dac84f43f70ccd5ed24ffe8bd290fd36a8dda8fc669cc71d18fa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantebe8040f73b384038b98a5a97db9f5ac6f13038ed5d3f9720067a3d12d07651b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantebe8040f73b384038b98a5a97db9f5ac6f13038ed5d3f9720067a3d12d07651b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
