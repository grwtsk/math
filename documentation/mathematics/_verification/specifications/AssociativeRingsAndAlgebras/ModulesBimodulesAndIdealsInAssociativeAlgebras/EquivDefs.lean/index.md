# Verification target: Equiv Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea3ef9c48d9e5765b6d644dc65facba5b7b342f4",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea3ef9c48d9e5765b6d644dc65facba5b7b342f4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/linearequiv.md) | 47 | `declaration-track:19ad44759917c795fac87c25af35a971b26a0719fed90143b9411c0c27e70bc5` |
| 2 | `class` | [SemilinearEquivClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/semilinearequivclass.md) | 84 | `declaration-track:8a2f9c7eaf47894082705d4ec3601d59f3b2ea6b5bec38f22c55f939e3a878b0` |
| 3 | `abbrev` | [LinearEquivClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/linearequivclass.md) | 97 | `declaration-track:c9b779bd61834312fe7153b023f7ff46c36565690d72f98011c22a8daaa1645d` |
| 4 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/instance-source-edition-2.md) | 109 | `declaration-track:601f1ff3344c928cece13fabd5355324ed576fc2559b3e30bf863ca9a1553915` |
| 5 | `def` | [semilinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/semilinearequiv.md) | 117 | `declaration-track:58e2051130970eab1eb74a44315695960343f825b6eb3e464b5fe5118a6e75b7` |
| 6 | `instance` | [instCoeToSemilinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/instcoetosemilinearequiv.md) | 122 | `declaration-track:25b826d7e7a57539fb40fc750a825dfeea4e95e5cf9ea0746d6e1c90ebf6000b` |
| 7 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/instance-source-edition-3.md) | 140 | `declaration-track:89a931d19b23e0618485b6edd1724c768e153844e158098540aca7d2e5cc3ee1` |
| 8 | `def` | [toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/toequiv.md) | 145 | `declaration-track:42aef032c6244a04a78c70c822eda228e0fe47dc9d5fb846b2660adca8d8d463` |
| 9 | `theorem` | [toEquiv_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/toequiv-injective.md) | 147 | `result-track:2dfe3817cc980440fae759de8b3c6c796af75e2af1cacacfa10002ef458b1f32` |
| 10 | `theorem` | [toEquiv_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/toequiv-inj.md) | 153 | `result-track:9cf8a88adab9bb1d32021df5de5e401e383b37b37d901d44d8e94e4b6e09fab7` |
| 11 | `theorem` | [toLinearMap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/tolinearmap-injective.md) | 156 | `result-track:98c50cdf7e0143bb11bcf6a6710b24fb5200334502e77bb5e93e95ae0bed68b6` |
| 12 | `theorem` | [toLinearMap_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/tolinearmap-inj.md) | 160 | `result-track:47fd004e611b51787da5015b513aa58877d709b0ea5f19f39dbb52a37439c9de` |
| 13 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/instance-source-edition-4.md) | 163 | `declaration-track:b95f9f90aa9018acf8b3c2ab19e83b3d613c5f2ad7f2b02813ab4e39ce12b946` |
| 14 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/instance.md) | 170 | `declaration-track:30670c17a71b73d80e6832239557a728a43bdd28b856b68be3f76dcb59d7825d` |
| 15 | `theorem` | [toLinearMap_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/tolinearmap-eq-coe.md) | 174 | `result-track:8e9c2529d3b24c58afc20ee5a5764db51cafe3a26d8729d349dff0b6f6978c58` |
| 16 | `theorem` | [coe_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-mk.md) | 178 | `result-track:968456d25dfc1bd8d3f7710e3b10544756cc20cf0324da4ec4b0bbf29534a246` |
| 17 | `theorem` | [coe_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-injective.md) | 181 | `result-track:93eaa08add07719ad1750bd825525cc519683d516c576d241d14b01a3dd4b467` |
| 18 | `lemma` | [_root_.SemilinearEquivClass.semilinearEquiv_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/root-semilinearequivclass-semilinearequiv-apply.md) | 185 | `result-track:fae77ee9978e5ad8eaed47a179051a95c3c05b9a08d20de0148fa079eeab6253` |
| 19 | `theorem` | [coe_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-coe.md) | 202 | `result-track:5e70466966dc55cbc5cb7e7fdc915e0e497311f82b731bc34ffb8f47a83d7638` |
| 20 | `theorem` | [coe_toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-toequiv.md) | 206 | `result-track:7a9c86f7af8658187fecaff82d764b47944c1ca49a9b8069b38a9f5b1c9eb319` |
| 21 | `theorem` | [coe_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-tolinearmap.md) | 210 | `result-track:552e5e126cb0cd4761bcfd40769751663fb2bf328d9cd173ac2d3bfeb7736628` |
| 22 | `theorem` | [toFun_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/tofun-eq-coe.md) | 213 | `result-track:ac79d2e68a3fe9db1df816d1c9a87b0963834a031cf7b44ef67f898d6022b739` |
| 23 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/ext.md) | 220 | `result-track:a5133e14e1958f69dbbac8fcd32bd07f9dcf1e4916ad98d8af5eb009747131ed` |
| 24 | `theorem` | [congr_arg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/congr-arg.md) | 223 | `result-track:248dc9c6f11b48ad4cf37a1ec7b31b399c819b7f0dc3303f8e46f0e46f790e9a` |
| 25 | `theorem` | [congr_fun](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/congr-fun.md) | 226 | `result-track:f24af1b21be52d86dffb114146cc78523770cf5fbc44d880d77fc0f35d6846e6` |
| 26 | `def` | [refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/refl.md) | 237 | `declaration-track:5896ec05a16b3d0861840340b37fc7346cd0f43108443f241c321b6f7eb96012` |
| 27 | `theorem` | [refl_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/refl-apply.md) | 243 | `result-track:e216d9e87cef4eb6e442d8e197ee8dfa43d124976adb84224fc658e7d375c6f3` |
| 28 | `def` | [symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm.md) | 248 | `declaration-track:083e74622d2524dca66b1e38bb62ef3420a6d2c9a4456e3b59a15d8c669392ff` |
| 29 | `def` | [Simps.apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/simps-apply.md) | 256 | `declaration-track:3325d8e9fabb881169bb8dc7fc229c8eb9aedd0d8a5300002d9f67656666004f` |
| 30 | `def` | [Simps.symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/simps-symm-apply.md) | 263 | `declaration-track:e5e732460f60da64a0086208eb1d3dbfc545abc93ab78e4617787231461bcbb2` |
| 31 | `theorem` | [invFun_eq_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/invfun-eq-symm.md) | 272 | `result-track:ebea4e61a608226b6a29029be39b90415c3a6fa0981ebc46ebbead7b275dcec3` |
| 32 | `theorem` | [coe_toEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-toequiv-symm.md) | 276 | `result-track:5c72ef3b506aae905d73f3f626a5d2b9131e6cd4c904e505b7532f4c5943f385` |
| 33 | `def` | [trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/trans.md) | 295 | `declaration-track:852d9f3ece5b68fb8b84ee85f2d66fb53bb697fc2622ddfdb90e11f038b49aee` |
| 34 | `theorem` | [coe_toAddEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-toaddequiv.md) | 313 | `result-track:9016a3f22c4ffe265bd8cdf3fb6f8c5f4197ae2fd209171ca232beee4935f653` |
| 35 | `lemma` | [coe_addEquiv_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-addequiv-apply.md) | 317 | `result-track:cfa465999a26e2ff246f63bc544f293100a26cdacb63a92a26b9bad44796c248` |
| 36 | `theorem` | [toAddMonoidHom_commutes](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/toaddmonoidhom-commutes.md) | 321 | `result-track:2e67f94287c3cd7f59f2b7a98ed3669069e398461f8d5dd3beddfdd550eddf81` |
| 37 | `lemma` | [coe_toAddEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-toaddequiv-symm.md) | 324 | `result-track:5b883a29c2692abb103a72c5e668731c4d1c04893befbca103c4e83bde19c021` |
| 38 | `theorem` | [trans_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/trans-apply.md) | 328 | `result-track:f3440cab18090cb014f1a5c2dbf059affa08b2b52d99fc74ddc06fa19bd13529` |
| 39 | `theorem` | [coe_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-trans.md) | 331 | `result-track:9d31f7561585eb195c7695948f64f291ea21749046a7584aa4df8a176a0add58` |
| 40 | `theorem` | [apply_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/apply-symm-apply.md) | 336 | `result-track:85c23909633b37d6a6312059ee9ebd87168354bc77a797e39d3b3bdec060f045` |
| 41 | `theorem` | [symm_apply_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-apply-apply.md) | 340 | `result-track:0b4eb3a43e73cbb10ccba1646e6d0bc17db71695f64d6dcc6eeeced9165f6b46` |
| 42 | `theorem` | [trans_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/trans-symm.md) | 344 | `result-track:cb80cb1f46c4b0b938b10ad051b674d5ae0937611903ab73777a6e6b6399b1a9` |
| 43 | `theorem` | [symm_trans_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-trans-apply.md) | 347 | `result-track:64b090ce1b95312462a6e9e3c684220ce7b68434de47ada62b082a6c5d11681e` |
| 44 | `theorem` | [trans_refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/trans-refl.md) | 352 | `result-track:d03299696dce6193f7cd19cd38a28860eee178430769d79036f84cb80915f094` |
| 45 | `theorem` | [refl_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/refl-trans.md) | 356 | `result-track:925448d178b55a58007d5246c53e02375f7c152255d014a8e67de31550e7ad3a` |
| 46 | `theorem` | [symm_apply_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-apply-eq.md) | 359 | `result-track:9644df293e7eb73579963c624885e9fd27473a7eaa159d37eb7c982c8cf66c36` |
| 47 | `theorem` | [eq_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/eq-symm-apply.md) | 362 | `result-track:b0b6927ed54d22ec888a65ef384c61b357ead499b2f993e22d3c9310e30a5429` |
| 48 | `theorem` | [eq_comp_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/eq-comp-symm.md) | 365 | `result-track:a9d0b938db8a1f5b2cf80e40c2b7ff4dad5f46d66c9c853bb79e47b8f6e29dc9` |
| 49 | `theorem` | [comp_symm_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/comp-symm-eq.md) | 368 | `result-track:40fe9d2a41f9017ed3ab3287d40441617752555265ced1c3813b016b974161ac` |
| 50 | `theorem` | [eq_symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/eq-symm-comp.md) | 371 | `result-track:85d356eb38df7914e2f616bed00aeb82a6bd9eebcff7405f9c64e0d39cc7cfd2` |
| 51 | `theorem` | [symm_comp_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-comp-eq.md) | 374 | `result-track:89f133627b8f0fddcf13e8076b8c967dd0496b00cfcaded210f5aa86c81225d9` |
| 52 | `theorem` | [eq_comp_toLinearMap_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/eq-comp-tolinearmap-symm.md) | 379 | `result-track:71f8f0f6b1108ade145d9077b82561780deec3f76bf201ebad07881407fd8998` |
| 53 | `theorem` | [comp_toLinearMap_symm_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/comp-tolinearmap-symm-eq.md) | 385 | `result-track:a769a3b3ac6209d7b55cb0b432b8a17228a85c1c7f994eeef4d7ec018e9c9b8f` |
| 54 | `theorem` | [eq_toLinearMap_symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/eq-tolinearmap-symm-comp.md) | 391 | `result-track:ee1df4e89d7006463d97c9ebeeb08b32d5842e6810b3ca04d68df1cc1d739699` |
| 55 | `theorem` | [toLinearMap_symm_comp_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/tolinearmap-symm-comp-eq.md) | 397 | `result-track:a86772bec4fb81f2e7f4ca0b129f52c200e4bbb04a15947b3af257e6448880b4` |
| 56 | `theorem` | [comp_toLinearMap_eq_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/comp-tolinearmap-eq-iff.md) | 404 | `result-track:93b21075f61c8a3bca735ba9e6e53b3f2f3a102c1bffc289b3c0b94c47e2c1a2` |
| 57 | `theorem` | [eq_comp_toLinearMap_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/eq-comp-tolinearmap-iff.md) | 410 | `result-track:7f423cedf607ce3fce5b0e293bdb8a8f5cc378d277348d7aefa24469d7c8412a` |
| 58 | `theorem` | [refl_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/refl-symm.md) | 416 | `result-track:3b7587dd2eb9f9732829b39830de0cbf6bb2ef4006b7b7ca8c392f50f2332218` |
| 59 | `theorem` | [self_trans_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/self-trans-symm.md) | 420 | `result-track:6e76e9dc7163c95156b47a5994fce67b1bc21f69c27302f001bfac262d9b1402` |
| 60 | `theorem` | [symm_trans_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-trans-self.md) | 425 | `result-track:8eb88712434b5df7e0a6165dc14fce0b905bd6191a7457f63030d00e2d283ac1` |
| 61 | `theorem` | [refl_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/refl-tolinearmap.md) | 430 | `result-track:202c1d2eb1623160112bdcac1e0a099e696f59cce1a92d0016c9a65fa5b9a836` |
| 62 | `theorem` | [comp_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/comp-coe.md) | 434 | `result-track:2911241c358d3d0444c0d6aef454123d05ed59117e71e9a31a0eb9ebd2e1af78` |
| 63 | `theorem` | [mk_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/mk-coe-source-edition-2.md) | 439 | `result-track:e09fcaa908facce81561555d939a78d20c162a53e04d3e5e6e8bbec53b40845a` |
| 64 | `theorem` | [map_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/map-add.md) | 442 | `result-track:b0fd917056628a4a6ff825673f41537467f99356281ec08246071249e3723c8c` |
| 65 | `theorem` | [map_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/map-zero.md) | 445 | `result-track:50cfe5655fdd8e3e23b2ffe03842f9a6f749c621b1c61478ef015c1c08237123` |
| 66 | `theorem` | [map_smulₛₗ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/map-smul-source-edition-2.md) | 448 | `result-track:53646f4b3bff9567e2ddfc436382ffd8a72657a54932ceb4cab40b9010b6483d` |
| 67 | `theorem` | [map_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/map-smul.md) | 451 | `result-track:2865f7e1ff300297cc6d7957faaa029a5c2e9cfb0bc471f3a34804aca1771f4b` |
| 68 | `theorem` | [map_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/map-eq-zero-iff.md) | 454 | `result-track:d287dc1b15e08f720927c8024b4d8805b6e870ac0040efb25be06c1ed12ef17d` |
| 69 | `theorem` | [map_ne_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/map-ne-zero-iff.md) | 457 | `result-track:0d923210b29de9d9ca5a64735c1ab74463f04725ddc1a300de3b5187a02cc158` |
| 70 | `theorem` | [symm_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-symm.md) | 461 | `result-track:b75cb16c09b73467a45380e9e2f51d557a08c7ea9703a52dd114aca815667ca9` |
| 71 | `theorem` | [symm_bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-bijective.md) | 463 | `result-track:09e8625328ee34a1e1dde1c843544853303df4ec3277a3dd47468e8bee8200a0` |
| 72 | `theorem` | [mk_coe'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/mk-coe.md) | 468 | `result-track:38e40f47368c8273411e379ba409ab5477d31dbbf7110ee8e15fadd422d8019c` |
| 73 | `def` | [symm_mk.aux](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-mk-aux.md) | 473 | `declaration-track:c2960415da39e992e320884747c403656e098892232e2ca12dd2949acf94154b` |
| 74 | `theorem` | [symm_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/symm-mk.md) | 476 | `result-track:85ebffdb06dc21c6f638a284f6c699d0d3c92d750d0e3277c241a041c4fe6f9c` |
| 75 | `theorem` | [coe_symm_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-symm-mk.md) | 484 | `result-track:83ac4e2b64e27cbdd7a55001755ccfc91766b1f919179edf43852e12d7062b75` |
| 76 | `theorem` | [bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/bijective.md) | 489 | `result-track:504b47f5530d04e5e67bdd5b9234db03a31799e5c707bc6fcd3daba99e58cb7d` |
| 77 | `theorem` | [injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/injective.md) | 492 | `result-track:5957dcac6261e6b31103c4eaaf65326ef2326902cb6aefc5c1fb4f2e487a6060` |
| 78 | `theorem` | [surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/surjective.md) | 495 | `result-track:88ef4ba875ec658c3bdee34deaca4727899d33aa14426a7af72aa74d467ccdbd` |
| 79 | `theorem` | [image_eq_preimage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/image-eq-preimage.md) | 498 | `result-track:c186aae80d0b2013749fb8b164d4f5657a24c5cfaa2e79e64f70412fd95ade4b` |
| 80 | `theorem` | [image_symm_eq_preimage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/image-symm-eq-preimage.md) | 501 | `result-track:72df00f4b174359d0e979a8c9926e1c5af5560f87cc76956e47c00b75d5e40fc` |
| 81 | `def` | [_root_.RingEquiv.toSemilinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/root-ringequiv-tosemilinearequiv.md) | 508 | `declaration-track:39fb0e813b559c0f10ef8d6e52770cd185cb77556b3a0e9a09d6bd9097ae6c11` |
| 82 | `def` | [ofInvolutive](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/ofinvolutive.md) | 521 | `declaration-track:6b2595279c38010f202ae812b0e467dd8a74a012018df62839798a189ccd9813` |
| 83 | `theorem` | [coe_ofInvolutive](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefs.lean/declarations/coe-ofinvolutive.md) | 526 | `result-track:4b9e254a19418963c04df51654e034ec89ce77471b9a838977c1d36d74f2a2aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=017652df3c9b706128b02986c80acd78b5eb66b183009f0b5f772c33798b9038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant1a48589958cffc568572fa31c3322b02cab18046b361849c284857960227e428.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
