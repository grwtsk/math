# Verification target: Linear Algebra Tensor Product Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb262b0736d668a5626b766bb7de35e5ac5fa361",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb262b0736d668a5626b766bb7de35e5ac5fa361`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftAddHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/liftaddhom.md) | 57 | `declaration-track:1adb7f56f1f95e4f6e1b5e90eaa8e7e47ef5263d6fbf218c2ad7d5b9e0e485aa` |
| 2 | `theorem` | [liftAddHom_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/liftaddhom-tmul.md) | 79 | `result-track:8577cb9212dd341eafce2b833388f7d01bb1b743c8ac728c11d0c81612d5058f` |
| 3 | `def` | [liftAux](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/liftaux.md) | 98 | `declaration-track:59a5ae924a420c616b3098196508bd42db3ed9df85aa4c92d9fb6232f054d550` |
| 4 | `theorem` | [liftAux_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/liftaux-tmul.md) | 102 | `result-track:33455196599c5fc7a95be4f83d9161d41a49d0c75cf6ac38dca13f18dfc98a09` |
| 5 | `theorem` | [liftAux.smulₛₗ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/liftaux-smul-source-edition-2.md) | 108 | `result-track:d44e0ddaae9ed9cf73431743a4bca3468d6e61c692f16d7db206418577ae1393` |
| 6 | `theorem` | [liftAux.smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/liftaux-smul.md) | 113 | `result-track:26f2fef92d117f61110024aef4e637ad90af3c19fc8aa90669529192e1ab2ebb` |
| 7 | `def` | [lift](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift.md) | 122 | `declaration-track:86ecfd7145f2c4dc689d977602993967e98676e0abbbd6f568140df687f76883` |
| 8 | `theorem` | [lift.tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-tmul-source-edition-2.md) | 126 | `result-track:fdb458d3bf8d75b0e8bb7b208096c9b5c8f02cb6b5b7c87f3b43124233363b9f` |
| 9 | `theorem` | [lift.tmul'](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-tmul.md) | 130 | `result-track:0db4eb579c73c8dad9c6f0326823ba8134ce2000e952f2835bc9c1fbe885202b` |
| 10 | `theorem` | [ext'](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext.md) | 133 | `result-track:9ee50f2bc67d23a50352ee7471838ec33f168dcd5e4abf2e60b96dc3df6a498e` |
| 11 | `theorem` | [lift.unique](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-unique.md) | 138 | `result-track:5b75eebbde4ff9367ca7c4d842da8fc6174fc463c95dd8b34a4e347aaa2abcb5` |
| 12 | `theorem` | [lift_mk](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-mk.md) | 141 | `result-track:0f61eebbe43c443d84428b1e3f8ecfdfc7c506fdc6ae35c6eefb95b71215766d` |
| 13 | `theorem` | [lift_compr₂ₛₗ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-compr-source-edition-2.md) | 144 | `result-track:d81c48fc890a82e1364076971832d4754c16f3c46a45833c1efc54c33a252018` |
| 14 | `theorem` | [lift_compr₂](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-compr.md) | 148 | `result-track:77f05c6b76ff603f22d365a2866543c1326dc1ffecfdfcd62f7f9133db434a89` |
| 15 | `theorem` | [lift_mk_compr₂ₛₗ](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-mk-compr.md) | 151 | `result-track:66981378e6742b4cce0ccbbc6d666e280f827d34b439a84a60a86533e05a23c7` |
| 16 | `theorem` | [lift_mk_compr₂](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-mk-compr-source-edition-2.md) | 154 | `result-track:9a909fd215648fe2287bb4417a972406febee7af273c36aa930d8ab6b39f2a74` |
| 17 | `theorem` | [ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext-source-edition-2.md) | 163 | `result-track:c2a571a1d5bc0c0695ac544eedda0cf65a5386ad2449bcd4eda498cd61ec559a` |
| 18 | `def` | [uncurry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/uncurry.md) | 173 | `declaration-track:9864a713bde31199a2b4dc7714f7ee053f7e3d93f415f317af4c22caf9ff27cb` |
| 19 | `theorem` | [uncurry_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/uncurry-apply.md) | 179 | `result-track:ae03f3ab12fa793b70239b4dfdea6689b35c15caf27ddb2c2c3b7f039699354f` |
| 20 | `def` | [lift.equiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-equiv.md) | 187 | `declaration-track:4820df926f95c5fdffe423be86ce4f3003877691055aa11560dc1e756150e471` |
| 21 | `theorem` | [lift.equiv_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-equiv-apply.md) | 192 | `result-track:d3b88e408289998b3a16029bdd0019c9d42330c0e9bb1b6e495e85848e06f8fb` |
| 22 | `theorem` | [lift.equiv_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-equiv-symm-apply.md) | 197 | `result-track:5f51d9d38b30bce1c85cebefee9d6f88fd9e48c04f38b3c0d114cb915085e4e1` |
| 23 | `def` | [lcurry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lcurry.md) | 203 | `declaration-track:613331f68ab2c5bcc0302b5cc6754dbbc27d74aaafdc7442ac427b2bc3604e46` |
| 24 | `theorem` | [lcurry_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lcurry-apply.md) | 209 | `result-track:3cb2bd33f8845c3f1ebb393d9b703cc4353bbf36f75acc5eb62ea942ce9d42eb` |
| 25 | `def` | [curry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/curry.md) | 215 | `declaration-track:85479ab71ea73086a09c2337d5aa7e75720f2a818db20f880fb2b282b3fb8cde` |
| 26 | `theorem` | [curry_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/curry-apply.md) | 219 | `result-track:584927e0ce0b84716204aa0d9b2e95180aaa6f4ba937bd2e7c7337501e529215` |
| 27 | `theorem` | [curry_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/curry-injective.md) | 222 | `result-track:bdb16bc0695224bdd0a832cadf23e93d43500296bd12ff2cb39fd7b122df0ccf` |
| 28 | `theorem` | [ext_threefold](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext-threefold.md) | 226 | `result-track:820d580b4ccbaf698e1c7474ceb6834b61b58a44082bfe9e83926bb8fb2bacc1` |
| 29 | `theorem` | [ext_threefold'](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext-threefold-source-edition-2.md) | 231 | `result-track:c1a1bfd74ad15eeec58e7054880ffd0cafb69ec31ce03b5a46abc3b3da7b1336` |
| 30 | `theorem` | [ext_fourfold](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext-fourfold-source-edition-2.md) | 237 | `result-track:2c28181fc295a0d81263141ef766d7c5d1ac96ae3299d4cf627282b86b66bc34` |
| 31 | `theorem` | [ext_fourfold'](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext-fourfold-source-edition-3.md) | 244 | `result-track:370d88fdca009d99b222f2808f8fcdf6a763a9cd4b0145da4385008844fa8587` |
| 32 | `theorem` | [ext_fourfold''](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/ext-fourfold.md) | 251 | `result-track:1a32f6dc486ddff3e3390ad3d4a72b388ef03cbfb2e6e57ea4aecd5becc42f02` |
| 33 | `def` | [comm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm.md) | 264 | `declaration-track:b31a2f2d62a7d231ad9ab5648cadfcdec6d6f73b12597f5221d94b4ba0878206` |
| 34 | `theorem` | [comm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-tmul.md) | 269 | `result-track:39a92cec49dc8ad35d82050f071ea95539d4583a1f468404c2dd6e301e1a7a0d` |
| 35 | `lemma` | [comm_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-symm.md) | 273 | `result-track:6c4d98094e21e5b191d920dd44493f62724ee457f30838f7089b01721aec1e7d` |
| 36 | `theorem` | [comm_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-symm-tmul.md) | 275 | `result-track:f78249496fe32508ccd23a8ada18bf45280150a42961ab9498328b12a907c593` |
| 37 | `lemma` | [lift_comp_comm_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/lift-comp-comm-eq.md) | 279 | `result-track:8acd3615bdc93ae556cf934486afdfb27261b4af984e6513b478ad33f0d9be61` |
| 38 | `lemma` | [comm_trans_comm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-trans-comm.md) | 284 | `result-track:e2553ea639871161ef94250d9a81331e96474574ccf3d460e78a2b9b340bb06f` |
| 39 | `lemma` | [comm_comp_comm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-comp-comm.md) | 288 | `result-track:9c5c171314d2a94129bf7aeb1f50ec36c946617a003001d19eba198019f344fb` |
| 40 | `lemma` | [comm_comp_comm_assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-comp-comm-assoc.md) | 293 | `result-track:626f00a8a6e84e703d87383f88e17e19cc2e5f514a66a6cc9c4e7eb2a2026e31` |
| 41 | `theorem` | [comm_comm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/comm-comm.md) | 297 | `result-track:51ad2d366e17c9157cade1896d9c4b4fac71e0589914fef8a20839a5a9e2eef3` |
| 42 | `def` | [mapOfCompatibleSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/mapofcompatiblesmul.md) | 315 | `declaration-track:741471010bb8b82ab39c8c120195f6c16bd0bf342ea964d612143b3fe13cc532` |
| 43 | `theorem` | [mapOfCompatibleSMul_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/mapofcompatiblesmul-tmul.md) | 328 | `result-track:173ad5e2c1417a0b425ee9ccdb4282f13dc4a98979e71af88e3deaf7c80381d6` |
| 44 | `theorem` | [mapOfCompatibleSMul_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/mapofcompatiblesmul-surjective.md) | 333 | `result-track:d85e7e8fdf069ee6e441faf2bf7bfd81cc3bb3f88f1826457b284afb56659ee2` |
| 45 | `def` | [equivOfCompatibleSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/equivofcompatiblesmul.md) | 342 | `declaration-track:7dae1ca4e7c43337e26d4a17f99df27048b00d38282875f7d558500aa7741944` |
| 46 | `def` | [Neg.aux](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/neg-aux.md) | 371 | `declaration-track:5b099fa770ca32d74237de5ae6d78be604d1326dcc70ce1bba76e878d766574f` |
| 47 | `instance` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/neg.md) | 374 | `declaration-track:0ee96cf3403442a90a122a7a3ebb99bf4b3a70c1af27d6efda626614a00bdd13` |
| 48 | `theorem` | [neg_add_cancel](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/neg-add-cancel.md) | 377 | `result-track:82ff44db1c15861c50795de2715ec5ffc2c687703ff545a240491752d303df4b` |
| 49 | `instance` | [addCommGroup](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/addcommgroup.md) | 389 | `declaration-track:24918ee37e6f00f587de3f6d889a789603abaa70b13465a24710b65093062871` |
| 50 | `theorem` | [neg_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/neg-tmul.md) | 399 | `result-track:fe60119cc5e798f4d5e8952796f4af9c2a565b27d7adea6c6fb2cfc2b428a33d` |
| 51 | `theorem` | [tmul_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/tmul-neg.md) | 402 | `result-track:f9aaddc6f734f68a7335925832e0d55bad96800943a2877d326b6536377482d8` |
| 52 | `theorem` | [tmul_sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/tmul-sub.md) | 405 | `result-track:7a5e69984ac3988d3f03479d8976819fd90c2f1daef9b9b32ae7b8bd417d85e6` |
| 53 | `theorem` | [sub_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/sub-tmul.md) | 408 | `result-track:16a4f2726f8a330914944c050e4bc7effeec7110f522575bd57d7815e7747512` |
| 54 | `instance` | [CompatibleSMul.int](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/compatiblesmul-int.md) | 419 | `declaration-track:918fe1695b78a2803e606f21d7187bdda0493db02a6c73051e599840169398b4` |
| 55 | `instance` | [CompatibleSMul.unit](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/declarations/compatiblesmul-unit.md) | 424 | `declaration-track:cd309d57a445419b5983ea24f131c87e856198ee216c6aa1a2d2be5a57178fc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d8e701a8214aea89ce3925001bee165c0ecf60ea6517e0885794bf6348edf69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
