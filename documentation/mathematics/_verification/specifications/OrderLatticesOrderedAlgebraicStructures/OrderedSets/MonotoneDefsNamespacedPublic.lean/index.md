# Verification target: Monotone Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2879c78c6d5f47922d41f191a3a907eaf22cd4a",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante93c2c53341d11aa3c54ece4e28483af708f99b1889dbccf0fb2b561ed2d0a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2879c78c6d5f47922d41f191a3a907eaf22cd4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante93c2c53341d11aa3c54ece4e28483af708f99b1889dbccf0fb2b561ed2d0a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante93c2c53341d11aa3c54ece4e28483af708f99b1889dbccf0fb2b561ed2d0a5b.lean.json)

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
| 1 | `def` | [Monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-source-edition-2.md) | 70 | `declaration-track:90ce0bafd451e5a43c33767a86b523d955fbbe003f155b74833e500a938c5d6b` |
| 2 | `def` | [Antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-source-edition-3.md) | 76 | `declaration-track:3bfb74471ceadb096518c6a3719659a1775bfa6fe3814223479674ac0ddff15a` |
| 3 | `def` | [MonotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon.md) | 82 | `declaration-track:e8f5049d5473150e1ffd499e2ff080575f6288969e11e59eb76690827699084f` |
| 4 | `def` | [AntitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon.md) | 88 | `declaration-track:5f2deb977efb06229d457f18f480bc02eb9ae54036f90e7204f06a1fae149791` |
| 5 | `def` | [StrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono.md) | 94 | `declaration-track:683a63a9d5ccfd9a0bbee68cbf5820e588216dc352571cee4e4dd7cfacfde79e` |
| 6 | `def` | [StrictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti.md) | 100 | `declaration-track:59b4d27ef7940961cc89e9fa378e866243c5ff409b586b4de6691773dbad2511` |
| 7 | `def` | [StrictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmonoon.md) | 107 | `declaration-track:be7c82ff9ae8fc5ed177893913dcb6b0ac194fbb44d32dd80eaf52c521ed396a` |
| 8 | `def` | [StrictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictantion.md) | 114 | `declaration-track:80e26d4a103405aaac1d19c348725471d7599bbe5ffc0066b411d3ff3deb2ca0` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 125 | `declaration-track:2d801a543d7d2d952002ef5709e56b1a74a742ced6d47fc6c2b4769ab7dbc273` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 126 | `declaration-track:7465e4c37ea0b49b5820f1c2dcdc0a352843f8c007e68348e4a7555cd5a05d9b` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 128 | `declaration-track:f88a958d597ce9f0e962d2259cc4a0668cfc19064e48642eab25cf3e6a49b617` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 131 | `declaration-track:b962732abc972252684b5d16bb57c01175ee5e95ffb45f04450fab415cb5d56b` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance.md) | 134 | `declaration-track:280ad0cd0e22e9ae1484c9f8b3a025a704b9ee51349153e4e6080e571651077d` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 135 | `declaration-track:fe901b35b06ac0a06274d1c3aadf5d4e328f3e584e914c024645b540729c81ce` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 137 | `declaration-track:8fec4f9ffdca453ec6af3395ed11fe6db9467f864bbc50b438f033fad670bbb6` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 140 | `declaration-track:6e3e04efdb1f2de4a17a78864379f0f1cacc4af529c7b11d08857d0e17b6eeb4` |
| 17 | `theorem` | [Monotone.comp_le_comp_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-comp-le-comp-left.md) | 153 | `result-track:c17f2fed16af7eab048ac3eb3d9afd369391581f93e74300b1654d3e00808f1a` |
| 18 | `theorem` | [monotone_lam](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-lam.md) | 160 | `result-track:76c57b2849e37ad9d2b8bd9a15cafee7e93c82315c15e669383990262679c64d` |
| 19 | `theorem` | [monotone_app](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-app.md) | 163 | `result-track:d3e480dd7ecbe238448f8e24cd2991eb2f3377c30f3e9f9bb9467cb576f3bf5e` |
| 20 | `theorem` | [antitone_lam](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-lam.md) | 166 | `result-track:6b6ed9ad542574fd3cfe4a54cc4cda2ae50f5eb9eb8f7a2a46104b370d33cce9` |
| 21 | `theorem` | [antitone_app](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-app.md) | 169 | `result-track:d5f12903b89eabcc0a9c9784311e2a7f0d8399e508efc1c89eb0400b8aa96847` |
| 22 | `theorem` | [Function.monotone_eval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/function-monotone-eval.md) | 174 | `result-track:435e1c1b351771539cbd64b7567e5b5db55c2b5f9ad8ec93b4d7c7c5c3a5d5e0` |
| 23 | `theorem` | [Monotone.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-imp.md) | 195 | `result-track:9e917fc05a5a9324b3937c13915da0d19228f92ee8315fc499807f9a9c9b2139` |
| 24 | `theorem` | [Antitone.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-imp.md) | 199 | `result-track:1f90709c6d3803e9dddcf8afef897905cf693749d5fbddaa653f78f4d15b3244` |
| 25 | `theorem` | [StrictMono.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-imp.md) | 203 | `result-track:b06025675caca5fd953a4aa131a311579b1adb9e3080d8390d31b1e31ccd532b` |
| 26 | `theorem` | [StrictAnti.imp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-imp.md) | 207 | `result-track:8a80790c3381d0718fc38e65e071440f340567b4e05e996c6c4116f5205fc9ee` |
| 27 | `theorem` | [Monotone.monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-monotoneon.md) | 210 | `result-track:afa905ff16dccc8357c0483c0be4abad6a7f3a2b3869c4c3da418d3836f0e88a` |
| 28 | `theorem` | [Antitone.antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-antitoneon.md) | 213 | `result-track:7e1734a3db4ad5acc72c62f5a37ef79ad1d406b5acd495bcb4b669afe098f9d4` |
| 29 | `theorem` | [monotoneOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-univ.md) | 216 | `result-track:38caa4b9e028c98327847b9ac6273e86cb13b58c13cd73c91eea4927b565bc5e` |
| 30 | `theorem` | [antitoneOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon-univ.md) | 219 | `result-track:7458d0acfc077a031cde98ca8981620aadbb163503fbd18f9820e192402da546` |
| 31 | `theorem` | [StrictMono.strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-strictmonoon.md) | 222 | `result-track:805fc8d4d90173b9b8a87fb311d98132591cc6023a9fa4ef13d3d36f8ed2b5e2` |
| 32 | `theorem` | [StrictAnti.strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-strictantion.md) | 225 | `result-track:c9d79b412d4cf0fc96e18f279101848d97857a79b45800a1c6d9385bc2ac1844` |
| 33 | `theorem` | [strictMonoOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmonoon-univ.md) | 228 | `result-track:411533449b1c2cc8c45795232964d7e069be56d2d6bb3b7085265817b72a0a75` |
| 34 | `theorem` | [strictAntiOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictantion-univ.md) | 231 | `result-track:bbae5f56734817a53ec5e6f4608d3a82f54fcc2b10baf95c383880d8f2d87472` |
| 35 | `theorem` | [Monotone.strictMono_of_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-strictmono-of-injective.md) | 240 | `result-track:2b36d18b9343d0723f873bc7a2d343eae7db190c32a212ba93fadc0037e8fcfc` |
| 36 | `theorem` | [Antitone.strictAnti_of_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-strictanti-of-injective.md) | 243 | `result-track:0e22d989145fd013782f7c2f96a13a8ece7bb02a44e3a58788564a781d9befbb` |
| 37 | `theorem` | [monotone_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-iff-forall-lt.md) | 255 | `result-track:3e4d464bc815f44dd8cad10a6e3a14260c06b80603143a148dfe814f3286c013` |
| 38 | `theorem` | [antitone_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-iff-forall-lt.md) | 260 | `result-track:2c88381359295065d07a40ff7cdbe919185dece528714be365633cf917fc582d` |
| 39 | `theorem` | [monotoneOn_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-iff-forall-lt.md) | 265 | `result-track:98ce4eea3d6fa0545f7bafe73b3236a6e92c021b5d9104d2359bafcbe61394aa` |
| 40 | `theorem` | [antitoneOn_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon-iff-forall-lt.md) | 271 | `result-track:d3ef5007c5a5b8ddab6269b31c0af523fe58d5009f0928a6e646defcac11c7c2` |
| 41 | `theorem` | [StrictMonoOn.monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmonoon-monotoneon.md) | 278 | `result-track:dad7f125f04a3788a222ea459f391b58c6657cf2d785418d6d80bd0bf67d66c9` |
| 42 | `theorem` | [StrictAntiOn.antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictantion-antitoneon.md) | 281 | `result-track:7c2f7c84c94449fbe0e3e7db121d5b37fd655a2b55c77d67fbf4e8a348b2bfbc` |
| 43 | `theorem` | [StrictMono.monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-monotone.md) | 284 | `result-track:5c3e62278425039f1cc1ab67448b9657d7fae9d2adc6c31c51ea907c1250247b` |
| 44 | `theorem` | [StrictAnti.antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-antitone.md) | 287 | `result-track:b72cf7561938449cf145f8a381bf723f1ea13d73996142136e8ae8f5083695ce` |
| 45 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-source-edition-3.md) | 299 | `result-track:a4fe028349bd4029fa7496c2a86ee58241b41b64cc3246d1124f8f67e1a4c854` |
| 46 | `theorem` | [antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-source-edition-2.md) | 302 | `result-track:20cd5fc0e694614d415d0ea6dc804d9953c4611e64579ed96c79c2644898b772` |
| 47 | `theorem` | [monotone'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone.md) | 305 | `result-track:183567aa50ee65fd7a49e9311efe94d27ea418b51014d0150512d17fe95a8256` |
| 48 | `theorem` | [antitone'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone.md) | 308 | `result-track:0a4c1bc7d26cbb6324b23436900e3f39370943a5cd5b5cc8064c763dd4cd4619` |
| 49 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-source-edition-2.md) | 311 | `result-track:a0eda82d13e1a66f7b83d0af9f067f075a4fc4126ac2bdc632e773c445453114` |
| 50 | `theorem` | [strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-source-edition-2.md) | 314 | `result-track:ee4b7bd87a2fb1b836ae3c2c8e28d0f153d91d6ae2fe1a6e1e8ca15d27b116ac` |
| 51 | `theorem` | [monotone_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-id.md) | 322 | `result-track:bd53d05cafa7893355d413e9d60f59133a886f901f8bee29a27e37c1f35b0eed` |
| 52 | `theorem` | [monotoneOn_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-id.md) | 324 | `result-track:be72dd25d613e939a7201ddb8ff7ae47a4204d1809214d74babdbfebffdaf8d1` |
| 53 | `theorem` | [strictMono_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-id.md) | 326 | `result-track:5941bff9c476c495957b0a7751898ce4b78d402c2abd4ea718bcb85ebdaf34c9` |
| 54 | `theorem` | [strictMonoOn_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmonoon-id.md) | 328 | `result-track:2733989e472be66af91559520ba7349de4bd58f643c9af8e96cc2e7e4df1291b` |
| 55 | `theorem` | [monotone_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-const.md) | 330 | `result-track:691cfbd76be5f73b42e46f3007dfac36790455e8d81cd8242ca712f6d092233c` |
| 56 | `theorem` | [monotoneOn_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-const.md) | 333 | `result-track:c821e2876122b4b56efb53120b6e56b5bda1146979d479c231496736be0a365a` |
| 57 | `theorem` | [antitone_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-const.md) | 337 | `result-track:0109a064bf345cb36a9abeba5d257dd389e37be983277c5012e20941e711abbd` |
| 58 | `theorem` | [antitoneOn_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon-const.md) | 340 | `result-track:f3b919d27f710a023531eab917e96db3f6bf9a97f73ab3e985f73a5d0460e45b` |
| 59 | `theorem` | [strictMono_of_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-of-le-iff-le.md) | 345 | `result-track:2f624262715441c52adfd1d5a07a3b8a4862107b084e1033961800be3d7410f5` |
| 60 | `theorem` | [strictAnti_of_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-of-le-iff-le.md) | 349 | `result-track:0552dd0976c0b37d41aaf1f8350bd716187d1093299370b2dfcba55adfbe3f1a` |
| 61 | `theorem` | [Function.Injective.of_lt_imp_ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/function-injective-of-lt-imp-ne.md) | 354 | `result-track:19fa5e3ae02da170281ff8e3b6fd046ace3a93dd63eb8e58187cc3333bcca05a` |
| 62 | `theorem` | [Function.Injective.of_eq_imp_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/function-injective-of-eq-imp-le.md) | 358 | `result-track:989e4faa270bf6ca1eeebdc0bf1010771aa5dc512d75c7d70d9f99c4815fc955` |
| 63 | `theorem` | [Monotone.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-comp.md) | 369 | `result-track:a2f37a146775dabde6074ca5fabc9fb08f27d1a5c2acd2f6292fd7ccb0818c14` |
| 64 | `theorem` | [Monotone.comp_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-comp-antitone.md) | 372 | `result-track:39183f25315ef9603be913f21417d9ec0d976361b371d356180d79f49ee5e963` |
| 65 | `theorem` | [Antitone.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-comp.md) | 375 | `result-track:614b434772750c8f15041a798d3ac460e6062479b8c7f255e4b56881f509a2e6` |
| 66 | `theorem` | [Antitone.comp_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-comp-monotone.md) | 378 | `result-track:e473f5dba255deb5efd515e267cff17266c819fea9104b0243eb76eff9a3cef3` |
| 67 | `theorem` | [Monotone.iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-iterate.md) | 381 | `result-track:685ac45eda19c2dd2226f0ef9788544ca3e1fdc9cae9434c17982703dec09a3e` |
| 68 | `theorem` | [Monotone.comp_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-comp-monotoneon.md) | 384 | `result-track:5c7a71e99e6df92d289db3b0d371c80a08940b23dbcf77a89f5a8b56459f4fba` |
| 69 | `theorem` | [Monotone.comp_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-comp-antitoneon.md) | 388 | `result-track:07a32eab3e5d33dd8be3fce7570f5a7f79111f595b97397bd73a77a0aca5ecfe` |
| 70 | `theorem` | [Antitone.comp_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-comp-antitoneon.md) | 391 | `result-track:aa694787d95a0bc46c305e9a307666d6d791c5881e95401a84840fd3fcbd248a` |
| 71 | `theorem` | [Antitone.comp_monotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-comp-monotoneon.md) | 395 | `result-track:e9df7bcab67f9893c415698c3d4ab79b11eaa2ba8c480fdd5fd18408ea76792f` |
| 72 | `theorem` | [StrictMono.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-comp.md) | 398 | `result-track:9334c4de49b810c5670b3530015556eee973b4dc538a8be1ea0df1e4925891b6` |
| 73 | `theorem` | [StrictMono.comp_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-comp-strictanti.md) | 401 | `result-track:fa3df05b68caabb46edf3261737d2bf554b187d5f1ea0c4c7d5434bff73b572c` |
| 74 | `theorem` | [StrictAnti.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-comp.md) | 404 | `result-track:214fa5602c3b8768762b53efa86b181c4283b92edbde584715e0479dbe03614b` |
| 75 | `theorem` | [StrictAnti.comp_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-comp-strictmono.md) | 407 | `result-track:2d2fcece4a0dc5f4a48e8e29f286e8572b0ecca4c7ab5d02a13de2d0bbc81a68` |
| 76 | `theorem` | [StrictMono.iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-iterate.md) | 410 | `result-track:151a1922cfb917a4b0df7bfc8d445403c1353559cf6bb785b4144fa1805d3462` |
| 77 | `theorem` | [StrictMono.comp_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-comp-strictmonoon.md) | 413 | `result-track:3408d28fd13c9f3e55bf6af6aeab7d932f9974e36684f57d10b02d42e22e45fa` |
| 78 | `theorem` | [StrictMono.comp_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-comp-strictantion.md) | 417 | `result-track:27ecf66b63c07e7db86e63f68332c3be0db4bf9aa80b45edad6034db69684e5c` |
| 79 | `theorem` | [StrictAnti.comp_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-comp-strictantion.md) | 421 | `result-track:ff6e64dffa8b147559b6fbdc695c5d4a393b0415d32ccb87a6093b301c1f8372` |
| 80 | `theorem` | [StrictAnti.comp_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-comp-strictmonoon.md) | 425 | `result-track:609418b10e4a8a43b2ec57a641b9ba5a79b7ab2fc49afbbf145b7633f1bd526a` |
| 81 | `lemma` | [MonotoneOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-comp.md) | 429 | `result-track:9c54bb47f8e2a826b713f73cf6c0feb15e2f9cf429125d9ca88e4223ce14c574` |
| 82 | `lemma` | [MonotoneOn.comp_AntitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-comp-antitoneon.md) | 432 | `result-track:cc6c71a6980665e60fdf51b603f0b4a4ce4c8ed12a7718e33681bf11e20bf460` |
| 83 | `lemma` | [AntitoneOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon-comp.md) | 436 | `result-track:f7ddb5085b01b13a04d79039ab70841a58a6db9c832a8b92d28b67aa668305b7` |
| 84 | `lemma` | [AntitoneOn.comp_MonotoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon-comp-monotoneon.md) | 439 | `result-track:4b46d1a219b32b0ec51d28734ced3cd932ab7c4c21987df1ff77b5847c7475b6` |
| 85 | `lemma` | [StrictMonoOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmonoon-comp.md) | 443 | `result-track:9c37312cd74ed6f0edd792030eeb8955597c670893372eb23ca1177bb0033133` |
| 86 | `lemma` | [StrictMonoOn.comp_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmonoon-comp-strictantion.md) | 446 | `result-track:3a0cda41b5095f2fddd1f1ecf86cfe2dbaa2d161904f411b492f3ee7a51d1bf1` |
| 87 | `lemma` | [StrictAntiOn.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictantion-comp.md) | 450 | `result-track:4e3b7ea21d312c686c9dd5b06bc936f0f7b95ad8ea715bb605be68e0e84a3dd8` |
| 88 | `lemma` | [StrictAntiOn.comp_strictMonoOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictantion-comp-strictmonoon.md) | 453 | `result-track:37b8c3306c8ec0f7b2f8b91bc8d2d53aa7c24a23427d4413633a82188cef6a1c` |
| 89 | `theorem` | [Monotone.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-reflect-lt.md) | 471 | `result-track:8bce1a37c6800b59f8876ee7942000681fa5cde7c8639eb642665a1e0d4a742d` |
| 90 | `theorem` | [Antitone.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-reflect-lt.md) | 475 | `result-track:8268641f0e03ab392d45da0e7acbffa587421c1d5b543d644e4ac7c827683c51` |
| 91 | `theorem` | [MonotoneOn.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotoneon-reflect-lt.md) | 479 | `result-track:8f0b55e47b12b1b27dca3a0b251754f3e42a422ab621a0671fac13152729c0e9` |
| 92 | `theorem` | [AntitoneOn.reflect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitoneon-reflect-lt.md) | 484 | `result-track:a732b12c16471281ea386f7393da18f4bfb3dce81f923e3d9228da698129c8d6` |
| 93 | `theorem` | [Subtype.mono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/subtype-mono-coe.md) | 492 | `result-track:3e27d53c548660bc6f6eb4004de5114c53c24eec61711e91db3362549a615aaf` |
| 94 | `lemma` | [Set.mono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/set-mono-coe.md) | 495 | `result-track:65ecde1e44aa71fc54f037c5c6d4ed0cf025e1ac197dd4d523fb448e603643c1` |
| 95 | `theorem` | [Subtype.strictMono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/subtype-strictmono-coe.md) | 499 | `result-track:a6b65271d1d7f5cdd5ada89e696bc56d38e7adc9f64ff1882c493cba314d885e` |
| 96 | `theorem` | [Set.strictMono_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/set-strictmono-coe.md) | 503 | `result-track:c5d37b251465bdba86ed8f1ae30fa33adb7f0f08a5a1de38a2cc887127885b5a` |
| 97 | `theorem` | [monotone_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-fst.md) | 511 | `result-track:c331d7ecb98c9d115d9183c5a1caa5ea7a22258aeddaed5a545a17612c7e6cae` |
| 98 | `theorem` | [monotone_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-snd.md) | 513 | `result-track:065a52e0377e839ad8095ad1d2eaf6b9647b25325777a161aab95338072198d4` |
| 99 | `theorem` | [monotone_prodMk_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-prodmk-iff.md) | 515 | `result-track:1d8a344bdce88eeeec32c0e644cfde00378389f01a394b49ba490062b13e2c97` |
| 100 | `theorem` | [Monotone.prodMk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-prodmk.md) | 519 | `result-track:a76d0ce3c076702e43ff0564b4db30ba99b78f38482688ae918cc266df4624f3` |
| 101 | `theorem` | [Monotone.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-prodmap.md) | 523 | `result-track:3f41cdfe0ca093a7eaac377cac33fb4f983069ffa957a0cef10d360a43bc7343` |
| 102 | `theorem` | [Antitone.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-prodmap.md) | 526 | `result-track:3196367a7d5db6cb9a9cfe75956826af4c031964d3093a453e7b917a2eab918a` |
| 103 | `lemma` | [monotone_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-prod-iff.md) | 529 | `result-track:2ecaf6df4eef871434506bc13f30672d5b8eee6bdec7c65412b913d4df2d9178` |
| 104 | `lemma` | [antitone_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-prod-iff.md) | 535 | `result-track:c5e0bbc286fed60fd627e7f970a8feba12b0c4bc4e8457487f7e36298fb46cca` |
| 105 | `theorem` | [StrictMono.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictmono-prodmap.md) | 547 | `result-track:055beee17258fe9d044b862e3fddeaae659e607938f85457b5b6bf7a8cf26510` |
| 106 | `theorem` | [StrictAnti.prodMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/strictanti-prodmap.md) | 552 | `result-track:e874471cbe7b8b34d0af94e9a29b6f56e98d24052791cf6eedf41ae986a862a0` |
| 107 | `theorem` | [update_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/update-mono.md) | 566 | `result-track:87bd15f0cb849940999fc19f723d4fbd70f913a1fa798440241d5390db44a343` |
| 108 | `theorem` | [update_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/update-strictmono.md) | 568 | `result-track:aabeb50d3e640bd00876a9aaca90346651708e92becca9389c9dd70bf99ce26f` |
| 109 | `theorem` | [const_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/const-mono.md) | 570 | `result-track:d8ff3479e0641a6420bb284426c42d112c776a004c166a703556c131f66a6ecb` |
| 110 | `theorem` | [const_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/const-strictmono.md) | 572 | `result-track:e347d90b40f15d1c19bf573dbb74b4474768bd92e5a0d7b68b1140a004c1f88f` |
| 111 | `lemma` | [monotone_iff_apply₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/monotone-iff-apply.md) | 580 | `result-track:80d85f77a5d3644e2326b1dbba873937001216a32020cfea0b46c0e077d59822` |
| 112 | `lemma` | [antitone_iff_apply₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MonotoneDefsNamespacedPublic.lean/declarations/antitone-iff-apply.md) | 583 | `result-track:007e13c23f2bdb90525361bdab9c9a0cfa8855b1846dba0fbbcded593bffa4e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3b2cd03eb43be05b52b4d24c21c896fc43cc91418bd920f58dab2e6b77fa558 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante93c2c53341d11aa3c54ece4e28483af708f99b1889dbccf0fb2b561ed2d0a5b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante93c2c53341d11aa3c54ece4e28483af708f99b1889dbccf0fb2b561ed2d0a5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
