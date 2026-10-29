# Verification target: Module Multilinear Curry Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee4c496966c7933f0c9ba0b6d2783f0133814fdf",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee4c496966c7933f0c9ba0b6d2783f0133814fdf`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean.json)

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
| 1 | `theorem` | [ContinuousLinearMap.norm_map_removeNth_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-norm-map-removenth-le.md) | 64 | `result-track:5ed6aaab7be7c34ebc237bb4e5c93fd969b254abd20e71c42a15b60c2387556e` |
| 2 | `theorem` | [ContinuousLinearMap.norm_map_tail_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-norm-map-tail-le.md) | 70 | `result-track:da2fc203b5d76981b22fcba11c37a86b12666f4ff89f0d4333530213cb60084a` |
| 3 | `theorem` | [ContinuousMultilinearMap.norm_map_init_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-norm-map-init-le.md) | 75 | `result-track:e9733b86c6dba717ec9cf312a8ae072661907ad3e4ceb4a7e85846454a66b009` |
| 4 | `theorem` | [ContinuousMultilinearMap.norm_map_insertNth_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-norm-map-insertnth-le.md) | 81 | `result-track:3eed67b18ef45ba312ba9a3e54c7f08260374cd1ea99f9272781b19fb037ca32` |
| 5 | `theorem` | [ContinuousMultilinearMap.norm_map_cons_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-norm-map-cons-le.md) | 86 | `result-track:670a932b32aa9c76f15cd34312dd96abc3036b916f785614b2327d121c4dfd0a` |
| 6 | `theorem` | [ContinuousMultilinearMap.norm_map_snoc_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-norm-map-snoc-le.md) | 90 | `result-track:5f723ba71c8f50bd30b9f15a37d1493c7390a07feb9a42b4ddd685891033dc2c` |
| 7 | `def` | [ContinuousLinearMap.uncurryLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-uncurryleft.md) | 101 | `declaration-track:357e37ab5b5f7d5c169edf4d8366d51d260c7e4296e15eb2dc6347bfdb9ea0f6` |
| 8 | `theorem` | [ContinuousLinearMap.uncurryLeft_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-uncurryleft-apply.md) | 108 | `result-track:1a7dac77d6882f09de34adf43d8fd8097f85fce9ebd22c50a0f0769ab899d81a` |
| 9 | `def` | [ContinuousMultilinearMap.curryLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curryleft.md) | 116 | `declaration-track:33c9a1a5c54981fe06df57bba1ef5e65773481e6b9467ec07cd544ba61d6d809` |
| 10 | `theorem` | [ContinuousMultilinearMap.curryLeft_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curryleft-apply.md) | 121 | `result-track:63fdf2fdbfcbe52a8db09c69a1600d3892416f2cbdc81324f12eb66c88e71612` |
| 11 | `theorem` | [ContinuousLinearMap.curry_uncurryLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-curry-uncurryleft.md) | 126 | `result-track:bfbdbee4e1fe870f44846b3703f92582f85e09b010371d2846eb930ae0ac9980` |
| 12 | `theorem` | [ContinuousMultilinearMap.uncurry_curryLeft](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurry-curryleft.md) | 134 | `result-track:35829e714b504acbadc72ed2a0ff93e6d16d307ebad02bce5ba6d6ad62a06c74` |
| 13 | `def` | [continuousMultilinearCurryLeftEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryleftequiv.md) | 149 | `declaration-track:e4679a2388ad9317a48c49a7050574a853933ce40d35fe363ec2f2e6fd8c84ab` |
| 14 | `theorem` | [continuousMultilinearCurryLeftEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryleftequiv-apply.md) | 167 | `result-track:8a3d3b74cb2e833d411954112396f93ff2255a5c64c772108d110e8109b4c83f` |
| 15 | `theorem` | [continuousMultilinearCurryLeftEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryleftequiv-symm-apply.md) | 173 | `result-track:91b218cb3f58e90f2b78f58dac558882777441cc0e69c4706261f784cf3ed52e` |
| 16 | `theorem` | [ContinuousMultilinearMap.curryLeft_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curryleft-norm.md) | 179 | `result-track:2414fb734fed9504419e2633542cada97759927d90de5f5e8dcca0e63867f570` |
| 17 | `theorem` | [ContinuousLinearMap.uncurryLeft_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-uncurryleft-norm.md) | 184 | `result-track:55fb82ef33d3f7d431083c4bcd42df1869c5de5494f45260f1033c3ca4bcbfae` |
| 18 | `def` | [ContinuousMultilinearMap.uncurryRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurryright.md) | 195 | `declaration-track:187fddf7c30b321281e80893af881eefd560e385a67914fac6a17198fb066de8` |
| 19 | `theorem` | [ContinuousMultilinearMap.uncurryRight_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurryright-apply.md) | 203 | `result-track:1523c1c371120d032a7ccb25ac620f81d114548a3957b0497273ad4c147a504d` |
| 20 | `def` | [ContinuousMultilinearMap.curryRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curryright.md) | 212 | `declaration-track:54d18edd806dd6bfec2577cd59f4ac694ffd46fbdae00b996729460214bdfd30` |
| 21 | `theorem` | [ContinuousMultilinearMap.curryRight_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curryright-apply.md) | 229 | `result-track:2419fbb61171f46cb386e4917d5b8a5f1a9fb2313f923fd1b1402e949e20ff79` |
| 22 | `theorem` | [ContinuousMultilinearMap.curry_uncurryRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curry-uncurryright.md) | 234 | `result-track:289e36aff86bc0cd3bd26c558c599d078bc4c1fa5b11c9b6b716f27273451cdb` |
| 23 | `theorem` | [ContinuousMultilinearMap.uncurry_curryRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurry-curryright.md) | 242 | `result-track:8d6e232b67886f97d16ab2b974bfb8161c60e69b3781fda2d074c978fa88af0f` |
| 24 | `def` | [continuousMultilinearCurryRightEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryrightequiv.md) | 260 | `declaration-track:58a5482d5842799ff4c9619f8952dd4f4029a25a43e650b3a4100cbc9d942391` |
| 25 | `def` | [continuousMultilinearCurryRightEquiv'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryrightequiv-source-edition-2.md) | 288 | `declaration-track:92846b5c1beeba19af1753d7fb335e407a89e05d7affd5ca458317491fdcff42` |
| 26 | `theorem` | [continuousMultilinearCurryRightEquiv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryrightequiv-apply-source-edition-2.md) | 294 | `result-track:f2ed2ffb288fb69d808d04f6bac8c6402410e6a0dd80e7bbda068d61e0deb2b5` |
| 27 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryrightequiv-symm-apply.md) | 300 | `result-track:082dcf7447191c0991eab32b1d843d689c79f1d7ee3933d07a73679ba468294c` |
| 28 | `theorem` | [continuousMultilinearCurryRightEquiv_apply'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryrightequiv-apply.md) | 307 | `result-track:c30838e56e1819333c98ceb1df3d3c492ce0137b3481c9b209aea0786bf87b0f` |
| 29 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryrightequiv-symm-apply-source-edition-2.md) | 313 | `result-track:881dea5a82c8603efbeeed2d711cb0644a9aa8fbed379953d76161dbfcdb7435` |
| 30 | `theorem` | [ContinuousMultilinearMap.curryRight_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curryright-norm.md) | 319 | `result-track:fcc6966dba094b3dc4495e73af3486ca6b2ba7a2f105084c3e8cbb84a3a44877` |
| 31 | `theorem` | [ContinuousMultilinearMap.uncurryRight_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurryright-norm.md) | 324 | `result-track:b2e76e5fa19506ca9ca672897a138538b2ddb723fa53689fd2ee0379b1845ca6` |
| 32 | `def` | [ContinuousLinearMap.uncurryMid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-uncurrymid.md) | 337 | `declaration-track:ef296510245165f4e189b27ca7fea477fb7681618f6ff32a03d7757c20ea598e` |
| 33 | `def` | [ContinuousMultilinearMap.curryMid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-currymid.md) | 346 | `declaration-track:986b07eeee37b24c19f8396a8fb05cabc256ddcde3254f9e87be48bb64f72d6d` |
| 34 | `theorem` | [ContinuousMultilinearMap.curryMid_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-currymid-apply.md) | 351 | `result-track:0568044fd8cfd6e951387c89338e2b41e0b2833f3854e4b9db2aab95187857bd` |
| 35 | `theorem` | [ContinuousLinearMap.curryMid_uncurryMid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-currymid-uncurrymid.md) | 357 | `result-track:f3dab1941b19fc98e77fdecb79a924c2f89c8ba25d201955df3b8dc009e92fe8` |
| 36 | `theorem` | [ContinuousMultilinearMap.uncurryMid_curryMid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurrymid-currymid.md) | 362 | `result-track:8185b14f61f487b566f8017d43e11d509a86a1a0312cd280edb5f41e383495b4` |
| 37 | `def` | [ContinuousMultilinearMap.curryMidEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-currymidequiv.md) | 371 | `declaration-track:111a73ef3abe75cf8a99d2f6df1336187eb9af795f47d3c1a617041795baf23d` |
| 38 | `theorem` | [ContinuousMultilinearMap.norm_curryMid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-norm-currymid.md) | 389 | `result-track:316bed01b617e9ba4af62bba2a915fd2cbfe8186f394de60b430ccce4228a666` |
| 39 | `theorem` | [ContinuousLinearMap.norm_uncurryMid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuouslinearmap-norm-uncurrymid.md) | 394 | `result-track:422df0e00241257626c1c136d7421822042f2f573f3aef1c19a758b31ada4616` |
| 40 | `def` | [ContinuousMultilinearMap.curry0](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curry0.md) | 412 | `declaration-track:b54acf73d2d4c27a2e57b0880ffc66bff56310e8e0b35f3738351c633ca89ed4` |
| 41 | `def` | [ContinuousMultilinearMap.uncurry0](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurry0.md) | 419 | `declaration-track:e3fb3369f28852ca6bcb86232996cca55bf31bb8c4211937089c66106ff3e821` |
| 42 | `theorem` | [ContinuousMultilinearMap.uncurry0_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurry0-apply.md) | 424 | `result-track:7b244e04377fca2d1b6b7ede1dd29d02858f818d90f8e470d5038f022c56b88a` |
| 43 | `theorem` | [ContinuousMultilinearMap.curry0_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curry0-apply.md) | 429 | `result-track:7994283f390488414dd6e847d3d967965650ef95d69f76081d3aa52df801b56b` |
| 44 | `theorem` | [ContinuousMultilinearMap.apply_zero_uncurry0](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-apply-zero-uncurry0.md) | 433 | `result-track:02fc03ae127bd441849073c32e3fa5d72a971535337f66e5591a3ea59e7e1401` |
| 45 | `theorem` | [ContinuousMultilinearMap.uncurry0_curry0](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurry0-curry0.md) | 438 | `result-track:6f2fd758400876105b7e3ea07a38e5c3b57f5862089fbb4e6b21e5e2c4992834` |
| 46 | `theorem` | [ContinuousMultilinearMap.curry0_uncurry0](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curry0-uncurry0.md) | 442 | `result-track:c6906bf2ffaa606c4c3b634d5cc7ee7eca592505ef435332fc239b57aa0ab04e` |
| 47 | `theorem` | [ContinuousMultilinearMap.uncurry0_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-uncurry0-norm.md) | 448 | `result-track:e17acbe8847e58d83c74ea57f103c999cd474554c65c5980b9960b358fca2555` |
| 48 | `theorem` | [ContinuousMultilinearMap.fin0_apply_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-fin0-apply-norm.md) | 453 | `result-track:998e679f521c98dfe6c65d2dafc2ccce138affea6771890e72c6d9b902c0f4fd` |
| 49 | `theorem` | [ContinuousMultilinearMap.fin0_apply_enorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-fin0-apply-enorm.md) | 463 | `result-track:0231bc7003f431fa53ffcc0f4a597ee56ee1fd2e1acc7fe9bdab80deedd62545` |
| 50 | `theorem` | [ContinuousMultilinearMap.curry0_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmap-curry0-norm.md) | 467 | `result-track:d9bddf3daf0d657fdf88a44545b798b802cb44e95f1a2ffdeb00b53f7de0ee7a` |
| 51 | `def` | [continuousMultilinearCurryFin0](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin0.md) | 476 | `declaration-track:5d18a77195512ada336e2083283c6b777312c12a4a249ad9d05a121f566556b5` |
| 52 | `theorem` | [continuousMultilinearCurryFin0_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin0-apply.md) | 488 | `result-track:50f24bd784ad7f050e6cf7f08c58d55f8af3921df8aed656383a199924a8d5a4` |
| 53 | `theorem` | [continuousMultilinearCurryFin0_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin0-symm-apply.md) | 493 | `result-track:59f4c4846c5c8162ca6ca41617b575f76b446ba6bbc9ef6dd72c2043d53672da` |
| 54 | `theorem` | [continuousMultilinearCurryFin0_symm_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin0-symm-apply-apply.md) | 497 | `result-track:a7dc6dcf281156bec4f0d2d7b93fe777306a3e8b0691f3da78cf2c08c340127b` |
| 55 | `def` | [continuousMultilinearCurryFin1](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin1.md) | 510 | `declaration-track:98c54c795255717c3535175adc8517922c8c9214b326d93cb58de4f9ee710f03` |
| 56 | `theorem` | [continuousMultilinearCurryFin1_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin1-apply.md) | 517 | `result-track:11d39702e50a671b7a86a08c98fbd8eb3a8e5711c0b82262b125a801a0f765a2` |
| 57 | `theorem` | [continuousMultilinearCurryFin1_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearcurryfin1-symm-apply.md) | 522 | `result-track:f306e2f26ea543ea3eb156254148f4e5f10ef1efbced1722963162d32a416fc8` |
| 58 | `theorem` | [norm_domDomCongr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/norm-domdomcongr.md) | 531 | `result-track:31e0797dfd2841a81cabe0c5440bf309da141bf8e1e119e37cfe7679a4f2d25e` |
| 59 | `def` | [domDomCongrₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/domdomcongr.md) | 539 | `declaration-track:1ccbe48b0fb9619e76e53b1572cc59830adda2624dd911003e74fce3bc7f74f5` |
| 60 | `def` | [currySum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/currysum.md) | 554 | `declaration-track:9413d63820c9dc25410aa292b9bca241b0fdf08e90199ad641f46fdf8ca957d9` |
| 61 | `theorem` | [currySum_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/currysum-apply.md) | 560 | `result-track:b00f7cfd3262705ba2782ea46a62d14971647a803d1fd328c11ef9590173eac3` |
| 62 | `def` | [uncurrySum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/uncurrysum.md) | 567 | `declaration-track:b468872b738ef5e00090d3863623813a43271b8918c27f8f6115e61821602212` |
| 63 | `theorem` | [uncurrySum_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/uncurrysum-apply.md) | 576 | `result-track:6c1355c49665174ec8b9c7b66bcbf25478c9b1d8e03b6a357effca0faaeeb047` |
| 64 | `def` | [currySumEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/currysumequiv.md) | 590 | `declaration-track:fbc85c8fe85f2221ee7aef6190a99199802fa2f12d81eb9784d137c85817d00c` |
| 65 | `def` | [curryFinFinset](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/curryfinfinset.md) | 618 | `declaration-track:21c311e04c3b0b147c99f6ddcd922cd634d75e32b026fcf49f84b8c9fc90ace6` |
| 66 | `theorem` | [curryFinFinset_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/curryfinfinset-apply.md) | 626 | `result-track:6b41052d8235e77214c59784753a853b78c8030c59966ed5930d0695d304dcc9` |
| 67 | `theorem` | [curryFinFinset_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/curryfinfinset-symm-apply.md) | 632 | `result-track:93df9c7a26acb8405b27d425caed416735ad1280ef4b9afc5d2fabd8c820a8f9` |
| 68 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/curryfinfinset-symm-apply-piecewise-const.md) | 638 | `result-track:c7cc66fa8b19af5ba7bd3b19e8c63fd0a697b2cb2ef74dfff505a1912e392e21` |
| 69 | `theorem` | [curryFinFinset_symm_apply_const](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/curryfinfinset-symm-apply-const.md) | 645 | `result-track:5ef8dc64194292f832d4f5df014b8a44330f1e167acd95ae35c8e9800a9e7307` |
| 70 | `theorem` | [curryFinFinset_apply_const](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/curryfinfinset-apply-const.md) | 650 | `result-track:8bc67a529ac23e6ad3305a2a5e05faa0da93bffc2a3b47826087d5db0c9a85e5` |
| 71 | `def` | [continuousMultilinearMapOption](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmapoption.md) | 670 | `declaration-track:0f9a0bdfdfd43476cbe49e1a74bc23279674de073c5d3430b7129bf2f57e0c84` |
| 72 | `lemma` | [continuousMultilinearMapOption_apply_eq_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleMultilinearCurryPublic.lean/declarations/continuousmultilinearmapoption-apply-eq-self.md) | 710 | `result-track:1d6609685627c108a66429bce22309ace013df45b65a55e4ef4ad6db434ed6e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4630774589cc3d2d4a8eb503c5ff1a355c940e7e488b8e5cd014aca78531196f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
