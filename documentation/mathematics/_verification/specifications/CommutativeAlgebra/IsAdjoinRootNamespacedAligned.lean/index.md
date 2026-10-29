# Verification target: Is Adjoin Root Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "132ca4c2668a0947fba63b69460c42efe153803b",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `132ca4c2668a0947fba63b69460c42efe153803b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjoinRoot](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinroot-source-edition-2.md) | 95 | `declaration-track:ef2bb2262ce85a15770e515ca533a3e4bb483047d47ac044520fb3ffa9f8298d` |
| 2 | `structure` | [IsAdjoinRootMonic](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinrootmonic-source-edition-2.md) | 115 | `declaration-track:d30d3ce21c7b86fc586804014511eb9f91611bf7a62a52d1708f679ae38c5432` |
| 3 | `def` | [root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/root.md) | 127 | `declaration-track:5da1b94ea913a694de7843a010b9164802f49afc63fccb430059eb177ca50ce4` |
| 4 | `theorem` | [subsingleton](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/subsingleton.md) | 131 | `result-track:4a22148f09190efec35a555cd754cec0f2c205f8833601d51d17d79f063f958d` |
| 5 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/algebramap-apply.md) | 135 | `result-track:e68360c776a9371d8af606bc1116dc31dfcc296a2b23ee2cd2813ad666ad1054` |
| 6 | `theorem` | [mem_ker_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/mem-ker-map.md) | 140 | `result-track:cb3afaf2e753175a1967556b568b6e40fb14b085eefee72acdac82c78c363c03` |
| 7 | `theorem` | [map_eq_zero_iff](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/map-eq-zero-iff.md) | 144 | `result-track:c1ec32218d35bd7e01cb5404b8f69d2f546d8bfc7ca279a7ac754d1abc83deca` |
| 8 | `theorem` | [map_X](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/map-x.md) | 149 | `result-track:2d146baa92a33325c176324abc4b736c02adb558b4554e725448c69052efb488` |
| 9 | `theorem` | [map_self](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/map-self.md) | 154 | `result-track:c9e9b7e04f93ff82ee44621552c12b67d32c254ad38e5f8e1ec418879aa028e1` |
| 10 | `theorem` | [aeval_eq](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aeval-eq.md) | 158 | `result-track:31a75071182fccd3d4091d72631b0eb3288f8c29faa65ceaa1046e3569dd259b` |
| 11 | `theorem` | [aeval_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aeval-root.md) | 166 | `result-track:469ee94ebb02ab32d49c6cdbfacf6ff20130d3952a2852586e52de7619d6ab6d` |
| 12 | `def` | [repr](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/repr.md) | 173 | `declaration-track:b04319125a0fcb24011a0f4c678a56aa3700cac4af7ac8ce9e3f1ed262f9bb90` |
| 13 | `theorem` | [map_repr](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/map-repr.md) | 177 | `result-track:d14a149d74c3fefc53231dce26928269110023090deaa2581b4a5726b55183df` |
| 14 | `theorem` | [repr_zero_mem_span](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/repr-zero-mem-span.md) | 182 | `result-track:48ae20574159f15759a847e60c39e8cabed5101753a807c05afed936ff54573a` |
| 15 | `theorem` | [repr_add_sub_repr_add_repr_mem_span](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/repr-add-sub-repr-add-repr-mem-span.md) | 187 | `result-track:99d0fa381f428ceec3eed6bb8931ed3d561fb773f4cf2630406a9d242c823dfd` |
| 16 | `theorem` | [ext_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ext-map.md) | 194 | `result-track:6408d05c03966ec519aeef9ef203f075a4a67adc35ea204d6e7d0e991be1d49a` |
| 17 | `theorem` | [ext](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ext.md) | 202 | `result-track:31d90a529ff1eb8f70f81ffe8a5ea119add6a7ae749d37af284a010f5bb3e640` |
| 18 | `theorem` | [eval₂_repr_eq_eval₂_of_map_eq](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/eval-repr-eq-eval-of-map-eq.md) | 211 | `result-track:f592c4d815f9c1a4857f7296f05c8243ceb6fa6d47aabdfb35846b77ba8dc865` |
| 19 | `def` | [lift](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift.md) | 223 | `declaration-track:e3c13de72da0a66be2f29f4f52873ebce21d6e9d78987f0b997a576c7b40f3f3` |
| 20 | `theorem` | [lift_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-map.md) | 244 | `result-track:8646c3e6332474cf1ba94b3019bb65925375f18eb82152dedc9caba6aa2cbb6f` |
| 21 | `theorem` | [lift_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-root.md) | 251 | `result-track:e72dcb81eb128dbb8f5064707d3c6f7a54342bf3318a1ae8cfcb0b1bbdd80eb6` |
| 22 | `theorem` | [lift_algebraMap](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-algebramap.md) | 256 | `result-track:5e819a2c0542678eb970b1e6ff375d5948b25798fd79f5eb53eecba3c10a3c1c` |
| 23 | `theorem` | [apply_eq_lift](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/apply-eq-lift.md) | 261 | `result-track:fce5ff8302987d00cce8c9695af26f70cac2039de0b850ae3869204d19a6f648` |
| 24 | `theorem` | [eq_lift](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/eq-lift.md) | 269 | `result-track:6dc2444e02ac51ee3f2272929d24ef0df33b14370ee20447346bcce416ba5b03` |
| 25 | `def` | [liftHom](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lifthom.md) | 281 | `declaration-track:07725187a199d7b6030ffee95d10568d9f5aa92a9d247babda94afa0dcb6e1bd` |
| 26 | `theorem` | [coe_liftHom](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coe-lifthom.md) | 288 | `result-track:0881a191c655a777dfb82a1dddf0b0cdc691a455b5b78adf1d9e847849303236` |
| 27 | `theorem` | [lift_algebraMap_apply](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-algebramap-apply.md) | 292 | `result-track:367974b188f628c0279120b61fd9e014fb6d7746dab648e85727c3e64742f049` |
| 28 | `theorem` | [liftHom_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lifthom-map.md) | 297 | `result-track:10a1e04c3d548b7ca7359adfb5e932ce3ad68f72e4837b28940a65fd5e53dae3` |
| 29 | `theorem` | [liftHom_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lifthom-root.md) | 302 | `result-track:db6d50012d53f42118adb5fb5b17be8758693696126e95f5794409ea355e1ca7` |
| 30 | `theorem` | [eq_liftHom](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/eq-lifthom.md) | 307 | `result-track:874baae75984a881e43058ae317e27fd978dd34701dc15d574aa39091b796787` |
| 31 | `def` | [isAdjoinRoot](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinroot.md) | 321 | `declaration-track:3e343e57e50b62b5af5e15f436c8bda8a8cd9cd11f512f6d3cc315fc3e21ccc3` |
| 32 | `def` | [isAdjoinRootMonic](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinrootmonic.md) | 333 | `declaration-track:3493f6a3a012e30bf097cbf726df4eb24f7bdab9f0123c280657a25e65a510a6` |
| 33 | `theorem` | [isAdjoinRoot_map_eq_mk](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinroot-map-eq-mk.md) | 338 | `result-track:74984420035b80385af8a7caa94abe72ecce2b6e48c69c7a0778af35c2069c73` |
| 34 | `theorem` | [isAdjoinRootMonic_map_eq_mk](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinrootmonic-map-eq-mk.md) | 343 | `result-track:232531c29a9ff9d32c0fd97ea89aafef0a7ee14f668521469d7b9c589dd986c0` |
| 35 | `theorem` | [isAdjoinRoot_root_eq_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinroot-root-eq-root.md) | 349 | `result-track:e81f31f4de728ec34d23d9db6137d68f5d871cdd53e7f31a0632dc5be8abfc7a` |
| 36 | `theorem` | [isAdjoinRootMonic_root_eq_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isadjoinrootmonic-root-eq-root.md) | 354 | `result-track:ec7694bd8d55e1a9a7817669438613b0f655ee83be5bebb46c6eac9492136329` |
| 37 | `theorem` | [map_modByMonic](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/map-modbymonic.md) | 365 | `result-track:1dd62f6e4a9b3d41f57e04b94fc0448fbd61275d34707e704f4a877247bab8a1` |
| 38 | `theorem` | [modByMonic_repr_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/modbymonic-repr-map.md) | 371 | `result-track:b45c1013e2a6070e75b769a97de0ae25fcedd40b78922c33f5027e9a8394c885` |
| 39 | `def` | [modByMonicHom](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/modbymonichom.md) | 377 | `declaration-track:def0d33f72ba622e1f9b62ce38c654896c8935f3090b5fdc3687bfae4f487711` |
| 40 | `theorem` | [modByMonicHom_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/modbymonichom-map.md) | 391 | `result-track:90fc7ac4d76b721de79c2e41918c01a1ea7b9b088ee65fa93cb3e8570ba86062` |
| 41 | `theorem` | [map_modByMonicHom](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/map-modbymonichom.md) | 396 | `result-track:090d6e3654d0a3a87e265c41c6c641cc80ec40e940a6a57f39482aaa3f7f0875` |
| 42 | `theorem` | [modByMonicHom_root_pow](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/modbymonichom-root-pow.md) | 403 | `result-track:9647eb83695ebb55cdc9c2ec52ce2dc626483ef619b9b673b11f3c0c77b5767f` |
| 43 | `theorem` | [modByMonicHom_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/modbymonichom-root.md) | 412 | `result-track:9f4a65642bd8a71d112296e9189174406e07219a1bed8292ff3ca0d8496ae8fc` |
| 44 | `def` | [basis](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/basis.md) | 419 | `declaration-track:5eabb318522abbf04aec3dbd2502f2f9fc9d24e0b56e8671ea61d83c303d49bb` |
| 45 | `theorem` | [basis_apply](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/basis-apply.md) | 473 | `result-track:bcce93281121da17098511c40af0abaeddbe163b5ceafc57e20f83286a9a5371` |
| 46 | `theorem` | [deg_pos](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/deg-pos.md) | 483 | `result-track:b6d73d9f3f53829874287193d79586b23747dc9b746a20e7b0506d2d625e525b` |
| 47 | `theorem` | [deg_ne_zero](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/deg-ne-zero.md) | 488 | `result-track:ebec3a919f56601fb5cbaecf874386f7f8df23dedd7a63e510f61440f6b70090` |
| 48 | `def` | [powerBasis](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/powerbasis.md) | 494 | `declaration-track:04e07c85dda6fbf74d9eb6110e526130ab23c2241907fcf1331e8729afbe9524` |
| 49 | `theorem` | [basis_repr](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/basis-repr.md) | 502 | `result-track:96cf7bb45c132205c2342c776472b9145bbc833afb835474368327764e3c80d3` |
| 50 | `theorem` | [basis_one](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/basis-one.md) | 508 | `result-track:c47988200a46a767414e4c05a0b9da2a12363b4c74ead12d69652e14b444da00` |
| 51 | `def` | [liftPolyₗ](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/liftpoly.md) | 514 | `declaration-track:feef61a7cacd9080a3eded9ade86c93d65120738f6f3a73bb9af5d20c292d9db` |
| 52 | `def` | [coeff](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff.md) | 521 | `declaration-track:2f5cd3bde7235b821b7fe2dd9997d2ee9ba00601c226ad6a6bf30097c1b2fe6a` |
| 53 | `theorem` | [coeff_apply_lt](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-apply-lt.md) | 528 | `result-track:dbfe23390f7afdda60a478e34cbd81ca3efde5ec3c54ef94b0f8760199378d31` |
| 54 | `theorem` | [coeff_apply_coe](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-apply-coe.md) | 535 | `result-track:bc8c1eaaac45e29fc90df7bb8a595416d711d71a72031a05d1cf693bd2ebd69e` |
| 55 | `theorem` | [coeff_apply_le](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-apply-le.md) | 539 | `result-track:01e211836200a3cd0aa9975716cae152280cac73c5a7bf555bbdf9e79cfef1c1` |
| 56 | `theorem` | [coeff_apply](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-apply.md) | 549 | `result-track:298333f686ba2a0155f6ae959b4b1897d24a31a1393d904c3d0d403903d1c2fd` |
| 57 | `theorem` | [coeff_root_pow](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-root-pow.md) | 556 | `result-track:31be022dcd5e5b3cecf1243a580c1357c2991250bb20d169970f8e7159f67a33` |
| 58 | `theorem` | [coeff_one](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-one.md) | 574 | `result-track:fff81a0306ae2f7bf53d03ada7c09b6938cdbafa116fc1de64e2c4ca7679f545` |
| 59 | `theorem` | [coeff_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-root.md) | 578 | `result-track:fdcc2a997f6aa4129dd55dc2bbd70b7def2715162a099cf0b61d47ac6364ec4c` |
| 60 | `theorem` | [coeff_algebraMap](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-algebramap.md) | 582 | `result-track:2d4fba4d9c4b3ab48017d16e93114becf9264cfa32bb090c2008a959d776b180` |
| 61 | `theorem` | [ext_elem](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ext-elem.md) | 591 | `result-track:dc89c48315701f2587f58669b415dbb40836bc9433408dab30a858a3c2a92ab6` |
| 62 | `theorem` | [ext_elem_iff](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ext-elem-iff.md) | 599 | `result-track:2debc36cf2cc84cab3fdbb1fa6d5f7d363d2e4fbe8911f217ddd7ca9ab852ec5` |
| 63 | `theorem` | [coeff_injective](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/coeff-injective.md) | 604 | `result-track:efe033b2d9092216f3d5a9d3efd77c1490152f9aef00322b723b075159cf9eb2` |
| 64 | `theorem` | [isIntegral_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/isintegral-root.md) | 608 | `result-track:0e92272a95082eda6722a6d89b445afab7796b2b29f63c26e71e463d68e60643` |
| 65 | `theorem` | [lift_self_apply](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-self-apply.md) | 625 | `result-track:92b4126ca8c9b1d613f7bdfe92a68c51e719dea8952167bb4f53587678e5bdf4` |
| 66 | `theorem` | [lift_self](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-self.md) | 630 | `result-track:a97e0640658cdada59ed69761fdcf6da1c973417c1bdd97abe9a169153967af6` |
| 67 | `def` | [aequiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv.md) | 646 | `declaration-track:8de7cfb0ff080c3ad55f16cd65721faa98835451b91a911fa1f0d94505ddab32` |
| 68 | `theorem` | [aequiv_map](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-map.md) | 655 | `result-track:47af21d2251ec77397e46398708034214b6a7ed2911180cf1e04828b21d867d7` |
| 69 | `theorem` | [aequiv_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-root.md) | 660 | `result-track:98da4ff0136d303d32ed74a3d5928fcd490b4938236919099f6dc0cf3bd2126d` |
| 70 | `theorem` | [aequiv_self](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-self.md) | 665 | `result-track:e9c5e3a85b968d22b0106ad3e3707342a63f4093691e4bc960f48d1f21d83211` |
| 71 | `theorem` | [aequiv_symm](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-symm.md) | 670 | `result-track:61bafd40dd31eea5c948bb9263729c39552c909fff523c44582287018e0cb9a7` |
| 72 | `theorem` | [lift_aequiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lift-aequiv.md) | 675 | `result-track:15e46abe1df7305d15256237da84fcc6174befa348a88620f8cbee218d478815` |
| 73 | `theorem` | [liftHom_aequiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/lifthom-aequiv.md) | 681 | `result-track:f37d9d1da4ae38346ee798287f933fb765dc8e397c0677c7f373f0acd8945dca` |
| 74 | `theorem` | [aequiv_aequiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-aequiv.md) | 687 | `result-track:3c583a9cf5aa732e97656512995e85e97cd04b82d1687576bd4f328ecad9b360` |
| 75 | `theorem` | [aequiv_trans](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-trans.md) | 694 | `result-track:a65627dc3c7360f8ab1b5490b46acf17c965033392807f76085d97e628991dcd` |
| 76 | `def` | [ofEquiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ofequiv.md) | 705 | `declaration-track:2c62d25988c5b49dd9b0302c9b30517aae85846ff1640c1346adf07d0b46bf4e` |
| 77 | `theorem` | [ofEquiv_root](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ofequiv-root.md) | 717 | `result-track:3dd8af9eb1e63b105dac6398e761213e4ba6d604eaafd12c858ea5f462e4defd` |
| 78 | `theorem` | [aequiv_ofEquiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/aequiv-ofequiv.md) | 721 | `result-track:eb5fd1977e93c7f60a3cc76c32636689cd5a4e558441985c5aaa8acddac4a88d` |
| 79 | `theorem` | [ofEquiv_aequiv](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/ofequiv-aequiv.md) | 727 | `result-track:86e5f308b800c8661a1a805543af8b084f6482d2d00be13299c728ed9184a6ec` |
| 80 | `theorem` | [minpoly_eq](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/minpoly-eq.md) | 741 | `result-track:bd66823d0e37ee6f46e21f4fff70e9cd5eab305c4d7c36c30affd9fc08a05edc` |
| 81 | `theorem` | [Algebra.adjoin.powerBasis'_minpoly_gen](../../../../CommutativeAlgebra/IsAdjoinRootNamespacedAligned.lean/declarations/algebra-adjoin-powerbasis-minpoly-gen.md) | 759 | `result-track:b94398bd2fcb8ae6e91abca8044337594bf0f452009c022d6acc880a5c0b06d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cde326a4df3845dfb8517818aaa92c4906ec2cc73d177109ff4a27ba1c8e081 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant0ff1bc2b5953989b1b1e29cd4dccd81540cb04dceb4dc5002e6bebad3ab010e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
