# Verification target: Padic Numbers Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79040472922216be2c0d66793e3b2a3965347e9c",
  "lexical_observation_count": 142,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79040472922216be2c0d66793e3b2a3965347e9c`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean.json)

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
| 1 | `def` | [Rat.padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-padicvaluation.md) | 69 | `declaration-track:e055f384d716773bdb36a07c0bf422c0a2278b6f3c190137076823bb6c94ce38` |
| 2 | `def` | [Int.padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/int-padicvaluation.md) | 82 | `declaration-track:f406fa375d50b0c1cc82ee7a91396c6cc635c8f8234bb6b548bd44f154094c15` |
| 3 | `lemma` | [Rat.padicValuation_cast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-padicvaluation-cast.md) | 86 | `result-track:d514525dbdd903537f2cb7c73106385e5b12c715016bc03c740dec7e2bc489d7` |
| 4 | `lemma` | [Rat.padicValuation_natCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-padicvaluation-natcast.md) | 91 | `result-track:261d0b90b0571e35802c1c6f5d37aa455ba1a86823b30bcbc93f7dd6888793e5` |
| 5 | `lemma` | [Rat.padicValuation_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-padicvaluation-eq-zero-iff.md) | 95 | `result-track:30b0be8543c346992e1e3f8e75274da53a851199462f066607a8e03aa1524c53` |
| 6 | `lemma` | [Int.padicValuation_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/int-padicvaluation-eq-zero-iff.md) | 100 | `result-track:0e0ea17e98bd11f1ccbeedaae09002f0220ea3c4ff8a3b883d71ee64da0ce6bc` |
| 7 | `lemma` | [Rat.padicValuation_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-padicvaluation-self.md) | 104 | `result-track:287fd677db87c7ea70fb8b36e0e309349f7763db7f53739a96ae358c7f172995` |
| 8 | `lemma` | [Int.padicValuation_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/int-padicvaluation-self.md) | 109 | `result-track:cdb887fb9b6ff577631f6698a105a50d675a2153f6acf46ca4fe365348731daa` |
| 9 | `lemma` | [Int.padicValuation_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/int-padicvaluation-le-one.md) | 113 | `result-track:d0a197dd35adae8d0749188f529bf3636b69c255fbd5c94b1102df8793f5f0e3` |
| 10 | `lemma` | [Int.padicValuation_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/int-padicvaluation-eq-one-iff.md) | 122 | `result-track:fca4b6e6b0cdbd2f94231489eb8d4019428007c20ec046d447cd8ddc9af97396` |
| 11 | `lemma` | [Int.padicValuation_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/int-padicvaluation-lt-one-iff.md) | 131 | `result-track:d189d79bca02e18a90355d88cfd62318e5df0b2fa9e1ad998344e59226e3a5af` |
| 12 | `lemma` | [Rat.padicValuation_le_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-padicvaluation-le-one-iff.md) | 135 | `result-track:1bc270fe561f2ba296b583f5dcb6b0cf482cebfedbf5e2baecfed54187763674` |
| 13 | `theorem` | [Rat.surjective_padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-surjective-padicvaluation.md) | 151 | `result-track:9adc1a9eb8f7f252aa9a6bfeeda2dcbc0101c5fab247d7eb1d2cbd04544dbee8` |
| 14 | `abbrev` | [PadicSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicseq.md) | 168 | `declaration-track:6e9f3ef8804625e6a8e1acfef2a9025bf1bacb20e47e825305ddae30369edd9b` |
| 15 | `theorem` | [stationary](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/stationary.md) | 179 | `result-track:dc5259c8f29f404f84d7b7b794f6dec76370dd4ce5eb8eba709c9f0ce57890c2` |
| 16 | `def` | [stationaryPoint](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/stationarypoint.md) | 199 | `declaration-track:9b762fcd9e2a2f25ff770e65b24d336bba5a450c0902167db0d1cd3bdc012a89` |
| 17 | `theorem` | [stationaryPoint_spec](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/stationarypoint-spec.md) | 202 | `result-track:5ce8c53a3a9c325474134fc188f3ba654afc004a3b8304832218880047b59694` |
| 18 | `def` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm.md) | 210 | `declaration-track:9aab6481d1cddb9c8c4503167f46b7d68855717152c083fc6f37426fc6dfcb97` |
| 19 | `theorem` | [norm_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-zero-iff.md) | 213 | `result-track:a458382497baafbed7202b6260678d7c1ff617bc7c667f3f5fb1af6ff36be955` |
| 20 | `theorem` | [equiv_zero_of_val_eq_of_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/equiv-zero-of-val-eq-of-equiv-zero.md) | 236 | `result-track:e4395798f33e6051b83cdedd1eaae024677e4d5a7bc00678be175e57a8939a87` |
| 21 | `theorem` | [norm_nonzero_of_not_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-nonzero-of-not-equiv-zero.md) | 241 | `result-track:0c8b411cbe654fc0de2948455d0c0a53a4fde917051f71e843f836c6919bd4dc` |
| 22 | `theorem` | [norm_eq_norm_app_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-norm-app-of-nonzero.md) | 244 | `result-track:61750b5e7268c4209019d352ace783ccabfe04b3172a0bbf1d5ae13596b97730` |
| 23 | `theorem` | [not_limZero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/not-limzero-const-of-nonzero.md) | 250 | `result-track:114fef2f596cde660bf15d2b41b422c380942f420243bec7cdf0cdb57d8afc4d` |
| 24 | `theorem` | [not_equiv_zero_const_of_nonzero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/not-equiv-zero-const-of-nonzero.md) | 253 | `result-track:2030a596be8e578da440c9bfb37340e34474f05123873b4c6bc64fc6d0f298dc` |
| 25 | `theorem` | [norm_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-nonneg.md) | 257 | `result-track:8289bfbe173f6d17e3129ba5dc934b5777743d229b51f22e988e4ff794407cad` |
| 26 | `theorem` | [lift_index_left_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/lift-index-left-left.md) | 261 | `result-track:e2a39e74c5e3c1765fe46a9d1fc3bd5a6f9b040a59b2b4b6c224490295a3d1ae` |
| 27 | `theorem` | [lift_index_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/lift-index-left.md) | 269 | `result-track:5030b0e1b43487110cb08e0667fb14674a42edadff1e78802dc9f06363501b50` |
| 28 | `theorem` | [lift_index_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/lift-index-right.md) | 279 | `result-track:9aea7c3fcf3eef839ac7b143ccdc31b922759e122a9e5e584a300668c3439ea8` |
| 29 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation.md) | 301 | `declaration-track:5cd6e2a8659a6e33febd54135d4bd79f294c37a94689b22c00dbf35534664d9d` |
| 30 | `theorem` | [norm_eq_zpow_neg_valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-zpow-neg-valuation.md) | 304 | `result-track:9e8cfa122c4edce3ea8d73071a9e3785f4e38b4e5a76424efe8373bdf227f139` |
| 31 | `theorem` | [val_eq_iff_norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/val-eq-iff-norm-eq.md) | 315 | `result-track:6df9c3b2f6e654f9697ddc12e5da2d44ff5fbc348d8f78d7a3d029f27d174b3e` |
| 32 | `theorem` | [norm_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-mul.md) | 361 | `result-track:06761f5f058d638d7616ff10cc762cfe2f0a86742efea19c634a33af3e36e187` |
| 33 | `theorem` | [eq_zero_iff_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/eq-zero-iff-equiv-zero.md) | 378 | `result-track:00c9815548dfa2d8c8ab70c588869778bba4d55f83e6cb91fc0dc4c022ddfc93` |
| 34 | `theorem` | [ne_zero_iff_nequiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/ne-zero-iff-nequiv-zero.md) | 381 | `result-track:cb0966fcba31420ac9063b07fe196eec77939ecb902432800c17ecd8d6afec55` |
| 35 | `theorem` | [norm_const](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-const.md) | 384 | `result-track:1b5267abedfb72cfaf58dbb69638316d9ae11058035740745b2d7879aade9f34` |
| 36 | `theorem` | [norm_values_discrete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-values-discrete.md) | 389 | `result-track:ef9bd3b0b25ece04cac69ceec105fce107c1b3deac22ca470efcc3f41746a80a` |
| 37 | `theorem` | [norm_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-one.md) | 393 | `result-track:a0717f21979093fa0fdbb3c1ca07a73b339ec28ecfac32aa96d926427bfbf7d4` |
| 38 | `theorem` | [norm_eq_of_equiv_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-equiv-aux.md) | 397 | `result-track:1e134a7c9b8067c441dd7ef37537ee9bbf1478d6941a6569ec584578fe70797e` |
| 39 | `theorem` | [norm_eq_of_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-equiv.md) | 419 | `result-track:13f8a66290199b41cbf96421e1de65ed1902b0f18baf84bdc027d1f86da726e3` |
| 40 | `theorem` | [norm_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-equiv.md) | 429 | `result-track:0608f0d01bfdffdb4767dcffd4121481448bb597f1c189eb50e0c1d6b805eaf4` |
| 41 | `theorem` | [norm_nonarchimedean_aux](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-nonarchimedean-aux.md) | 438 | `result-track:40009936443b70295751b636236cf524aae3ca300c99be9c91c64ceb5918816c` |
| 42 | `theorem` | [norm_nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-nonarchimedean.md) | 445 | `result-track:9c9df2ab9a22a3baddbbe1a1124b0ddfadefab4f8fe143aeed389b5a7416d823` |
| 43 | `theorem` | [norm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq.md) | 470 | `result-track:a8dbb8b49b66b61a20969ded3d54663b1a9cf767554c9e1c4c87e5f60ac482a1` |
| 44 | `theorem` | [norm_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-neg.md) | 491 | `result-track:8bc9cfd8737745ec4e4cbd95b74effcc859c9ea297071dc3c4367538e48239fc` |
| 45 | `theorem` | [norm_eq_of_add_equiv_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-add-equiv-zero.md) | 494 | `result-track:4d7c24fcb6c6af03260ea3f11cc2b94d2cb21a44b4150da12d52285defac995b` |
| 46 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/add-eq-max-of-ne-source-edition-2.md) | 500 | `result-track:b62de53af82602f096760cfcdaf3193ef9ec10e33d0caf65fcbe519d8c221b4d` |
| 47 | `def` | [Padic](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padic.md) | 531 | `declaration-track:6d17fb85a0282ed073c1ee31b0ecf9665a6601c321c132f7594953218fc46dd9` |
| 48 | `def` | [mk](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/mk.md) | 545 | `declaration-track:9f567aa6358db9c47498eb6a2f7e959581a93782fbc87c28cc51b56d7cf4db39` |
| 49 | `theorem` | [zero_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/zero-def.md) | 550 | `result-track:4cc58cd0801837083fd759a92c9b66c53f81d3c8efa8b20f514de7e8cfc02ed6` |
| 50 | `theorem` | [mk_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/mk-eq.md) | 552 | `result-track:7f7afdd5c073e07b088954e26b33997b247630978ae5f7af70f0d806fbc32c3e` |
| 51 | `theorem` | [const_equiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/const-equiv.md) | 555 | `result-track:784dc8f95d8b1025601baf767447fcf74298056dfb740aec31cc4415bc3e01fa` |
| 52 | `theorem` | [coe_inj](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-inj.md) | 560 | `result-track:a83cb6db14a1abe082dad54f9185d6d687213f2acd2357089b15943df8c202cc` |
| 53 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/instance.md) | 563 | `declaration-track:2549367ab4062ae0e64168be328d70997ab40af553035cfb704a81a22917d68e` |
| 54 | `theorem` | [coe_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-add.md) | 570 | `result-track:ea7610b25f1c83817b4cecfcbf861c3ee9590210ba0fee319e1b91244311d8b2` |
| 55 | `theorem` | [coe_neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-neg.md) | 574 | `result-track:6ed2d01e1912a7647d6894ae1fce835a2a10e64ac784c1ceb93472210cd060be` |
| 56 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-mul.md) | 578 | `result-track:90dce1757353a1d48565a6257805166e7da3164df35657f0c98471576ce756ab` |
| 57 | `theorem` | [coe_sub](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-sub.md) | 582 | `result-track:8c53664bbf5bba02b03fd05c9cf95535c6809e95e95aa1f0a7440b201358e6b2` |
| 58 | `theorem` | [coe_div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-div.md) | 586 | `result-track:e26daf17dce5a3334e11a1a004c104f58f422761061b8c541e45e8014af306e1` |
| 59 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-one.md) | 590 | `result-track:e5c965baf2a748ae4e2073e3952b603b8eff1755a1c91a82027473372a3d2fe8` |
| 60 | `theorem` | [coe_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/coe-zero.md) | 593 | `result-track:e9dd15982c868c0c9fb8435b1921753ba78b487300378fac2fa49181c6d01fbd` |
| 61 | `def` | [padicNormE](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicnorme.md) | 601 | `declaration-track:af0ef452daf3996acdc8189f9a68584ccb1c2bd811f562205d8e9acc76b0185a` |
| 62 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/defn.md) | 625 | `result-track:2dcce39252617ca3a180c4b15bb1fa2c74bb244f33aaec33db848aaccaad7ade` |
| 63 | `theorem` | [nonarchimedean'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/nonarchimedean.md) | 648 | `result-track:16a2e0a9f61b126809378862fc0008766300a14d4fe1fdc1dd230130535a33eb` |
| 64 | `theorem` | [add_eq_max_of_ne'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/add-eq-max-of-ne-source-edition-3.md) | 654 | `result-track:e48c4b78a9e1ec7ae955896e464882cb63054323ee1f21be829df1232c07dda6` |
| 65 | `theorem` | [eq_padic_norm'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/eq-padic-norm.md) | 659 | `result-track:d5125e62757d5b690d221b1369b626b6abe6aa175b6d848ba304664fc5129842` |
| 66 | `theorem` | [image'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/image.md) | 662 | `result-track:fd9e9bbfeb55b1698ab71ecc8b80fd2332b77fa0430c4a2a58004703998dd9b2` |
| 67 | `theorem` | [rat_dense'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-dense.md) | 679 | `result-track:035d310a7847bb58e9fda79bee55f67a6fa4b42baff5fe155a41d8e044d78b95` |
| 68 | `theorem` | [div_nat_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/div-nat-pos.md) | 698 | `result-track:ba3688ad30ba8aad02dacb826262d15388c45c8683cfd73706b6e45405ffa12a` |
| 69 | `def` | [limSeq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/limseq.md) | 705 | `declaration-track:82eb6ab6772679eaaed144f327b8588be4d208186990b7a8e3cf3131ce6146aa` |
| 70 | `theorem` | [exi_rat_seq_conv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/exi-rat-seq-conv.md) | 708 | `result-track:ae9e88d83fe696cf2692a45036f3722af387313bac80ebff6825a6b323f9cdd2` |
| 71 | `theorem` | [exi_rat_seq_conv_cauchy](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/exi-rat-seq-conv-cauchy.md) | 719 | `result-track:34c8466e93f2668973d65cb081a6c18a72530aede636ed56df1f8fe89063974f` |
| 72 | `def` | [lim'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/lim-source-edition-2.md) | 746 | `declaration-track:66688970feb20d49f18869d9347ef93ba6ef4613dbdf5c781f551d850cd18186` |
| 73 | `def` | [lim](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/lim.md) | 749 | `declaration-track:4d9debfbbff8a53e26149125bc5b6df6898adb49771a678f3d0a59b7dde1aa4c` |
| 74 | `theorem` | [complete'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/complete-source-edition-3.md) | 752 | `result-track:8edc543ed430d601f6574c2c0ed7e045df121d10f9cd8f3f08a3f84efa9181c9` |
| 75 | `theorem` | [complete''](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/complete.md) | 765 | `result-track:7c5ce7a62551e752f420d0e57912df5f10eada8b62965f72fef31a0c69b4a434` |
| 76 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/instance-source-edition-3.md) | 778 | `declaration-track:3b65ffd7e55b3a9af394d22a29e166058818e20f264cda0052d3de7e7622580d` |
| 77 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/instance-source-edition-5.md) | 781 | `declaration-track:b8978a3b6ecbb1d28cb0defa49870d45c25e2eca10499612b55d9dff04863425` |
| 78 | `instance` | [metricSpace](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/metricspace.md) | 784 | `declaration-track:855866b1ac0d460b41dcdbe6d6781538c9fae01f478f3c9cd0a43ffc510e8a6f` |
| 79 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/instance-source-edition-2.md) | 797 | `declaration-track:298b164660b081fe191fb0fb18c3de5d17242392cd57470e4d795aaf53874e37` |
| 80 | `instance` | [normedField](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/normedfield.md) | 800 | `declaration-track:ec0aeb2d746cd26b5ed1b786a75f721779317451023be91dfe20542deafe9eb6` |
| 81 | `instance` | [isAbsoluteValue](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/isabsolutevalue.md) | 809 | `declaration-track:5655c7a05c764451b48bb932b5c3b5e5b613f25bc070ae0d86b5b031a6d0b38e` |
| 82 | `theorem` | [rat_dense](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/rat-dense-source-edition-2.md) | 815 | `result-track:4dde581067e6f1413ffc71dfbcc9d19bb139556e834fae1654a2f91bc42c3a07` |
| 83 | `lemma` | [denseRange_ratCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/denserange-ratcast.md) | 820 | `result-track:b7fa37b885ade5ed54accbc04b1228f6bc580bc7d6588a0ac138a5a56e284560` |
| 84 | `theorem` | [padicNormE.mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicnorme-mul.md) | 835 | `result-track:db34d195e47bd9ed3ad5a6bd993e75ef3992fd01ec16e1400fd927135d2eb774` |
| 85 | `theorem` | [padicNormE.is_norm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicnorme-is-norm.md) | 837 | `result-track:7b22e5d7e869e15e6754800a95090c74c787eace417ebd9d10b0b9c7430febed` |
| 86 | `theorem` | [nonarchimedean](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/nonarchimedean-source-edition-2.md) | 839 | `result-track:c44e7478868770867ee6d0935b9d5b49dd0d88ea34ffa72f0f20b76aed2b3728` |
| 87 | `theorem` | [add_eq_max_of_ne](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/add-eq-max-of-ne.md) | 843 | `result-track:91f9d158fea234cf6a9ca3ee9ca6c0cd27107dee9f24d642c453c2121fc9b5d5` |
| 88 | `theorem` | [eq_padicNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/eq-padicnorm.md) | 849 | `result-track:310418fa8962907317fa29fbe285ad28b36661141e254bf68729cb78e86095e0` |
| 89 | `theorem` | [norm_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-p.md) | 854 | `result-track:eb17b6a922efce8aafe9bcc70d05ae49d1f3cd23b6a5d44eecdf938e06c59ca1` |
| 90 | `theorem` | [norm_p_lt_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-p-lt-one.md) | 860 | `result-track:b3969cea951f6c621700b611589f6022c36c37b71881f12d0411a67d893efdb7` |
| 91 | `theorem` | [norm_p_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-p-zpow.md) | 865 | `result-track:7f3fafd6a5230b71e597005026f3676cfcf8471d7a3ee1e505d80eafad872911` |
| 92 | `theorem` | [norm_p_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-p-pow.md) | 869 | `result-track:6ead217073ca21c37dba49efcbc91fb56c112e56624a8d79d34ebeb8fb65ec65` |
| 93 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/instance-source-edition-6.md) | 872 | `declaration-track:f9bd480f284da9e9458e5f1934f1b161d4008949f1bf0e5055bfb93d769c88f9` |
| 94 | `theorem` | [padicNormE.image](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicnorme-image.md) | 879 | `result-track:91825f089e98f2d1f2aa5e76a9cb094587fcc79f6ae0369868d4b956b33cbbf7` |
| 95 | `theorem` | [padicNormE.is_rat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicnorme-is-rat.md) | 885 | `result-track:f0da4c0fff77f7cfa9fece54999e7d2b1aa5aa19b03ea83003ff11285cbfee77` |
| 96 | `def` | [ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/ratnorm.md) | 895 | `declaration-track:379fdf38ee4064b7f6546deef916c111ac86b29dfb1cfbbd42f2ebe48176b035` |
| 97 | `theorem` | [eq_ratNorm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/eq-ratnorm.md) | 898 | `result-track:a440459f21ba2521c4bdb491bf4e424a9d8ed05b475a3aaed55b2e9b8afb6936` |
| 98 | `theorem` | [norm_rat_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-rat-le-one.md) | 901 | `result-track:dc34c893e8a862ca6b4711509f568b26897fff0bef2f51867e72f3c59587dfa5` |
| 99 | `theorem` | [norm_int_le_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-int-le-one.md) | 918 | `result-track:cea4db46e0fb9c402fcd862a7393e2d94e4ea302e767d4214f602ddc19aaddb6` |
| 100 | `theorem` | [norm_intCast_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-intcast-lt-one-iff.md) | 923 | `result-track:0df07c046075009de2653439b414ca5d59a64eaf4a1f94d5b3e76d7ed24951c7` |
| 101 | `lemma` | [norm_natCast_lt_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-natcast-lt-one-iff.md) | 944 | `result-track:8993b9149bcba50fcc4700ac6aa3f624e54716e887c3344040016abc386115b4` |
| 102 | `lemma` | [norm_intCast_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-intcast-eq-one-iff.md) | 949 | `result-track:03083bdbd7bdefa50523c42735b74ba177a206a57f153b2925227782bfb7a2e9` |
| 103 | `lemma` | [norm_natCast_eq_one_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-natcast-eq-one-iff.md) | 957 | `result-track:faf04a5d62c9d0a0f64bcf5c3e71432c87acf76c77d29ab3db38d7c6560f6f9b` |
| 104 | `theorem` | [norm_int_le_pow_iff_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-int-le-pow-iff-dvd.md) | 961 | `result-track:a5b1b6268c237c1613927fb8c1c2c926712467f63ba9c5a410c5488d243b4b9e` |
| 105 | `theorem` | [norm_eq_of_norm_add_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-norm-add-lt-right.md) | 968 | `result-track:d3f9fdcd6d5c9a2948e382ec5ff5157a4a42a82374504aaa9d583d935b9f29dc` |
| 106 | `theorem` | [norm_eq_of_norm_add_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-norm-add-lt-left.md) | 972 | `result-track:6ef7760d7299b31ff907143e8ea0257378bc1a5e166c21ab4f933c4787655091` |
| 107 | `theorem` | [norm_eq_of_norm_sub_lt_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-norm-sub-lt-right.md) | 976 | `result-track:debb4322f7ff9c1197cd272ac067ed9b5d9ed5ecd1d84e762a9c1c08fd307925` |
| 108 | `theorem` | [norm_eq_of_norm_sub_lt_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-of-norm-sub-lt-left.md) | 981 | `result-track:1edaeaf24442effb4f7dbe6f89451c721821cb0e477b8249f1f12c5b8f1c4623` |
| 109 | `lemma` | [norm_natCast_p_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-natcast-p-sub-one.md) | 987 | `result-track:b5a1ec2e5c78f32307d65811f27e362c6faa874275b016e91dddb702bad1d73a` |
| 110 | `instance` | [complete](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/complete-source-edition-2.md) | 994 | `declaration-track:8af51ce907855c17f366accb095901b82a362c3a2cd2fd0dacaf0647de701211` |
| 111 | `theorem` | [padicNormE_lim_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/padicnorme-lim-le.md) | 1016 | `result-track:46f862a5854d58b19b49b53c39e7c86c51a18b5d6b817d9172e7b3e53999712b` |
| 112 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/instance-source-edition-4.md) | 1026 | `declaration-track:3e4fe6737ea240ea98b16b5c31495c53840810b5cf204f6e6712e339c2a14b6c` |
| 113 | `def` | [valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-source-edition-2.md) | 1040 | `declaration-track:7de65aea21f7123a64b8b5b3f7fb95b278b1ec16603698e4e33140d66fe2d340` |
| 114 | `theorem` | [valuation_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-zero.md) | 1050 | `result-track:3eb7c8ad86a9e5e2a6052cac9ddde4a771fb007c3e441de1d6d95c3d3254390b` |
| 115 | `theorem` | [norm_eq_zpow_neg_valuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-zpow-neg-valuation-source-edition-2.md) | 1053 | `result-track:cad10517a7b77798361b4940de5cd07cf182cabc4f59959300abb1cd865188bd` |
| 116 | `lemma` | [valuation_ratCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-ratcast.md) | 1065 | `result-track:bb090b65bf3530d0fcd11df10e0bfecf971984d1ab7d2f38b656c58459a91b8d` |
| 117 | `lemma` | [valuation_intCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-intcast.md) | 1074 | `result-track:e4aa299f051cb9245b10fe1b9ef0c8fa2b687846bef79610d6656286908a7d9e` |
| 118 | `lemma` | [valuation_natCast](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-natcast.md) | 1078 | `result-track:1a1a54b3de2fbcf5d6d5444009091c7e9c41ec33370f7fea09b1ac8fbdadacf3` |
| 119 | `lemma` | [valuation_ofNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-ofnat.md) | 1082 | `result-track:13e4e975eaaf15270f596d6c0ee9857cb50a657d8c352ea96f80f9ba8249e75f` |
| 120 | `lemma` | [valuation_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-one.md) | 1087 | `result-track:cd394ed3e632497671ba5eab2f2a17d5b4a6411e6755e40cb3a5860fd9090311` |
| 121 | `lemma` | [valuation_p](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-p.md) | 1091 | `result-track:49981670d34823aee129b8babf7505dfd4c6182dc0f496e7974f960b96543f75` |
| 122 | `theorem` | [le_valuation_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/le-valuation-add.md) | 1094 | `result-track:11a62e0903a1af894565b15cec4def9456f8594c2c59f11b8b415c4ff13b6ac3` |
| 123 | `lemma` | [valuation_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-mul.md) | 1106 | `result-track:ee55498845e13b754a54cdcbac040de399221ed572ba4350c505e8b7445f0769` |
| 124 | `lemma` | [valuation_inv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-inv.md) | 1116 | `result-track:ac35ad64beeccfe53a927657b306cbed7043abc6f75cd145d0cd37686c6ec6ad` |
| 125 | `lemma` | [valuation_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-pow.md) | 1126 | `result-track:3615d0daeacb3e98209c84dc0889f8b3c523e2e21a26c097e25db9fa7f6b79e0` |
| 126 | `lemma` | [valuation_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/valuation-zpow.md) | 1134 | `result-track:a13a0e0489675ab2eba82402add64aad3adf06ad4c499e27793d97d8a84a1112` |
| 127 | `def` | [addValuationDef](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluationdef.md) | 1140 | `declaration-track:bcd811e03f36e3964a36681ecb27849c12ea74a6a0651be4523b24320b633e5a` |
| 128 | `theorem` | [AddValuation.map_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluation-map-zero.md) | 1144 | `result-track:477448716151f3dc4f039e4036dbd95dd08ef510b4581f90c972dc7fc1ab2057` |
| 129 | `theorem` | [AddValuation.map_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluation-map-one.md) | 1148 | `result-track:199ac4def7db1617326cb9307f9eb050cc64b40b2cdca1ec56c82247a25dc402` |
| 130 | `theorem` | [AddValuation.map_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluation-map-mul.md) | 1151 | `result-track:ad5ef4aeddca2769537e62e93fb7d781b5bea96ed3aba496a3838e0f441ed6dc` |
| 131 | `theorem` | [AddValuation.map_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluation-map-add.md) | 1161 | `result-track:07cf81a6fb99fdf7d7dd7d8b3b5fb38798a3c08f9256155ba143e88efdab1605` |
| 132 | `def` | [mulValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/mulvaluation.md) | 1182 | `declaration-track:c64792feb703ed7fec6e6c5ef9d779836cd636a26f0c92de03c1adfc37c327f4` |
| 133 | `lemma` | [comap_mulValuation_eq_padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/comap-mulvaluation-eq-padicvaluation.md) | 1192 | `result-track:ebc4e040ea97f30391517e8dde770e21d986342481541393b7c95136e516fd62` |
| 134 | `lemma` | [comap_mulValuation_eq_int_padicValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/comap-mulvaluation-eq-int-padicvaluation.md) | 1197 | `result-track:67dd003e5b4a975f97ecd203d55f56f85a30fb3dc9c7902b5fbad4cf65b75dcc` |
| 135 | `lemma` | [norm_eq_zpow_log_mulValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-eq-zpow-log-mulvaluation.md) | 1202 | `result-track:e06ea7a4dfad34bdae43d594083a87aca16618fd32b7618f539dd6cb06faa1df` |
| 136 | `lemma` | [norm_lt_zpow_iff_mulValuation_lt_exp](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-lt-zpow-iff-mulvaluation-lt-exp.md) | 1206 | `result-track:13915645802c2559d221b6c36eae7f2615fff4152e7ac10d330aa4053a7d2213` |
| 137 | `lemma` | [norm_lt_norm_iff_mulValuation_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-lt-norm-iff-mulvaluation-lt.md) | 1214 | `result-track:421d70f650e09d38d673088833450c4f064bbfbdc1ee7782e1bfeabfabf0fdfb` |
| 138 | `def` | [addValuation](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluation.md) | 1222 | `declaration-track:9ae998435b75052584a63dc6ba720590152b6e67bfd102fc6feee61ba730f9f1` |
| 139 | `theorem` | [addValuation.apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/addvaluation-apply.md) | 1227 | `result-track:c517e270ba9a76a4981f56a7943bd9b96ca1aa0555f7188b133c1503d5aca555` |
| 140 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 1236 | `result-track:7735c0c78b904708d45b511d7939385c51f86e522791429a88231e340439fb3d` |
| 141 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 1246 | `result-track:9a20b9aef707617a29ffa3a26cef355ddfa77b975e6c9dc6ced94ec0aae99155` |
| 142 | `theorem` | [norm_le_one_iff_val_nonneg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersPublic.lean/declarations/norm-le-one-iff-val-nonneg.md) | 1250 | `result-track:b5054104c42387d4d8c69649a15be825fa6197f3a332aa1ccc14e96604ab4d02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f0c6ac68c5a4709acb44e8250e5cb5d384ea04f8cb812a4b1944ad0d7f45c08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variantb1237adcd8fc43068f354b4b3d946b6c01d0fb258abefe8157bd8ad3aef5a0f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
