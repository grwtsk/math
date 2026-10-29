# Verification target: Theta Namespaced Is Theta Of Norm Eventually Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "403854a1231d3de72762ee08c7abcbbfa19fc6f2",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `403854a1231d3de72762ee08c7abcbbfa19fc6f2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTheta](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta.md) | 56 | `declaration-track:9ad7ab74c1ab0bc271fa2578178731305b92b73dd9de10c902711b55c4376232` |
| 2 | `theorem` | [IsBigO.antisymm](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/isbigo-antisymm.md) | 62 | `result-track:900ccb375bd2e1bdfad0dfc65dc531c60bcb2e80fe2918b7d16122cd44d698b7` |
| 3 | `lemma` | [IsTheta.isBigO](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-isbigo.md) | 66 | `result-track:aedff83f31c11e23bc9c4214b7dbcc44d9740cb6f6d5c700fc047b8b7c304fcb` |
| 4 | `lemma` | [IsTheta.isBigO_symm](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-isbigo-symm.md) | 68 | `result-track:a87a4895be816845436ae5643d56fdeb2c469d7e6a2ded0220a8fd5d92ace8dc` |
| 5 | `theorem` | [isTheta_refl](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-refl.md) | 71 | `result-track:d46ce6c95e5cc3bdda206e0a1e28d67407f42f3dad0094c9abefbf38f7f56c94` |
| 6 | `theorem` | [isTheta_rfl](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-rfl.md) | 75 | `result-track:f91f9c5ed3bc7858ec84fcdb0006dd5b59b4cc0a278fab9e350b50761eba6230` |
| 7 | `theorem` | [IsTheta.symm](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-symm.md) | 80 | `result-track:1caa7ad0278b13c9e78f42abfd05d217d9f40d30a1ea995ac49cb1e9c9b47a39` |
| 8 | `theorem` | [isTheta_comm](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-comm.md) | 84 | `result-track:9c672e444ad64d3cb318857cd681e5d169ca398358dc1c40c2baf2f030b1137e` |
| 9 | `theorem` | [IsTheta.trans](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-trans.md) | 89 | `result-track:de6fb1c0140bdd14b4fb743429a19b213996e4b2cfc61a46686da101d184bfdc` |
| 10 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance-source-edition-6.md) | 95 | `declaration-track:9c2864153c0f682dbf3d64d2a3acbd9e2401134c8af97e4c7794db0443aff792` |
| 11 | `theorem` | [IsBigO.trans_isTheta](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/isbigo-trans-istheta.md) | 99 | `result-track:4e20f41071e5fd8cae22bcc12b1fe018be125c790a54a67ff683268348900efa` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance.md) | 105 | `declaration-track:3c03b100682f944d6c06c280dda4cd44abeb9d797b296e293fcaca42cacaa5dc` |
| 13 | `theorem` | [IsTheta.trans_isBigO](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-trans-isbigo.md) | 109 | `result-track:57bdf876394a1ee62a4c5086a190d6c88bd63daf6531b34e88bdb25a5d589aa6` |
| 14 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance-source-edition-7.md) | 115 | `declaration-track:ce0d92d08f169b3093e5aab5cccb3120d783c98b3e209bb6289bc0d841d25b81` |
| 15 | `theorem` | [IsLittleO.trans_isTheta](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/islittleo-trans-istheta.md) | 119 | `result-track:79a5dfe768ba0b09f491d8d2cd003390c36e6e17e3662e35a4aff18969bc52ed` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance-source-edition-3.md) | 125 | `declaration-track:6f2b22bcba647d144699a85945e89cea3c2c4cbb82965c90bba257cd58eb40f4` |
| 17 | `theorem` | [IsTheta.trans_isLittleO](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-trans-islittleo.md) | 129 | `result-track:ecc8289da8d56a6717c46e66b45a5f351a2293bdd2870fa33f4384474a77c066` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance-source-edition-2.md) | 135 | `declaration-track:50eb4af66aace0853a005a2b2571cabd597030b6462a4777e4eed12d24cbab76` |
| 19 | `theorem` | [IsTheta.trans_eventuallyEq](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-trans-eventuallyeq.md) | 139 | `result-track:c9ea32b789ba1894ce4871390f62b7d7d39abcef71dcece42072db88677daf37` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance-source-edition-5.md) | 145 | `declaration-track:84fbb427b52b0099cd67f2b0436c4e97f56a67da81e8e341489fa729f91080b5` |
| 21 | `theorem` | [Theta Namespaced Is Theta Of Norm Eventually Eq](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/trans-istheta.md) | 149 | `result-track:6cce7bae249b3090afd2fe83d336829f7053a253cab079c9bb23347d1f94c2aa` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/instance-source-edition-4.md) | 155 | `declaration-track:72b832277533f24dcb03014a89ce6bd0c56d513fe7f1f5359f63f345617344fb` |
| 23 | `theorem` | [isTheta_norm_left](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-norm-left.md) | 159 | `result-track:20b186203d9af158b9fb6abc361cb0d4fe12d1ddd354089b226f1c78140cfe17` |
| 24 | `theorem` | [isTheta_norm_right](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-norm-right.md) | 163 | `result-track:b277c9a5bd87c36665c4685e9edf4b48662bbc718c8de03f161a1e960548d834` |
| 25 | `theorem` | [isTheta_of_norm_eventuallyEq](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-of-norm-eventuallyeq.md) | 174 | `result-track:85d95878205ac98e474e620fc838e6588356b6f5c26e6c9d7d60b40dabe446be` |
| 26 | `theorem` | [isTheta_of_norm_eventuallyEq'](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-of-norm-eventuallyeq-source-edition-2.md) | 179 | `result-track:f703faf0967c209f95f344594e71604109c6dcf919cf4e93a839d65acd274c5c` |
| 27 | `theorem` | [IsTheta.isLittleO_congr_left](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-islittleo-congr-left.md) | 183 | `result-track:b4a13aacdf561bb1840aa2a4c2c5a6c19a78c2ab3e9610feba80d7befb97db62` |
| 28 | `theorem` | [IsTheta.isLittleO_congr_right](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-islittleo-congr-right.md) | 187 | `result-track:8f79ebf99037e0f9a77ebe4fb536500b976cd2d6da49f16ceade97c154ad0f13` |
| 29 | `theorem` | [IsTheta.isBigO_congr_left](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-isbigo-congr-left.md) | 191 | `result-track:17adbea57bbce081bfba4f125cde263ee87457409a3c4104a5ae2c7f06f1ef8e` |
| 30 | `theorem` | [IsTheta.isBigO_congr_right](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-isbigo-congr-right.md) | 195 | `result-track:63a6300e18b920fa27abd56d5d411660fb1c53ec15768b29a5290280b93ed764` |
| 31 | `theorem` | [IsTheta.mono](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-mono.md) | 199 | `result-track:dbc5870e2a9f7556ca5d152c843c0ab3f6c97381ae75addf1e28d465e7c029bf` |
| 32 | `theorem` | [IsTheta.sup](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-sup-source-edition-2.md) | 203 | `result-track:dfffdb82413eaa7bbe51c60f1d27b15aecd68a3035b4b8ae5ad009b75894ac5a` |
| 33 | `theorem` | [isTheta_sup](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-sup.md) | 208 | `result-track:56c9088880c60f82c704c8135db89a6302fd933dbfa1763fe63c4452ee2eb38d` |
| 34 | `theorem` | [IsTheta.eq_zero_iff](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-eq-zero-iff.md) | 212 | `result-track:c6d35010803dadf79352849ea0a6b0f9e474fd9ee9106f4d39445d6573fb4828` |
| 35 | `theorem` | [IsTheta.tendsto_zero_iff](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-tendsto-zero-iff.md) | 216 | `result-track:0f6648f06f00534dcc666f394a16548eae9c20b80d84a7f5db79b5b932e96527` |
| 36 | `theorem` | [IsTheta.tendsto_norm_atTop_iff](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-tendsto-norm-attop-iff.md) | 220 | `result-track:4cbe50e015004cab1a7cab40788174d45f2af575bdcb31510e08dd1cbd3617ee` |
| 37 | `theorem` | [IsTheta.isBoundedUnder_le_iff](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-isboundedunder-le-iff.md) | 225 | `result-track:94d43a73adb6a2e0207a8f472bcadb70cec7e04f367f69ddff22ed905e0ddf73` |
| 38 | `theorem` | [IsTheta.smul](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-smul.md) | 230 | `result-track:973122f1b9b0daf79505b4ced2a691d39d4e4756af514fa39e482a74b1be29cb` |
| 39 | `theorem` | [IsTheta.mul](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-mul.md) | 236 | `result-track:af5d077f17214578513183e0402f126a290813c0817dc97097e03ae42523491c` |
| 40 | `theorem` | [IsTheta.inv](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-inv-source-edition-2.md) | 241 | `result-track:d71a27b4ca1e24f9206824512604698bd7a31a8b18d44a21783e6d71e14d91c9` |
| 41 | `theorem` | [isTheta_inv](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-inv.md) | 247 | `result-track:00f269052d614498cbd5769f88241717b197a430e14ab2c356d98af861537dcd` |
| 42 | `theorem` | [IsTheta.div](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-div.md) | 252 | `result-track:0cecba8656f1d2e2ddb8bc4f83db901bb3b893b0816641994f638e681c6966d3` |
| 43 | `theorem` | [IsTheta.pow](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-pow.md) | 257 | `result-track:df6e92340b07468ef9a83ab87fadfcd5a12971ba3d825c1f435b64daf9e59ba6` |
| 44 | `theorem` | [IsTheta.zpow](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-zpow.md) | 262 | `result-track:e2764ff8e7e3f34569d7ecdc226107ebce4d9c9f989bb563321d91244c78fc6c` |
| 45 | `theorem` | [isTheta_const_const](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-const-const.md) | 269 | `result-track:a030daf0794239266169735159dba0d173a3695ff877af7a9bfe735a3b4b70a5` |
| 46 | `theorem` | [isTheta_const_const_iff](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-const-const-iff.md) | 275 | `result-track:56274a23ed84a44d39882f48c884efb14c0dbaf1509fe18e03c0bace8144746d` |
| 47 | `theorem` | [isTheta_zero_left](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-zero-left.md) | 281 | `result-track:dc47e7bc0e4a209309b4bfd7887ca10e8158db517b1685a0f6fdc89a634c195c` |
| 48 | `theorem` | [isTheta_zero_right](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-zero-right.md) | 286 | `result-track:316bb4e50d501a6c3e28f94712d82646103e19a47331e83a4dc8885c0ee56754` |
| 49 | `theorem` | [isTheta_const_smul_left](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-const-smul-left.md) | 290 | `result-track:5e62ca6d878c655eca173890b6662f362c19884cad68ded885be6a8cc45a59ce` |
| 50 | `theorem` | [isTheta_const_smul_right](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-const-smul-right.md) | 299 | `result-track:87bea369d6fcab750f30b0e1b5683dfae98d537f60f417de52de5230ea0c7a17` |
| 51 | `theorem` | [isTheta_const_mul_left](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-const-mul-left.md) | 308 | `result-track:d2a982bd1fe370886b8f92204a478d0d8335c7d8609a858b4008320116255a6a` |
| 52 | `theorem` | [isTheta_const_mul_right](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-const-mul-right.md) | 317 | `result-track:b644144a2b9a32e46c3e3bdfd3e9f2f174441c2787ac9bb239590c9221ea6147` |
| 53 | `lemma` | [IsTheta.add_isLittleO](../../../../FunctionalAnalysis/ThetaNamespacedIsThetaOfNormEventuallyEq.lean/declarations/istheta-add-islittleo.md) | 326 | `result-track:cc51ebc0aaca90644aa1f12370eaf6b66f3b0132ae21cf26bcf334fa8575a528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7d256a6fdbe3dd50c60aaf6f3d93103be923ac93304c31dc3727f6eaa48ff8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Theta/Variantbf3e5462540544eb70bf35e988c97b04b297f2f8f8913406e3eb7d5b0cc7310e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
