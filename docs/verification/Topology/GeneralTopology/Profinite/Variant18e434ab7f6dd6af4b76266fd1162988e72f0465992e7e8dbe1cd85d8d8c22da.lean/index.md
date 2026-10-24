# Verification target: GRWTSK.Topology.GeneralTopology.Profinite.Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20dad200a3109fc423a577894f4fa5b00d2951ac",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20dad200a3109fc423a577894f4fa5b00d2951ac`.

Source path: `GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.KrullTopology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.GaloisClosure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Category.ProfiniteGrp.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteGaloisIntermediateField.finGaloisGroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/finitegaloisintermediatefield-fingaloisgroup--e6dd13f53b7fdffb2e10e60d.md) | 71 | `declaration-track:e6dd13f53b7fdffb2e10e60d762c15c4294228118863a728b58c82a014e40c65` |
| 2 | `def` | [finGaloisGroupMap](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/fingaloisgroupmap--3bf1d9892fc0687ead9bae26.md) | 78 | `declaration-track:3bf1d9892fc0687ead9bae269f04831bc31723e941b6b59c3c9a60207c1ac128` |
| 3 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/map-id--f5ab0eeadf8ebd827cc8bcb9.md) | 88 | `result-track:f5ab0eeadf8ebd827cc8bcb945f569c0c76212569d76d9097009a0b17aa31efa` |
| 4 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/map-comp--2e479ef35fd4be343dbc4f9b.md) | 93 | `result-track:2e479ef35fd4be343dbc4f9be96725838cddc36895192ffc1c1eabbb23a00fb6` |
| 5 | `def` | [finGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/fingaloisgroupfunctor--492116951a6ec21ee73e7642.md) | 113 | `declaration-track:492116951a6ec21ee73e7642650254866f35b19b3df2ba58bd070865f6af4c80` |
| 6 | `abbrev` | [asProfiniteGaloisGroupFunctor](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/asprofinitegaloisgroupfunctor--1fcccbbb4ce421b48b4c9396.md) | 128 | `declaration-track:1fcccbbb4ce421b48b4c9396abb71f9fca54f171a43491e1218837d3ac424acb` |
| 7 | `def` | [algEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/algequivtolimit--430eabee38e29811de82fda7.md) | 138 | `declaration-track:430eabee38e29811de82fda769929075321f3cfe48875811d4bcefc8c2dbdc34` |
| 8 | `theorem` | [restrictNormalHom_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/restrictnormalhom-continuous--85f1ecb0a40d3f5068ad4975.md) | 153 | `result-track:85f1ecb0a40d3f5068ad49756bd3e147db70727fc675af852445559264d3ee20` |
| 9 | `lemma` | [algEquivToLimit_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/algequivtolimit-continuous--96cae256d2bb6e4a7c3703a3.md) | 173 | `result-track:96cae256d2bb6e4a7c3703a3fb64df10a3bea3d56d8f2ff3dc986330da19e3fe` |
| 10 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/proj--f44e158518a67e71fb1aba85.md) | 180 | `declaration-track:f44e158518a67e71fb1aba85c6acf5dd13d3504aafaeae1723d51ddc7e3d5acf` |
| 11 | `lemma` | [finGaloisGroupFunctor_map_proj_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/fingaloisgroupfunctor-map-proj-eq-proj--d276dbab0dcb9a820dd2205d.md) | 186 | `result-track:d276dbab0dcb9a820dd2205d2b49309de5645245f43186fdd18719bd9808a60b` |
| 12 | `lemma` | [proj_of_le](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/proj-of-le--75df822a906e41b0e4446113.md) | 191 | `result-track:75df822a906e41b0e4446113b4e0bb99351fd53a1e31cf617c1a69a5415b5ec7` |
| 13 | `lemma` | [proj_adjoin_singleton_val](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/proj-adjoin-singleton-val--9d2adfe88d2c0e4d5388f24a.md) | 204 | `result-track:9d2adfe88d2c0e4d5388f24af6457dd53ae4319154d35d704985c90321652830` |
| 14 | `def` | [toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/toalgequivaux--4c0aa46a53b964b16fe46e8e.md) | 212 | `declaration-track:4c0aa46a53b964b16fe46e8e8e1429b4bc71f5766330690be0a290f6233dd9d5` |
| 15 | `lemma` | [toAlgEquivAux_eq_proj_of_mem](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/toalgequivaux-eq-proj-of-mem--47534add859ee9aa5a30e094.md) | 216 | `result-track:47534add859ee9aa5a30e094cdd21d1b66f57ff509ff0b97c810e2d206062883` |
| 16 | `lemma` | [mk_toAlgEquivAux](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/mk-toalgequivaux--24ece8cd3f6f0fdd125aff6a.md) | 221 | `result-track:24ece8cd3f6f0fdd125aff6abf1fcb54c281752e39130657d0a95b02a7a0c3ab` |
| 17 | `lemma` | [toAlgEquivAux_eq_liftNormal](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/toalgequivaux-eq-liftnormal--f7d19262477da997bfb3665b.md) | 227 | `result-track:f7d19262477da997bfb3665b26e344e5da044be02d8bb2056659ab4d3e8b5a05` |
| 18 | `def` | [limitToAlgEquiv](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/limittoalgequiv--12a351d0d249eae319ebb05b.md) | 236 | `declaration-track:12a351d0d249eae319ebb05be26d6794bf6d6d4f3358040f923db3cb8dee5d5d` |
| 19 | `def` | [mulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/mulequivtolimit--04b7c26f151ba2dbed86c1f5.md) | 269 | `declaration-track:04b7c26f151ba2dbed86c1f5c49b9f879ad3f860f4e06af328b143630f3625ac` |
| 20 | `lemma` | [krullTopology_mem_nhds_one_iff_of_isGalois](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/krulltopology-mem-nhds-one-iff-of-isgalois--3a380eca3a051fb8b9faa64c.md) | 287 | `result-track:3a380eca3a051fb8b9faa64cd72340ea4d64ca9b233acade5e0bf3c4d6454d9b` |
| 21 | `lemma` | [isOpen_mulEquivToLimit_image_fixingSubgroup](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/isopen-mulequivtolimit-image-fixingsubgroup--061812b9d73979bb49da744b.md) | 293 | `result-track:061812b9d73979bb49da744b394ab9d878c2a1da7369d0a672f0457c727c9677` |
| 22 | `lemma` | [mulEquivToLimit_symm_continuous](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/mulequivtolimit-symm-continuous--c2794f5fa108867e55836507.md) | 303 | `result-track:c2794f5fa108867e558365070f804162c0fa5b2e6eeed355460e21e16fcfec81` |
| 23 | `def` | [continuousMulEquivToLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/continuousmulequivtolimit--bb564401d5c74f800966974a.md) | 318 | `declaration-track:bb564401d5c74f800966974a58405cc3cf2418087b96d7810333b60dea3b9235` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/instance--dbc8d8eceab7df7c2de492b2.md) | 324 | `declaration-track:dbc8d8eceab7df7c2de492b24967a16ce6a8e360c8b29bb96190430945eb3151` |
| 25 | `def` | [profiniteGalGrp](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/profinitegalgrp--05b6371cd868e6cefcf9890b.md) | 329 | `declaration-track:05b6371cd868e6cefcf9890bb151ce09c78e8635bb90631ad41ccad10e8e5e98` |
| 26 | `def` | [profiniteGalGrpIsoLimit](../../../../../mathematics/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/declarations/profinitegalgrpisolimit--ca523f65bcddff236b0fc598.md) | 334 | `declaration-track:ca523f65bcddff236b0fc598ccb4590acc05b8c1e40425c8c7255203c8622dc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
