# Verification target: Boolean Algebra Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3be4e5ce2ad069071f651558c8022868f192d6e",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3be4e5ce2ad069071f651558c8022868f192d6e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Heyting.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GeneralizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/generalizedbooleanalgebra.md) | 90 | `declaration-track:afe8506e55550ed8eca8001bd995056ff30c01ae2805dbe12e9394869b4b3c58` |
| 2 | `theorem` | [sup_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-inf-sdiff.md) | 103 | `result-track:0107fbb1828bee028a0fec18f97cf56fe19ec2fe7d9d45f637044fe0460f4dec` |
| 3 | `theorem` | [inf_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-inf-sdiff.md) | 107 | `result-track:3f7bb549563f5026847a273fd6ddb1a3979894b08604be525d7fd1d1d191d2bc` |
| 4 | `theorem` | [sup_sdiff_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-sdiff-inf.md) | 111 | `result-track:668645d859935080faf6eccee58cb0edec984b5f111afbe0dd21af58b14ee9c9` |
| 5 | `theorem` | [inf_sdiff_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-inf.md) | 114 | `result-track:5f169f588bfa1f2b33feec6f69f7679f5c27558b420f0255a313346677a8b205` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/instance-source-edition-5.md) | 117 | `declaration-track:df73ba7e3ccd6adc30d0ee767f7858219749b8d055dd2b6975ca0ad4d865949d` |
| 7 | `theorem` | [disjoint_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-inf-sdiff.md) | 123 | `result-track:d63e3ce600877af1e0f09a49143c5497c27690667e51ba7bf4e500b84dd9fcda` |
| 8 | `theorem` | [sdiff_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-unique.md) | 127 | `result-track:cfbeea685ab2d1c283b6f8d23863ba207f1f3ba77437d24bb1532eed0f039445` |
| 9 | `theorem` | [sdiff_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-le.md) | 135 | `result-track:205d39b550a205d7c088ac951912bf3c1a45eba707af78a1404999189277bb0e` |
| 10 | `theorem` | [sdiff_sup_self'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sup-self.md) | 141 | `result-track:3d862a4883a72fa526f1bfb6fd86481a01d3c04c6b95a4e94bbd8a694fe6b21f` |
| 11 | `theorem` | [sdiff_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-inf-sdiff.md) | 148 | `result-track:13ae48fedbe017de978230e1f5d56e0844bf42785ee6b84815d6b579990886c7` |
| 12 | `theorem` | [disjoint_sdiff_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-sdiff.md) | 161 | `result-track:276988903d1d51e1ef778121594af4276d306a6aa7f0f41eb04744f143799dec` |
| 13 | `theorem` | [inf_sdiff_self_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-self-right.md) | 165 | `result-track:acc3bff5da4231f1a4713fe8c6ce04277194c9d1f7b92b371df5053484067fbe` |
| 14 | `theorem` | [inf_sdiff_self_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-self-left.md) | 172 | `result-track:384c5598698566c7cef22b923ae350d7652d487f4d693de46f8cc701f5b531c1` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/instance-source-edition-2.md) | 175 | `declaration-track:78df7721cf2bb965016ab18cac98d31b63ce1e3f22c7f8762958032427e0d837` |
| 16 | `theorem` | [disjoint_sdiff_self_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-self-left.md) | 204 | `result-track:59e10034fc6d39f6d3217f21c77ae50ecc3e5305c8ee9e281d4ba3ba6479bc11` |
| 17 | `theorem` | [disjoint_sdiff_self_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-self-right.md) | 207 | `result-track:2d0c088762894dd41070688e5fceedb8239b37943a526ad0381f023465ebf88b` |
| 18 | `lemma` | [le_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/le-sdiff.md) | 210 | `result-track:358442401df4b4708bf6ed71d8f64aad5b71f62fb45afca23e31516916bb9a4b` |
| 19 | `lemma` | [sdiff_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-left.md) | 214 | `result-track:b22b496a84a96548a75ad818c1d78d49fca3961f2701cf335cd1699a8addf6fb` |
| 20 | `theorem` | [Disjoint.sdiff_eq_of_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-eq-of-sup-eq.md) | 219 | `result-track:ad52e1647a8cfcf1e44bea0a390a3f111a90f84888b0b8357a7a6b6339fd8764` |
| 21 | `theorem` | [Disjoint.sdiff_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-unique.md) | 223 | `result-track:e394d6de67d54f96f31251da77239e90da1578517c6a52ea8ebbe48ebe16e920` |
| 22 | `theorem` | [disjoint_sdiff_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-iff-le.md) | 233 | `result-track:f37fcb5068ad2d9d05987327694af332f89bd6f9a1c91c4cf6960d147d41a779` |
| 23 | `theorem` | [le_iff_disjoint_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/le-iff-disjoint-sdiff.md) | 243 | `result-track:ec51d6a026a7c104785d9b372f13bd6224a09e1b8f448c6afd7e6a801967d5c0` |
| 24 | `theorem` | [inf_sdiff_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-eq-bot-iff.md) | 247 | `result-track:1225415409d700f8bc24012977f75f7ba93f43126cc0d392f1c8661f0614902c` |
| 25 | `theorem` | [le_iff_eq_sup_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/le-iff-eq-sup-sdiff.md) | 252 | `result-track:c791cd7def8dd15f05148c60a03eefb727799137d7025f418c39780ffc4f4e59` |
| 26 | `theorem` | [sdiff_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sup.md) | 268 | `result-track:e2bb2b88c9caf793f8c1ca960e37024bbceeffe29b8f5c271410d3663e4d3e48` |
| 27 | `theorem` | [sdiff_eq_sdiff_iff_inf_eq_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-sdiff-iff-inf-eq-inf.md) | 285 | `result-track:4ae8cb5aa2cd9848af282a40c6ffe985ba7d2160f92b0ea22770d458d4d72e65` |
| 28 | `theorem` | [sdiff_eq_self_iff_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-self-iff-disjoint.md) | 290 | `result-track:6f1aac395564b6ef13f58ae965a11c1a5de1994e6c1ad1c1fa184ce9d836f9c2` |
| 29 | `theorem` | [sdiff_eq_self_iff_disjoint'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-self-iff-disjoint-source-edition-2.md) | 296 | `result-track:dc009537b219af29278a7d293676708b17327421231c95a8aa9c9cfc907dd3ab` |
| 30 | `theorem` | [sdiff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-lt.md) | 299 | `result-track:0ed4cbce6862f48d9b1a3a0c8df8ba7ac44dbc7243b2301d7ed4a2569b9b47a5` |
| 31 | `theorem` | [sdiff_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-lt-left.md) | 304 | `result-track:6c174104792bdf7990d4610857de9aaf56c851ec778a6970be7ce021c697534a` |
| 32 | `theorem` | [le_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/le-sdiff-right.md) | 308 | `result-track:9696711bb2f4410009824a9ababceb7acef54effa22098eaf596b7e353621bd4` |
| 33 | `lemma` | [sdiff_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-right.md) | 311 | `result-track:b436558f357cdd64168938ec126f8d453cbb01baa05516d920de102a808d615a` |
| 34 | `lemma` | [sdiff_ne_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-ne-right.md) | 314 | `result-track:7be8cb1ea8f34ec345436a03a290f013dcf974af287cffda5423e8cfb098dde3` |
| 35 | `theorem` | [sdiff_lt_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-lt-sdiff-right.md) | 316 | `result-track:7474ad8e743bd8823ef3f2d66386284a3ae4dedb17f93311fe9d01c095dc4b37` |
| 36 | `theorem` | [sup_inf_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-inf-inf-sdiff.md) | 320 | `result-track:4558bc69227215aef6e8582b9a3017a41fb0973847cf39e8cc2b7d6466f32c94` |
| 37 | `theorem` | [sdiff_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-right.md) | 326 | `result-track:1f962c77a6b542bb8eefc3f04ef0445f1f52c88e066764d733f247d335d43633` |
| 38 | `theorem` | [sdiff_sdiff_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-right-source-edition-2.md) | 349 | `result-track:e761e0aaa4bb09f73813da777cb4a3191869ee60a4474761a56f843df94c941c` |
| 39 | `theorem` | [sdiff_sdiff_eq_sdiff_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-eq-sdiff-sup.md) | 355 | `result-track:51ec3517a7ece3662f28f530b6372e5d9e608777b12f257051efc15c96873f51` |
| 40 | `theorem` | [sdiff_sdiff_right_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-right-self.md) | 359 | `result-track:e7f3948ea1988ce6625d746e24d544a035aa03ffb5eab2947849f816e1ded6c0` |
| 41 | `theorem` | [sdiff_sdiff_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-eq-self.md) | 362 | `result-track:cefdd5950d3685bd2158a4d2f2e29e15c2a27b468b7af3d9bb6f1416d35be93f` |
| 42 | `theorem` | [sdiff_eq_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-symm.md) | 365 | `result-track:ebfb1af440c49967a15047e742ef8443d7e9d55d2a35557129f98a71e796b6ad` |
| 43 | `theorem` | [sdiff_eq_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq-comm.md) | 368 | `result-track:fa4fa44039de599496c0f4408530b76dbbb9a56e69ae13aff1db6031feacab11` |
| 44 | `theorem` | [eq_of_sdiff_eq_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/eq-of-sdiff-eq-sdiff.md) | 371 | `result-track:f5e49300d85741e7f783e86070fc8596a217ccb7a2a1e65e9b9df99ca7f1ffdd` |
| 45 | `theorem` | [sdiff_le_sdiff_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-le-sdiff-iff-le.md) | 374 | `result-track:422519b28e771a519c63bf30e2cb10caa8b44a398549342e1c44f8e76c7ba000` |
| 46 | `theorem` | [sdiff_sdiff_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-left.md) | 379 | `result-track:11fe062a80bf5972d70fe54d3dd18f6d47320f02861c2be1ed1e3f19056d039d` |
| 47 | `theorem` | [sdiff_sdiff_sup_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-sup-sdiff.md) | 381 | `result-track:4b5bd01ce585d08ef8758926b5b076e8bb957f15bf02d5254b077dc563626d94` |
| 48 | `theorem` | [sdiff_sdiff_sup_sdiff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-sup-sdiff-source-edition-2.md) | 391 | `result-track:e19c2b3d1f5b85046d6f61f9fbab43910b8de96fd7d5088b63a71dd9a75c6cb0` |
| 49 | `lemma` | [sdiff_sdiff_sdiff_cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-sdiff-cancel-left.md) | 399 | `result-track:45ef216ec913655d57984973e8f7cd45c0e389964f1ed0b85bc2b8cc54945212` |
| 50 | `lemma` | [sdiff_sdiff_sdiff_cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-sdiff-sdiff-cancel-right.md) | 403 | `result-track:77de019f4d60f6d334790797e044ae7d5ad3f6d29d7415d9e23a28672ee3cfd7` |
| 51 | `theorem` | [inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff.md) | 408 | `result-track:83f57c04638d62aab82fb5f214f389385f7aba3658e609e6e53fa7a8b34f6242` |
| 52 | `theorem` | [inf_sdiff_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-assoc.md) | 423 | `result-track:10db9aa360ec7cda376632e66afa28be846cfe53ad95b4f28e931f7318e94f7b` |
| 53 | `theorem` | [sdiff_inf_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-inf-right-comm.md) | 434 | `result-track:66b19c604ba4b50bbfb08ca39aa5b1bce14f8ee13af18ed5236fd55357a9aa2c` |
| 54 | `lemma` | [inf_sdiff_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-left-comm.md) | 437 | `result-track:7bffa65f903cce3508cc86026c8b50865849a4893e114d6bd6771131f75042a7` |
| 55 | `theorem` | [inf_sdiff_distrib_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-distrib-left.md) | 442 | `result-track:8ac812019249211122970d6b94190c44c66ec00d16553823bde06a5e62db6bf3` |
| 56 | `theorem` | [inf_sdiff_distrib_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-sdiff-distrib-right.md) | 445 | `result-track:4d9bd0033cfa6b55cb42f38d506eacf4576982804ae8b9d894ab6b4ce1922d7c` |
| 57 | `theorem` | [disjoint_sdiff_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-sdiff-comm.md) | 448 | `result-track:39566e5637d926b84f426929ecb24c13984b1b9eafaeaa4556ef671d7cd149cd` |
| 58 | `theorem` | [sup_eq_sdiff_sup_sdiff_sup_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-eq-sdiff-sup-sdiff-sup-inf.md) | 451 | `result-track:9b6eff5e2233a7a290241695258b152be1bfde39ff8b82f536ef906566e4a330` |
| 59 | `theorem` | [sup_lt_of_lt_sdiff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-lt-of-lt-sdiff-left.md) | 459 | `result-track:63290a49710d3e5f1b72a9aad0d3b10677ef6b2812fbb5ea5c30c04aef62483f` |
| 60 | `theorem` | [sup_lt_of_lt_sdiff_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-lt-of-lt-sdiff-right.md) | 465 | `result-track:c78f352c9b5d82215943a5aaeb4e668523b950db0b94701b4e7423e2da0cdab5` |
| 61 | `instance` | [Prod.instGeneralizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/prod-instgeneralizedbooleanalgebra.md) | 471 | `declaration-track:80592b9bbe99fce7dd66dc490311bf61dcf92e26e4c4ee7238cbb13cb1a76894` |
| 62 | `instance` | [Pi.instGeneralizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/pi-instgeneralizedbooleanalgebra.md) | 477 | `declaration-track:21ad5f7ffc3cd1a362fda30c5e931125e5459eca500764aa05dd19b96dcb629d` |
| 63 | `class` | [BooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/booleanalgebra.md) | 500 | `declaration-track:87159410496e5e1cd535ab3ca1b9832853a189c4fe50bdd04254c21bba87c9a8` |
| 64 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/instance-source-edition-3.md) | 520 | `declaration-track:83fee8a85c4d813ce6f56759a0665cbbe3db1b5adaf83243a8b58642b7c4e86b` |
| 65 | `abbrev` | [GeneralizedBooleanAlgebra.toBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/generalizedbooleanalgebra-tobooleanalgebra.md) | 525 | `declaration-track:2d8666c6488c10f158372eb4c33ef3d61188eb9db123be23189839b72952f642` |
| 66 | `theorem` | [inf_compl_eq_bot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/inf-compl-eq-bot.md) | 541 | `result-track:e848dea40ac69e56af591efa7894c7bf663f53ca3d1b395fd4f386b75a1f5418` |
| 67 | `theorem` | [sup_compl_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-compl-eq-top.md) | 545 | `result-track:feb72f20e67928d142dc6feaeb8be408aaede4c1891e610cf264ff21118749d0` |
| 68 | `theorem` | [compl_sup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-sup-eq-top.md) | 549 | `result-track:bc3d52a83e75f36822b540835934f2c3c3e35f160340a008086c2a45c66c7ac1` |
| 69 | `theorem` | [isCompl_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/iscompl-compl.md) | 551 | `result-track:e4092b1614052dd8e7bc01895ddb0e03ee292a240e0337ac5e5a1d68038a8619` |
| 70 | `theorem` | [sdiff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-eq.md) | 554 | `result-track:ea71f1d0f20bc95f886ee4d0e1c19f06f4c4fb5db2b055d867c641321560523d` |
| 71 | `theorem` | [himp_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/himp-eq.md) | 557 | `result-track:eebdb8f072eb4619ced9da7d53314b97138213ad0cc0a9d21a6b114e9941b492` |
| 72 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/instance.md) | 560 | `declaration-track:042d5c70ed3070b8a174a3a7557ef57612132da04a93775e10bad5a02cc6baac` |
| 73 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/instance-source-edition-4.md) | 564 | `declaration-track:9c5dafe8020e198ace277af53efe0308f58d2190fcebda6fecc0d9d8fcff4c0e` |
| 74 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/instance-source-edition-6.md) | 572 | `declaration-track:f582e6d0c10d9b9a405729db0da9776814bd886f001027c6bae5024ca8ae4e87` |
| 75 | `theorem` | [hnot_eq_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/hnot-eq-compl.md) | 581 | `result-track:1534650768377875d99ac90835f17c9b218062cd95ce5a5ad36f05eef493f9ff` |
| 76 | `theorem` | [top_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/top-sdiff.md) | 585 | `result-track:048ff4f1f77d7545b5ff69b8fcd2c7f89a388e388935fc901c985a00003f0467` |
| 77 | `theorem` | [eq_compl_iff_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/eq-compl-iff-iscompl.md) | 588 | `result-track:b6312a336e796eabfe64406e2dfd5d6c0339f98da6fb443d2a7c316b908ba352` |
| 78 | `theorem` | [compl_eq_iff_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-eq-iff-iscompl.md) | 593 | `result-track:601cd3cb8a195407e3f00e84160b133e0f18a8b8d08f697e5d93f0e4ee9435b2` |
| 79 | `theorem` | [compl_eq_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-eq-comm.md) | 598 | `result-track:1775f3e66facb18b9c12aaf06bea035e811f4446e88ef579d3cba466b99b1516` |
| 80 | `theorem` | [eq_compl_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/eq-compl-comm.md) | 601 | `result-track:86db5d1cf41490169912cd604601ee70a731c6a24cd0861da7929551262d46a7` |
| 81 | `theorem` | [compl_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-compl.md) | 605 | `result-track:fecbb1c2e3417ca15f62903406843f35597a24f251c3db090d4584c1a73ed81a` |
| 82 | `theorem` | [compl_comp_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-comp-compl.md) | 608 | `result-track:422b2ee6befd160176786ab7aedee7f77e96d6c26e6d546da90b8df23803075b` |
| 83 | `theorem` | [compl_involutive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-involutive.md) | 612 | `result-track:2a2e4e3b283b1d1d0083a7a5b54b415eb1d5c91422ab7bd540912437c861d5a2` |
| 84 | `theorem` | [compl_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-bijective.md) | 615 | `result-track:306f9df5d2c09749ff8fb69bd4c12177aef8085e7b76d6b072ba72946d609dc9` |
| 85 | `theorem` | [compl_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-surjective.md) | 618 | `result-track:68fa39ccb7c039777e714fcc1eb87396681d8339a2e78f9c11da455ad12d72f6` |
| 86 | `theorem` | [compl_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-injective.md) | 621 | `result-track:3a7ab118a1532b3ada0ef17e0aa4bea1efaf513dd20076f48902f7ee4851a03a` |
| 87 | `theorem` | [compl_inj_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-inj-iff.md) | 625 | `result-track:d66a4183c2cbd5e585f2da4b50a3be8d50c94371cbace90f5f20c172898a199a` |
| 88 | `theorem` | [IsCompl.compl_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/iscompl-compl-eq-iff.md) | 628 | `result-track:a53156350ee40bdf8e24b39316f750126d7fe296c566612f36c0a849081da6d4` |
| 89 | `theorem` | [compl_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-eq-top.md) | 632 | `result-track:fbb4768b18bdf422fd7e6eae9edd459bc5f2aac9fdfa41e27244716270fd40eb` |
| 90 | `theorem` | [compl_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-eq-bot.md) | 636 | `result-track:f4f7cb277411eba95fca37428ef30f314605d8dfd2b4646988de3293fdc1db0a` |
| 91 | `theorem` | [compl_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-inf.md) | 640 | `result-track:665397da08da463854030639ae68ce5114b8d98fa6cd6dfadc55f59806f96c9a` |
| 92 | `theorem` | [compl_le_compl_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-le-compl-iff-le.md) | 644 | `result-track:f7e587a27f42b7f369a2f758b35bbf3e9a87a3a9daafd936a9f05a5c1653c603` |
| 93 | `lemma` | [compl_lt_compl_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-lt-compl-iff-lt.md) | 647 | `result-track:617643376a0e837611bf843c65d77d5e77d3c29c63c455110658e31043142dff` |
| 94 | `theorem` | [compl_le_of_compl_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-le-of-compl-le.md) | 650 | `result-track:09ef7cdb34531f2287e1cfddd4a3e005ebf28a7f9ea7c5448b823d3c73944cb8` |
| 95 | `theorem` | [compl_le_iff_compl_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-le-iff-compl-le.md) | 653 | `result-track:b9a6a0aca3df016b3dd344f6c1f0bb65072a051379a61e69b96eca6fc596a9da` |
| 96 | `theorem` | [compl_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-le-self.md) | 656 | `result-track:1ddc398e43128088c471c2a490a3abe69288c972c1d070d0b6286b51e955f5b8` |
| 97 | `theorem` | [compl_lt_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-lt-self.md) | 658 | `result-track:2cb87bd8f7624caa0810321448efe505946ea76c3306bf43838c3f2c39676238` |
| 98 | `theorem` | [sdiff_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sdiff-compl.md) | 662 | `result-track:b9696772d0bff57858b6e8b8b7cdf8b4af88f7c52f5000410946cbbe0837736a` |
| 99 | `instance` | [OrderDual.instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/orderdual-instbooleanalgebra.md) | 664 | `declaration-track:4442e442a00b49f82b36c77d7aac8da3286e958f3899ebcbaa60aa53ef41abde` |
| 100 | `theorem` | [sup_inf_inf_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/sup-inf-inf-compl.md) | 673 | `result-track:ba4dc06fb09d19088838c01e878d5c13782ebcbf883c84eed5f7127128336200` |
| 101 | `theorem` | [compl_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-sdiff.md) | 675 | `result-track:3afaaf6cfdcd01440b5c8da1180042175a6ce8f5e90e817820a035167704f994` |
| 102 | `theorem` | [compl_himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-himp.md) | 679 | `result-track:e01188ffd164d498be0f9b9590042feb1b5cdf60eaa06f225313541ce1fd8eee` |
| 103 | `theorem` | [compl_sdiff_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-sdiff-compl.md) | 682 | `result-track:9b667868da6aff6dafe59fd574f292b4c42a39e76dfb850bee6fbd1fb7fc7b21` |
| 104 | `theorem` | [compl_himp_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/compl-himp-compl.md) | 685 | `result-track:3a2a504ca6a89b9901ddbd402bdeb6141d0801b2ed8dfaa6eb2f333ed44bb72f` |
| 105 | `theorem` | [disjoint_compl_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-compl-left-iff.md) | 688 | `result-track:a14ee442da30eefde055339e19825b3ff9bed0f5bbae3f44d491b46b5eb75bc8` |
| 106 | `theorem` | [disjoint_compl_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/disjoint-compl-right-iff.md) | 691 | `result-track:a84984230a1d36da97de0efb425d81290eedfb663454e09af67a5b0da8ef07b8` |
| 107 | `theorem` | [codisjoint_himp_self_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/codisjoint-himp-self-left.md) | 694 | `result-track:06e53c32049d9b80e3c818208c22a4d3bbe62e2b9a7c6b4e4cea48de030fef8a` |
| 108 | `theorem` | [codisjoint_himp_self_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/codisjoint-himp-self-right.md) | 697 | `result-track:de57b1775355a52d3059760a386047c57eba9f3d845f66a3d7520e7b42a9435b` |
| 109 | `theorem` | [himp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/himp-le.md) | 700 | `result-track:998d3d963432cfba673346858b05b8b4c2e757ea4e7d80f3ba350e438c21aecd` |
| 110 | `lemma` | [himp_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/himp-le-left.md) | 703 | `result-track:d63409bd6c0e625f6e21b4dde759f5e4e6f5f60889d5ca8d9d6a011014916c35` |
| 111 | `lemma` | [himp_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/himp-eq-left.md) | 706 | `result-track:0690fcb25039f435803b7bc49bf29e01564bb973cddd832a789f3ac507d96ca0` |
| 112 | `lemma` | [himp_ne_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/himp-ne-right.md) | 709 | `result-track:962e8d024f736d54f129f35f33598309f776fe06e2790a92c8e366660e396a02` |
| 113 | `lemma` | [codisjoint_iff_compl_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/codisjoint-iff-compl-le-left.md) | 711 | `result-track:1dc9d7ff3af58a95a1c3d0a16f456d01e1cf6ea05d05fa8929a57026b177e5b4` |
| 114 | `lemma` | [codisjoint_iff_compl_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/codisjoint-iff-compl-le-right.md) | 714 | `result-track:5a9fec0a05e627fbcd6a0eb704016cac249221227d92dc56ecd2d1507ef7fa12` |
| 115 | `instance` | [Prop.instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/prop-instbooleanalgebra.md) | 719 | `declaration-track:e6f69d1aad11b845cb89dce01e85d2bbd4d01708ea80a42fe5de7ea12514c62c` |
| 116 | `instance` | [Prod.instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/prod-instbooleanalgebra.md) | 727 | `declaration-track:a77af6bd38fb6e596f0409d0d0279cfbbb5507900ff36b9c2684a3ec67635182` |
| 117 | `instance` | [Pi.instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/pi-instbooleanalgebra.md) | 736 | `declaration-track:ea2785275ca78bd8ad3a8b1fa6505a2a6cc2661b68e271567228f410615fe34a` |
| 118 | `instance` | [Bool.instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/bool-instbooleanalgebra.md) | 745 | `declaration-track:e1e84a46c54ebaeabd3e285739492032e59f32dc30b1b07961b7310b2523abf6` |
| 119 | `theorem` | [Bool.sup_eq_bor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/bool-sup-eq-bor.md) | 751 | `result-track:22011e33b2aef7224692277714e8c61ef713acbb396f5a1f195d3d35c4ecee5d` |
| 120 | `theorem` | [Bool.inf_eq_band](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/bool-inf-eq-band.md) | 753 | `result-track:81b012c8da84b372400d8ee9d1139ca5d02b2252e5d0bb23df30c18b8197be00` |
| 121 | `theorem` | [Bool.compl_eq_bnot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/bool-compl-eq-bnot.md) | 756 | `result-track:ef4dec9aff8ca234482a695de59edefa577552389326cf0c8ddfbc0040e50f08` |
| 122 | `abbrev` | [Function.Injective.generalizedBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/function-injective-generalizedbooleanalgebra.md) | 763 | `declaration-track:2c388b2dae3fe874bf11c9c11d557cde1bcf20cdad8cec62a1b37aee13b95d56` |
| 123 | `abbrev` | [Function.Injective.booleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/function-injective-booleanalgebra.md) | 775 | `declaration-track:2feab15764c1db8d0358ce7aedbdd58c49728264ad97aa264cbf5975e81cd01a` |
| 124 | `instance` | [PUnit.instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/punit-instbooleanalgebra.md) | 796 | `declaration-track:438aede7dc9c130642d31b04ebbc0d6bb184f9ca36fe29788a5c236111283279` |
| 125 | `def` | [booleanAlgebraOfComplemented](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BooleanAlgebraNamespaced.lean/declarations/booleanalgebraofcomplemented.md) | 813 | `declaration-track:5f6cce3bc7598b616367954bc34f43e4465a02a693eb51c76349115431d3e920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=494b57980b53d82d00774e52ea99f7e73fd820cae6936816f6533dc6c7c65a95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
