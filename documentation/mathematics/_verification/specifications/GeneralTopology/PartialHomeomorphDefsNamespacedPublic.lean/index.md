# Verification target: Partial Homeomorph Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10ad2b5d2c88d3dec6a766d8f1abacb72848af14",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10ad2b5d2c88d3dec6a766d8f1abacb72848af14`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean.json)

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
| 1 | `structure` | [PartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/partialhomeomorph.md) | 60 | `declaration-track:63f11707805435aa0d1075dd4b08a2d1e615d9dc3e2beff71af00381292c6d3a` |
| 2 | `def` | [toFun'](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/tofun.md) | 73 | `declaration-track:7248f4830d014ca66af81ed18a392002e4b788e0011e70d13b82b6a2bfe71e56` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/instance.md) | 77 | `declaration-track:1ae16b7b983d4e3d3ffa3bc2dbd86650024b511da2f244613a4fafea6c4a7364` |
| 4 | `def` | [symm](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/symm.md) | 82 | `declaration-track:8bb8fcd7cb1f61ede0582b02987a53cde47ec0231ae186812fa4f046b6cc9c29` |
| 5 | `def` | [Simps.apply](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/simps-apply.md) | 89 | `declaration-track:57112dc32abf726fafd34acf00a7620685aacee6b9fe86d6459043bf571988db` |
| 6 | `def` | [Simps.symm_apply](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/simps-symm-apply.md) | 92 | `declaration-track:0c75af92ec476331d93be4154c2f32a87646e496179f6e599eb7feeb0e14d32e` |
| 7 | `theorem` | [continuousOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/continuouson.md) | 97 | `result-track:e906829f29163350d64ddf4f8af97fa7323c121420c8985df0306180a50a1bf8` |
| 8 | `theorem` | [continuousOn_symm](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/continuouson-symm.md) | 101 | `result-track:eb1b841a3712bb17255567372b5a3ea91b326f638a0c3224e7ea6c1c537ed689` |
| 9 | `theorem` | [coe_mk](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-mk.md) | 105 | `result-track:c841d001a1ed890b69d01a937ae4c4956c26030b53c3ae5b3ca5325e8534eedd` |
| 10 | `theorem` | [coe_mk_symm](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-mk-symm.md) | 108 | `result-track:94cd3973c7bfa9df5a31e8f52954fef76d3700ceb14fc0a534880baa76f40845` |
| 11 | `theorem` | [toPartialEquiv_injective](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/topartialequiv-injective.md) | 112 | `result-track:91b38375dbd360504d533dc6bf20dcec3d75944a645a2db02a0dd74bf3538d00` |
| 12 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 119 | `result-track:0123ef24d371c09819be3e79d15f1397f072fe7c3908582498365e7aa62d4881` |
| 13 | `theorem` | [invFun_eq_coe](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/invfun-eq-coe.md) | 123 | `result-track:5c8513a953287d7a2bdb074c64ca2db0a18a22464792b47f453e48f616fa9d50` |
| 14 | `theorem` | [coe_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-topartialequiv.md) | 127 | `result-track:ec1c2e9029e9ef500e4b3ee40bba98c1fdbeeca830bf8a7154c501998c8c0585` |
| 15 | `theorem` | [coe_toPartialEquiv_symm](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/coe-topartialequiv-symm.md) | 131 | `result-track:484118b2cecf4f96e8f1456df6aec7d37465623a51cc917ec30669b711601f78` |
| 16 | `theorem` | [map_source](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/map-source.md) | 135 | `result-track:07ea4dc4552c20f61a31860f056f0782f22ec3ba5f8ef3967fba707a92ed0408` |
| 17 | `lemma` | [image_source_subset](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/image-source-subset.md) | 139 | `result-track:30131ffda68df19ad55471810c51369f99cb467c2c854b16286c697706c9a473` |
| 18 | `theorem` | [map_target](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/map-target.md) | 143 | `result-track:c2455c2a19ef4bcbf8308977a2ac7cb4176f1b96f1966bd68fc693bfd446f0c5` |
| 19 | `theorem` | [left_inv](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/left-inv.md) | 147 | `result-track:0d0e6856c8836b3accc1c025859e99f29d242e8785c34fc6d78e1ca18259d26d` |
| 20 | `theorem` | [right_inv](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/right-inv.md) | 151 | `result-track:7342d01c9587b28133f7f54d886d1b2c2e371ae24457b3d889e95ab80d28172f` |
| 21 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/eq-symm-apply.md) | 154 | `result-track:094a4a8b7c7ec730485487c5004285bcb2d956548a48413b44fe2f220f08f90c` |
| 22 | `theorem` | [mapsTo](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/mapsto.md) | 158 | `result-track:1898ff81d2a08dc6c3a76dfd27c86faf26826ce2ec5c90bf63428d793c5fe011` |
| 23 | `theorem` | [mapsTo_symm](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/mapsto-symm.md) | 160 | `result-track:a8bc576305d2fabb2219b56c4a92b32cd23254791b81e1d3513b2ebe5c042ee2` |
| 24 | `theorem` | [leftInvOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/leftinvon.md) | 163 | `result-track:077e4224f3eefaf5623b2c1f8c67583ad94f9a82eeab6d964380b9a86dba24ac` |
| 25 | `theorem` | [rightInvOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/rightinvon.md) | 165 | `result-track:82c06489a09a631e5271a5bcdac798f785e47969b1d81bc99fd93a28b5834f72` |
| 26 | `theorem` | [invOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/invon.md) | 167 | `result-track:c2e93bd3491d52e8bf90d7604970d49bbaaa832430e789d8a960397854d372be` |
| 27 | `theorem` | [injOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/injon.md) | 170 | `result-track:3630cdc9c62018f97142ec6708fd849854d164e9c83476816688534c08f5a463` |
| 28 | `theorem` | [bijOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/bijon.md) | 173 | `result-track:50bc72a0b49720bc922843b3b7d45214af258e4dac13d87848557b8041eec6fa` |
| 29 | `theorem` | [surjOn](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/surjon.md) | 176 | `result-track:6d6d0bb7b987b235df470d12ac72f5ad2aafd9cbed3c42e6dc638bdf380bae10` |
| 30 | `def` | [Partial Homeomorph Defs Namespaced Public](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/topartialhomeomorphofimageeq.md) | 185 | `declaration-track:3d92f6fe56e9d9d5774f3e9a9a1f6585f69c7768e78f5ef4d482def20551aadb` |
| 31 | `def` | [Partial Homeomorph Defs Namespaced Public](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/topartialhomeomorph.md) | 193 | `declaration-track:13c3e7ab1045feebff0ae419da1acc1557c6710b82a51f36f19ca9673618e42e` |
| 32 | `def` | [replacePartialEquiv](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/replacepartialequiv.md) | 197 | `declaration-track:b1ac98517b35e18c869eb090e141f9c4f76096fdc0a134df44e41d091f54bf06` |
| 33 | `theorem` | [replacePartialEquiv_eq_self](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/replacepartialequiv-eq-self.md) | 203 | `result-track:ce34e7d8bf8e23193064d486b46cdec7ef878ef419ee08d949cb0feae97e047a` |
| 34 | `theorem` | [ext](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/ext.md) | 214 | `result-track:26cc86ff86cf696942cae7d556ce07ea744942da23cba81037e7553758190566` |
| 35 | `theorem` | [symm_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-topartialequiv.md) | 219 | `result-track:ac2e8937552da06a0010f28ba496a04ba4bbd8a7e16778b3df0b6baa87940bc5` |
| 36 | `theorem` | [symm_source](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-source.md) | 223 | `result-track:5e4dbc257738b1cc78d81a6e522b9d7395480628cf1b8fb3f98076d86ef834a1` |
| 37 | `theorem` | [symm_target](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-target.md) | 226 | `result-track:c1192d22ecadbbea0781ebdc2d27cfafbb6aa85373b3c769833f52399a8cc0d4` |
| 38 | `theorem` | [symm_symm](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-symm.md) | 229 | `result-track:8bed452c5e6f013474c235e2ad1b679dfc5a5d9f0483fb730fad4cd1f9bebf86` |
| 39 | `theorem` | [symm_bijective](../../../../GeneralTopology/PartialHomeomorphDefsNamespacedPublic.lean/declarations/symm-bijective.md) | 231 | `result-track:38760470c653c37d1209f7d8e7a1f2dfafc5fcccb255362f934af25c363ce42c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0fdcd1ee5a5c84010a1e7c8a820920aea9b00f67dfbd2fc53b207e3a0daa67a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
