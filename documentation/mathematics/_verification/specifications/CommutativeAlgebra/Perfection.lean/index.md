# Verification target: Perfection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89683c38081e135a2c85f39891c22b3fefb3abe7",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Perfection.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Perfection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89683c38081e135a2c85f39891c22b3fefb3abe7`.

Source path: `GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Subring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Integers` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Monoid.perfection](../../../../CommutativeAlgebra/Perfection.lean/declarations/monoid-perfection.md) | 38 | `declaration-track:39b3bd1ea0b72c01e64feb9c2ea7cdb9cc393cecaabd5b9d9b7865efe105f4d7` |
| 2 | `def` | [Ring.perfectionSubsemiring](../../../../CommutativeAlgebra/Perfection.lean/declarations/ring-perfectionsubsemiring.md) | 47 | `declaration-track:364b268407b406c09aa5e7ebdd2c726004b939a69e88c339116accaae747a5d8` |
| 3 | `def` | [Ring.perfectionSubring](../../../../CommutativeAlgebra/Perfection.lean/declarations/ring-perfectionsubring.md) | 57 | `declaration-track:916f162543378a877cd93b305cbce9f4f8cb33d791820efe4f672a66937403c9` |
| 4 | `def` | [Ring.Perfection](../../../../CommutativeAlgebra/Perfection.lean/declarations/ring-perfection.md) | 66 | `declaration-track:2c76e566588b23fe467f6d5b92f130d3c6cec86223981f2a674971e86678471b` |
| 5 | `instance` | [commSemiring](../../../../CommutativeAlgebra/Perfection.lean/declarations/commsemiring.md) | 74 | `declaration-track:4307f281e8516930f76c0d6ee0ab9ef01701a2bfadc2a9c9e4d583bbe27cd858` |
| 6 | `instance` | [charP](../../../../CommutativeAlgebra/Perfection.lean/declarations/charp.md) | 78 | `declaration-track:7a9a4e490abde5bdddb35e11d367567a012810c67a26aec40074129f80cd82c8` |
| 7 | `instance` | [ring](../../../../CommutativeAlgebra/Perfection.lean/declarations/ring.md) | 82 | `declaration-track:41284d7aafd0a8257588d3ab48b1170eaf054318677d36cc1ff666f7d96774d0` |
| 8 | `instance` | [commRing](../../../../CommutativeAlgebra/Perfection.lean/declarations/commring.md) | 86 | `declaration-track:1a44bb0eec6d4371e3815e620159a556e53c77c784bb92f5a351974d26bc2283` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Perfection.lean/declarations/instance-source-edition-5.md) | 90 | `declaration-track:c5f3b3c0ac0b9a3ab4a22094003714ae4a7f2811a25cb1ba797594d1a52147b3` |
| 10 | `def` | [coeff](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff.md) | 93 | `declaration-track:99a87bdbc7eca99a152ddbe81af51237395ae1b61f8047f75590ca3b1b2a11ed` |
| 11 | `theorem` | [ext](../../../../CommutativeAlgebra/Perfection.lean/declarations/ext.md) | 104 | `result-track:d2734ba12c785e9941b75e68a57397467ba0e45bd0580ffdcf248d623fa9f9fb` |
| 12 | `def` | [pthRoot](../../../../CommutativeAlgebra/Perfection.lean/declarations/pthroot.md) | 111 | `declaration-track:6e52e1baf7e4c616a82a09ecc0415bc207a0e1100ed3b55897de0bc69d53f2c8` |
| 13 | `theorem` | [coeff_mk](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-mk.md) | 122 | `result-track:d1cfc715fd7bf486a17b2a80a9fd40dcbd9935a1cc28510cd9e7ec9caa9c3379` |
| 14 | `theorem` | [coeff_pthRoot](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-pthroot.md) | 125 | `result-track:377fd7397b305df9217bb2f669bc991e47123cb58270e31724400741dc89094f` |
| 15 | `theorem` | [coeff_pow_p](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-pow-p.md) | 129 | `result-track:6655bc41f7c12d275cecdbdc4a2ae39cb45a06f482054c6b61cca7e5e39ad67b` |
| 16 | `theorem` | [coeff_pow_p'](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-pow-p-source-edition-2.md) | 133 | `result-track:991fe1047eb9b2cad58f69df71705939424e19d36d215428ccc7edf10e114639` |
| 17 | `theorem` | [coeff_frobenius](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-frobenius.md) | 137 | `result-track:d1168399964117cd1b852a8f2423079addb3b638bbc4b6810900a3cc45f61ba3` |
| 18 | `theorem` | [coeff_iterate_frobenius](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-iterate-frobenius-source-edition-2.md) | 142 | `result-track:ce834e703d9dc3b65d48aa4926a13d10105050f9cd1c98960d58d4d23357d0b4` |
| 19 | `theorem` | [coeff_iterate_frobenius'](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-iterate-frobenius.md) | 147 | `result-track:262bd76fd1dc10ef5e389ddb03d6fcb11bf052dfd4ec7c5db74c837cd1d29882` |
| 20 | `theorem` | [pthRoot_frobenius](../../../../CommutativeAlgebra/Perfection.lean/declarations/pthroot-frobenius.md) | 152 | `result-track:021f25ec432cf13401ccc7e7a7402c33691b3a9f8da3fa5d513ab9c2018c92cf` |
| 21 | `theorem` | [frobenius_pthRoot](../../../../CommutativeAlgebra/Perfection.lean/declarations/frobenius-pthroot.md) | 157 | `result-track:89af71eb7ff544ea35f0cb1374759adc830373a34c2a4114803d682ae7714f52` |
| 22 | `theorem` | [coeff_add_ne_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-add-ne-zero.md) | 164 | `result-track:7cac5f2aa375d0a92d266e45f3a4cc1955dd819f949b18f403bf263e891369b0` |
| 23 | `theorem` | [coeff_ne_zero_of_le](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-ne-zero-of-le.md) | 169 | `result-track:5b869fe54fa7355f48ec365e5d6fc329d0ab9abb2bc25cc7fa32f494d7b0b3e4` |
| 24 | `instance` | [perfectRing](../../../../CommutativeAlgebra/Perfection.lean/declarations/perfectring.md) | 177 | `declaration-track:3dbd3a4e7ef2e0acbd58c1862859a77650ed19d90d67e73ee612e797c8d45234` |
| 25 | `def` | [lift](../../../../CommutativeAlgebra/Perfection.lean/declarations/lift-source-edition-2.md) | 187 | `declaration-track:4add12c857552614fd50f9527420c237b08b893313991eedf36c6e39ba9dbc64` |
| 26 | `theorem` | [hom_ext](../../../../CommutativeAlgebra/Perfection.lean/declarations/hom-ext.md) | 205 | `result-track:9908847b819f4d6e52dd8962f1e3180bbf0542a23733e64e6070ab0a9f6c7191` |
| 27 | `def` | [map](../../../../CommutativeAlgebra/Perfection.lean/declarations/map.md) | 215 | `declaration-track:014c7a0c1d47a0234394e42151932c47a86337c405933e7605063d78f0003b12` |
| 28 | `theorem` | [coeff_map](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-map.md) | 223 | `result-track:749776388898e8cc5f6fa2dd567d5b22a5cee70ca2acd0048ee821d498723148` |
| 29 | `structure` | [PerfectionMap](../../../../CommutativeAlgebra/Perfection.lean/declarations/perfectionmap.md) | 232 | `declaration-track:6b273e125c629eb226fd1125b5a80ca3a9ac2434d3894ace8996cd3c5f3a536a` |
| 30 | `theorem` | [mk'](../../../../CommutativeAlgebra/Perfection.lean/declarations/mk.md) | 250 | `result-track:0b6d5a587b7fd5aac835d82091c3438947f95fb1fca05bf1c93053ad6a86841f` |
| 31 | `theorem` | [of](../../../../CommutativeAlgebra/Perfection.lean/declarations/of.md) | 266 | `result-track:60f960a0a0d2da4d833623b60e7d0ac8a2d3acb00eb5ac3efaeebbe24fa61922` |
| 32 | `theorem` | [id](../../../../CommutativeAlgebra/Perfection.lean/declarations/id.md) | 271 | `result-track:1690b4e4eb99ca3248d2c94a2e930c14ace329d97b866f5bed2848b827bc7946` |
| 33 | `def` | [equiv](../../../../CommutativeAlgebra/Perfection.lean/declarations/equiv.md) | 283 | `declaration-track:1c4edb87b13086d661c23546b4ff6cd7cd40a4e28f860e9dd27094566ccb1f19` |
| 34 | `theorem` | [equiv_apply](../../../../CommutativeAlgebra/Perfection.lean/declarations/equiv-apply.md) | 290 | `result-track:cff051f95d32ac04a99aa61f4290aafa025e5267fc114910d2dacb24006f7035` |
| 35 | `theorem` | [comp_equiv](../../../../CommutativeAlgebra/Perfection.lean/declarations/comp-equiv.md) | 294 | `result-track:d74e0a94280cb73384dbe27b8b0c76d4cbf53286f4f51e8d33b980c55893ef49` |
| 36 | `theorem` | [comp_equiv'](../../../../CommutativeAlgebra/Perfection.lean/declarations/comp-equiv-source-edition-2.md) | 298 | `result-track:de860c76dd6091ef8baf33e86a235de1bef1ba3d0775accb74a0485e9fa110f4` |
| 37 | `theorem` | [comp_symm_equiv](../../../../CommutativeAlgebra/Perfection.lean/declarations/comp-symm-equiv.md) | 303 | `result-track:a1501567a5efbf1713412ba5456a016b9325ebeb385ca1d45ebce02f7949314d` |
| 38 | `theorem` | [comp_symm_equiv'](../../../../CommutativeAlgebra/Perfection.lean/declarations/comp-symm-equiv-source-edition-2.md) | 308 | `result-track:dbaff761d5b86bc12ed41be155e41006bd190433df46c0b988968d10baddcd22` |
| 39 | `def` | [lift](../../../../CommutativeAlgebra/Perfection.lean/declarations/lift.md) | 319 | `declaration-track:0b21e920fcbea194de38bbc235bca246e71480ac635c41abf47aa2859058d5de` |
| 40 | `theorem` | [hom_ext](../../../../CommutativeAlgebra/Perfection.lean/declarations/hom-ext-source-edition-2.md) | 335 | `result-track:f0fb3900ad9e3d1916a6b833701605cfce9f0d52221e9e99f69849293ce48604` |
| 41 | `def` | [map](../../../../CommutativeAlgebra/Perfection.lean/declarations/map-source-edition-2.md) | 349 | `declaration-track:3a524122fadce8ec843864db23a868ba62eed0c0fa8c85117ee53be6a5a2c1cf` |
| 42 | `theorem` | [comp_map](../../../../CommutativeAlgebra/Perfection.lean/declarations/comp-map.md) | 354 | `result-track:1deeda68cc7eee2550d4b32201bd6b28ba61c22d0bc7f8d218ac46149e29d386` |
| 43 | `theorem` | [map_map](../../../../CommutativeAlgebra/Perfection.lean/declarations/map-map.md) | 359 | `result-track:8e1374dd00aaa502c738f8041a49898871859b3bd5d3e4e9330035b9164cd14e` |
| 44 | `theorem` | [map_eq_map](../../../../CommutativeAlgebra/Perfection.lean/declarations/map-eq-map.md) | 364 | `result-track:2930e27d73b8b29e42791222c63194a0a8877e83eb0e5595c8ff75328683f4f4` |
| 45 | `def` | [ModP](../../../../CommutativeAlgebra/Perfection.lean/declarations/modp.md) | 381 | `declaration-track:5f7cf89aadf09a98eeef8ab444b1a3764d11b6f3bb464fbb5f1bf2a5ca3756e8` |
| 46 | `instance` | [commRing](../../../../CommutativeAlgebra/Perfection.lean/declarations/commring-source-edition-2.md) | 390 | `declaration-track:9860a04da02dc25377057f498921aac14328b5fa4d3aba66b3c5ffda69cffd4d` |
| 47 | `instance` | [charP](../../../../CommutativeAlgebra/Perfection.lean/declarations/charp-source-edition-2.md) | 393 | `declaration-track:7ab4eef58fb99eb886eaf1b0f89a297b89b5240c58c09df56a280b04cd0c9bb8` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Perfection.lean/declarations/instance-source-edition-6.md) | 396 | `declaration-track:e1fc20c4b05163b6f7039b1e2ffde22c8eca6b83656fac9e7e67f4cffe563d57` |
| 49 | `def` | [preVal](../../../../CommutativeAlgebra/Perfection.lean/declarations/preval.md) | 405 | `declaration-track:177c698839ef9ea88b4f5295b6605ce69c38a47484024f9af6075ab267e6981a` |
| 50 | `theorem` | [preVal_mk](../../../../CommutativeAlgebra/Perfection.lean/declarations/preval-mk.md) | 411 | `result-track:ea31b99dd6c7f628ff781090dc57a9e629da4204f1041953333f46e45184d47e` |
| 51 | `theorem` | [preVal_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/preval-zero.md) | 421 | `result-track:82286223310f2073d1e5cc0c57d97966d2222f1fee89094516007bb2faf0a5a5` |
| 52 | `theorem` | [preVal_mul](../../../../CommutativeAlgebra/Perfection.lean/declarations/preval-mul.md) | 425 | `result-track:bbf81c46f0a9aefa8fd9f6bdef066113567b34e00391a94ee7cde510c60206cd` |
| 53 | `theorem` | [preVal_add](../../../../CommutativeAlgebra/Perfection.lean/declarations/preval-add.md) | 435 | `result-track:bde51b2586de0cc57bba62b79eda8a011bbd01cb74d364ccbf12a5ae8ad23eb7` |
| 54 | `theorem` | [v_p_lt_preVal](../../../../CommutativeAlgebra/Perfection.lean/declarations/v-p-lt-preval.md) | 449 | `result-track:4f5085c9587e5509e2ad53073a28ff9f16245012aa38ec83e7effa4ff9b61def` |
| 55 | `theorem` | [preVal_eq_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/preval-eq-zero.md) | 457 | `result-track:09efa76efa8875c7d48170b2f175675a9c980b51f2b4735fa6dd7fd92b52c520` |
| 56 | `theorem` | [v_p_lt_val](../../../../CommutativeAlgebra/Perfection.lean/declarations/v-p-lt-val.md) | 467 | `result-track:caf9f5b05d3fdf29b6d8e894ad35b216d3ebaf2fe19138d827a1d73b553d0827` |
| 57 | `theorem` | [mul_ne_zero_of_pow_p_ne_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/mul-ne-zero-of-pow-p-ne-zero.md) | 477 | `result-track:1591d2b8d7b6eb8271cf542b8d89a7465539e8daff552426ee736c59f4799a8a` |
| 58 | `def` | [PreTilt](../../../../CommutativeAlgebra/Perfection.lean/declarations/pretilt.md) | 502 | `declaration-track:b780be07a27505ca2830491a1f3f359492a2df6820e4c6d3500eedcb49594df9` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Perfection.lean/declarations/instance-source-edition-4.md) | 508 | `declaration-track:b8e725a772139330262bd24d7ac889eb943f9f8a812193dac4f6528658361141` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Perfection.lean/declarations/instance-source-edition-3.md) | 511 | `declaration-track:a225b6a98c8a263579a8affd6a472e497843043113ea7da1173d426af655258b` |
| 61 | `def` | [valAux](../../../../CommutativeAlgebra/Perfection.lean/declarations/valaux.md) | 523 | `declaration-track:290bc50913ec37f8128124f1fe4378f6ac541288d581c54dae984379d3ec529d` |
| 62 | `theorem` | [coeff_nat_find_add_ne_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/coeff-nat-find-add-ne-zero.md) | 531 | `result-track:ae215bd83e9d1cbbbbd2726ca6c2603e1d3068bd035cff1f95638e61b1eadbd8` |
| 63 | `theorem` | [valAux_eq](../../../../CommutativeAlgebra/Perfection.lean/declarations/valaux-eq.md) | 536 | `result-track:0828dc8bd5d277055e4860ed4555c12eafefe4474ab6918c9a50a7ca3423e3ad` |
| 64 | `theorem` | [valAux_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/valaux-zero.md) | 554 | `result-track:dafab2f9604f8ff2de04b34b7a0673e7010cf541ee2cf8def9894ed749adc6ec` |
| 65 | `theorem` | [valAux_one](../../../../CommutativeAlgebra/Perfection.lean/declarations/valaux-one.md) | 558 | `result-track:d6aa115ff48f7704a985afd0aa7fec023b11178126102139c5ba74abec16a410` |
| 66 | `theorem` | [valAux_mul](../../../../CommutativeAlgebra/Perfection.lean/declarations/valaux-mul.md) | 566 | `result-track:011389751f69aeed74b7d17c2ef1922b5a09d84c0b11065176f64fc2c9d7d28f` |
| 67 | `theorem` | [valAux_add](../../../../CommutativeAlgebra/Perfection.lean/declarations/valaux-add.md) | 585 | `result-track:8f270b729e301e566159b2a222b902ec2ef2a5df173bb6d1239abbae7dd76c05` |
| 68 | `def` | [val](../../../../CommutativeAlgebra/Perfection.lean/declarations/val.md) | 612 | `declaration-track:e80b5a1606808d1c3d0a08647fcfe5615e0da4868e982639c6375b6466022ca1` |
| 69 | `theorem` | [map_eq_zero](../../../../CommutativeAlgebra/Perfection.lean/declarations/map-eq-zero.md) | 622 | `result-track:7bdd89ce39f580b503ef499173f23decdcd03d263a6f3ddb328515e0f4156641` |
| 70 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Perfection.lean/declarations/instance.md) | 632 | `declaration-track:72bd3495719fb8a054acf089578162bbfcaa23c2d050e74378d056c2b553927b` |
| 71 | `def` | [Tilt](../../../../CommutativeAlgebra/Perfection.lean/declarations/tilt.md) | 646 | `declaration-track:30ea90aac443a434807c8bbddba5ba3aa634b7d6a5b416f1555415ff922ddcaa` |
| 72 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Perfection.lean/declarations/instance-source-edition-2.md) | 652 | `declaration-track:9136be01e509b106e1c64608e8b4532c6bbefdd0bf9b0f690af54fa3fd1aff82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54bd9f7a5e90ae83493ad7d8b2513c2beb727a52581597258243dfffd6d98ed6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean","GRWTSK/_verification/specifications/Algebra/Perfection/Variant17ec6024b797ab9341122923e3bfd09e232ca4214e27f993867a5dc67bfdd530.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
