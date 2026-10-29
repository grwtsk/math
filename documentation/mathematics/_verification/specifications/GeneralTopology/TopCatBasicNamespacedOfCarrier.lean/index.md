# Verification target: Top Cat Basic Namespaced Of Carrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a79e06344ef81f6863e34e853d39c357fc6ad5f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/index.md) · [Full source](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a79e06344ef81f6863e34e853d39c357fc6ad5f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elementwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopCat](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/topcat.md) | 34 | `declaration-track:d1f49698ec21f30dc0c2e8f89df516feb30f0bba631b687cc5d15afd864bb558` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/instance.md) | 46 | `declaration-track:405bdfb5b3b8e88c13eacf6a9210a5df6b06338d7646bf908618fc28583e9690` |
| 3 | `abbrev` | [of](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/of.md) | 53 | `declaration-track:3433c1a593f97ed3f99acee8e11907e6a011000c65b2577bb4f45e0afef8da1d` |
| 4 | `lemma` | [coe_of](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/coe-of.md) | 56 | `result-track:68adb60d2c1fe0e66a6c8e4b2eb64cc67cb468b5673191e581b8fa19755f439a` |
| 5 | `lemma` | [of_carrier](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/of-carrier.md) | 59 | `result-track:56698458f34d2bc5171e1f32eef279eb77294ebb0914beea3b2de1c98bc80f49` |
| 6 | `structure` | [Hom](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom.md) | 64 | `declaration-track:3729b1f6175a1c9a212a8c10e261f8a3a3ea611acc71a9790b5a12ea257b1654` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/instance-source-edition-3.md) | 69 | `declaration-track:99ded613e082918a3723ba0d92557b045c96ea6c27efa1bd8f8c28f6bf9345e4` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:76cb32b6ea7db7b68a66d20578ed17b824b46d964ff4a666b5ead4163e5472c1` |
| 9 | `abbrev` | [Hom.hom](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-hom.md) | 79 | `declaration-track:76086cc6d85a4ec80e10c5cf7addeef4db74f97b0bb38e0833e2cd2e21091125` |
| 10 | `abbrev` | [ofHom](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/ofhom.md) | 83 | `declaration-track:0c37020b993211e6fd1d4c48408311f953414de882d4164b3d2ce469a83e2ada` |
| 11 | `def` | [Hom.Simps.hom](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-simps-hom.md) | 87 | `declaration-track:977ed0cd22005473b7d164fb06717b2cd267ed03bb4c15c804705587841f439e` |
| 12 | `lemma` | [hom_id](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-id.md) | 97 | `result-track:3b944c33f52736c14f6c14166f272b4c282b41c4e70cc58ca85a19a646abd1bd` |
| 13 | `theorem` | [id_app](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/id-app.md) | 100 | `result-track:8175b39e16e334b458b9b9fb043a6f7c48ea22beb9ab7e24a16f7ee360e94727` |
| 14 | `theorem` | [coe_id](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/coe-id.md) | 102 | `result-track:7bb8539d16c11e389cc85b146ff18e0b36880d5865f6ed0435de6c68a0247bde` |
| 15 | `lemma` | [hom_comp](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-comp.md) | 105 | `result-track:baa022f4727464cac400aae417c043846f3d3edf69b315bb32212a56a2ab4dfc` |
| 16 | `theorem` | [comp_app](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/comp-app.md) | 109 | `result-track:3bcf0c051571a78bcb23c28c8b6ddec3b82857bb9761fbee2543de06c6ad242d` |
| 17 | `theorem` | [coe_comp](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/coe-comp.md) | 112 | `result-track:71093a5b3fb52e64f774c836397a416aa44ce89e63d77414f8d482068749e94c` |
| 18 | `lemma` | [hom_ext](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-ext.md) | 116 | `result-track:a2bca481e56a6d5b324b2a7e364721b633b51957001fea24fd1f3282ed49b337` |
| 19 | `lemma` | [ext](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/ext.md) | 120 | `result-track:b043d1cb9952bfcfb8d4c0a8ac6a76afe184af0ca81d49642cc3084d73a05500` |
| 20 | `lemma` | [hom_ofHom](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-ofhom.md) | 124 | `result-track:03e7b6a5adca3a34d284561c0b0a6c163727cd1f30b804375c10c13c4e1b8a21` |
| 21 | `lemma` | [ofHom_hom](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/ofhom-hom.md) | 128 | `result-track:63010ada87952b6416194c1208b15798e4cc819737149140780380741c234d9d` |
| 22 | `lemma` | [ofHom_id](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/ofhom-id.md) | 132 | `result-track:53fc3aed2acb8bbbc9e2cdc19a5acb26ce48ae8769cb4ec00ecc9a49742d8781` |
| 23 | `lemma` | [ofHom_comp](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/ofhom-comp.md) | 135 | `result-track:b29419d446d2c6394f5cee6f5f810f4e0495473eb45519e750dcc0bccd6aede7` |
| 24 | `lemma` | [ofHom_apply](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/ofhom-apply.md) | 140 | `result-track:05575440d023f9299402c61194fbbdb6720c994ce533c9d1a5444b26a6044b89` |
| 25 | `lemma` | [hom_inv_id_apply](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-inv-id-apply.md) | 143 | `result-track:6a2739517a605465dd81c0056a0c92f359a55546d30224696d5d3f9940a8b8f3` |
| 26 | `lemma` | [inv_hom_id_apply](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/inv-hom-id-apply.md) | 146 | `result-track:d689ae89da7ab79a9567ce1246a591969cf5ef61972eb8f3f19ada5bf76dcfb1` |
| 27 | `theorem` | [coe_of_of](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/coe-of-of.md) | 153 | `result-track:59e6a6294cdbb7d30ec9ef4a105c90f4868a2c1450549c35ea2ef3408ef3953b` |
| 28 | `instance` | [inhabited](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/inhabited.md) | 163 | `declaration-track:ba4e354462f342c858a77f1ebffd203f7590adff0b8c9790801c9ad3ecd37f96` |
| 29 | `lemma` | [hom_apply](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/hom-apply.md) | 169 | `result-track:c2ac15122e5c768461255ab6e68978d9a20cc9b3a6730c02beed2f3ae7c58e45` |
| 30 | `def` | [discrete](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/discrete.md) | 172 | `declaration-track:cd9abeb9c74de1098781470b7ce7888de43dfa3dc0001c7268dfab513241afc4` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:ea155ad11cb833fe260d2ff601835e6f392a27cbfb577203ca8f9dc55154ab1f` |
| 32 | `def` | [trivial](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/trivial.md) | 180 | `declaration-track:08632e97bd1c94c7358d16fd559ac9e2fc9d190c95fad27b5808549b79a14612` |
| 33 | `def` | [isoOfHomeo](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isoofhomeo.md) | 186 | `declaration-track:a13761000b6063254aa3ddd36ff5a32115c05b83bdb6a0e9d801bdc50946b677` |
| 34 | `def` | [homeoOfIso](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/homeoofiso.md) | 192 | `declaration-track:d8402743d6beaa53631410f1ae0763749e51ef6c269fb6a3a819b80096833e34` |
| 35 | `theorem` | [of_isoOfHomeo](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/of-isoofhomeo.md) | 201 | `result-track:5404bba6c65a94a47090ab4e41b16e35e8188916d3bda48bcbbb8028833c67bd` |
| 36 | `theorem` | [of_homeoOfIso](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/of-homeoofiso.md) | 206 | `result-track:8f57f97e5d23084b997500e3f5d3a7028ee501078b7e865069586004fc880956` |
| 37 | `lemma` | [isIso_of_bijective_of_isOpenMap](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isiso-of-bijective-of-isopenmap.md) | 210 | `result-track:337d93d51992de9cc74c3ea617b163f62ab588f3f31802d90c22671686c6e5aa` |
| 38 | `lemma` | [isIso_of_bijective_of_isClosedMap](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isiso-of-bijective-of-isclosedmap.md) | 216 | `result-track:6b00c8ef4bce3a3554fd720fe28d21183146ea5ad193c8d4bc91ecf78a64ebb9` |
| 39 | `lemma` | [isIso_iff_isHomeomorph](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isiso-iff-ishomeomorph.md) | 222 | `result-track:6aa71db5c025812060824222c823b054ebee74b35ebd9b91bcbf2c90d525afd9` |
| 40 | `theorem` | [isOpenEmbedding_iff_comp_isIso](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isopenembedding-iff-comp-isiso.md) | 227 | `result-track:25fba9e1d26a7f1b17434e6acea59893d287e3758221127cd2c4f843224ba6f7` |
| 41 | `theorem` | [isOpenEmbedding_iff_comp_isIso'](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isopenembedding-iff-comp-isiso-source-edition-2.md) | 232 | `result-track:848932eeca64739028d7461265a1a0b569f757b1a419ba33d54a1dead0930a22` |
| 42 | `theorem` | [isOpenEmbedding_iff_isIso_comp](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isopenembedding-iff-isiso-comp-source-edition-2.md) | 237 | `result-track:b523f7e6d2f595efe2c319f2cab4f8e7b99c3992c3f15825985476c8349e2902` |
| 43 | `theorem` | [isOpenEmbedding_iff_isIso_comp'](../../../../GeneralTopology/TopCatBasicNamespacedOfCarrier.lean/declarations/isopenembedding-iff-isiso-comp.md) | 246 | `result-track:015922ccee3ef9886a5e67ea5d79043e8f69c6bcdbfeb7ffca620aed35d2cb3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a15ee476376618a253de3c023aa0aeeb7030cbbd75f491f2faadad5a3bd7766 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Varianta1ddc8be9bb6e3dca3e99abd8e12ebd8b96d2c060feed61fd5bc482807f7cea4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
