# Verification target: Homeomorph Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "573e0982447a575324c02219bd5d1d369fec1086",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `573e0982447a575324c02219bd5d1d369fec1086`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean.json)

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
| 1 | `structure` | [Homeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorph.md) | 51 | `declaration-track:b757aab3eaba1af80fd9638680507d3a2dd2c99ce74ddeb9d258fb217595c021` |
| 2 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/toequiv-injective.md) | 67 | `result-track:19bed808808de0284acdb97e9d64f8682e029af1fea90fe298330a5f1a1cdc1d` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/instance.md) | 71 | `declaration-track:614455b450d29d655c33e1a105a5eefebb81cfdb04cf029f125a1fec89d2edf7` |
| 4 | `theorem` | [homeomorph_mk_coe](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorph-mk-coe.md) | 78 | `result-track:6980633e766b2074623ab91fb71a9f330245a17848000268410ab4a90698dab5` |
| 5 | `def` | [empty](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/empty.md) | 82 | `declaration-track:f279c78f647354a6bb336307361d27cb844e3b15534aad5cd705fb14a8421cdb` |
| 6 | `def` | [symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm.md) | 87 | `declaration-track:2515e88c5b38adb7962659ed5d9cfcec994ff77f35024bf4132897d939e2397a` |
| 7 | `theorem` | [symm_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-symm.md) | 92 | `result-track:a7444814a90f59da67fced6d80e50aa5b7624fb98480e74936706891cfae5734` |
| 8 | `theorem` | [symm_bijective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-bijective.md) | 94 | `result-track:8758f8f53ef1ea6b9fee2efd59cbddc3c34a4a19e66037ce7379642de19cb36b` |
| 9 | `def` | [Simps.symm_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/simps-symm-apply.md) | 98 | `declaration-track:31b8688c8755fb6c6759a8c3f71a1bf2952b5b10bdeb891d95afc9763b325d9a` |
| 10 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/coe-toequiv.md) | 104 | `result-track:c6f75f7babcd2f26604bfbbdc236295ba3c84329b48aea75408ca641188aaccb` |
| 11 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/coe-symm-toequiv.md) | 108 | `result-track:2debe591cf0cfb9113653ed051f9c8785ac3039b7188d9163f8cb36697096635` |
| 12 | `theorem` | [ext](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/ext.md) | 112 | `result-track:1b74daf2c97a558609096a5048cf1d003705fc86f8c01cf4d71750a6e37a2161` |
| 13 | `def` | [refl](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/refl.md) | 117 | `declaration-track:b3201076657b00599ab8d8b459750e4b80d30cb119f49ad580d2329de172ac7b` |
| 14 | `def` | [trans](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/trans.md) | 122 | `declaration-track:f2c5be033c467d220afbee3bd77542c95361095d94d538a5d011cf910e71b006` |
| 15 | `theorem` | [trans_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/trans-apply.md) | 128 | `result-track:b9dd86caf08a2a141b1ad9b020cabae9533e7b155e8c1ca99cda29c560ab6e99` |
| 16 | `theorem` | [symm_trans_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-trans-apply.md) | 132 | `result-track:e7496c9e0c9041c43acee61857d7c578edf0472a0834c3a3ffa3b9ec07e46b38` |
| 17 | `theorem` | [homeomorph_mk_coe_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorph-mk-coe-symm.md) | 136 | `result-track:9f5a88093a2b9770e77ba5fa3a756a60c571558961670ab7dfe44b268093099d` |
| 18 | `theorem` | [refl_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/refl-symm.md) | 141 | `result-track:0e79f547bb56090cb48b3f780dc165d5985c79376e206ced746135acd843d4e5` |
| 19 | `theorem` | [continuous](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/continuous.md) | 145 | `result-track:f383bd2830775bc21b7c670943bd2b46cbe50e2cd2db3e7339cd237181b071f4` |
| 20 | `theorem` | [continuous_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/continuous-symm.md) | 150 | `result-track:a382233819455b8d1ee57367cfaf0337f4bf7a5d86bd2549c99dc46b67e95a60` |
| 21 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/apply-symm-apply.md) | 154 | `result-track:714ef92e6d362e4ce7688253de882c4a42a5cf0b19edfcf1e02e97d13f07efcc` |
| 22 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-apply-apply.md) | 158 | `result-track:6c58b7f44aea3386174c6445a10de7b619c035fbceff074b5915eddb99282078` |
| 23 | `theorem` | [symm_apply_eq](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-apply-eq.md) | 161 | `result-track:9978223024c254d0fb3af2ced2f361739d0d3059fd908f57803f76b85abb5076` |
| 24 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/eq-symm-apply.md) | 164 | `result-track:294e3dc1d13c28a326339f28e77e636656f3bd6ba08b90dd2bb89f7d437ad82e` |
| 25 | `theorem` | [self_trans_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/self-trans-symm.md) | 168 | `result-track:f42ea0f3fc3843af3343b8cfc4d3c6cd9f071f31799c8b77df16237e7e6d7e7d` |
| 26 | `theorem` | [symm_trans_self](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-trans-self.md) | 173 | `result-track:f7b2613b0ea65fefd9168d54d6492bc6c559708fc19cb72810e7515bcb3a56c4` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 178 | `declaration-track:a30ae8b58f01f8b21c874af923aa8d2805e42c9efdb364afe4b15a6d02144875` |
| 28 | `theorem` | [one_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/one-apply.md) | 188 | `result-track:41879acdfa053e5303459aab174aa1b3f39d989f526a6b7735a5a5bbc3814442` |
| 29 | `theorem` | [inv_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/inv-apply.md) | 191 | `result-track:2400f957576ec12e4e1dfd14547954ca7b0caf3d0393aa1ee446863bf20ba7cf` |
| 30 | `theorem` | [mul_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/mul-apply.md) | 194 | `result-track:804dcbaa2252d9035efaca4fb498a96609d4f814d8657cf05380e9977fd9b3c0` |
| 31 | `theorem` | [bijective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/bijective.md) | 196 | `result-track:ceacb239b09e112f54afdad844a6cc4e599dbbf19a084d140a9feb00d23b5369` |
| 32 | `theorem` | [injective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/injective-source-edition-2.md) | 199 | `result-track:ded91517ba989c7dfc00cee3a75287f23b060a6e135f03761e5317cb02501712` |
| 33 | `theorem` | [surjective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/surjective.md) | 202 | `result-track:a6e0f5c561f84def0b0346ee0c358024a9f5bafc2972343882518adf726380b6` |
| 34 | `def` | [changeInv](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/changeinv.md) | 206 | `declaration-track:218b15a82a8e27511dec49d5d0cbdd7422afdbb15d3cc2213819d1e92a9a68ff` |
| 35 | `theorem` | [symm_comp_self](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-comp-self.md) | 216 | `result-track:556a3d03847f303e9ec4fadfdf915637c823e00e4573a79ad40e72dafb228489` |
| 36 | `theorem` | [self_comp_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/self-comp-symm.md) | 220 | `result-track:3e337a4840ac43ced93714e07c2f91a498e4e5649418a5aa0b172781608d73b3` |
| 37 | `theorem` | [range_coe](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/range-coe.md) | 223 | `result-track:4645bfaa831e159e8a0057641f25f7d58c4c844f9e824d5b2f0d04bb97410e52` |
| 38 | `theorem` | [image_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-symm.md) | 225 | `result-track:f4f7a7ce121ae1f07592b9efe17a2e770cae810bf3fb07fa8f2f117ec5455176` |
| 39 | `theorem` | [preimage_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/preimage-symm.md) | 228 | `result-track:ef01c62414f750a90fe196c90c7be7250f13ed7e9a90959996d8dadf8edebf47` |
| 40 | `theorem` | [image_preimage](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-preimage.md) | 232 | `result-track:d0de152f1ebe89d9aa41b3ee398d738d1a1ed5999cec6a4feda551754806ac75` |
| 41 | `theorem` | [preimage_image](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/preimage-image.md) | 236 | `result-track:ad8a025acce3f7d37981e20b4afeb524771a8ee5fec92b074cddee3905be2bb2` |
| 42 | `theorem` | [image_eq_preimage_symm](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-eq-preimage-symm.md) | 239 | `result-track:7845195f76c37e5a85d3307ea2d3233720501fca5b789a6cd713e2cae954062f` |
| 43 | `lemma` | [image_compl](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-compl.md) | 242 | `result-track:2223e6320e5959e4f45755e2c8d9252b08c641d5a84a491ecc4da1dbe03e4e85` |
| 44 | `lemma` | [isInducing](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isinducing.md) | 245 | `result-track:4fc57ba7f29966aa7aefec3622b37b176fa1091d6a9f622f8e295efefd04e5a2` |
| 45 | `theorem` | [induced_eq](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/induced-eq.md) | 248 | `result-track:193384638110539d1835ef449ddb313e8f899a3cd128825a52eeb9cfb3020b8e` |
| 46 | `theorem` | [isQuotientMap](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isquotientmap.md) | 250 | `result-track:ae8b405cff1fae5f140d45b07a982470457c12bff335dd81bd80da03834dd816` |
| 47 | `theorem` | [coinduced_eq](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/coinduced-eq.md) | 254 | `result-track:b4519ae1aff03b776230f1cfe1068d2af868d0bf0e9e8417d37b5d23df72f2e7` |
| 48 | `theorem` | [isEmbedding](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isembedding.md) | 257 | `result-track:0690ba363251295f74a906f7d09580b43ce7ec89b0b677efe97db351a2844bde` |
| 49 | `theorem` | [discreteTopology](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/discretetopology.md) | 259 | `result-track:1726f97156373fada4cbb9e1df511cfb94dd8b54b4b92eb0b7bf0a50f48e8e8e` |
| 50 | `theorem` | [discreteTopology_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/discretetopology-iff.md) | 262 | `result-track:185a7e62fa5a20800947490d46bc929c6e0c9538170b6fe34d831aeb22f11428` |
| 51 | `theorem` | [indiscreteTopology](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/indiscretetopology.md) | 265 | `result-track:74ec2b09efcd0c6f5997170b974b3548055d9e48fc8c67207afa9c63418e374e` |
| 52 | `theorem` | [indiscreteTopology_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/indiscretetopology-iff.md) | 269 | `result-track:73b9be09e4863b7708667ea7faf313efd8b62d3dfd8461dde9c813f5bc7a6fed` |
| 53 | `theorem` | [nontrivialTopology](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/nontrivialtopology.md) | 272 | `result-track:b54ad8b1e8a5deb25c615ab9d3815b2e3df78b7b32cdb7942954e2610d66ab63` |
| 54 | `theorem` | [nontrivialTopology_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/nontrivialtopology-iff.md) | 276 | `result-track:7c20a22fcf96bba4413891ecb921f39ea5cfcfe67b902229544b793e9364ad52` |
| 55 | `theorem` | [isOpen_preimage](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopen-preimage.md) | 280 | `result-track:a5808347f4a800c892b27fb216452564440f2949f6678f5eefcaf4360b7aee1f` |
| 56 | `theorem` | [isOpen_image](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopen-image.md) | 284 | `result-track:6c67a82fc1a13266bc9c8e30c83aadeec73a583d95d8482993808eb0b0d84957` |
| 57 | `theorem` | [isOpenMap](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopenmap.md) | 287 | `result-track:cec7b529fc444011cbafbafef9f842b303fd8e6a3a080133550434bdec7b2636` |
| 58 | `theorem` | [isOpenQuotientMap](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopenquotientmap.md) | 289 | `result-track:5083ba5395275289c109ea1951cf4041bbfef363a10934e4ac93a83d31286cf4` |
| 59 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isclosed-preimage.md) | 293 | `result-track:f3ee9a9b65d5717aa16000f397fbefd6b8d50429492215b16489f0dc5653e611` |
| 60 | `theorem` | [isClosed_image](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isclosed-image.md) | 297 | `result-track:885faee97d9563f565267aad2341d73749a01d91ee1a99e61f31ae97a3632495` |
| 61 | `theorem` | [isClosedMap](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isclosedmap.md) | 300 | `result-track:4c648949c0479c142b5794721cd5064274bf9f6855127ebcaced5f6684019886` |
| 62 | `theorem` | [isOpenEmbedding](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopenembedding.md) | 302 | `result-track:62b0737538fdfc6ae2a97bf7458be3abee518926d535c3b17c3cd151e791a0d4` |
| 63 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isclosedembedding.md) | 305 | `result-track:f6461e4018559492b7de7a25bf28604052db9631a7e62058cbc74c2c551f1035` |
| 64 | `theorem` | [preimage_closure](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/preimage-closure.md) | 308 | `result-track:503561dc62a542b42520c677b0185f27c6b082e5a87d1aee61d703668c4a11fb` |
| 65 | `theorem` | [image_closure](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-closure.md) | 311 | `result-track:390e3dbfebeb253afc8a5a15d4a35907c210e64c9e94629600d59bc66b1b5c0d` |
| 66 | `theorem` | [preimage_interior](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/preimage-interior.md) | 314 | `result-track:2f839e5db787c99277c1cc32dc8c80357f7f47b13b988f8e51b9b024e68ecaea` |
| 67 | `theorem` | [image_interior](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-interior.md) | 317 | `result-track:a1a563fe5ecad7d53d0c52567b599941826c7e8d93e3b83419faf15120946b66` |
| 68 | `theorem` | [preimage_frontier](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/preimage-frontier.md) | 320 | `result-track:1195ac45a978a83e3707b5f9a3a29e98a6b971f592eaff048b0bf3a16f812baa` |
| 69 | `theorem` | [image_frontier](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-frontier-source-edition-2.md) | 323 | `result-track:e8d9c1a7dd243c95deda4e15ea752ee9c085c8f79338c9eb6684bec97274b7ab` |
| 70 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-continuous-iff-source-edition-2.md) | 327 | `result-track:e4fb5fc1769cd65f746a29f41f52885634efa87c0de57c2c86053097a2c0e687` |
| 71 | `theorem` | [comp_continuous_iff'](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-continuous-iff.md) | 331 | `result-track:9230783d1a73e555387eea5cb20694835467610500d01ee0bb2671775623d6a0` |
| 72 | `theorem` | [comp_continuousAt_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-continuousat-iff-source-edition-2.md) | 334 | `result-track:be44afa0c3574528e04b9264e615785d90c4d070b67a87ed017c31ee159ea212` |
| 73 | `theorem` | [comp_continuousAt_iff'](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-continuousat-iff.md) | 338 | `result-track:5542a323dff0529922ba1be9ee07e58d82aaa6a516e0ce2b2ff099dfaa47a6a7` |
| 74 | `theorem` | [comp_isOpenMap_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-isopenmap-iff.md) | 343 | `result-track:0fa223d5e59952103da74bbc38500ce2b2057d187eb6024948843777ea3b4b2f` |
| 75 | `theorem` | [comp_isOpenMap_iff'](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-isopenmap-iff-source-edition-2.md) | 350 | `result-track:c70522bfc25c33f3a2672c26609ba74dd138ebfe9185c07e2445455a8ef9c38f` |
| 76 | `theorem` | [isOpenQuotient_comp_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopenquotient-comp-iff.md) | 358 | `result-track:aee1f9b7647af8c7e0ad1b667fee7467ba5c30244f7285fba07372f11d9e9f83` |
| 77 | `theorem` | [comp_isOpenQuotientMap_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-isopenquotientmap-iff.md) | 365 | `result-track:55d44f3d30746bf9e611212fa6a6eaf85cfca5075ae637cc276c1a08adf0aa09` |
| 78 | `theorem` | [isEmbedding_comp_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isembedding-comp-iff.md) | 371 | `result-track:e16771fefb2bf4225bca780ae968b405d908f7b0ff1184555996d8e3163d7a24` |
| 79 | `theorem` | [comp_isEmbedding_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-isembedding-iff.md) | 376 | `result-track:9fb36d052921b06d2f9ddcb45ab2ba2be20375bd56d9d26a6f702b9667361445` |
| 80 | `theorem` | [isOpenEmbedding_comp_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isopenembedding-comp-iff.md) | 380 | `result-track:91f5bfbc3ab87643e68c9c6dfdfb32f5b34c8bf75ef915b92a1408e828ed4c2a` |
| 81 | `theorem` | [comp_isOpenEmbedding_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-isopenembedding-iff.md) | 386 | `result-track:ab5bd662dd1176521add76aaf8b09bf057a711776d91df3e4bc0219fca58d437` |
| 82 | `theorem` | [isClosedEmbedding_comp_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isclosedembedding-comp-iff.md) | 391 | `result-track:ea3521a3164a3c85b663e3dbd0a9538784909d7cf6f9a0cc8fb425fe394c9fd2` |
| 83 | `theorem` | [comp_isClosedEmbedding_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp-isclosedembedding-iff.md) | 397 | `result-track:7af8ab1a0fee523890e129f4995f1c8790c041dc1548ed6c175bf5a923f803b6` |
| 84 | `def` | [homeomorphOfUnique](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorphofunique.md) | 404 | `declaration-track:380ffe566a7ea4d87d9fddb6b6ea27624927fe735a1dcf970961c5b5281bcf91` |
| 85 | `theorem` | [map_nhds_eq](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/map-nhds-eq.md) | 408 | `result-track:a5401367324def76e29d47faf73852926d1679047ab6a7508d7d27536e72198c` |
| 86 | `theorem` | [symm_map_nhds_eq](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-map-nhds-eq.md) | 411 | `result-track:41271c9f00a508d8b4aba763535fe055cc480b09d0ec3d1e9864d50bc5f6e8d0` |
| 87 | `theorem` | [nhds_eq_comap](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/nhds-eq-comap.md) | 414 | `result-track:3cef7491d0e74b7dd4530c1bcca9a4aa0c2f420795443eb4612a7ffc9453dd2e` |
| 88 | `theorem` | [comap_nhds_eq](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comap-nhds-eq.md) | 418 | `result-track:0c426646cbc28f78189b9d3f584b4968f766ae77942ec7fac6e41ec45bd55584` |
| 89 | `theorem` | [isClosed_setOfPred_iff](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/isclosed-setofpred-iff.md) | 421 | `result-track:a6168de02afb2343e70a429b994cf4eb2851e8a58510ce0c3bc15f9e987a26f1` |
| 90 | `def` | [toHomeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorph-source-edition-2.md) | 435 | `declaration-track:dda29e98d9a5f207af0d876aabb1d1bf0a184aea66d09c8a501133c29ea09512` |
| 91 | `lemma` | [coe_toHomeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/coe-tohomeomorph.md) | 440 | `result-track:4ca7c4bf2b3955c0ae682c1e55c7d90b3c1065e214d5f6c3f5348baf7542054e` |
| 92 | `lemma` | [toHomeomorph_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorph-apply.md) | 441 | `result-track:09932d114c3caa359cd6d5fcd05db222571c28b5a217281bc7683ee852aa60b8` |
| 93 | `lemma` | [toHomeomorph_refl](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorph-refl.md) | 443 | `result-track:11e3b8d28fd44a646c61960150abcad8a842ce11fbd3f7625fc99aab96acd8e6` |
| 94 | `lemma` | [symm_toHomeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/symm-tohomeomorph.md) | 446 | `result-track:56ceb777b1ab04ec43010397569bf98f9590e6a170214b39e9070c5f7bdd8c36` |
| 95 | `lemma` | [toHomeomorph_trans](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorph-trans.md) | 449 | `result-track:f3257514f85d189c42f81d785556c0589a2a808f8e9139f15a296023b831fe96` |
| 96 | `def` | [toHomeomorphOfIsInducing](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofisinducing.md) | 455 | `declaration-track:5b782c83a658011109601941e96b5f43894ee851ac610045b1b1ba89b9081726` |
| 97 | `lemma` | [toHomeomorphOfIsInducing_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofisinducing-apply.md) | 460 | `result-track:6c2a764149c0ee9d902136bf8b210af542c22521778798d50fd9890b87429093` |
| 98 | `lemma` | [toHomeomorphOfIsInducing_symm_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofisinducing-symm-apply.md) | 463 | `result-track:51e18d8491e3627a4b30b1cedca0aefe1254753369cded84545c88f3ed000384` |
| 99 | `def` | [toHomeomorphOfContinuousOpen](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofcontinuousopen.md) | 468 | `declaration-track:492f0d09faa8bd91024eb5cd97ffa7165ec3a68794eade56db0ca616d425d6ba` |
| 100 | `theorem` | [toHomeomorphOfContinuousOpen_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofcontinuousopen-apply.md) | 473 | `result-track:76f9de44be5ec4b8eef9f1c64368accba3174b93c1560ea70dc2c1c33c47b315` |
| 101 | `theorem` | [toHomeomorphOfContinuousOpen_symm_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofcontinuousopen-symm-apply.md) | 477 | `result-track:47a117987bb2b8af1d8e0aa7b9cca8bffd21c7e68a1b431b4d9c8b9860613d75` |
| 102 | `def` | [toHomeomorphOfContinuousClosed](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofcontinuousclosed.md) | 482 | `declaration-track:3fda29fb6ab4bf6aa33136c40632f9f438dcab7b05dbb12aed21ee983b102c5a` |
| 103 | `theorem` | [toHomeomorphOfContinuousClosed_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofcontinuousclosed-apply.md) | 487 | `result-track:f2e2e1d908d055a6942abd992c9b50fbf6d5493f4ae59478b73bf286f69b34df` |
| 104 | `theorem` | [toHomeomorphOfContinuousClosed_symm_apply](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofcontinuousclosed-symm-apply.md) | 491 | `result-track:5753e7971286442522f9231660581d72e5efba24bacadd336c2c6f2725b6098a` |
| 105 | `def` | [toHomeomorphOfDiscrete](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorphofdiscrete.md) | 496 | `declaration-track:968ee619a5795d054795f0dcd5ece3d5b3b1433a3141375859c518315fb9e810` |
| 106 | `class` | [HomeomorphClass](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorphclass.md) | 502 | `declaration-track:d7a4de4c6c1a1cab9e0756198a22fee423ed8ab6c98f772428d29937739fdc07` |
| 107 | `def` | [toHomeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorph.md) | 514 | `declaration-track:532743fc48571be177b92b0c0c482af3e3c3ce8c12f4eb8e7d18757f65579097` |
| 108 | `theorem` | [coe_coe](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/coe-coe.md) | 520 | `result-track:66d744c2fe18a7784f7b35211b2c7ac5d3f2e7fc7bcf55bcae0096857a212c38` |
| 109 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 522 | `declaration-track:ee2fa02dfb3f7218e946cf55f779e41a2c9eceeb6d3a909d6fac5d4858e1499c` |
| 110 | `theorem` | [toHomeomorph_injective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/tohomeomorph-injective.md) | 525 | `result-track:a511a3569a0a3645c6d67e08146230bc21a64851633912a5458b95291411c15e` |
| 111 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 528 | `declaration-track:ab52d8db045971cb421ff800c7387dbcb77f91b339f41d14d8791659ef3f0efd` |
| 112 | `instance` | [(anonymous)](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 531 | `declaration-track:6a1de94fdf6c4e2496ae03547097dbf392b76a5c67ee2bf1d876bbc49ba69e70` |
| 113 | `structure` | [IsHomeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/ishomeomorph.md) | 550 | `declaration-track:16f890e4511ed0f3f9f518881c40394fe59558744a9652c346ce9e1d084cd504` |
| 114 | `theorem` | [Homeomorph.isHomeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorph-ishomeomorph.md) | 555 | `result-track:bb5870991e996af850b28b9e9c69293e898ac47f68719d9b54fc6d57ea68fb39` |
| 115 | `def` | [homeomorph](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/homeomorph-source-edition-2.md) | 562 | `declaration-track:ffde9986f5af576319d48658bcc459ce579a35a54b7addecab569f4f35cbe5cb` |
| 116 | `lemma` | [injective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/injective.md) | 568 | `result-track:4f058c9389a0189009950d75383b180bf2636c8fc20dbc1e7cdae8a7a7c56bd2` |
| 117 | `lemma` | [surjective](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/surjective-source-edition-2.md) | 569 | `result-track:eb81c8c82435c3f1ceec45d56b55a03af05279af5cec871ea36550ece6f5db81` |
| 118 | `lemma` | [id](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/id.md) | 571 | `result-track:e3dfab0e7efda5f7296ea77f8113df167c7bdb3a70c6d7bff18121bf6cf1bd00` |
| 119 | `theorem` | [image_interior](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-interior-source-edition-2.md) | 573 | `result-track:e05763c470560f69d9126d29a4c66a1d4837918da332a2ec098b7627c3c6f720` |
| 120 | `theorem` | [image_closure](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-closure-source-edition-2.md) | 576 | `result-track:9af05023ac038983171cb48a831d32ea73ae80a4aa04e6bdde0a0c5b8f1104a8` |
| 121 | `theorem` | [image_frontier](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-frontier.md) | 579 | `result-track:b6ae6b521aab69b80a6f505946429ea3ba4ae8f70ef2ed8220bf5ba725b91136` |
| 122 | `lemma` | [comp](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/comp.md) | 582 | `result-track:f9159b6fc29256ea4f1a729d7104f76747c0d55ddf365c40642bcf1acca14164` |
| 123 | `theorem` | [image_interior_preimage_comp](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-interior-preimage-comp.md) | 591 | `result-track:5d4262f15ff8bddd6504c5c9fb1357577330e7527e30149a7689a444b480f290` |
| 124 | `theorem` | [image_frontier_preimage_comp](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-frontier-preimage-comp.md) | 598 | `result-track:6bd5360d1ec2b60dafe3b68c95d1110324b8145dd50ce2d96fa293fff7ade621` |
| 125 | `theorem` | [image_closure_preimage_comp](../../../../GeneralTopology/HomeomorphDefsNamespacedPublic.lean/declarations/image-closure-preimage-comp.md) | 605 | `result-track:50ed8a937d2cf27cc189c88e74ec5beaade1993647d183ea732bf66cbc5aa454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=859e7a79e8eb8f593acfb9d1906cb69fb4b2d37e56768ab5007b1bdbca8e50b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
