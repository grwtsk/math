# Verification target: Padic Numbers Namespaced Norm Eq Pow Val

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03992962c56bade9f45eae6542bea6aa3fcdf176",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03992962c56bade9f45eae6542bea6aa3fcdf176`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PadicSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/padicseq.md) | 80 | `declaration-track:0e15a94d1cc266b1e5ba8b6e793b6dc3263c811e2f85b2fddecc241b27d74cc6` |
| 2 | `theorem` | [stationary](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/stationary.md) | 92 | `result-track:ce1eaf8d4a98771f6457eaae13e232b8519dae5293f5cdb29163976ac709f03e` |
| 3 | `def` | [stationaryPoint](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/stationarypoint.md) | 113 | `declaration-track:680dd43274ce7b811a0bd5c2f61560c0468f16ee132cbecba338df9fd7daf2cb` |
| 4 | `theorem` | [stationaryPoint_spec](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/stationarypoint-spec.md) | 117 | `result-track:84a2873a540f6373cf3d377e8cfbccd7c44302ca6f9be0309f916dd0823d598a` |
| 5 | `def` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm.md) | 125 | `declaration-track:341b596a5cfd5a6a130478c160a418b9dd130b4a9e41deef2ebc32790d65b5d6` |
| 6 | `theorem` | [norm_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-zero-iff.md) | 129 | `result-track:55d592ff24055db346b911d2958215b2a5531354828aef523463a225b8cb4e49` |
| 7 | `theorem` | [equiv_zero_of_val_eq_of_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/equiv-zero-of-val-eq-of-equiv-zero.md) | 153 | `result-track:c693b6457ac3d115582d970adf74296ab18a6632a7795a30f3839823684793ed` |
| 8 | `theorem` | [norm_nonzero_of_not_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-nonzero-of-not-equiv-zero.md) | 159 | `result-track:02922672be92722781755183b0a066dc8117c7e3c9ea08dab54fd0e362fd3112` |
| 9 | `theorem` | [norm_eq_norm_app_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq-norm-app-of-nonzero.md) | 163 | `result-track:9c29f9c89969cbaeefb9ac479310f1620d59f0bdf75482de8eb5c01b299c5604` |
| 10 | `theorem` | [not_limZero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/not-limzero-const-of-nonzero.md) | 170 | `result-track:c0e176b3811040d59e86d44f84356da1dcfe99d833816fef564a2f24a2da8232` |
| 11 | `theorem` | [not_equiv_zero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/not-equiv-zero-const-of-nonzero.md) | 174 | `result-track:2a9207da2b4042bdf14e275409ae9b40ffc01aec1e08ce2e584048aa3f9e93a4` |
| 12 | `theorem` | [norm_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-nonneg.md) | 178 | `result-track:568fd8f4620eb9fa728f295f7fb58293fdcc92e2d61921f4777585a03b98531b` |
| 13 | `theorem` | [lift_index_left_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/lift-index-left-left.md) | 183 | `result-track:36a5e0cdb542486708c5d424baa10d1490b90cf1d30012a22be83d8c7b9ea50b` |
| 14 | `theorem` | [lift_index_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/lift-index-left.md) | 192 | `result-track:68f65ced6360fe65bea9b3dc4991eaa2741eef599248e174ffe42d21e2c0b005` |
| 15 | `theorem` | [lift_index_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/lift-index-right.md) | 203 | `result-track:c94d797855c27942aaa273ee9b1f3a48c3aeea6f112ff7a6232e2f1aba95bbc2` |
| 16 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation.md) | 226 | `declaration-track:1b6fbeccb21e2ee1b71efa113ccf0f67abdfb4d56d164d7fbfbfa6a8632a6ebe` |
| 17 | `theorem` | [norm_eq_pow_val](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq-pow-val.md) | 230 | `result-track:507121beb15506451604bf2e50529bee68a03d7e2eaf8a2a5404c6162b33b63f` |
| 18 | `theorem` | [val_eq_iff_norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/val-eq-iff-norm-eq.md) | 241 | `result-track:8cf06351e68626cf31bf6f04cdade9e1cefc520ce2773af6f3ffb1d2aec717a2` |
| 19 | `theorem` | [norm_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-mul.md) | 289 | `result-track:51b432768e874638d5a700c221cace338e3c3823cac78dd6d588eb2d02f31765` |
| 20 | `theorem` | [eq_zero_iff_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/eq-zero-iff-equiv-zero.md) | 306 | `result-track:9c0e1fa60eecdf9230983366c70028e442b15cb31c74811a4d78aafb485ffe85` |
| 21 | `theorem` | [ne_zero_iff_nequiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/ne-zero-iff-nequiv-zero.md) | 310 | `result-track:7edd0da6cd794e48e0137817e01c7957c3a7636c351ce765ab2f46f08e5b0eb7` |
| 22 | `theorem` | [norm_const](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-const.md) | 314 | `result-track:80fb0c3d5db7e8145730a404d69d9c3cd5fb32b6edaf45b1aaf92b9d5cf98b22` |
| 23 | `theorem` | [norm_values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-values-discrete.md) | 323 | `result-track:df057e390877d68ce021057026b866e0eb7d929b8deaa7c3adc82565f0dbca58` |
| 24 | `theorem` | [norm_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-one.md) | 328 | `result-track:f98dca1e4877f025cbadc86a63242e646c001eece7eaddfea69d758712c57831` |
| 25 | `theorem` | [norm_eq_of_equiv_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq-of-equiv-aux.md) | 333 | `result-track:6f15df22c5f49ec62111283b5e80d7912a9ebe073e6f2d9ac04d85e461b37538` |
| 26 | `theorem` | [norm_eq_of_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq-of-equiv.md) | 355 | `result-track:2c0ff8d8ea0a20857e22cd15f098d68c8651783a8f9f8712ebc110bd33d9f233` |
| 27 | `theorem` | [norm_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-equiv.md) | 368 | `result-track:12e95df396b661994bae4bac2db6b1c1e0656a3bdcec5bff1c8f410058542488` |
| 28 | `theorem` | [norm_nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-nonarchimedean-aux.md) | 377 | `result-track:98ff06c71c2d93cd6090f76dc5a620e2011f82766081c7f9d8a3b5fca1e40410` |
| 29 | `theorem` | [norm_nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-nonarchimedean.md) | 384 | `result-track:7623055746bbd9acb95db022fc130ccfda1cbdef837a1eda50c81f839463cbb0` |
| 30 | `theorem` | [norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq.md) | 409 | `result-track:51d840d2e443b3de5339a3249ae140f372294f9b52cf8e1fbce66146c89a39ca` |
| 31 | `theorem` | [norm_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-neg.md) | 430 | `result-track:3208d8da6fe09ca12761ae85129edf57d3016e6b585f8736a28703a277df28af` |
| 32 | `theorem` | [norm_eq_of_add_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq-of-add-equiv-zero.md) | 434 | `result-track:87c6dd553245c6f9c9f57a477e03f841ff9737ea6fce7c98ec45e33a05886fd7` |
| 33 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/add-eq-max-of-ne.md) | 441 | `result-track:5d65023a8e47824317505189b133cc55bbe0c62baba269c564a40a7a77b646d4` |
| 34 | `def` | [Padic](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/padic.md) | 471 | `declaration-track:355cabc6848f9758c054cd3cd2b68820a098004854b5dcb5f708fcc8778a483b` |
| 35 | `instance` | [field](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/field.md) | 485 | `declaration-track:17deedc10cf2a6f9e75ce159a0f71e61f2d45ac959c06254e6d60892eb401972` |
| 36 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-8.md) | 488 | `declaration-track:881b8d8c8e2ee1d2f16da9b6e2a2610688d947756dfebe350bc0d6c5eff21ab9` |
| 37 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-10.md) | 492 | `declaration-track:9f2508e0e0cebf14fd38685da15c503e64917e9d796ebedea20e1e63cf6cd927` |
| 38 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-11.md) | 495 | `declaration-track:ae4dc772d65b7e1441b5eb96826840b28bb5bc9eee1fde20e5205f8e319c5465` |
| 39 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-6.md) | 498 | `declaration-track:684a7bbdbeae2f8bac6ae1c1390d49ad096d718269c24cfcda6fdb003605d625` |
| 40 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-7.md) | 500 | `declaration-track:7718b4dd2a2be4ea721016f1a03b648ce15f2bf8567a82a00305bb99a39a8a19` |
| 41 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-3.md) | 502 | `declaration-track:54466736c243406235317d4bf60d8ebb392f1403ad1d61ae852b9eb7b4606ea6` |
| 42 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-4.md) | 504 | `declaration-track:62e3b38832bc2fc05b324194307a32a6a21b974188a848266e34ef5b173f340b` |
| 43 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-13.md) | 506 | `declaration-track:d8ca1f390fb46f179c88c4503d2cdbecbf933469791d4f5dc9aee44b610072f0` |
| 44 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-15.md) | 508 | `declaration-track:f832cb170df057e9c19dcaded965367df34775f30570d88e3ebf5ac473df81bf` |
| 45 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-2.md) | 510 | `declaration-track:35ec0a9ce1fe7abe33a132af0956d48bd90e072bfa0b025e9759620cd4abf563` |
| 46 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-5.md) | 512 | `declaration-track:67c4b6c890ef647a2539b9f4b4414e7be7ef6247bbac6c9dd4fc7fe8e483e6d1` |
| 47 | `def` | [mk](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/mk.md) | 515 | `declaration-track:3ee5f90b2b1b12833fe0337adf0ba38276473695b4d933c39b4c34fe618e693a` |
| 48 | `theorem` | [zero_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/zero-def.md) | 521 | `result-track:f1d77bcfc5dcdfe24ee714f4b8032da3ec47105b137a53ba961a87e86eb35ca2` |
| 49 | `theorem` | [mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/mk-eq.md) | 524 | `result-track:a9da6b67cdf1fb29af1e4ffeecd7acbdab92f85b83e83be4027c6224ed4dbbba` |
| 50 | `theorem` | [const_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/const-equiv.md) | 528 | `result-track:57db7be3ac8501231c19a068581371773048748bd6c890bddfd8a79a64dd1fb1` |
| 51 | `theorem` | [coe_inj](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-inj.md) | 534 | `result-track:6a9d8773cae3b6bccd357b22aca4453af570efbf82f6454944c3db65741a01e0` |
| 52 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-16.md) | 538 | `declaration-track:fa69becf3c46ad62b3599c5ef357051f8676913e75488e15fc1dafebba3325a8` |
| 53 | `theorem` | [coe_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-add.md) | 545 | `result-track:ab4136fb58a836fe71935d43944e68fcf188f367570193824b347fb49e9fb836` |
| 54 | `theorem` | [coe_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-neg.md) | 550 | `result-track:2464b399d42f9397962d7b77c6af93c8901627ccd800a9699dd521a03c5b2486` |
| 55 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-mul.md) | 555 | `result-track:ebd2086e7ba0816ae03415f6046fb9c8d8ad894f59d8310f8c50545c6a4098ea` |
| 56 | `theorem` | [coe_sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-sub.md) | 560 | `result-track:4f3ab5b3c0dfe086df91925b385f4a04474e372f97563c669baa9740f4dfbbee` |
| 57 | `theorem` | [coe_div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-div.md) | 565 | `result-track:e091755e4fa35458875513bd97d7ab3aeeb688927c45cba016910463944e0848` |
| 58 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-one.md) | 570 | `result-track:5c8596682ce1ea879348ec57f02db0b170467075257e686ecfb103279b8a05f9` |
| 59 | `theorem` | [coe_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/coe-zero.md) | 574 | `result-track:06c9ea7bc74528cdc9e4ff576fd6d6945eea3b47edf4c808ab6ece967a45ccd1` |
| 60 | `def` | [padicNormE](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/padicnorme.md) | 583 | `declaration-track:3fce2394a446374e8ce1e8f6434fae3e46a89e1bee324315d05905f763fbd42e` |
| 61 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/defn.md) | 608 | `result-track:f2e6241f33279f8d1e9614a6bbd167811fd9d62c301d97068ffc30e2d0b82b8e` |
| 62 | `theorem` | [nonarchimedean'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/nonarchimedean.md) | 630 | `result-track:6c7b3b53c3124d88bd5841e253e460e8424158a38bab5a00bf35e53f364a7a4d` |
| 63 | `theorem` | [add_eq_max_of_ne'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/add-eq-max-of-ne-source-edition-3.md) | 637 | `result-track:ebe119e44fa27f484fc900674875ca966d4f12f7056440a0332e986923cb11b3` |
| 64 | `theorem` | [eq_padic_norm'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/eq-padic-norm.md) | 643 | `result-track:594726d4dacef5756ee792b74be6bd49b3fc8d1d0ea79a972c661a1d135b4e54` |
| 65 | `theorem` | [image'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/image-source-edition-2.md) | 647 | `result-track:854ef4e53cf48290b173a879638987a8666f6a022ccf3bf73cd837c25acb056a` |
| 66 | `theorem` | [rat_dense'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/rat-dense.md) | 665 | `result-track:08e08db5e2ad9a54f59926a77f9bd1b530513ef365e2470c04b979d0e2a36def` |
| 67 | `theorem` | [div_nat_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/div-nat-pos.md) | 688 | `result-track:9f01818264d9f5de7caa5da3f95695bf1e806a0aa38a61780a5c61f4b6b985d6` |
| 68 | `def` | [limSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/limseq.md) | 693 | `declaration-track:c8e1060a8533e7c6a9ce9dbcdcb443b41bf1ad495107c3dcec9c06974a597520` |
| 69 | `theorem` | [exi_rat_seq_conv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/exi-rat-seq-conv.md) | 697 | `result-track:1a8dc0f571f6d34b23795bbcab3b67e8452a4402783885887b35332c83a0e052` |
| 70 | `theorem` | [exi_rat_seq_conv_cauchy](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/exi-rat-seq-conv-cauchy.md) | 709 | `result-track:d024550f7354ca6606fcd0eaa5c8b11a20d672a059bb9827ac957e66ab40dc03` |
| 71 | `def` | [lim'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/lim.md) | 737 | `declaration-track:160fd906b30715f8f5c8f9889a004a75e5824b93caf5db500f6a861b21ce78c5` |
| 72 | `def` | [lim](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/lim-source-edition-2.md) | 740 | `declaration-track:dc05b9baf830bd5689156ce6e71991efd2de5fe0b6a13d8215c5be90bd9a8249` |
| 73 | `theorem` | [complete'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/complete.md) | 743 | `result-track:37f008fb373209871e9e5e393a6a333ece98f25af6646114cb2e6711d4ec5be5` |
| 74 | `theorem` | [complete''](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/complete-source-edition-2.md) | 757 | `result-track:499940c75eec0887c3e807602d32319d8dd4fb2e09c7d0d202fc0d5037fed30e` |
| 75 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-9.md) | 770 | `declaration-track:8fa864bb54ad85c0ca6a93ad26242c171829fc6193cc96763dc9418291fb855a` |
| 76 | `instance` | [metricSpace](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/metricspace.md) | 773 | `declaration-track:73441592f8a314d48598bba94fda6329adcf1bb04517848c9a67edd327f3f83b` |
| 77 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-14.md) | 788 | `declaration-track:e80c1ab6a172178e356e15a88c7376e37d5fa3058175c1de2a682e37fd1aa018` |
| 78 | `instance` | [normedField](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/normedfield.md) | 791 | `declaration-track:b04e969944e4994cfb11260ec14ea4634f6c17201c206d3a3f2c5a433329b6c2` |
| 79 | `instance` | [isAbsoluteValue](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/isabsolutevalue.md) | 798 | `declaration-track:6975dd96e80d566cbad0a7242ec89c05db4ca6a7b36711de7c81c43c87011bd0` |
| 80 | `theorem` | [rat_dense](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/rat-dense-source-edition-2.md) | 805 | `result-track:6f32f34d897566581bbf871f5c6f2e5345b63f36efeb8b55d89a4f2266c628d7` |
| 81 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/mul.md) | 822 | `result-track:b8b0804a0424f3a7a66be41ff29db53a1c3c66882245d5bcae31e5131c51b893` |
| 82 | `theorem` | [is_norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/is-norm.md) | 825 | `result-track:21d604912e8e8603447b095aeefc13e871578253966549578550d18fb38992b9` |
| 83 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/nonarchimedean-source-edition-2.md) | 828 | `result-track:99926c593fe78db7bb78194bc09f3ac9d5ef5ac80b9450b0c363b740d247fac2` |
| 84 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/add-eq-max-of-ne-source-edition-2.md) | 833 | `result-track:6b28c2c6731ff341295ebcafe62195838703f15043b4d92c20d90b07ff3f73e3` |
| 85 | `theorem` | [eq_padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/eq-padicnorm.md) | 840 | `result-track:9f9a22341771bd7593426c42137fdcbf246a2ad4c1e5d4c4ea9e32b4509addb2` |
| 86 | `theorem` | [norm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-p.md) | 846 | `result-track:963bfbbbf1fca12bfa818dc927328475c48d67d2e71b005862ed57899fa64553` |
| 87 | `theorem` | [norm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-p-lt-one.md) | 853 | `result-track:939609a6da3a537d40638cd7c01a745841b5be03d2277c181268c879b5fe85ee` |
| 88 | `theorem` | [norm_p_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-p-zpow.md) | 861 | `result-track:924c8be6c27b551aef5a702acdcc17aa77517c836ce8cd4375246a3462f0bc72` |
| 89 | `theorem` | [norm_p_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-p-pow.md) | 867 | `result-track:934653437e1a70d9df5ec3e4f3162108816da342c6925d41e757a368d080d33e` |
| 90 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance.md) | 871 | `declaration-track:1a03df2631fe0eb4b81608ca9abaa6100d1ba2b9de7a06ce8dbc1cdbb375bd5f` |
| 91 | `theorem` | [image](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/image.md) | 878 | `result-track:5fe3221666e4f82be21c3fe4d037d10ae539e807170f2a6f3c5265a46659ad63` |
| 92 | `theorem` | [is_rat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/is-rat.md) | 885 | `result-track:7581328e261dfddd671cdc427e4ebe4d20cee1ce6f9bd01962bf8e62e2b21b71` |
| 93 | `def` | [ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/ratnorm.md) | 895 | `declaration-track:6bc787f74f1e8dd9b18eaa4b83dcf4ff0dc9ce0784eda35f4c8cfb90100627ed` |
| 94 | `theorem` | [eq_ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/eq-ratnorm.md) | 899 | `result-track:4b0ae924f39145976ac58229cf81ab9a5e3e3252aca127ef9645d0704d3f20dc` |
| 95 | `theorem` | [norm_rat_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-rat-le-one.md) | 903 | `result-track:23a17620fb677b111783f0d5990f8d2f75b3f1af882240f3d41e0bd6fa561977` |
| 96 | `theorem` | [norm_int_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-int-le-one.md) | 921 | `result-track:7f9cb63df175e4c6c79b0d2734f21fdfcee082517a46ea4280299ba35e46a9a7` |
| 97 | `theorem` | [norm_int_lt_one_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-int-lt-one-iff-dvd.md) | 926 | `result-track:d01f9fd3ae8ea9523dc98a071feb0b509ed747a6b1498d5109bb1e7e0e143675` |
| 98 | `theorem` | [norm_int_le_pow_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-int-le-pow-iff-dvd.md) | 948 | `result-track:19e86bcd0af94ebbd92e202c15390c429411fe753c7a64095b55ad2d2e91f455` |
| 99 | `theorem` | [eq_of_norm_add_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/eq-of-norm-add-lt-right.md) | 956 | `result-track:3425d50858b27dc2790650abb957e94f9c439dbc91ce392296ab71280706bc24` |
| 100 | `theorem` | [eq_of_norm_add_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/eq-of-norm-add-lt-left.md) | 961 | `result-track:4698de29698b551a19fcfb97e99bce9f728a4318678bdfce560512bb7771c6b3` |
| 101 | `instance` | [complete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/complete-source-edition-3.md) | 976 | `declaration-track:5c4c63af21242c18fc0abcec4f40c544b383b520a76247eb27f7806f9b8e6cfd` |
| 102 | `theorem` | [padicNormE_lim_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/padicnorme-lim-le.md) | 999 | `result-track:3e6527425f26c85ae923f0ecad3a57e9c61a1d7cf1f41d4a39c4a06380ed2adb` |
| 103 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/instance-source-edition-12.md) | 1018 | `declaration-track:ae9ff98ef55e6bb0723cdf216be4e8bee4655bc3c1601ec0a79e44d1e74a2ae9` |
| 104 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation-source-edition-2.md) | 1032 | `declaration-track:adfca351327fa8fb02738473ba04e8452984c9038e9fc017c5475fb0966c7449` |
| 105 | `theorem` | [valuation_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation-zero.md) | 1043 | `result-track:5e9f0b0ceb4fe7f3086a4cf49cf27c7167e5a9a8dce9c4d78523c2ca490d574b` |
| 106 | `theorem` | [valuation_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation-one.md) | 1048 | `result-track:b569e94ee843d10b311b3e4a3df27f6638e22231b8be44b48d6cbeb8407844db` |
| 107 | `theorem` | [norm_eq_pow_val](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-eq-pow-val-source-edition-2.md) | 1058 | `result-track:b94b0f16ba43eed5e00df343ccf7bba86baa0e7498be35aef6a944cad22a4944` |
| 108 | `theorem` | [valuation_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation-p.md) | 1073 | `result-track:021199644d4f066c143fe0d4af1531666928f840a2d5864202fa24b6432b9f1e` |
| 109 | `theorem` | [valuation_map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation-map-add.md) | 1080 | `result-track:e4d42905761cf7a155ce496fe7b14a427d34673dcc73f4ef3f2f516a5ba535f6` |
| 110 | `theorem` | [valuation_map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/valuation-map-mul.md) | 1097 | `result-track:da2292d9d1591e4d6b6e7de5e6e842f3bf0399e611151181a4780598112854ef` |
| 111 | `def` | [addValuationDef](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluationdef.md) | 1112 | `declaration-track:da7879be60aed3d8fe0fa49f838ab8c6d95fcbea9c82b4dd6985ca9b20af4e31` |
| 112 | `theorem` | [AddValuation.map_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluation-map-zero.md) | 1117 | `result-track:075b0d059c77f54682e07f345417d099ba874b6882429d7e6d8c210506e2a47a` |
| 113 | `theorem` | [AddValuation.map_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluation-map-one.md) | 1122 | `result-track:38bdce13030a92014072ae5b99e0434074c713da5bd3fe7b940dc8de7c1b007a` |
| 114 | `theorem` | [AddValuation.map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluation-map-mul.md) | 1126 | `result-track:d35a31fa700ed158de8ddc9ba95f4e780165601b7cabcf038922ca9161151a63` |
| 115 | `theorem` | [AddValuation.map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluation-map-add.md) | 1137 | `result-track:615775ab1ac83bae2442a3dd5427c4a8503a4adc9a8bc989bd37d98588046bee` |
| 116 | `def` | [addValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluation.md) | 1154 | `declaration-track:8bfe7139a4eab039f98d058ba68b5c74e0ed83339f2e46ff7abc780c170eedd4` |
| 117 | `theorem` | [addValuation.apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/addvaluation-apply.md) | 1160 | `result-track:e44dc0eeab02f3a3e2caecb7b7a6f8591a17c58f39ecaa7293aedd50613c5551` |
| 118 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 1170 | `result-track:eb68fb777f974b35318d02856c91491b3c240f9372ba425e784a137f27dd32f1` |
| 119 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 1183 | `result-track:ad1aa63b6a5d0b54b511291375f7164d537b20a00aeb8646959a9045e6bbf3d6` |
| 120 | `theorem` | [norm_le_one_iff_val_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedNormEqPowVal.lean/declarations/norm-le-one-iff-val-nonneg.md) | 1188 | `result-track:fa3c180d3a957d0de973e8fd643b088046d05d8374200b87f164811990617d92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cba1f822d8cd6c256ff6ac549278ca2679279be7dd0265983f90b07484f319e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant4aad69b2185ec5c5dfcf317cd673cb636ff838f8f7ece23af2a937d8ee50ecf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
