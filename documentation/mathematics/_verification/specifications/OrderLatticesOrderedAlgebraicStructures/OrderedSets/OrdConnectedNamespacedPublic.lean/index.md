# Verification target: Ord Connected Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b10286a7a416d4efbcc044d419910677a3ecb09a",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b10286a7a416d4efbcc044d419910677a3ecb09a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean.json)

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
| 1 | `theorem` | [OrdConnected.out](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-out.md) | 44 | `result-track:cfc4882781dcc7a181c3a4192289aea20f8d74d8db2b58396d276ad11b8d29b7` |
| 2 | `theorem` | [ordConnected_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-def.md) | 47 | `result-track:8d8c563276d44de65250c75fafbcfbeb915054c4425113904255976cce392c8b` |
| 3 | `theorem` | [ordConnected_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-iff.md) | 51 | `result-track:4df2cbaa4055348c5b3fafe15dc810b4893d449948de7ee6a903b781c1349553` |
| 4 | `theorem` | [ordConnected_of_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-of-ioo.md) | 55 | `result-track:3db3434b038be9becee792460b9dfd5320bb1aff3450a964d6e96aac19c676e0` |
| 5 | `theorem` | [OrdConnected.preimage_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-preimage-mono.md) | 63 | `result-track:6d01f16b56350ae2e60dd0d91f933deac87dbeb3ab6c457a7213e3230724d606` |
| 6 | `theorem` | [OrdConnected.preimage_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-preimage-anti.md) | 67 | `result-track:2964d4b5c7064749f06344b307eb390409cd49d327489ae08b5222993ffa7d7b` |
| 7 | `theorem` | [Icc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/icc-subset.md) | 71 | `result-track:2e570c7cebc76c99319c83ab549a56dadcfe406e06429b90194912e61259a19a` |
| 8 | `theorem` | [image_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-icc.md) | 83 | `result-track:4a573f70a066ceb038bb0e107a723f8d8fd81449a5dfaf45b9437120f3fe3e2b` |
| 9 | `theorem` | [image_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-ico.md) | 87 | `result-track:b34b611c8423d8980eeeb50667d57cbfa2745527984c3a8b605eca561ca4877f` |
| 10 | `theorem` | [image_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-ioc.md) | 92 | `result-track:69d61638aea9acc4d8e33bf7a550688bf8997f6e6b78f0df5005c3f4664a2354` |
| 11 | `theorem` | [image_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-ioo.md) | 97 | `result-track:4c62da7a1101a37fff5c58ab4f04e5193861ed4d04919833c325476ee41b3c2e` |
| 12 | `lemma` | [image_subtype_val_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-icc.md) | 111 | `result-track:1ee83b8c08ba0f7b6f570610186ab3c50bd768098bdbc2cdac7f20172ef9af10` |
| 13 | `lemma` | [image_subtype_val_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-ico.md) | 116 | `result-track:1db9a2d0779a16afa0e873ba6329d870c725f6578ee902860adc9957d5a6fbeb` |
| 14 | `lemma` | [image_subtype_val_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-ioc.md) | 121 | `result-track:bd2ae401f2239619f4256199039c97d7857a5330be07e759edd5c2581d961ae7` |
| 15 | `lemma` | [image_subtype_val_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-ioo.md) | 126 | `result-track:429131b1c8ac44d302a39541071b410157e582199946bdda98c28aff8eba0ce5` |
| 16 | `theorem` | [OrdConnected.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-inter-source-edition-2.md) | 130 | `result-track:e5de373e5a7cb04cb53808524749c8f814f28af715f9d94607517b99c969aed0` |
| 17 | `instance` | [OrdConnected.inter'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-inter.md) | 134 | `declaration-track:509aa7b34a2b19d0991ffb78e485dc876a137a9abb1a21c4c02fe05ed1c7e888` |
| 18 | `theorem` | [OrdConnected.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-dual.md) | 138 | `result-track:16c6e4c809ed09cc3ecc5614a770cf4e8140c41b9a7cf7047c51b69aa6d905eb` |
| 19 | `theorem` | [dual_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/dual-ordconnected.md) | 143 | `result-track:0008731bf40d01d37e5dc0a7481251763e77ef046e9b2a405fbfd126c689185f` |
| 20 | `theorem` | [ordConnected_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-dual-source-edition-2.md) | 147 | `result-track:b2cb4656c0cd878be69b95c5284028dd5bd3446362087575bb89e4f813089e4b` |
| 21 | `theorem` | [ordConnected_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-sinter.md) | 150 | `result-track:19ba11b13fb82177c214b78231be10b40cc9aa351de19c68528ad16fca8dc872` |
| 22 | `theorem` | [ordConnected_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-iinter-source-edition-2.md) | 154 | `result-track:6b6f3e0f5ad41fb1e28f41c752f5f1ed0dab74ee6e6ea3be90752e275af5d924` |
| 23 | `instance` | [ordConnected_iInter'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-iinter.md) | 158 | `declaration-track:64efe92d2e7a8aee0e88ff6ce6f03cdfe8c2e93b4a033c926d4f528abc4ed4f8` |
| 24 | `theorem` | [ordConnected_biInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-biinter.md) | 162 | `result-track:9051b3143732e35fdc8e46c68ef0150c7f0975dbc397b0d26bcececebaeefa6a` |
| 25 | `theorem` | [ordConnected_pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-pi.md) | 166 | `result-track:244f961520c526d4ebe4e7c28749b57b6ae939513ef4368fd55335b530dbec73` |
| 26 | `instance` | [ordConnected_pi'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-pi-source-edition-2.md) | 170 | `declaration-track:78ea8c85c5a0439fb0c59bc4978c4bcef083f07598f19e63709e07a941625a1c` |
| 27 | `instance` | [ordConnected_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-ici.md) | 175 | `declaration-track:ca8f97a0136a0a1c304557584caf8f0774e82aabeed025646985721f1e3495d5` |
| 28 | `instance` | [ordConnected_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-ioi.md) | 179 | `declaration-track:b6eb14babd30b89a07907906e331a450db9587649b33dc1c1bcaa71db1375427` |
| 29 | `instance` | [ordConnected_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-icc.md) | 183 | `declaration-track:408e240618194f683612da7208afb2b3a487e81870b2fe3abb6059b273ba68ea` |
| 30 | `instance` | [ordConnected_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-ico.md) | 187 | `declaration-track:afb0b7a07dde95a691a6a2833e30c6fa182b9810bd7d1928d8b76c6fdfbe25b6` |
| 31 | `instance` | [ordConnected_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-ioo.md) | 191 | `declaration-track:96cced11295d4cd0edaf0bd4e13d8db2e49d2198b44bf2231ca07a9ea507047f` |
| 32 | `theorem` | [ordConnected_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-singleton.md) | 195 | `result-track:8e7ae671e5f99fea2739063e739a5a79c104ad27150667ce60c9e7348a3619e7` |
| 33 | `theorem` | [ordConnected_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-empty.md) | 201 | `result-track:891cb8d237abbad158ce5cfe7241ef20bb756b704507b18e7da48c5a4d00eed7` |
| 34 | `theorem` | [ordConnected_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-univ.md) | 205 | `result-track:021fca45e4d65dd048c21d53b007c7f76c2b9331530b598c5a1afdb998b12615` |
| 35 | `instance` | [instDenselyOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/instdenselyordered.md) | 209 | `declaration-track:b0370b5cffac6cc645214eaffae22b5d81a25f1075f0cc238d81afcc6d48a756` |
| 36 | `theorem` | [ordConnected_preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-preimage.md) | 216 | `result-track:9d05e85bb7d61df4c83de109c624c2796a3125a95e5b3fa2ce31beca661a57fa` |
| 37 | `theorem` | [ordConnected_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-image.md) | 221 | `result-track:560725e32730db8c14f23612d60f94702c651998b0770886d03e1e13d206acfc` |
| 38 | `theorem` | [ordConnected_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-range.md) | 227 | `result-track:84c3494065aeac740f61d5b012ec866fbcfc3432e1a3e513ca6a74f1c787932a` |
| 39 | `theorem` | [OrdConnected.preimage_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-preimage-monotoneon.md) | 235 | `result-track:fc63e5c1247e85ee3f4a169366ce24b5d6e6badee76140de86352f78252f365d` |
| 40 | `theorem` | [OrdConnected.preimage_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-preimage-antitoneon.md) | 252 | `result-track:65ddd32c612bea4bc575405b6083ae5a2a747e241edc4f64c8ace23ab3aa7ffa` |
| 41 | `theorem` | [Ord Connected Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-or.md) | 263 | `result-track:f308191e65b67692a33afa22eedf0cc1ffaf055c93d142cd9cb536e85c3b80d3` |
| 42 | `lemma` | [ordConnected_inter_Icc_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-inter-icc-of-subset.md) | 269 | `result-track:df9c5d7fe2c4c092a7d87c523c4c9716150a0e9dc35b44265f6f47ec056d4ebe` |
| 43 | `lemma` | [ordConnected_inter_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-inter-icc-iff.md) | 273 | `result-track:0bd06c10ec81f045b1dd202bb6b83401271f0de6bf05e48072a244ae5ca8ea25` |
| 44 | `lemma` | [not_ordConnected_inter_Icc_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/not-ordconnected-inter-icc-iff.md) | 279 | `result-track:92450428285b321218cf48ebdc01584357ebf6dfd1b4b04b81c2c0db40925435` |
| 45 | `theorem` | [ordConnected_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-uicc.md) | 292 | `result-track:3aeb15e9905757ee1e63b06210d665a91e3254dd7869d5729b7551048d64d77d` |
| 46 | `theorem` | [ordConnected_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-uioc.md) | 296 | `result-track:363191cebe597303b0bc4fc4687ee7d41e345aae155cbc3d4b966e4b56e248ca` |
| 47 | `theorem` | [OrdConnected.uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-uicc-subset.md) | 299 | `result-track:da3c179af6284913df8789db392e787331a5e45788f3488da1cec5e8065a9672` |
| 48 | `theorem` | [OrdConnected.uIoc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-uioc-subset.md) | 303 | `result-track:10d3e466e366f4302b35e98b55a537414a21e8673c06ca86f4f7c47630bcd0ca` |
| 49 | `theorem` | [ordConnected_iff_uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-iff-uicc-subset.md) | 307 | `result-track:19d076e9910343867999aa6f3905523e7d3e312c4d9aa2d1048fb2b1a700d8a7` |
| 50 | `theorem` | [ordConnected_of_uIcc_subset_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-of-uicc-subset-left.md) | 311 | `result-track:1d83941f1e823a820c72a09a32060703a525d8ef71198e098ff090bb88bac440` |
| 51 | `theorem` | [ordConnected_iff_uIcc_subset_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-iff-uicc-subset-left.md) | 318 | `result-track:eee12ad958d364529168c0bc5710c2a1a51f2de82fbebe313f4f643da9c6920c` |
| 52 | `theorem` | [ordConnected_iff_uIcc_subset_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/ordconnected-iff-uicc-subset-right.md) | 322 | `result-track:9908cecf8662a80e3a55e6ed80c9be81d519499563c6ed69d9fb2e30ae0cf50d` |
| 53 | `theorem` | [image_subtype_val_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-uicc.md) | 327 | `result-track:2444f65471b97852e9c6e7774d62c7f60c2d3d930d8a729f937c81e8d4a2ea92` |
| 54 | `theorem` | [image_subtype_val_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-uioc.md) | 332 | `result-track:ca2d4a2dbb0aa9c4db83ebe20fe8b947ea08dd71b44c6cd8626600ee8a5310c4` |
| 55 | `theorem` | [image_subtype_val_uIoo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedNamespacedPublic.lean/declarations/image-subtype-val-uioo.md) | 337 | `result-track:d03ac07fcd766d200835189d929d51fbcc7acfac17203a51da4ae3534a152ae9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7bac9772d5d2f3ec1eb06fb1e6ad1f054def2ef997595a2b2f965ec7f0a9d2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnected/Variant28bc80a739ed563f85a22801ed08a111dd62569c3f03c2cd79c430175699d5ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
