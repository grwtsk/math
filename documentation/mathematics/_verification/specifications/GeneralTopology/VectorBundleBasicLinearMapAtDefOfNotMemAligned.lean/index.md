# Verification target: Vector Bundle Basic Linear Map At Def Of Not Mem Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/index.md) · [Full source](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dccfa7168a9adea851592463256a7e13d96a346`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.BoundedLinearMaps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Pretrivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/pretrivialization-islinear.md) | 73 | `declaration-track:004b68c0c1e4a110c79872ad22ceff2194a9c3bfe56695f432eee26861460ee2` |
| 2 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linear.md) | 82 | `result-track:0fa8dc1ca23e6fa8450111ccd7030f273260f0548285b5900358ae77a04697d0` |
| 3 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm-source-edition-2.md) | 92 | `declaration-track:5ce8d6c3ba6ba27116598065562383fd5f36f8f924b08b172ef1e61f9418bbd7` |
| 4 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearequivat.md) | 104 | `declaration-track:6149d0b0171b9062d905d256dea385d784caf09892380e358687dcb5b9717878` |
| 5 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-source-edition-2.md) | 115 | `declaration-track:4eaee05b9ae7a380b5fb66bdf2baaf2e6893e17cd453e2c6044895698a227d44` |
| 6 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-linearmapat.md) | 121 | `result-track:377427331558e30be64f58420fa673253d9f289208f47e3a904b1ac4f661144a` |
| 7 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-linearmapat-of-mem-source-edition-2.md) | 127 | `result-track:f0173050da0cb40565804e7c8f98821812256822855bc212e09c405e334b82b8` |
| 8 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-apply-source-edition-2.md) | 132 | `result-track:9161b4d2415f4d6f636d1b6359390f96e3830813f6b779b5d75e786d2cd979d5` |
| 9 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-def-of-mem.md) | 137 | `result-track:13b359fb21f6694b0953e18816b73c7b9c981a629a25eeca75a01372a0f5ef44` |
| 10 | `theorem` | [linearMapAt_def_of_not_mem](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-def-of-not-mem.md) | 142 | `result-track:1a78f3a4e779225c39633d7129ee00ccc09eb5c46ee956708750c458f0929197` |
| 11 | `theorem` | [linearMapAt_eq_zero](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-eq-zero.md) | 147 | `result-track:0a62aafd7743b6e5cb1d276248f58151bdb743c473a38f75c19feabf4d6afff6` |
| 12 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm-linearmapat.md) | 152 | `result-track:5698dd378fa80bb268567fc5bdd2f58ebcb21f58f09c3cfa1a8e4c8ab868075c` |
| 13 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-symm.md) | 158 | `result-track:29893b5debeaac149b13fb47afa9e155eb94535b566a5ce348f8632160f52c1d` |
| 14 | `class` | [Trivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivialization-islinear.md) | 170 | `declaration-track:11cc74a0d00642c6bd2549061974645ce3c449f50c273c9a7f5070248fbd040d` |
| 15 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linear-source-edition-2.md) | 179 | `result-track:3deb4d1b0defeec7a6951fc497b2e1da5342dbe74c1e408c63fb6a1eae6e9880` |
| 16 | `instance` | [toPretrivialization.isLinear](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/topretrivialization-islinear.md) | 185 | `declaration-track:cc4b82f083297c6298fee4a99ba4b99ad7ace2d88fe4a96a3c34bf34a8f5d727` |
| 17 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearequivat-source-edition-2.md) | 194 | `declaration-track:b51f1b95675793bbbd7473d5322133c520bd7e10aa872928063f01c593ccb16b` |
| 18 | `theorem` | [linearEquivAt_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearequivat-apply.md) | 202 | `result-track:ef878567dfd7ce0a656c496e88bea52b514af9cd3e55d52edc19347d8084aea1` |
| 19 | `theorem` | [linearEquivAt_symm_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearequivat-symm-apply.md) | 208 | `result-track:bcfed8491ec4ec32033dabf654df91684e27e15a6aff8468b33e5bcc5c348b2f` |
| 20 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm.md) | 216 | `declaration-track:2053588fea464dcb5a6b69833d3232e0d6907abd20a88aef0d22f5fae62a64ca` |
| 21 | `theorem` | [coe_symmₗ](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-symm.md) | 222 | `result-track:9cc756260d412679254537bdef296f8d0842790b43466d6fa37a6fccbe51de07` |
| 22 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat.md) | 230 | `declaration-track:44e6385a421f5146479c1c970f478458643fe2e60c6ff95313d8b8b0cf1e26a9` |
| 23 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-linearmapat-source-edition-2.md) | 236 | `result-track:b88227178de486c716e543990a36f52813782e5f1dda5dbd7a3ce3d13120b016` |
| 24 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-linearmapat-of-mem.md) | 241 | `result-track:95fc9d87ffe0c6e00e9609ecd256bafbbd546521d74eeff37ef878d266ddcf72` |
| 25 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-apply.md) | 246 | `result-track:4626d2b4d3e1c79b75aae597a9811acfa4df7cdef15a80936feedab6e4b1d0c7` |
| 26 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-def-of-mem-source-edition-2.md) | 251 | `result-track:1857218e961a72d37153645dc358ee6afe263665306758237c64a70974c989e9` |
| 27 | `theorem` | [linearMapAt_def_of_not_mem](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-def-of-not-mem-source-edition-2.md) | 256 | `result-track:f64e5114f07f38c0d7eff58b41a3f8bf256d182d4100674b3d2451df72f0078e` |
| 28 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm-linearmapat-source-edition-2.md) | 261 | `result-track:a15dc31151509603842f73f23bea39f6f30717fe3f5d534a962f71a0bbb8334d` |
| 29 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linearmapat-symm-source-edition-2.md) | 266 | `result-track:51edcff22f5ae43627d997860fead1bc3eb1a2f5428a92ab7b9a25c0f5562a7e` |
| 30 | `def` | [coordChangeL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchangel.md) | 276 | `declaration-track:3e8f67973ccfefcbd2904f3d8b6e15c62bd5baeb1777e0c3e444b9dcff865bd8` |
| 31 | `theorem` | [coe_coordChangeL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-coordchangel.md) | 304 | `result-track:c957a651cc869f575c68926cde7d739893e124f6ad5737f68b941039aff651a6` |
| 32 | `theorem` | [coe_coordChangeL'](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-coordchangel-source-edition-2.md) | 311 | `result-track:e3e6ce573e764d2de604f3f4948f49ea82fefd2ad56f17fc5839a9fbd4151100` |
| 33 | `theorem` | [symm_coordChangeL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm-coordchangel.md) | 319 | `result-track:05f512c052b56eebee887c1c24d227ab2855384584fecaa3b47fce5519691816` |
| 34 | `theorem` | [coordChangeL_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchangel-apply-source-edition-2.md) | 327 | `result-track:7e385a45c33a18eba8dbbdb2831e63fa33fbf23273dfaf8077de9b4eb87e2757` |
| 35 | `theorem` | [mk_coordChangeL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mk-coordchangel.md) | 334 | `result-track:6ad8cefee5392fb559df0da655c729c9d7053c08e20b401909863440afdd891c` |
| 36 | `theorem` | [apply_symm_apply_eq_coordChangeL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/apply-symm-apply-eq-coordchangel.md) | 345 | `result-track:4beba1cc472d8afd987163e7cb824eb6e66e47c464acc8f50f3d3d5b39897bdc` |
| 37 | `theorem` | [coordChangeL_apply'](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchangel-apply.md) | 355 | `result-track:4a6650d6a64b623d4680b1e44f5f8b0ba06954299a988a467ce6af174ecee372` |
| 38 | `theorem` | [coordChangeL_symm_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchangel-symm-apply.md) | 362 | `result-track:c7d6f678754ab9c7027d11e5772d1c10edd3dab5f3e6bfbd5ecd8838762d7d8a` |
| 39 | `def` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/zerosection-source-edition-2.md) | 379 | `declaration-track:a59845d61ec6f947397619105f3f046a6678b501b827ef9d62f76d78e436a534` |
| 40 | `theorem` | [zeroSection_proj](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/zerosection-proj.md) | 383 | `result-track:7786e0b4d6c9211d01118baca16a24422ae42a103469f960578cbbdf211b2d6f` |
| 41 | `theorem` | [zeroSection_snd](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/zerosection-snd.md) | 388 | `result-track:3924e3df44c363dc883be36868ccf4cd6b2c7801a906cb0c92fd5e55635c7653` |
| 42 | `class` | [VectorBundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/vectorbundle.md) | 404 | `declaration-track:6dfea32da4335c8e9c7d4c4715b11edb3bff408ebdb381d31ec1ff3709d686d9` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/instance-source-edition-2.md) | 414 | `declaration-track:cae3489c27e3f43ff6b77280b097cc30e410eb2db80d99930a34d9ccf6bf9646` |
| 44 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuouson-coordchange.md) | 419 | `result-track:31793343c47d9317807b0038f6647040f167d8ef06b8ea414c07c2722adfe988` |
| 45 | `def` | [continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuouslinearmapat.md) | 431 | `declaration-track:b8c46a631610deb3fac2debf6fd678c8b455df10fa0234e274d0916f90228147` |
| 46 | `def` | [symmL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symml.md) | 444 | `declaration-track:646bbeda12a9d7f811ba2cdccf6b4d375a1e976b277a8cec7841f3bd4bbc501c` |
| 47 | `theorem` | [symmL_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symml-continuouslinearmapat.md) | 458 | `result-track:c952131ac681061ee6d3d670cd37c8aa6a37f4edc03817da29e895ee3e4f7120` |
| 48 | `theorem` | [continuousLinearMapAt_symmL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuouslinearmapat-symml.md) | 464 | `result-track:7e1a22154185da9d7d4c82f5162b29f278fbbac26e16911d6928db64d65715d9` |
| 49 | `def` | [continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuouslinearequivat.md) | 475 | `declaration-track:12e512248ba5374183d88704e66058d9e2eafefcee1f126cf2c642fbd9435828` |
| 50 | `theorem` | [coe_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-continuouslinearequivat-eq.md) | 487 | `result-track:e76296864cc2320a51b0df97be7f9f893e12ca3a1b232ad2ece8b90a5658f639` |
| 51 | `theorem` | [symm_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm-continuouslinearequivat-eq.md) | 493 | `result-track:1771b2ea6a59d0a459e6f35c23c50e908456638c3f9db6a847b48e21bfc65cde` |
| 52 | `theorem` | [continuousLinearEquivAt_apply'](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuouslinearequivat-apply.md) | 499 | `result-track:93114128dc9fe69e5669a7795f58907d846ae047eef04a0f1d50ed3dd6395c0f` |
| 53 | `theorem` | [apply_eq_prod_continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/apply-eq-prod-continuouslinearequivat.md) | 506 | `result-track:eb165b2413291a7a490359911a2ceb4e2aa41b0fa7cf7530a3a18652e103116a` |
| 54 | `theorem` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/zerosection.md) | 515 | `result-track:99f6b690919ff1b54638e3cc4a052be997678cf4bda440845f81a7c00e35c606` |
| 55 | `theorem` | [symm_apply_eq_mk_continuousLinearEquivAt_symm](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/symm-apply-eq-mk-continuouslinearequivat-symm.md) | 522 | `result-track:34c02d7102b5b8e0a344ead1579e9faf3f0163df5a67d3237355259689ca1853` |
| 56 | `theorem` | [comp_continuousLinearEquivAt_eq_coord_change](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/comp-continuouslinearequivat-eq-coord-change.md) | 534 | `result-track:68ba4b6aefaa2b637375d41fe3ee92f7ce10e54d761018debccbbd7d6bda5a6e` |
| 57 | `structure` | [VectorBundleCore](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/vectorbundlecore.md) | 552 | `declaration-track:143d589c1d9932e2b5a3bc5497033b7641c8ec2e2ce60342d68bf1133e88bb0a` |
| 58 | `def` | [trivialVectorBundleCore](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivialvectorbundlecore.md) | 566 | `declaration-track:4daeb120bf008622dd73b1c95cd846a8d38a6179df81aeaa06208be26fa43e61` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/instance.md) | 577 | `declaration-track:7b01ecfc0bd58141fbe267f87a819bde96f3451890b71ffb94e4f3de01ecaaeb` |
| 60 | `def` | [toFiberBundleCore](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/tofiberbundlecore.md) | 587 | `declaration-track:a7caee44cf9fa7d7facf534bde71a0be4438595f708bbdccc1930f611e898bf0` |
| 61 | `theorem` | [coordChange_linear_comp](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchange-linear-comp.md) | 600 | `result-track:c93c7c4bee34fc0fb8f6db111edac2f7d303e3424c9fadd7875abcd9e257d0bc` |
| 62 | `def` | [Index](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/index.md) | 610 | `declaration-track:4159ce7d76f8351a081cf6eda24f4e400fc6c7152b44f4b072889bca25285bf8` |
| 63 | `def` | [Base](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/base.md) | 615 | `declaration-track:ba7e2cf99ac80dced141f990ce050bb1e47d434771b061b6061c24b258926f93` |
| 64 | `def` | [Fiber](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/fiber.md) | 621 | `declaration-track:26200cfd7bd8994cb3ed8819a98d531107ffe0b22b21c7203c2548fab0a5797c` |
| 65 | `instance` | [topologicalSpaceFiber](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/topologicalspacefiber.md) | 625 | `declaration-track:a8fceb361ef4dffd09387381e8893f66d8ae66646ece076110c8c78b2f5ca2ac` |
| 66 | `instance` | [addCommGroupFiber](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/addcommgroupfiber.md) | 630 | `declaration-track:551e0de41c52127f0f9ca68ee9537822304a40110901dd0e5e708944f456874e` |
| 67 | `instance` | [moduleFiber](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/modulefiber.md) | 634 | `declaration-track:ccfd3184b2db720047da6a2c9137665e3463af23da2a7ba07c8fc83f8bb37a53` |
| 68 | `def` | [proj](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/proj.md) | 640 | `declaration-track:6f2825910aec1059095e3d823ae51f385649c42f89d9152077fa65d0efd9b633` |
| 69 | `def` | [TotalSpace](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/totalspace.md) | 647 | `declaration-track:8113b94259e9e8e80974ae88775a147ea28fdc0ac584162f4619941be4e1ff54` |
| 70 | `def` | [trivChange](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivchange.md) | 652 | `declaration-track:69ffca2fb153d2a18fd4a33b79d42c9fabcfa22bc4c55641a84e60dbc5a7a858` |
| 71 | `theorem` | [mem_trivChange_source](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mem-trivchange-source.md) | 657 | `result-track:cea25b2b5e15c689910f78ac8f231bb077eed5e1f0d158822766865ea9ac3420` |
| 72 | `instance` | [toTopologicalSpace](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/totopologicalspace.md) | 664 | `declaration-track:7f449e0d400e34f1d0f9972c5691ed5126919372e82e79c1c8f4abf79851d690` |
| 73 | `theorem` | [coe_coordChange](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coe-coordchange.md) | 671 | `result-track:144f703634e2cc8d248ef04058c94edbf0cb396704cb97957196c15910c96724` |
| 74 | `def` | [localTriv](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv.md) | 677 | `declaration-track:507e272844b6fcabfac0e83ba1613c07a8df38f03e99c9410351be486b8a200b` |
| 75 | `theorem` | [localTriv_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-apply.md) | 683 | `result-track:b4df3cc4c97fcfbfe3c7e8595d6ee0b20168c309bcdf5a986698698fbf1974ee` |
| 76 | `instance` | [localTriv.isLinear](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-islinear.md) | 689 | `declaration-track:c3a20bc0a5eeeb3fadb6767f06bb78aab16d18bf00670297b8fcfedf336da104` |
| 77 | `theorem` | [mem_localTriv_source](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mem-localtriv-source.md) | 698 | `result-track:a0dbfda1fdf00b4d0e7afaf53b395bf048709ab29d4f0066c205e14c0e92b4ed` |
| 78 | `theorem` | [baseSet_at](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/baseset-at.md) | 703 | `result-track:257522b44df90aba827c8f8d38d50e51fbb855629a024b3bd30a4bef4c20494f` |
| 79 | `theorem` | [mem_localTriv_target](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mem-localtriv-target.md) | 708 | `result-track:1e2a992df4e21a1a3ac9b4b08226c0052e23cdd0cf5df0c1d7c21214c9236147` |
| 80 | `theorem` | [localTriv_symm_fst](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-symm-fst.md) | 714 | `result-track:9eb5fa2c1c54e7f684ae79a97f6bedacd0123139f304e6c76571b7b8c4806182` |
| 81 | `theorem` | [localTriv_symm_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-symm-apply.md) | 720 | `result-track:ba042a7b7443f2f9730306d8bc46ee90d833da23ae3a9b86766789723b60ffe8` |
| 82 | `theorem` | [localTriv_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-coordchange-eq.md) | 726 | `result-track:15eeb240ae39adc0afac203b6dbd3fe2546e9dee67e9f7ce38903667ee38cd86` |
| 83 | `def` | [localTrivAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtrivat.md) | 734 | `declaration-track:b5aacef4d09edbcbf5e9b3302dcc908f73df54c091406166a06c4106607341dc` |
| 84 | `theorem` | [localTrivAt_def](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtrivat-def.md) | 739 | `result-track:5fac1319b85e58cc874122c9d8850c5aec3580dbf12f0972f0c250946e1e8ddc` |
| 85 | `theorem` | [mem_source_at](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mem-source-at.md) | 744 | `result-track:a038b2af2b97d6ac4064b7b2baeaa6f15822fb66474579937f54a3cd296b084e` |
| 86 | `theorem` | [localTrivAt_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtrivat-apply.md) | 750 | `result-track:5465266487964ed9eb359af4022c238df6906f2dc2efb7a46d65f6b778f035c6` |
| 87 | `theorem` | [localTrivAt_apply_mk](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtrivat-apply-mk.md) | 755 | `result-track:9978d0da0eed3ad5b490f895e519efc6fcd773b98e0d2ea71080d2404a8fb5cb` |
| 88 | `theorem` | [mem_localTrivAt_baseSet](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mem-localtrivat-baseset.md) | 760 | `result-track:f4e56b4e2a4e136b8aea49dcdf008109808f41bd77251cbde6e3d29a5bce4718` |
| 89 | `instance` | [fiberBundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/fiberbundle.md) | 764 | `declaration-track:5baf38eef961cd8e9d34267d08216528bd47bed2e703878c866aaa745cbc7669` |
| 90 | `instance` | [vectorBundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/vectorbundle-source-edition-2.md) | 768 | `declaration-track:b68da313509bb224fc5f218500c5de4f0925427aeea829aa570574d79d4e0677` |
| 91 | `theorem` | [continuous_proj](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuous-proj.md) | 781 | `result-track:796c3991a18b8fcfb625bd6568f5d7382bf37b3a3587ac7281b71af2f8183f8d` |
| 92 | `theorem` | [isOpenMap_proj](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/isopenmap-proj.md) | 786 | `result-track:fb0223f9a33e8606cf6216abb7c1ed7bcbe25cc62c34610f231ff0aad96b5762` |
| 93 | `theorem` | [localTriv_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-continuouslinearmapat.md) | 793 | `result-track:5e93137b35a948812306729034e551755a4dac67ecf08f14fa40687dbc0bb925` |
| 94 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivializationat-continuouslinearmapat.md) | 801 | `result-track:d6a094641e743cd3dbf5f7920a7c17b596c16baa3c5360419517d5dbd1e05e62` |
| 95 | `theorem` | [localTriv_symmL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/localtriv-symml.md) | 809 | `result-track:ada8155052123c039be92f473bea14dbb691262c78577b29f7db378fc8ed1799` |
| 96 | `theorem` | [trivializationAt_symmL](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivializationat-symml.md) | 818 | `result-track:5a19250bed4d1ec8b77974e0b8682de837ea71273175147b131bc2af99f03bde` |
| 97 | `theorem` | [trivializationAt_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivializationat-coordchange-eq.md) | 825 | `result-track:f95899b057dfda05b64f594c9eee67e5822cb10d2bb21b418736254e9a4ff6f2` |
| 98 | `structure` | [VectorPrebundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/vectorprebundle.md) | 859 | `declaration-track:e662b13291ca4b6c2ad4755200c0891f6f46804a05abc4fe72252d337a6fe4f0` |
| 99 | `def` | [coordChange](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchange.md) | 877 | `declaration-track:e34012b5f85e04ea866a603abf3bca18397c695d5d6f6f700b043390aeef49d8` |
| 100 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuouson-coordchange-source-edition-2.md) | 882 | `result-track:c070e580e48e85ac924b0d29f0b83ccb08d75b4563daff4133da263cd1b874dc` |
| 101 | `theorem` | [coordChange_apply](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/coordchange-apply.md) | 888 | `result-track:f2340a77e8761eb2bb41326e42ad71a6608f68dd630552541959c8a03565f978` |
| 102 | `theorem` | [mk_coordChange](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mk-coordchange.md) | 895 | `result-track:e7f7d70274d5c2024bcc790ca9f282e7c003c6fddf699d6b137b031d889e50df` |
| 103 | `def` | [toFiberPrebundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/tofiberprebundle.md) | 907 | `declaration-track:bdfdb399fe945760827ca4bedfe2b3f780e392135412e8f1c6898fed1e9f253b` |
| 104 | `def` | [totalSpaceTopology](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/totalspacetopology.md) | 922 | `declaration-track:e9174304a390ea492daf70b1f18adadca0bbf39e44bd19eaa14b24b1205b100b` |
| 105 | `def` | [trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/trivializationofmempretrivializationatlas.md) | 928 | `declaration-track:421251b7c401784a21ab1fad6b503de4df939954d68602dabeb4f709028616b2` |
| 106 | `theorem` | [linear_trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/linear-trivializationofmempretrivializationatlas.md) | 934 | `result-track:89952f6d54927d3dde8317cfb4b9a70e243e67b5713a39899cb11083677f3d39` |
| 107 | `theorem` | [mem_trivialization_at_source](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/mem-trivialization-at-source.md) | 944 | `result-track:aaed8baf67b6dd323d14c074c7ab110f4340a7b15f67ee029e40fb0bbb284a1c` |
| 108 | `theorem` | [totalSpaceMk_preimage_source](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/totalspacemk-preimage-source.md) | 950 | `result-track:5f2328392f705829ee287d35869ad676428f9620f628d54b4866c948dd7e771f` |
| 109 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/continuous-totalspacemk.md) | 956 | `result-track:f47df227c14216889de99c1b856d56e49a534b4470c920149fd1f21a50b1f94a` |
| 110 | `def` | [toFiberBundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/tofiberbundle.md) | 963 | `declaration-track:23b977b71282eeeff84d41173d2aab1557e8cdcc1c834813d2a72257638bedd4` |
| 111 | `theorem` | [toVectorBundle](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/tovectorbundle.md) | 973 | `result-track:aa0ae8553b436442aac8212c872a36f26ce5ad3fcb5259822e9e9ef5fa949eab` |
| 112 | `def` | [inCoordinates](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/incoordinates.md) | 1028 | `declaration-track:a89d981f93a808744182d7a8f1624964e1589ccc331971e232c0be10e8fca270` |
| 113 | `theorem` | [inCoordinates_eq](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/incoordinates-eq.md) | 1036 | `result-track:7bc5c2239bc1d73c0fc56a7636f407a17031eed74fa771473e4ea5103853dda4` |
| 114 | `theorem` | [_root_.VectorBundleCore.inCoordinates_eq](../../../../GeneralTopology/VectorBundleBasicLinearMapAtDefOfNotMemAligned.lean/declarations/root-vectorbundlecore-incoordinates-eq.md) | 1048 | `result-track:5866ffec3cd91715f5de4667117dba72c678c3390047e571a5a3126b0b871daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7188415ccc0fc32b92b12c7892b2235c9c946b1f0f554578c7202b6585e2fd05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
