# Verification target: Affine Space Continuous Affine Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "075aebb978e9bd0765645a4b4f0bfe140df3225c",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `075aebb978e9bd0765645a4b4f0bfe140df3225c`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousAffineMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/continuousaffineequiv.md) | 39 | `declaration-track:9c44dfc2a4333af247d3b3aedec60764449ece8a9ced4b56c179d5c9d47c42d3` |
| 2 | `def` | [toHomeomorph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/tohomeomorph.md) | 61 | `declaration-track:7895a1ca8e0fb1ed30c938dc342881388c94af258684b0e3126605f2f69e406d` |
| 3 | `theorem` | [toAffineEquiv_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/toaffineequiv-injective.md) | 64 | `result-track:76ed580af6f9c674cf46e4aeb347a83e51b4c326368c7fb302eaf4cbdf14bb5e` |
| 4 | `instance` | [instEquivLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/instequivlike.md) | 68 | `declaration-track:c3e877e294191a35c9927a76251e6f2c68c7c9a00d2aac2a7d205c24ec58e5f1` |
| 5 | `instance` | [coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe.md) | 78 | `declaration-track:e7205a8fc44ef93b3e699fd58736bd6b9fa3f6b99b9d437d1db37a064e527318` |
| 6 | `theorem` | [coe_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe-injective.md) | 80 | `result-track:f81c566812a981d7171fe048bee97538b36e28f7d05823af3af457e08508b331` |
| 7 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/instfunlike.md) | 85 | `declaration-track:72f2b60427f7e22127079d55747f2beb943fcd022f64765eaf18cfc5f6b39cca` |
| 8 | `theorem` | [coe_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe-coe.md) | 90 | `result-track:45f6f2b478868ad5c912fc61995b7fa0ddec9b8333af1c8852dd41a011254639` |
| 9 | `theorem` | [coe_toEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe-toequiv.md) | 94 | `result-track:8dba9b337d803381eb0523b6612621974cf240b6bb9c06c7220ba8ba19b4423c` |
| 10 | `def` | [Simps.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/simps-apply.md) | 100 | `declaration-track:13a2a929a33b4cf118c9baa60794bfc36f45ebc520d042e388533fb12a4ed0a5` |
| 11 | `def` | [Simps.symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/simps-symm-apply.md) | 104 | `declaration-track:7e1067212714acc26367622d5278044b035de7b595ef151c7b912ff81a1da43b` |
| 12 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/ext.md) | 110 | `result-track:916f849111a0d211f8b2210e5a6d21e647fa34f71bbf7a1769c30c4b9183723e` |
| 13 | `theorem` | [continuous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/continuous.md) | 114 | `result-track:fb77c7d3eaad42a70a01d5e99b61d68599ca9d845c1d8c56ff36c4a9abc82a17` |
| 14 | `def` | [toContinuousAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/tocontinuousaffinemap.md) | 118 | `declaration-track:ea44c7c8454b8792dd0f2d841a479dd92722cf166b826399de943d3fafcb6479` |
| 15 | `lemma` | [coe_toContinuousAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe-tocontinuousaffinemap.md) | 123 | `result-track:c35701fe5de108a698f0de892e71b875b2e6f468b81270a52f02767db00cd49a` |
| 16 | `lemma` | [toContinuousAffineMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/tocontinuousaffinemap-injective.md) | 126 | `result-track:3af05ecc96a2de91de4ca253b09dccb1f6d8a790f0a4763e9ebe7d04538e12db` |
| 17 | `lemma` | [toContinuousAffineMap_toAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/tocontinuousaffinemap-toaffinemap.md) | 132 | `result-track:aff918270ab77fb646741c6ce842f140da39cc4cce47f44b5890722e73324db2` |
| 18 | `lemma` | [toContinuousAffineMap_toContinuousMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/tocontinuousaffinemap-tocontinuousmap.md) | 136 | `result-track:711f011c8d4b99c0135b445c152dfb025b8067b2930cd1ea972193a5a178a83d` |
| 19 | `def` | [refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/refl.md) | 146 | `declaration-track:2cb085eb9f338094a222b0441d5ffde79f54bf6b2caa78e061ba9897d4f77193` |
| 20 | `theorem` | [coe_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe-refl.md) | 152 | `result-track:975507a2065d919433e5dcfa874266c3de2151d400d1f308a45739bd0bb6618a` |
| 21 | `theorem` | [refl_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/refl-apply.md) | 156 | `result-track:2ab088b48b7549b05b04cddff719293a5ee427b8c8748a9e17c2b107546774dc` |
| 22 | `theorem` | [toAffineEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/toaffineequiv-refl.md) | 160 | `result-track:caa32dd83756b64af8533a4342079b8347074c5222c3fd4406919e84e801b983` |
| 23 | `theorem` | [toEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/toequiv-refl.md) | 164 | `result-track:5133adf13d41dfe49f1acc87a546be04c75b0d6c71dde271fc7cdb7d39b15e65` |
| 24 | `def` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm.md) | 169 | `declaration-track:905b4e2e5f6244dfdeab42d6acb3dcbe54419a103a8a4b3795dee9a23872cad0` |
| 25 | `theorem` | [symm_toAffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-toaffineequiv.md) | 175 | `result-track:74bad0022216c06b3361345cbebb0917810023953e993755510377be59fb242e` |
| 26 | `theorem` | [symm_toEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-toequiv.md) | 179 | `result-track:dd97ff2c62340591ec9cd7f1df9f08286cf74c96555c49fd3149538420b5683e` |
| 27 | `theorem` | [apply_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/apply-symm-apply.md) | 182 | `result-track:8132cbe97bf111f1ed10dcd90413356fe4746a307efb80637db8a1610cb98900` |
| 28 | `theorem` | [symm_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-apply-apply.md) | 186 | `result-track:e58799d520b10edd95263c73343e57696880a1359cdcd95f95fefbe2f139aaf7` |
| 29 | `theorem` | [apply_eq_iff_eq_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/apply-eq-iff-eq-symm-apply.md) | 189 | `result-track:655cf56ab359a051c6789edf14031a9778a36bab3b8cd533e0dd699fae16b0f5` |
| 30 | `theorem` | [apply_eq_iff_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/apply-eq-iff-eq.md) | 192 | `result-track:bb339bd2a74d6cedfd32e5cd0a55abdbf3beb56d235494f07393361712fd26f4` |
| 31 | `theorem` | [symm_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-symm.md) | 196 | `result-track:ad27a3756b99cdb1e271c7a0cc7c70c0d0218847aea0aaddb0b8de095760d5d4` |
| 32 | `theorem` | [symm_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-bijective.md) | 198 | `result-track:de339a0aa185c7755af9f16e9508618c98986e0bb287baa3b19f0aabaec6f87f` |
| 33 | `theorem` | [symm_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-symm-apply.md) | 201 | `result-track:4f467c6d747d60f968c89fbb6b5aced58697e8ee9dde7f5db1439b3980d596d3` |
| 34 | `theorem` | [symm_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-apply-eq.md) | 204 | `result-track:f55280288b962df78bfe75d59d440e01fc4526823ec3af4af5b270e1c36fe49b` |
| 35 | `theorem` | [eq_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/eq-symm-apply.md) | 207 | `result-track:62b035ada1499fbf9c0c7716fef2dd155453965c839d75d4740ebd332e8324f5` |
| 36 | `theorem` | [image_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/image-symm.md) | 211 | `result-track:5882153a2f40c33ee77411bba7aca01fd6c2f81bef33fc0c8d0ff84613ddc058` |
| 37 | `theorem` | [preimage_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/preimage-symm.md) | 215 | `result-track:3150af55682da187b34dfe8196ac60b0782457d9a3b7f5ce1b3094718b6534b9` |
| 38 | `theorem` | [bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/bijective.md) | 218 | `result-track:df6b4a26af6fb2ce0b6f8c495e008f2a104cf0929fcb80be28faef40c1873fcf` |
| 39 | `theorem` | [surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/surjective.md) | 221 | `result-track:cf2437a763a40a4e3e1e2fc9fe9bec801e1839f7beb96db492df65af51502048` |
| 40 | `theorem` | [injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/injective.md) | 224 | `result-track:95eb5868f3f8902570bd746361e9ce6b61dbfc18b29fbd83750d545ee05d4a05` |
| 41 | `theorem` | [image_eq_preimage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/image-eq-preimage.md) | 227 | `result-track:b3b45831c4fb3da7f4589220d822f5824bbc64a4b9e4dfd18c862501521158e1` |
| 42 | `theorem` | [image_symm_eq_preimage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/image-symm-eq-preimage.md) | 230 | `result-track:e244bc68c4eaaa2d8bf310826c7edff2e2b4f4edc6d4e49aba37962e364f37de` |
| 43 | `theorem` | [image_preimage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/image-preimage.md) | 235 | `result-track:432d5af70577a41a487140ef352b2a3d6be78f1f5a26cdef8d6167c0e77ec568` |
| 44 | `theorem` | [preimage_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/preimage-image.md) | 239 | `result-track:6507a7948bc992bb68ff5c4a39320546fdc91497c8085932d76962bc1e394a67` |
| 45 | `theorem` | [symm_image_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-image-image.md) | 242 | `result-track:aef35230e555e68b72ab3ade00526efe385babbcc004d20b93c8475cac382a0c` |
| 46 | `theorem` | [image_symm_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/image-symm-image.md) | 245 | `result-track:946371bbb355e89b3354737e7d497f0b66f5d398fec8a16424c5be0e82627039` |
| 47 | `theorem` | [refl_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/refl-symm.md) | 249 | `result-track:87f3a419e1b8371839e5410d5023c928dca1682973c3e106dca988a7e5b559eb` |
| 48 | `theorem` | [symm_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-refl.md) | 253 | `result-track:34ff1b5b604b4c017aee467c57bf7eeb1991f3855d9665a79cfdb1d424b5167c` |
| 49 | `def` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/trans.md) | 258 | `declaration-track:349b35b8f8f277e032f25ac91dd3c8da9138fa868ce28546c6c95727fa841cf4` |
| 50 | `theorem` | [coe_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/coe-trans.md) | 264 | `result-track:00edb05e02cfa1bd33465e20784a47304cd077dc5ebc7c05e7bc88201484f866` |
| 51 | `theorem` | [trans_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/trans-apply.md) | 268 | `result-track:8c2ff46f0b0be793f33f2371c7bf28b2ec3792807800f7234b26eacc971289a6` |
| 52 | `theorem` | [trans_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/trans-assoc.md) | 271 | `result-track:db45da9b6ab8019e3faf85f0f956b3700d60538b4c7d429f07da88cd45c0bfca` |
| 53 | `theorem` | [trans_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/trans-refl.md) | 276 | `result-track:60857347a5c42e53433de1d419cb5a9445827df49806065ea354839b90d5e2cc` |
| 54 | `theorem` | [refl_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/refl-trans.md) | 280 | `result-track:e4c44e7cb599d2a4068cc4967ccf37a0dca59ffcdf7946c1db758d9215d5abcd` |
| 55 | `theorem` | [self_trans_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/self-trans-symm.md) | 284 | `result-track:8838b586d623477ff1a5e0d99bddba3e87f34abe0e2e16627ff40191f5e42db6` |
| 56 | `theorem` | [symm_trans_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/symm-trans-self.md) | 288 | `result-track:34b8bdd4637972f53e07443f21d33460928ecaec13a24d9f1a171b9acb08136b` |
| 57 | `lemma` | [trans_toContinuousAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/trans-tocontinuousaffinemap.md) | 291 | `result-track:b13f9aa83b54fc70b20c2b25bd38534fa61f0a189ada7ca9a069b610494598af` |
| 58 | `def` | [_root_.ContinuousLinearEquiv.toContinuousAffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/root-continuouslinearequiv-tocontinuousaffineequiv.md) | 304 | `declaration-track:4bc628af91ca939c2cd4fbf710e370a93e35347c1d79361ba65aef52370f3ed7` |
| 59 | `theorem` | [_root_.ContinuousLinearEquiv.coe_toContinuousAffineEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/root-continuouslinearequiv-coe-tocontinuousaffineequiv.md) | 310 | `result-track:227db0687af6d7735bdaf80677e47303d1f6ee13a0aac6eb993a13ac468ba51d` |
| 60 | `lemma` | [_root_.ContinuousLinearEquiv.toContinuousAffineEquiv_toContinuousAffineMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/root-continuouslinearequiv-tocontinuousaffineequiv-tocontinuousaffinemap.md) | 314 | `result-track:c560334893d1a47493769e8161ba2a11474c756e1ee768a29ce8ee5aa7ecd2dd` |
| 61 | `def` | [constVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/constvadd.md) | 322 | `declaration-track:1c17daead4f5196487ef2ecea3fd66cc70b0461f0728ff125842954635f26da7` |
| 62 | `lemma` | [constVAdd_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/declarations/constvadd-coe.md) | 327 | `result-track:a3dd710f4011e008f1138c50c80ad1615d507d85be15a8acc6365a7c79e52994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a317f2bac28aca42df5e51bb93b6bab29a949fee42f43ef4f345b1d659613a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
