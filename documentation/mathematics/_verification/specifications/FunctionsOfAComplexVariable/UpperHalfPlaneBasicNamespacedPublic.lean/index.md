# Verification target: Upper Half Plane Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30ba99e21d62c133bdc5c49ee08dcf7796f20b13",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantabff3c626629bb0df9b13f1f2c19c93d6c54f4c6a84bebd779645c73b37be130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30ba99e21d62c133bdc5c49ee08dcf7796f20b13`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantabff3c626629bb0df9b13f1f2c19c93d6c54f4c6a84bebd779645c73b37be130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantabff3c626629bb0df9b13f1f2c19c93d6c54f4c6a84bebd779645c73b37be130.lean.json)

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
| 1 | `structure` | [UpperHalfPlane](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/upperhalfplane.md) | 33 | `declaration-track:92631be8e8f96dba9a0e65afa0e124b22471fc3c8680c1a4dbcac6328cc01ecd` |
| 2 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/instance.md) | 46 | `declaration-track:3e4f59e826bfbf063e27565445c738cfb36451e2c75b3c494af85df7324ecb88` |
| 3 | `def` | [I](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/i.md) | 49 | `declaration-track:15a5d790faed8d599d17f1079bb88902896bfda7c092b9571617bdae76a4cf8a` |
| 4 | `def` | [ρ](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/anonymous.md) | 52 | `declaration-track:702f261e849497c3efcb415d5596bd9ee9f3414799373dbec12586fadee98920` |
| 5 | `lemma` | [ρ_sq](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/sq.md) | 54 | `result-track:35ed376f59e55f353034cabdfd761d552663dff15d1f7a2b23245a4a9afabfce` |
| 6 | `lemma` | [norm_ρ](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/norm.md) | 58 | `result-track:dfe2592018ab21a5d6cb830d202dcf33ea34fe7629886ce52bc066c40fbe77b2` |
| 7 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:56daee65adef7304e9a1fdeecd0cb807c62e84ce6e1802ed7d01c97660c0329c` |
| 8 | `theorem` | [coe_inj](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-inj.md) | 62 | `result-track:e783de24103bde59e30f8e2bd5e9295287650ac4e660d5169be39a601e5a15c5` |
| 9 | `theorem` | [coe_injective](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-injective.md) | 64 | `result-track:fad7a9399c8ec6d623472779154158e9a35d6732aabbe41042011da26c019ea6` |
| 10 | `instance` | [canLift](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/canlift.md) | 66 | `declaration-track:c83afa4ddfdca23cf94d9e8b14fceaef7d56adbc45f30ea56226901d87f49b02` |
| 11 | `theorem` | [«forall»](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/forall.md) | 69 | `result-track:bdd6ae93c4e924448aece51e812328aea59789549810ac22a20fbf4abef1c247` |
| 12 | `theorem` | [«exists»](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/exists.md) | 72 | `result-track:22ed81875f58ac9208bb8ab8dfc1f053b3ac3fa6934ba5d35ed629d25ede48e2` |
| 13 | `def` | [im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/im.md) | 76 | `declaration-track:6ff2abea42e3350e3724074781159739be06dc3cb0a4217a292e570598b85aa8` |
| 14 | `def` | [re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/re.md) | 80 | `declaration-track:3da6103d1bc536ea049c0b4f9b18f3c04e5fb0cdb8d0d28e47f1e922433737e2` |
| 15 | `theorem` | [ext_re_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/ext-re-im.md) | 84 | `result-track:94a6a8e3960e54aaefab8dce649907fd21f8f1ccdd85075bf20b3ea023c2f5a7` |
| 16 | `theorem` | [coe_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-im.md) | 88 | `result-track:30ffc6fce692649d0969587535a7a5b6353c59244847bd3284062142f996e03e` |
| 17 | `theorem` | [coe_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-re.md) | 92 | `result-track:de7908b7ac3c96f07857261eef4cf372e71a9b7343ca1af67152f04c04be51b5` |
| 18 | `theorem` | [mk_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/mk-re.md) | 96 | `result-track:0d505f5c1bce3d0ea57ffbffae376421a480a9fc427ab5d986610658119a9d19` |
| 19 | `theorem` | [mk_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/mk-im.md) | 100 | `result-track:fe641fb3a044212aa1a2e4f0a2326b8c10ef6b81a222b1bf94eeff22acc2da9b` |
| 20 | `theorem` | [coe_mk](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-mk.md) | 103 | `result-track:05d7678994bf4b245714d535740ad890f9c6f88e15ae2ff1a2802ce33a0302b8` |
| 21 | `theorem` | [mk_coe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/mk-coe.md) | 107 | `result-track:1daee98295a5c3551f286d3c0c9cd39b3c9f5689c0d5239440ea6cd58ba6b787` |
| 22 | `lemma` | [I_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/i-im.md) | 111 | `result-track:d9ec50612374a26dd8163037e98e80c9a8a8f2ddec918d9204236285732b038c` |
| 23 | `lemma` | [I_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/i-re.md) | 114 | `result-track:6bb0cf6cb48703751380598f507bf65f1333617b94a70f0d5d8c1bba4a426cd3` |
| 24 | `lemma` | [coe_I](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-i.md) | 117 | `result-track:d9fc4d8dfb26746a7f5c0129b89534e27977d75ceef67ff83d58a15d292b73a7` |
| 25 | `theorem` | [re_add_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/re-add-im.md) | 119 | `result-track:082ab2bb938f0ec8ad3f6dc64fad2908a0809b3cb65490654f662f479d4c150f` |
| 26 | `theorem` | [im_pos](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/im-pos.md) | 122 | `result-track:a45a47a8327753b6afe6964d3891b6768f26472b5fc71bacd6ec7bb28b17f330` |
| 27 | `theorem` | [im_ne_zero](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/im-ne-zero.md) | 124 | `result-track:024421353663ab1ae5696b4acce1130cbd43edbc2a85276cb8dbf9933e97baf6` |
| 28 | `theorem` | [ne_zero](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/ne-zero.md) | 127 | `result-track:831e5ce825d24a3c6c49b404d0040cddeadc67936a307e53ed4f9d9c005b1764` |
| 29 | `lemma` | [mem_slitPlane](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/mem-slitplane.md) | 130 | `result-track:e701b409a1a8898ea28cde5feb5ce09294af7474123580fa38569263f1aec04a` |
| 30 | `lemma` | [eq_of_re_of_norm](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/eq-of-re-of-norm.md) | 135 | `result-track:64d4180f91ae06231c1020fe1b38c2ac2f7f770423289bb5d82f1527e99c5b84` |
| 31 | `def` | [evalUpperHalfPlaneIm](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/evalupperhalfplaneim.md) | 149 | `declaration-track:9f4a28e491ec30dc4f65d10cb86fdd71994b62c6e869a0d05b96f5071fd285f2` |
| 32 | `def` | [evalUpperHalfPlaneCoe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/evalupperhalfplanecoe.md) | 159 | `declaration-track:420b30ab4d7f376b99681291a25a8544239a33da74bb0953c14633fddff7b9ad` |
| 33 | `theorem` | [normSq_pos](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/normsq-pos.md) | 171 | `result-track:4792b09282c20b28b614784356f0d186d25eb9d11f7f463a31eff0a9a19a83b2` |
| 34 | `theorem` | [normSq_ne_zero](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/normsq-ne-zero.md) | 174 | `result-track:91341eb6af06ff779d5b60144a43bff36d1f4acef3036c25f370bf2d6f9b5686` |
| 35 | `theorem` | [im_inv_neg_coe_pos](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/im-inv-neg-coe-pos.md) | 177 | `result-track:30e388c4cdbbd81bccbf5287369866c803c17e5656469f6abdc1304b200c6d01` |
| 36 | `lemma` | [im_pnat_div_pos](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/im-pnat-div-pos.md) | 180 | `result-track:50e917bcde17f140a39927c9612e83d9b68dc47611fb259f812b3da33e9fc77b` |
| 37 | `lemma` | [ne_ofReal](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/ne-ofreal.md) | 184 | `result-track:e86ef6608d58e06ede3f62e2ba3fc5310c76290f3de769959399a57bebb97231` |
| 38 | `lemma` | [ne_intCast](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/ne-intcast.md) | 187 | `result-track:b4ac67915a58ea44f3785ffa7fa7226e65b2f58db39e6961643620b9731ee370` |
| 39 | `lemma` | [ne_natCast](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/ne-natcast.md) | 189 | `result-track:45c3dfd87790c496932a3b382c3a2090200dfd7cb55c8ddd6c793df1eca11a8c` |
| 40 | `instance` | [posRealAction](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/posrealaction.md) | 193 | `declaration-track:0a19db9d3b67b9ef41b1b20f7f5f7c2d6bc592e412ab3de57b9a4bf9f218e815` |
| 41 | `theorem` | [coe_pos_real_smul](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-pos-real-smul.md) | 201 | `result-track:70407912d10b099910db674ba929ec157306215e6f3f987b599dd54f6b01a59c` |
| 42 | `theorem` | [pos_real_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/pos-real-im.md) | 205 | `result-track:c965b924a7082592d9493f1d662dac0124f62109707068269fbffc341347e6ee` |
| 43 | `theorem` | [pos_real_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/pos-real-re.md) | 209 | `result-track:d6daaa8c0af1f4e08ba79f4a89d488a459e5814bbe390fe0e38b5fcb854996f0` |
| 44 | `theorem` | [pos_real_smul_injective](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/pos-real-smul-injective.md) | 212 | `result-track:e71e1cd918f11137a489de78ee9456c30e4e67b009cecf5a3cca70f35277fa92` |
| 45 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 221 | `declaration-track:f0d7672bd2c6e1a0f5f3749ee2090c43765c33582d429024ba1539d82830fc44` |
| 46 | `theorem` | [coe_vadd](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/coe-vadd.md) | 229 | `result-track:965cd3db571c4b99cbb35ba927f0cd2374b27097515850c0f530b9cc07dd02b0` |
| 47 | `theorem` | [vadd_re](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/vadd-re.md) | 233 | `result-track:309605f3f21ebf59993beb0c5a317facebbd69b896f9dc61add9db9a00c50e1d` |
| 48 | `theorem` | [vadd_im](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/vadd-im.md) | 237 | `result-track:19e68f96690bee3e47e09092d7b754ac61ed907243a6d2c8e8123df5e6e4c866` |
| 49 | `theorem` | [vadd_right_cancel_iff](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/vadd-right-cancel-iff.md) | 241 | `result-track:8cde93a1db4b65d952636f7ec42c5163622d59e7b19b8e36438c3cf46518ce83` |
| 50 | `theorem` | [vadd_left_injective](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/vadd-left-injective.md) | 244 | `result-track:85bb72074dd475d4ae9884a373fd91d38526e12085b40d564b98935d07eb86c9` |
| 51 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 247 | `declaration-track:e702efb9eec96bac761004f8acedfd09e6265e5ad9114a85498a1da0eca52728` |
| 52 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 250 | `declaration-track:6e522f37c5ab1ecb49714d655f3ce157b92c730c55e3a59c1555e573bc1169bf` |
| 53 | `abbrev` | [upperHalfPlaneSet](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/upperhalfplaneset.md) | 258 | `declaration-track:d9638276e47164b6188d530852dce00a59a1644dbc5851dd937ed34bcfb0c9fa` |
| 54 | `lemma` | [isOpen_upperHalfPlaneSet](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/isopen-upperhalfplaneset.md) | 262 | `result-track:3312477173b014ea49e99c878d477489d684709c827593aaf5a239d7d1511b2e` |
| 55 | `theorem` | [range_coe](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneBasicNamespacedPublic.lean/declarations/range-coe.md) | 265 | `result-track:d0a4fa7ec8c031e73616a8c584553237aab60343a0920f759d19532950c41081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9b7102c0c3f48155334db889e74135ffa75a9d8e9df6b87406b49ad290b7a0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantabff3c626629bb0df9b13f1f2c19c93d6c54f4c6a84bebd779645c73b37be130.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantabff3c626629bb0df9b13f1f2c19c93d6c54f4c6a84bebd779645c73b37be130.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
