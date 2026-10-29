# Verification target: CH2 Part1 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
  "lexical_observation_count": 258,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pointwise` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.PhragmenLindelof` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Interval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sign` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Wiener` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.ResidueCalcOnRectangles` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [summable_nterm_of_log_weight](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/summable-nterm-of-log-weight.md) | 37 | `result-track:d6d0688ffa55860d53a8b3a569df7679a89d2392ab177cdf9851d4c009a9ad33` |
| 2 | `lemma` | [fourier_scale_div_noscalar](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-scale-div-noscalar.md) | 68 | `result-track:2b6a8a7cfcf5a5d96d06e06137a095df5f79b79694d766d7b6153d1b25b799f4` |
| 3 | `theorem` | [prop_2_3_1](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3-1.md) | 89 | `result-track:9d0aac4b4f9f0a38d3c5f8b0f067fd0d29dfc08761011efaf9eeeba24a88a1de` |
| 4 | `lemma` | [rpow_neg_integrableAtFilter_atTop](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/rpow-neg-integrableatfilter-attop.md) | 211 | `result-track:fab8b66360fde46a8b96cc895a73ca4bb2e9f1941d75bee0889407bb60325a79` |
| 5 | `lemma` | [fourier_integrable_of_rpow_decay](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-integrable-of-rpow-decay.md) | 218 | `result-track:8b94589f2f7ffa4eb861cba79126082c3a978c4f957fa5ce331162e140929a58` |
| 6 | `lemma` | [pnat_atTop_eq_cofinite](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pnat-attop-eq-cofinite.md) | 241 | `result-track:9e3e5baba2d72b217df26d0d433408594203646d57bbd73b9f02c286c5acd68e` |
| 7 | `lemma` | [fourier_decay_isO_log_rpow](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-decay-iso-log-rpow.md) | 261 | `result-track:450104c60eb836b742f27fa6b65556f37f3928aa92d2a58e7fc82441de685d7a` |
| 8 | `lemma` | [setIntegral_Ici_const_mul](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/setintegral-ici-const-mul.md) | 323 | `result-track:ec62f6693e767e480623b3cd006634a9b46265c8442b8e94c1dab57e6353904d` |
| 9 | `lemma` | [prop_2_3_fourier_integral_ici_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3-fourier-integral-ici-eq.md) | 330 | `result-track:f275594eda71801daf4fa6be17337d57991bf048b91b0776922ffabbed608a0b` |
| 10 | `lemma` | [prop_2_3_tendsto_exp_damped_integral](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3-tendsto-exp-damped-integral.md) | 378 | `result-track:90b93bb8e42cd9cc6f1cbee0e97970bba071d2966d15847334365068845daca8` |
| 11 | `lemma` | [prop_2_3_tendsto_polar_residual](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3-tendsto-polar-residual.md) | 434 | `result-track:1cbf69b47ea5a27f41e00246ee4f4e7a92aaef0be3b0431dfb924c1170ea14cb` |
| 12 | `lemma` | [prop_2_3_tendsto_G_integral](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3-tendsto-g-integral.md) | 460 | `result-track:523ba27515d541310b29e442a156834f8670982d6aba306a2d501d056c66e809` |
| 13 | `lemma` | [summable_dirichlet_fourier_bound](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/summable-dirichlet-fourier-bound.md) | 539 | `result-track:7add13e257b725c3612ab6d654681a0b3be6580e0ee7ca0154ad81885ee18ce4` |
| 14 | `lemma` | [summable_dirichlet_fourier_complex](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/summable-dirichlet-fourier-complex.md) | 560 | `result-track:a902626adc9cf475a8eae578adf1527ab3115795ffa083c5d8343ca0e5a57538` |
| 15 | `lemma` | [prop_2_3_tendsto_dirichlet_sum](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3-tendsto-dirichlet-sum.md) | 574 | `result-track:f89f5dce853b7b540c40f948148849d96030d119aca4bfad7f81091011b201d9` |
| 16 | `theorem` | [prop_2_3](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-3.md) | 629 | `result-track:978d9450eda2e5b435ae62839e7dac18c4a05d9832a77d2cf5f4e10c920ab736` |
| 17 | `def` | [S](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/s.md) | 665 | `declaration-track:72e0fc9b792fae727253a717fa5ca4246a5576834bc3d678699ba5cc6d8c7f02` |
| 18 | `def` | [I'](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/i.md) | 675 | `declaration-track:dee958e8acb1f87e8b5791c740440d93df0e259baba0dd7b840d55ceec81ce58` |
| 19 | `theorem` | [S_eq_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/s-eq-i.md) | 688 | `result-track:6e2537f035bf80770fe7ae72b290b218353caa5f5574863987bcae8f21372ef2` |
| 20 | `lemma` | [I'_eq_exp_of_neg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/i-eq-exp-of-neg.md) | 762 | `result-track:1100b73b08465fadd14cbdd14bff81c3fbda9213565c8bbd9d62c30365c04fbe` |
| 21 | `lemma` | [I'_ae_zero_of_pos](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/i-ae-zero-of-pos.md) | 768 | `result-track:39be85a6866e5e2d8a952bf9f8abe91a856efa6a6ab84e605d5533bb393580c2` |
| 22 | `lemma` | [integrableOn_I'_Iic](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrableon-i-iic.md) | 778 | `result-track:afb4c353d1905d84117a9e40488828fbc86139fbea4f5aca1a70abb6ba995b67` |
| 23 | `lemma` | [integral_Iic_I'_of_neg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-iic-i-of-neg.md) | 786 | `result-track:7d944da6864eb542525aa4ca7d138893bc52d3fdfb8233f6cbd53734d56ad891` |
| 24 | `lemma` | [complex_residual_algebraic_identity](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/complex-residual-algebraic-identity.md) | 791 | `result-track:a8bea5557de9e76d9470869faa4bbdf90995351f7f06bbd1546b16ef08b93695` |
| 25 | `lemma` | [integral_Iic_I'_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-iic-i-eq.md) | 802 | `result-track:feb35084c03b6f532f25896d057aed2ef2a92778097250074084ef31a23b042c` |
| 26 | `lemma` | [I'_mul_le_rpow_of_one_lt](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/i-mul-le-rpow-of-one-lt.md) | 831 | `result-track:80a666e38b6d4ce3abe8a519c848f41666e94db35e8090bc9c801ea191b9b4b5` |
| 27 | `lemma` | [prop_2_4_plus_fourier_bound](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-4-plus-fourier-bound.md) | 851 | `result-track:41e9ac1e2f4b65ac15f26f79aed1e5677defb48491da28cb1967f1266fcb35c2` |
| 28 | `theorem` | [prop_2_4_plus](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-4-plus.md) | 908 | `result-track:b5cfd8d5f629e834308a352902181e136d489eca3db80d94ab8f1b16041db90d` |
| 29 | `lemma` | [prop_2_4_minus_fourier_bound](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-4-minus-fourier-bound.md) | 982 | `result-track:39f0dfad4a2dbf7281ef807192461ca7b7c77b3827c35f5463fb463e179747d5` |
| 30 | `lemma` | [summable_I'_residual](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/summable-i-residual.md) | 1014 | `result-track:1f5cb5e128d864d4d69fb94e7a3134d081db77d7e7b9a54b140736a10f1e47f8` |
| 31 | `theorem` | [prop_2_4_minus](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/prop-2-4-minus.md) | 1067 | `result-track:d5d82d4381f8796da671ec2269e21a517f495defdd3c5cbef920c7a2609ba072` |
| 32 | `def` | [coth](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/coth.md) | 1138 | `declaration-track:bafb26978be249a37fb364e349ab812367b167114cefe3072450eee39baa9892` |
| 33 | `theorem` | [sinh_add_pi_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-add-pi-i.md) | 1140 | `result-track:7cdddcab821b739166d3a72a01113a8b5ee9dbff99dadf7c42590fd8d6ece96e` |
| 34 | `theorem` | [cosh_add_pi_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/cosh-add-pi-i.md) | 1144 | `result-track:5e05c374ee721a893285c61a8c88f9c75ea9ae978c5b3b752aa2b5f1469013c5` |
| 35 | `theorem` | [tanh_add_int_mul_pi_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tanh-add-int-mul-pi-i.md) | 1147 | `result-track:c23a32cec5995cbd7b37e83d4a977d4cd186f563e043862f1bf645bac244d12d` |
| 36 | `theorem` | [tanh_add_pi_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tanh-add-pi-i.md) | 1163 | `result-track:e32dfbd7175509daf4a233686ad287e05be88634694958f5b3c6b476ffb5cb23` |
| 37 | `lemma` | [coth_add_pi_mul_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/coth-add-pi-mul-i.md) | 1166 | `result-track:41717288d2f20fef9cdebb400099e3c626f5ebad0a24e7f7ebd84cad88d11dfb` |
| 38 | `lemma` | [coth_conj](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/coth-conj.md) | 1169 | `result-track:b7240421c023301d0247c0d42dbbb9ab191161c9eebe5089e7301a900d5a44e4` |
| 39 | `def` | [Phi_circ](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ.md) | 1179 | `declaration-track:8d6ffe82164c43d00ec57144931555389b08a953472571b15f3104a08008d334` |
| 40 | `theorem` | [analyticAt_tanh](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/analyticat-tanh.md) | 1186 | `result-track:0442786ae96a85d6719d1e89a0cf47a94999ba0e786b002d44a3bf70d3695048` |
| 41 | `theorem` | [continuousAt_tanh](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/continuousat-tanh.md) | 1192 | `result-track:9fd50c212d18231e136d677959bea44a4a5ce7a8d32df6cfa582d1023c612f94` |
| 42 | `lemma` | [_root_.Complex.cosh_ne_zero_of_sinh_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-cosh-ne-zero-of-sinh-zero.md) | 1195 | `result-track:9090e677cd9576590837c32947dabc0e33a6906e07ad03a74d9bc8db8517b968` |
| 43 | `theorem` | [meromorphicAt_tanh](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicat-tanh.md) | 1202 | `result-track:25e96293597042d39933f07255364ce0df9600ed1edd0a5381c4356f82f55095` |
| 44 | `theorem` | [meromorphicAt_coth](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicat-coth.md) | 1205 | `result-track:31daf96c81505f0fbc55240fe36d277cd292a0e878a932cbc03f4cf3a06b37e2` |
| 45 | `theorem` | [Phi_circ.meromorphic](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-meromorphic.md) | 1214 | `result-track:7f5d69062b88319d93dc2c9f171c4c1d8b935462d59925718271f929c3dcc75e` |
| 46 | `theorem` | [meromorphicOrderAt_div](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicorderat-div.md) | 1218 | `result-track:78438b9366d895b3a8a28ab79ed5a721f07fe16a40b0db86422bce58b54beaad` |
| 47 | `lemma` | [sinh_zero_iff](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-zero-iff.md) | 1223 | `result-track:adb42b2e6aa761d9222b94e166104d3b94e9165d3c0cbb3df402a9282153b7f5` |
| 48 | `lemma` | [cosh_zero_iff](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/cosh-zero-iff.md) | 1229 | `result-track:e0809c954f9460edd8ed897e450bfaf292e697fc410dde7089a66f74c7187756` |
| 49 | `lemma` | [sinh_ne_zero_of_re_ne_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-ne-zero-of-re-ne-zero.md) | 1244 | `result-track:1e2207a32ba9e17d833eede571ab2f4b502efd9c2ce9e3846f9f16a2fc6b3f71` |
| 50 | `lemma` | [sinh_ne_zero_of_im](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-ne-zero-of-im.md) | 1250 | `result-track:205f7b61a9b7ee236da10c63385ec1ad964fda9fa30e35287321fa69de169fb7` |
| 51 | `lemma` | [cosh_ne_zero_of_re_ne_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/cosh-ne-zero-of-re-ne-zero.md) | 1257 | `result-track:4036e766f5ab339b1c4a51a416a9d0ff6def623fb5db45e97b286e0fbba62c80` |
| 52 | `lemma` | [_root_.ContinuousAt.coth](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-continuousat-coth.md) | 1264 | `result-track:c8d08f82b4850b61d2d26388381f2dd922d6c2a95426074936e0e38a9ed3baf6` |
| 53 | `lemma` | [_root_.Complex.sinh_ne_zero_of_cosh_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-sinh-ne-zero-of-cosh-zero.md) | 1273 | `result-track:daf673214819860834a88980461dee2c6d9774704c8a0762d0a0624024b27820` |
| 54 | `lemma` | [meromorphicOrderAt_cosh_ne_top](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicorderat-cosh-ne-top.md) | 1278 | `result-track:3a18deef198e190d59fbe07424db8113604bf2e3bb3c89d90365e12f31794248` |
| 55 | `lemma` | [meromorphicOrderAt_sinh_ne_top](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicorderat-sinh-ne-top.md) | 1294 | `result-track:dbfa11c448399fc29768787aade08b5f17a5ddedec78f3ac342dec3800a6f4e9` |
| 56 | `lemma` | [meromorphicOrderAt_coth_lt_zero_iff](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicorderat-coth-lt-zero-iff.md) | 1310 | `result-track:62f0b727b93ee5d2021468e00457b442ec84b197d48794e16177a6e9d4d470ef` |
| 57 | `theorem` | [Phi_circ.poles](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-poles.md) | 1372 | `result-track:b97a1e805d054431ce37e202ad20ec5dbd8dd4bbadfb396e708b6a6261501cc4` |
| 58 | `theorem` | [Phi_circ.residue](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-residue.md) | 1435 | `result-track:d747f2f6ba06a1c3ac28d59719997a4a601d05ae6abe1152f4b6dcc77ec87a5c` |
| 59 | `theorem` | [Phi_circ.poles_simple](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-poles-simple.md) | 1500 | `result-track:b4ac58167d26b61b1018f942da8c89696a65157f9c85ec24f57366be4aebce39` |
| 60 | `def` | [B](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b.md) | 1531 | `declaration-track:028b3be8efa57e6833eab09a642f4e2e0fff9a32ce2521e72ac3e4650bbca38e` |
| 61 | `theorem` | [B.continuous_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-continuous-zero.md) | 1541 | `result-track:662fa02bd30f0b0df1c82f0f323d38c619640d80c516e4700fccd7fcd95434d9` |
| 62 | `lemma` | [sinh_ofReal_half_ne_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-ofreal-half-ne-zero.md) | 1564 | `result-track:afea3c0bb30808db416913e5aa99bf3a6e11001d0b59dbc4409a915b76f5ae48` |
| 63 | `lemma` | [B_ofReal_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-ofreal-eq.md) | 1568 | `result-track:1d123c05eaf938bf164247644a80be78ab9a0feb5ca43569abc4a8ea8a5bc03d` |
| 64 | `theorem` | [B.continuousAt_ofReal_ne_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-continuousat-ofreal-ne-zero.md) | 1572 | `result-track:e5359dc68a5b14918f524356eab4a75958cd812b21128c518700b357681b77bf` |
| 65 | `theorem` | [B.continuous_ofReal](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-continuous-ofreal.md) | 1582 | `result-track:c63c973870eb161482bb922072ac981386bc54c6413567c4f70ec468eed477aa` |
| 66 | `def` | [Phi_star](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star.md) | 1597 | `declaration-track:7bd65ce40381c3be1b0fb2d97cf130f42f2cf26e55209c2ddffbe46338cbf5f5` |
| 67 | `theorem` | [Phi_star_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-zero.md) | 1608 | `result-track:3fb7668c9cd0909279b14250e1e5118f5f4e5a97d0af9dea75469e71680a9259` |
| 68 | `lemma` | [meromorphic_tanh](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphic-tanh.md) | 1611 | `result-track:ce748bdb1f62e7fb4c05ddb07236b4537276995f5ec7e284876a33940b612590` |
| 69 | `lemma` | [meromorphic_coth](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphic-coth.md) | 1613 | `result-track:448b72b11b333626596008a33d09cba26c064792111322a741d139a67f3f0d97` |
| 70 | `lemma` | [meromorphic_coth'](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphic-coth-source-edition-3.md) | 1615 | `result-track:96b7d9a765fa05d9dbbee0b28db15033b527e6e69bf979fedfdcd74145c4ea0a` |
| 71 | `lemma` | [meromorphic_coth''](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphic-coth-source-edition-2.md) | 1618 | `result-track:7b9df904d47e0263f29e1121b4d143fd20ef71a3c84e3722969999d8379e00d3` |
| 72 | `lemma` | [meromorphicAt_B](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicat-b.md) | 1621 | `result-track:6c93f12dd95723bf900cfe0834539b115c8fc075a07a4e6f1943df13e2a12cdf` |
| 73 | `theorem` | [analyticAt_B](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/analyticat-b.md) | 1643 | `result-track:a6bab1d243819e2b369d7c7ec3b05b4a6c72d8c4f7eb1fe915568a8fdf42828d` |
| 74 | `theorem` | [Phi_star.meromorphic](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-meromorphic.md) | 1719 | `result-track:ac9e8b81b02cdb6aa3617a2ab992d14941c0454076b6d63fd1cd20859294a173` |
| 75 | `theorem` | [Phi_star.poles](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-poles.md) | 1737 | `result-track:c8ba4f69969638257f9ebdb425a5d62677cc0a07709bc745b3b5b9bbcb8c8dfb` |
| 76 | `theorem` | [Phi_star.residue](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-residue.md) | 1749 | `result-track:5c5ae80b7d3de849379981d96ef0f0d663985c757535054fbe521dad483ec60a` |
| 77 | `theorem` | [Phi_star.poles_simple](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-poles-simple.md) | 1802 | `result-track:d9f9b2885bbbe53a2d9dc251a353eac525701c4b57c073382664479286a38c6c` |
| 78 | `theorem` | [Phi_cancel](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-cancel.md) | 1836 | `result-track:d16cc4e9d583d543c9a9994449d99b7d3ff8628976bf07322e96dc3139ac19a7` |
| 79 | `def` | [ϕ_pm](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm.md) | 1873 | `declaration-track:26ca5b85e74bb771f94d4de996a80b5829e41729d7ad1cc11eb850fd57aaba72` |
| 80 | `lemma` | [_root_.ContDiff.div_real_complex](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-contdiff-div-real-complex.md) | 1878 | `result-track:baa555e468d370f911576470c3534ff89e3a4d120dd47d9cfac8d62be6cc9ef1` |
| 81 | `lemma` | [_root_.Complex.ofRealCLM.contDiff2](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-ofrealclm-contdiff2.md) | 1883 | `result-track:0589683723898d362cc5504297d185863e85a0b1efe431b046c5ec34cd2f6dc1` |
| 82 | `lemma` | [_root_.Complex.contDiff_normSq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-contdiff-normsq.md) | 1886 | `result-track:2afa022d5afeb656bd515e6f81c65e1f99cdc7a5cc7f574155180deef2a89846` |
| 83 | `lemma` | [_root_.Complex.contDiff_sinh_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-contdiff-sinh-real.md) | 1894 | `result-track:8c1d20ded90fb4c20ea38fd7af7c36ad442b32d464f9673043da5fb2a15b4e9a` |
| 84 | `lemma` | [_root_.Complex.contDiff_cosh_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-contdiff-cosh-real.md) | 1899 | `result-track:3994ce57f811f94ec660d4a8a7e7f336eb1027fb4627e7de42f0882ce78d446b` |
| 85 | `lemma` | [h_B_rational](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/h-b-rational.md) | 1902 | `result-track:0066b135fe0ecc184f0e9d8198ce29840fb9b333832b7bc96820f220c4e088ba` |
| 86 | `lemma` | [h_comp](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/h-comp.md) | 1905 | `result-track:c0f30203d34eea67d3d82977b023c493261843f9a4d50a4ab332d81495879f15` |
| 87 | `theorem` | [Phi_star.contDiff_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-contdiff-real.md) | 1913 | `result-track:4c45d8a8aca1079200c20b9aa00722c8d90e97f4dc441c784edcff332f8add7d` |
| 88 | `theorem` | [Phi_circ.contDiff_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-contdiff-real.md) | 1924 | `result-track:1993f0e62a4976e6bd358db35226b3e97634b76d0d9429dfe9f5d5e1868a2ec9` |
| 89 | `theorem` | [Phi_circ.continuousAt_imag](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-continuousat-imag.md) | 1940 | `result-track:1b17e3e6685c6ce228dbcea4364b5284330317fed788de8813f362688cfbf373` |
| 90 | `theorem` | [Phi_star.continuousAt_imag](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-continuousat-imag.md) | 1946 | `result-track:baa65b3ac6b42ee1c44fdb1847a9063a04b758e409333b89c686bee1329e30de` |
| 91 | `lemma` | [w_re](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/w-re.md) | 1961 | `result-track:3e4c04097ef47e25e6fd52b63189238bd955698c82f8041af821f746e35fce29` |
| 92 | `lemma` | [w_re_pos](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/w-re-pos.md) | 1964 | `result-track:00482bfbfde2b418fa90596094fb39e49d96a141b646762b18fcbbf046867dd4` |
| 93 | `lemma` | [w_re_pos_gen](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/w-re-pos-gen.md) | 1968 | `result-track:f8693fa2b1715f866fc85eeb82cdc04a5e170ba8993fedcd2a154026ceb55c06` |
| 94 | `lemma` | [w_re_ne](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/w-re-ne.md) | 1972 | `result-track:38fa2283109a9bc0a1772a54c43c61ec6c1aa359cd256aba81e73609dd3a8903` |
| 95 | `lemma` | [sinh_ne_zero_of_not_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-ne-zero-of-not-pole.md) | 1976 | `result-track:71aefa17d3b3f2bd7894b935cff7a70d6fa10f3584b414803ab3f804404e4516` |
| 96 | `lemma` | [w_ne_zero_of_not_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/w-ne-zero-of-not-pole.md) | 1990 | `result-track:35c5ff4f7e1ba3f1ab67ff0c3a75b25c440da4813f72b48e21d6afc2f7b4bbb5` |
| 97 | `theorem` | [Phi_circ.analyticAt_of_not_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-analyticat-of-not-pole.md) | 2000 | `result-track:c9f982cf93f79ac33dbcbdca1cc50078adc3b4b0a19b21c46af71cb985f03b88` |
| 98 | `theorem` | [Phi_circ.analyticAt_of_im_ne_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-analyticat-of-im-ne-pole.md) | 2011 | `result-track:34e287c36e671cc03110dcdbe8b60332658a8db8b6683d89728462d7ac0204d4` |
| 99 | `theorem` | [Phi_circ.analyticAt_of_im_nonneg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-analyticat-of-im-nonneg.md) | 2020 | `result-track:c5446f6370b413c687683fabc3299414736841b5b7cb6627cb51f44a4245bc1d` |
| 100 | `theorem` | [Phi_circ.analyticAt_of_im_gt_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-analyticat-of-im-gt-pole.md) | 2026 | `result-track:d7c63c7b19d452a38ec3c971316e9da31c1696b2c8a696904fca6535e14a15df` |
| 101 | `lemma` | [Phi_circ_conj_symm](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-conj-symm.md) | 2031 | `result-track:7d01ce8786c62fb27c98d782ce32694ac23216a7759ec1699f61649e0c7ab379` |
| 102 | `theorem` | [Phi_star.analyticAt_of_not_pole_nz](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-analyticat-of-not-pole-nz.md) | 2041 | `result-track:6030acfcb5530dfc292ba755b1c5f57d7f820e235516a3e074dd47e5912b78e8` |
| 103 | `theorem` | [Phi_star.analyticAt_of_not_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-analyticat-of-not-pole.md) | 2060 | `result-track:17d59452511c9ec2532d57d23b2a83c1ce2798794ae9c19635e88b7a42b894c9` |
| 104 | `theorem` | [Phi_star.analyticAt_of_im_ne_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-analyticat-of-im-ne-pole.md) | 2065 | `result-track:f02cfc812935468bb2422e803a2a49ae0ff2b7c8e87668932786c482e21e44cd` |
| 105 | `theorem` | [Phi_star.analyticAt_of_im_gt_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-analyticat-of-im-gt-pole.md) | 2073 | `result-track:b64c1c259ce85f9626b966ec2ebb401cd23361b9182a31d25ddfb36084e5022d` |
| 106 | `theorem` | [Phi_star.analyticAt_of_im_nonneg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-analyticat-of-im-nonneg.md) | 2077 | `result-track:812a03701291c1cba5bf3c231024e9f881ad2217bc41eb4baa7131d3afa47532` |
| 107 | `lemma` | [B_conj](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-conj.md) | 2083 | `result-track:de3d2fae58f209e36470d685a005d0b76fd0f12c721cb780b7834428e07275f2` |
| 108 | `lemma` | [Phi_star_conj_symm](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-conj-symm.md) | 2091 | `result-track:e27048d59578334e676c8aa9c10330294f35b1ca2ffd17572406eb03cbd24d46` |
| 109 | `theorem` | [ϕ_c2_left](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/c2-left.md) | 2108 | `result-track:bbce1c28124691cdb46c28b0ce339ba3fe945af873d6b01f6be4d7ec2cb7de6e` |
| 110 | `theorem` | [ϕ_c2_right](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/c2-right.md) | 2134 | `result-track:0d4fe738a4dbbbe7c28a52c131359f5e81fa04ff581552e76dec993cfb5e8110` |
| 111 | `lemma` | [varphi_differentiableAt_left](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-differentiableat-left.md) | 2145 | `result-track:e1a76cb3cc804a65f540c2adb85c0e11f4c8a90ad6029ca664883623fb9a81e4` |
| 112 | `lemma` | [varphi_differentiableAt_right](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-differentiableat-right.md) | 2150 | `result-track:2cffc5a9318e1205b772d51a36832a30bd86859df2deb5d78389646827cb214d` |
| 113 | `lemma` | [varphi_differentiableAt_out](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-differentiableat-out.md) | 2155 | `result-track:71a2a9d979e1fadaa5b22c881d2fd71f8fbf780dbafa13b6c0a26c86c8286181` |
| 114 | `theorem` | [ϕ_continuous](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/continuous.md) | 2176 | `result-track:bdd8b7e4b58480f4603fa399bddb161e6aaf557123c46a3fc50f58765cd2a381` |
| 115 | `theorem` | [ϕ_pm_zero_boundary](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-zero-boundary.md) | 2237 | `result-track:6bd9d8fd5125b9ec2ab5f34d7fdb6086503b36325473858a4acec9563adac311` |
| 116 | `theorem` | [ϕ_circ_bound_right](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/circ-bound-right.md) | 2263 | `result-track:87b8d3c29e7891ea10dc618b5c543bed1003691b7917952f6038f5773fadf0a4` |
| 117 | `theorem` | [ϕ_circ_bound_left](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/circ-bound-left.md) | 2332 | `result-track:eeaa04483c089875b98d60153887ad962f1ae70979ba0b6339c66e59925208ab` |
| 118 | `theorem` | [ϕ_star_bound_right](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/star-bound-right.md) | 2388 | `result-track:fa981c208876ad3bd7eba58ff4338d109f4b52b2929e4abb04aa2f0e788ccfd6` |
| 119 | `theorem` | [ϕ_star_bound_left](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/star-bound-left.md) | 2454 | `result-track:cba36aef5f17e4458b65f0f754e71542317625da95037a1d99a4a6bc5e15dead` |
| 120 | `theorem` | [B_plus_mono](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-plus-mono.md) | 2536 | `result-track:06e5726c5fda5e347f2f0d2824ea333bb675d5431d4725aceb16eefabcae1803` |
| 121 | `lemma` | [B_im_eq_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-im-eq-zero.md) | 2595 | `result-track:7c2c5ef51d4034ed366f0501f7ca1d19477600d184cb911bf026722e063ae266` |
| 122 | `theorem` | [B_plus_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-plus-real.md) | 2602 | `result-track:665f294ab7e8413945c59c9f6ad6bf1ac036f79b42c8fd7a76b73a8a5ba2d026` |
| 123 | `theorem` | [B_minus_mono](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-minus-mono.md) | 2614 | `result-track:891802ec1b374be4d6a48033ad755e951cdf1c3f6c97e771b62d27b6fdf0bdfd` |
| 124 | `theorem` | [B_minus_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-minus-real.md) | 2700 | `result-track:09306e82f1520e7d7de75ecba99ffc80f27123163b6ca9a3f516bed4f281b397` |
| 125 | `def` | [E](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/e.md) | 2702 | `declaration-track:a0d0af461193e5750de503f16002be439f1ae2e4c67e69e4a23e32701aff895e` |
| 126 | `theorem` | [continuous_E](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/continuous-e.md) | 2705 | `result-track:8b19d573d82e449458f533d3b81bddc7a088677ae1cc1554d893340d54d231df` |
| 127 | `lemma` | [cont_E](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/cont-e.md) | 2708 | `result-track:4bd30e39616cd7f245acb4159b12795b4588eac7d0f52f59cc1703996b1fd60c` |
| 128 | `lemma` | [E_conj_symm](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/e-conj-symm.md) | 2713 | `result-track:b2bdf08973797e641c0f727448ea3468a71405587cae77a43d44d98946a23135` |
| 129 | `lemma` | [fourier_eq_E_integral](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-eq-e-integral.md) | 2720 | `result-track:e9c5c9520685ec4d22be7b0065509117f0479d9b139ef6d9ad6b526084914b90` |
| 130 | `lemma` | [ϕ_pm_mul_E_integrableOn_Icc](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-mul-e-integrableon-icc.md) | 2728 | `result-track:145c581f007a0f3597624efc99fb52a88031e15a1f5387db63fafa229cfabc1b` |
| 131 | `lemma` | [ϕ_pm_eq_on_Icc_neg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-eq-on-icc-neg.md) | 2734 | `result-track:bd7be294d946b4adaf7c91b1535be0876cedc5264efc1aefa4dca2b9182089a8` |
| 132 | `lemma` | [ϕ_pm_eq_on_Icc_pos](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-eq-on-icc-pos.md) | 2743 | `result-track:3399fe7732db5b50c354d567f40eb80e3922645d4bb61f9c79d9fcfeaebc7c21` |
| 133 | `theorem` | [varphi_fourier_ident](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-fourier-ident.md) | 2762 | `result-track:4627910b915c4a4ae27dcad6b4ffefd1cbccc90e6580f8e32fc1cb3a81dab841` |
| 134 | `lemma` | [RectangleIntegral_tendsTo_UpperU'](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/rectangleintegral-tendsto-upperu.md) | 2797 | `result-track:3e7e027d802e2e8ed08e940c08791f1c9534a624c51c5cb3ecf88b4356d5221a` |
| 135 | `lemma` | [tendsto_contour_shift](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-contour-shift.md) | 2816 | `result-track:08928d1ec230beb991c06345109325e801e9793f6b14bd26681f1182fb6f314d` |
| 136 | `lemma` | [_root_.Complex.norm_le_abs_im_add_one](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/root-complex-norm-le-abs-im-add-one.md) | 2863 | `result-track:9df57a1bd60e8376944ba3ea5005642e579d71255b68f42f15236756055fcdd4` |
| 137 | `lemma` | [phi_sum_norm_le_of_component_bounds](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-sum-norm-le-of-component-bounds.md) | 2876 | `result-track:440e80b82d707b3cdb714396a89bac4d2a49d2f9de2f187b7e7b09094db957a5` |
| 138 | `theorem` | [phi_sum_norm_le_linear_halfplane](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-sum-norm-le-linear-halfplane.md) | 2895 | `result-track:e4466fa54d8e4d67e5290b9098a4ac4a75a466b0b84413376a8812d9c86f7345` |
| 139 | `theorem` | [phi_bound_upwards](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-bound-upwards.md) | 2917 | `result-track:d08882176558f8a615766169cc88c08900eecc8a790c09ffd032af46d1a406f3` |
| 140 | `theorem` | [phi_bound_downwards](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-bound-downwards.md) | 2925 | `result-track:36754bc0b046c2185becbcf9bd2989c5bfc8602ad1181c40f546a3632c652477` |
| 141 | `theorem` | [phi_fourier_ray_bound](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-fourier-ray-bound.md) | 2945 | `result-track:af9090f75bf63436fbdf45e3c91a90879b26a5f31fb51e62bbeb0fb1452d22d9` |
| 142 | `lemma` | [pole_re](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pole-re.md) | 2963 | `result-track:7b894e3615109d280e607688fbe03e65b649d886f1d5af19aaecebc9074526d5` |
| 143 | `lemma` | [pole_im](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pole-im.md) | 2968 | `result-track:373e1d9080608d8db9c46ab2c719746a077f86a08dd8b7c9f6ed4f2f09d1f2b2` |
| 144 | `theorem` | [Phi_circ.analyticAt_of_re_ne_int](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-analyticat-of-re-ne-int.md) | 2974 | `result-track:2a6d73f181c779166210b8832aa015ded55a476855bb4587c91ee50585f0ea3e` |
| 145 | `theorem` | [Phi_star.analyticAt_of_re_ne_int](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-analyticat-of-re-ne-int.md) | 2978 | `result-track:87689d56c5c7c60bb2e1116210d587437a35d6f81f188c2a9a26f6385c09cdae` |
| 146 | `lemma` | [integrableOn_Phi_circ_m12](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrableon-phi-circ-m12.md) | 2982 | `result-track:091b68d91ada38359a17edd763c135d7dec329a43c7a59c1a0a6cc2feb191512` |
| 147 | `lemma` | [integrableOn_Phi_star_m12](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrableon-phi-star-m12.md) | 2994 | `result-track:df7f92329c7dc106bb02a523c30fc9306c825c9ab7aeab1c015193dc6f8c40bb` |
| 148 | `lemma` | [integrableOn_Phi_circ_p12](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrableon-phi-circ-p12.md) | 3006 | `result-track:0969b4c2e3bbbb734a2435e965ecc94a872aa7746d1e2064155672df13202b81` |
| 149 | `lemma` | [integrableOn_Phi_star_p12](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrableon-phi-star-p12.md) | 3018 | `result-track:5e1bb7630c1051d799dcc0d98ad9ce72317d579dc7a8414ba07bb7c95ae44755` |
| 150 | `theorem` | [integrable_phi_fourier_ray](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrable-phi-fourier-ray.md) | 3031 | `result-track:484016ef5419a7f96b90eee3f32438a812e924e0454e2d70b7f3540fcb5ec957` |
| 151 | `lemma` | [tendsto_T_plus_one_mul_exp_atTop_nhds_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-t-plus-one-mul-exp-attop-nhds-zero.md) | 3086 | `result-track:7c0d752e6244cc215c4019fb789b6a7674ef55ac7926cdd778f756710ce3c38d` |
| 152 | `theorem` | [integrable_fourier_path](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integrable-fourier-path.md) | 3106 | `result-track:8dbab54122418ba926ce4815dd9f08f7c7d35da71dc90674e5e4f1d1b18b7e58` |
| 153 | `lemma` | [horizontal_integral_phi_fourier_vanish](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/horizontal-integral-phi-fourier-vanish.md) | 3114 | `result-track:f076d531abc6f0be9a8f12e742e59c1fb157fd2f0137f7d3eadafc6dfaa9ad5a` |
| 154 | `theorem` | [shift_upwards](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards.md) | 3171 | `result-track:532d2b1216781e7d9a67c2ed765cc07ad0931ab1c8b5d638e1c874ade56f8b20` |
| 155 | `theorem` | [B_affine_periodic](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/b-affine-periodic.md) | 3313 | `result-track:05734827ce1470bb5444a20abde6df14cd43b963cc89effa2699e3332d99cc56` |
| 156 | `theorem` | [phi_star_affine_periodic](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-star-affine-periodic.md) | 3336 | `result-track:83bc976b21959230b6971f4206a3f41e1e9e93823f6bd8f541f7c11475511e58` |
| 157 | `lemma` | [Phi_circ_periodic](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-circ-periodic.md) | 3354 | `result-track:3e29cb9365038e97ea3e3dc96e861ee8d2c14abb5f9e391577b2a1a8cce1c9d3` |
| 158 | `lemma` | [tendsto_div_two_pi](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-div-two-pi.md) | 3361 | `result-track:b58fe1c5178b82547ff364793ac2b5384af2b99c377b51e58d8e16ea1291890f` |
| 159 | `lemma` | [two_sub_E_sq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/two-sub-e-sq.md) | 3367 | `result-track:ab86881bf1be88bc8cc0c5119f7547768ead7f6b6087af27ba31cde19a96b5f3` |
| 160 | `lemma` | [shift_upwards_phi_diff](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards-phi-diff.md) | 3379 | `result-track:5e7b055462af541d4750f73abf284ce31252ba2db8896fe412c913677dc1d4cc` |
| 161 | `lemma` | [shift_upwards_phi_sum](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards-phi-sum.md) | 3394 | `result-track:d2a000e631a7ba999bb9de0765e0eddda1f6c9fc137d9051ced46e19e3ecaf9c` |
| 162 | `lemma` | [shift_upwards_factor](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards-factor.md) | 3415 | `result-track:89b8f0e1a19066d4cacf9bb6c7b782c88f2a3f6b1ac144986f81b37257d453bd` |
| 163 | `lemma` | [shift_upwards_imag_integral](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards-imag-integral.md) | 3446 | `result-track:90442d3f3b7b6e1e181de69105fed94e33317336d7149a3af2546a7b6718306e` |
| 164 | `lemma` | [shift_upwards_change_of_variables](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards-change-of-variables.md) | 3468 | `result-track:1da27cddab1f48748a5b1259ee8a1882696620b9955d854dfa793efb2215aa5a` |
| 165 | `theorem` | [shift_upwards_simplified](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-upwards-simplified.md) | 3504 | `result-track:5a4822ec0becadfd5399b956a376f466249dfa7408d2201a1b99c4cae3986523` |
| 166 | `lemma` | [tendsto_contour_shift_downwards](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-contour-shift-downwards.md) | 3523 | `result-track:da0ccfbb5a90c84182c8c36fb3d9efa81b0bcb3e3f468ced351fe36790c46216` |
| 167 | `lemma` | [horizontal_integral_phi_fourier_vanish_downwards](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/horizontal-integral-phi-fourier-vanish-downwards.md) | 3563 | `result-track:32f056afbebd67a996e41fd8311f78c8f268022b0b165fe22a539a6ba8fd0438` |
| 168 | `def` | [z₀_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/z-pole-source-edition-2.md) | 3620 | `declaration-track:22e8b40ff602ef97d8e36377205f869e180a6c903d7156ede10957c6cfbf454a` |
| 169 | `def` | [z₁_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/z-pole.md) | 3621 | `declaration-track:1ebb3f42c860e0adcb73a4cf727c1d15d1b5aa78ef4b39b125a692761facf9b8` |
| 170 | `lemma` | [unique_int_in_Icc](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/unique-int-in-icc.md) | 3624 | `result-track:b5675372ed84586df0cfaff313a4f187278cd59f62f5bdba61c3341a3862a650` |
| 171 | `lemma` | [meromorphicOrderAt_phi_diff_nonneg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicorderat-phi-diff-nonneg.md) | 3634 | `result-track:0f0d68248017263e871b3786a8b811af17a243373c9d41ab44413e65ed202993` |
| 172 | `lemma` | [meromorphicOrderAt_phi_add_nonneg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/meromorphicorderat-phi-add-nonneg.md) | 3642 | `result-track:6ad473f8d78b423d240a9b40d5319667b0c5eddd6efd1daca285108212a9c635` |
| 173 | `lemma` | [analyticAt_removable_sing_mul_E](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/analyticat-removable-sing-mul-e.md) | 3651 | `result-track:4be6d6207fc6bdde7b5914dc7d1ee45eee23f2c019f6d98857be9e71d6d7e3be` |
| 174 | `lemma` | [Phi_diff_bounded_near_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-diff-bounded-near-pole.md) | 3676 | `result-track:12cd9409f8fcd0e61ecf4de3c2d1604a9fd4c676481957e902de558b77fe00c9` |
| 175 | `lemma` | [Phi_fourier_holo_left](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-fourier-holo-left.md) | 3685 | `result-track:70fbc08c133fa4c496dfa657f936e8e16e3083ed5092d108156ca52a5d038a57` |
| 176 | `lemma` | [Phi_add_bounded_near_pole](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-add-bounded-near-pole.md) | 3738 | `result-track:83410fa2a1bfc9d371a7077749d53cbe47843891c4a57396b35538ef5f418299` |
| 177 | `lemma` | [Phi_fourier_holo_right](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/phi-fourier-holo-right.md) | 3747 | `result-track:1b36272b16ed9f54905e6eab35579d1530c7aa535fa21197207638afceef4b4a` |
| 178 | `theorem` | [shift_downwards](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-downwards.md) | 3811 | `result-track:742b7766b5715d7c88e95d7a86908c78400a724674cc46e6715b9d95dbaf1089` |
| 179 | `lemma` | [first_contour_bottom_vanishes](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/first-contour-bottom-vanishes.md) | 3998 | `result-track:d867aae88faca11c790ea8db63e66aa84a5a2cbf423d34eff70cc53c6e41a7a9` |
| 180 | `lemma` | [first_contour_integrand_holomorphicOn](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/first-contour-integrand-holomorphicon.md) | 4066 | `result-track:ab8129c0b54502c9800c25f118eca54bf2a0e763a3597394d16060431f1669d7` |
| 181 | `theorem` | [first_contour_limit](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/first-contour-limit.md) | 4098 | `result-track:3b4e729d0383adc5fd4587929a54e190f16ab8b4b3eee9eae99cf1272fb5e8a2` |
| 182 | `lemma` | [second_contour_integrand_holomorphicOn](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/second-contour-integrand-holomorphicon.md) | 4275 | `result-track:beab1ae4d89925e1c3bf63e22877f51b80e1897c846a47f0d7fe951c30e93f6d` |
| 183 | `theorem` | [second_contour_limit](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/second-contour-limit.md) | 4307 | `result-track:83748a4f81d6f2e488d894514556c5757ee7102e15f84f6a216268c0d1c793b5` |
| 184 | `lemma` | [third_contour_integrand_holomorphicOn](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/third-contour-integrand-holomorphicon.md) | 4381 | `result-track:3fb138734ead3ed0cbba1295bd664233af2f5ef0c13c4f9c8b01d6ff18152365` |
| 185 | `theorem` | [third_contour_limit](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/third-contour-limit.md) | 4410 | `result-track:6ba300bccebbd1e96e32a43c78536e9bf563de4754fdd148abe8d9d89bf019c7` |
| 186 | `theorem` | [shift_downwards_simplified](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/shift-downwards-simplified.md) | 4484 | `result-track:ba08facaf8affee697baaf8786a3f45c392927fe8e757a9fafb8c6531df8a3c5` |
| 187 | `theorem` | [fourier_formula_neg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-formula-neg.md) | 4631 | `result-track:4091fb4c51ca80009bcd19302f2479dde21498ae3ad0e7f6addd8e86ef5c5d18` |
| 188 | `theorem` | [fourier_formula_pos](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-formula-pos.md) | 4647 | `result-track:5ee3ee18c42d85797f43132f67571cb5cf8b615c1052ac04c4f9da5931e2ebac` |
| 189 | `lemma` | [integral_neg_one_zero_eq_zero_one](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-neg-one-zero-eq-zero-one.md) | 4651 | `result-track:5b27f3f7f7b2a3f1c4daa0545fbf168b181c18e8ff65f10addf0cfcc00ff93b5` |
| 190 | `theorem` | [fourier_real](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/fourier-real.md) | 4667 | `result-track:990c3d3bce037602f0b6b79fdfe94b789e617487b7ac57db2927079a68b7bb2f` |
| 191 | `theorem` | [varphi_integ](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-integ.md) | 4695 | `result-track:2814b1407b9377e5430e94e632a3e847199d54af6b8e5f592662c30e3eafeee4` |
| 192 | `def` | [Inu](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu.md) | 4704 | `declaration-track:9a96b924643a820af596e1f9c1278bb6b3dc8ee9278c4abf3ea50b0d4522c2b3` |
| 193 | `lemma` | [integral_re_B_mul_exp_add](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-re-b-mul-exp-add.md) | 4706 | `result-track:fbd0fcefae1005cd8a8bfc97462462a52cfd411a9f5623bf7610bc874cf9a040` |
| 194 | `lemma` | [integral_re_B_mul_exp_sub](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-re-b-mul-exp-sub.md) | 4723 | `result-track:4618c98c9e00acdf19c2e8e0d60f897c0b4d99a19f90d02a9420918c36d15826` |
| 195 | `lemma` | [integral_B_diff_mul_exp_nonneg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-b-diff-mul-exp-nonneg.md) | 4740 | `result-track:5a7f5fb1b06b7e2341eeb3ebfb2b2f8f6fdf78dab426437cd55b5155702758c8` |
| 196 | `lemma` | [integral_B_diff_mul_exp_nonpos](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/integral-b-diff-mul-exp-nonpos.md) | 4746 | `result-track:d358759c3a420aa3f713d6ec47bab60c9ccbc4c835e9a85f85f0ab18c32a78da` |
| 197 | `lemma` | [Inu_bounds_neg](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu-bounds-neg.md) | 4752 | `result-track:9908b486ad4f970304ac3cf0a110672a067f608f43894c73e1c95b202144ec4f` |
| 198 | `lemma` | [Inu_bounds_pos](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu-bounds-pos.md) | 4776 | `result-track:c512a6d4012f422825e88794a36244b02b12a122cc875e439ab96a35565dd07d` |
| 199 | `lemma` | [Inu_bounds_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu-bounds-zero.md) | 4808 | `result-track:eaefb0dfb0d636f2deefe75e41850ff5dcd772d77f9e1a3b1828326ad9db4546` |
| 200 | `theorem` | [Inu_bounds](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu-bounds.md) | 4837 | `result-track:6d19a1f064283548c2d068466d4b295671b969ae9d909f4a905e84e0b5e4488d` |
| 201 | `lemma` | [contDiffOn_Icc_deriv_integrableOn](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/contdiffon-icc-deriv-integrableon.md) | 4844 | `result-track:678183560ca57ac7b64636e61c1aef488d00335f9dad6a544808f855bf843631` |
| 202 | `theorem` | [varphi_deriv_integ](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-deriv-integ.md) | 4865 | `result-track:efd41fd16f350243d36a5e21516ff8837fe24dd72161d75827aaea259f5343d6` |
| 203 | `lemma` | [varphi_ftc_aux](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-ftc-aux.md) | 4878 | `result-track:1c5bc9654332c504b2cdaea82ee945fa2c3b2146063214cb294c9207d0a42311` |
| 204 | `lemma` | [varphi_ftc_left](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-ftc-left.md) | 4888 | `result-track:b98a6dbb661c569729b0f43f47ae6a804dc2b6714796194dce68ef2c9a07b4dd` |
| 205 | `lemma` | [varphi_ftc_right](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-ftc-right.md) | 4893 | `result-track:e84c21c615d8906bdde7becbe6476b8a13e4c810b2ee849626f9555330bc6e4f` |
| 206 | `lemma` | [varphi_ftc_out](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-ftc-out.md) | 4898 | `result-track:91c63bb531da9bd46114f91c647765dc37e8a37212c622f86f61c4dda2612f6e` |
| 207 | `lemma` | [varphi_ftc](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-ftc.md) | 4933 | `result-track:1a3f275a3ae0021ceff3b9f7eeaeb106ce41793fd9c7100ad21f16d793d37b3c` |
| 208 | `theorem` | [varphi_abs](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-abs.md) | 4983 | `result-track:e25cc76968010774cf0e66965db7c50e5a7384a0319ab344d33d4efa19ff2071` |
| 209 | `lemma` | [ϕ_pm_deriv_zero_outside](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-deriv-zero-outside.md) | 5003 | `result-track:9b8c9b99afa5021cdce56c697fe7bba943e0a3a7e5df62436e681af13067b22f` |
| 210 | `lemma` | [ϕ_pm_deriv_Iic_finite](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-deriv-iic-finite.md) | 5011 | `result-track:0f44d850f34db7de175dd7711378fdd3028cd30f64754b521bea2c46a2d848cb` |
| 211 | `lemma` | [ϕ_pm_deriv_Ici_finite](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pm-deriv-ici-finite.md) | 5067 | `result-track:9e0f5db97efaf0e32c469ce2cbc0f7a0be9b9f1eecfb72d8a5eaed9e9d519f25` |
| 212 | `lemma` | [eVariationOn_add_jump_greatest](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/evariationon-add-jump-greatest.md) | 5120 | `result-track:94ea842afa39a75b9f81c59ae7b9f449c496e3c79919c99c91f809f077663a99` |
| 213 | `lemma` | [eVariationOn_add_jump_endpoint](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/evariationon-add-jump-endpoint.md) | 5177 | `result-track:6ae72ccc768c9ad514c5e8d434fb10f7c5d7dfa577ea5ad747a5ea70eaadcdb8` |
| 214 | `lemma` | [varphi_deriv_bv_on_Icc](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-deriv-bv-on-icc.md) | 5189 | `result-track:67688ab7aaadab35f136c45e2614f8bc1c17e6937bbffe892a97d6e0f0e7f538` |
| 215 | `theorem` | [varphi_deriv_tv](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-deriv-tv.md) | 5232 | `result-track:2c0eae255880cf29010ad634bbdeb3017e153a3821442925520736e89e859ee8` |
| 216 | `theorem` | [varphi_fourier_decay](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-fourier-decay.md) | 5265 | `result-track:6f51cb7b8182b17d91245b69b3a31f5d94557f8172ce4f7ae4183359b5e432e9` |
| 217 | `lemma` | [Inu_integral](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu-integral.md) | 5278 | `result-track:e546fe59c856f31f403844c90ac5e21b2db813a1c84eed989bf1fc490547f1af` |
| 218 | `lemma` | [Inu_integrable](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/inu-integrable.md) | 5287 | `result-track:73baf3f769b7e6dc7d92422397f3f23d6f0ea8f27dc974e36461697ed0b73d64` |
| 219 | `lemma` | [varphi_hat_integrable](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-hat-integrable.md) | 5294 | `result-track:1635b2401b5dd96eeb04d4cf7628d6d9554c44d95c528937eb9218446128500d` |
| 220 | `lemma` | [varphi_fourier_inversion_re](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-fourier-inversion-re.md) | 5308 | `result-track:7e2e82a6928e62a6f2f3e85e220d8fe080a562f3a0ba49994677ffe7e5f3fdde` |
| 221 | `theorem` | [varphi_fourier_minus_error](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-fourier-minus-error.md) | 5340 | `result-track:9c47e2a55cf854c81306ca318471598177f3325c9a1ab3087238c611bb5bdfaf` |
| 222 | `theorem` | [varphi_fourier_plus_error](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/varphi-fourier-plus-error.md) | 5367 | `result-track:89e7f87e7efaf195732cc145ae5022efb20977b38a061b4f7dd53bdf8c8935d8` |
| 223 | `lemma` | [differentiableAt_coth](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/differentiableat-coth.md) | 5389 | `result-track:500b15d2d7d507ef33114f5bd072ff7bf53783fae8d7c81dc44f48823340d870` |
| 224 | `lemma` | [differentiableAt_z_coth_z](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/differentiableat-z-coth-z.md) | 5394 | `result-track:c4beda669d46942a958107f958a5fb192999cb106c53f8805690fe345c728280` |
| 225 | `lemma` | [deriv_z_coth_z_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-eq.md) | 5398 | `result-track:aa4d7b483070d37201f9b3cf9faccd70ef1e3be87a27a2d4081321d0ff49d0ef` |
| 226 | `lemma` | [deriv_z_coth_z_eq_alt](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-eq-alt.md) | 5412 | `result-track:7272d35fd4bf9edefadc33b3aad06af1bc8772fc443673d2a629f688267afdb8` |
| 227 | `lemma` | [normSq_ofReal_mul_cos_add_mul_sin_mul_I](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/normsq-ofreal-mul-cos-add-mul-sin-mul-i.md) | 5418 | `result-track:f9538d4b336caf58d01a798950cb2c5bb6f34b34a10db534ac04a46ddd86ef2d` |
| 228 | `lemma` | [normSq_sinh](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/normsq-sinh.md) | 5422 | `result-track:ad040fe8f4281b10577d4808c76f6fefd724290b894865104a945183d67fabe0` |
| 229 | `lemma` | [normSq_cosh](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/normsq-cosh.md) | 5434 | `result-track:47b52f44bac470a85faa3aae91cab40195d2ebf659edee873d90094a307034f8` |
| 230 | `lemma` | [sinh_two_mul_div_two_sub_z](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/sinh-two-mul-div-two-sub-z.md) | 5446 | `result-track:89d958edcfe64d91737d9065576461c675372227415c6bed4bf43420defea297` |
| 231 | `lemma` | [normSq_coth_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/normsq-coth-eq.md) | 5456 | `result-track:ed7ef1f1664f3201ee332c709a524b0c1700b40e2727a838405107c27969a63a` |
| 232 | `lemma` | [deriv_z_coth_z_odd](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-odd.md) | 5467 | `result-track:819927e42390af57d893c706eff9eef0758f4091cd818c8d6d4e9261459d7ec9` |
| 233 | `lemma` | [pi_cosh_two_mul_sub_bounds](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/pi-cosh-two-mul-sub-bounds.md) | 5475 | `result-track:18a2375c56c6e5908b4e4f5a97488e1bf09be65b567217ba11cf37947e106a1b` |
| 234 | `lemma` | [deriv_z_coth_z_bound_boundary](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-bound-boundary.md) | 5496 | `result-track:d39b15b637e4b5616b1a742c1a801be888f8ef9cafc7001388d8db62b3cb604d` |
| 235 | `lemma` | [deriv_z_coth_z_at_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-at-zero.md) | 5545 | `result-track:42291e0414e9a38f205d455ba9366842dd2418d5380ecd960d7122bd223b6ea4` |
| 236 | `lemma` | [deriv_z_coth_z_eq_deriv_B](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-eq-deriv-b.md) | 5551 | `result-track:6e2ab57c711f98e9cf0e9b5fbcab43d62554da14277cb4633a28aef06ba2e464` |
| 237 | `lemma` | [HorizontalStrip.hasBasis_atTop](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/horizontalstrip-hasbasis-attop.md) | 5570 | `result-track:127dcef40cd3945bb4527a87bcfee35b50f7a8b25a12045e7f400c5ff5ee2138` |
| 238 | `lemma` | [tendsto_sinh_atTop](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-sinh-attop.md) | 5579 | `result-track:e2d2a101ea7eb10202423c785870be86f87cdbec34596a511a05ce581d95223a` |
| 239 | `lemma` | [tendsto_linear_div_sinh_sq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-linear-div-sinh-sq.md) | 5591 | `result-track:a40222f953b7aa33a879e71f3b9e3e2a30b5bdb68f840daef853fed4e084467e` |
| 240 | `lemma` | [tendsto_one_div_sinh_sq_atTop](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-one-div-sinh-sq-attop.md) | 5647 | `result-track:74d8c3a0dd6105c8c40e0e743bbf13a0634a1d3be39b232aeba8494759c25b54` |
| 241 | `lemma` | [tendsto_norm_coth_atTop_horizontalStrip](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-norm-coth-attop-horizontalstrip.md) | 5652 | `result-track:9488cfe949d59330b9e2fa255436f7325a63aca23cdff8db27bfbddc18dc116b` |
| 242 | `lemma` | [tendsto_z_div_sinh_sq_atTop_horizontalStrip](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-z-div-sinh-sq-attop-horizontalstrip.md) | 5688 | `result-track:5f020c9cad99b32af8769e0f8cd5e7f8d4872388c7878f416ae0dc9493c2af9c` |
| 243 | `lemma` | [analyticOn_deriv_z_coth_z](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/analyticon-deriv-z-coth-z.md) | 5715 | `result-track:89ab6a585d0b83a46739b6495dd714edb5abc736f639008aea759059d4e0a350` |
| 244 | `lemma` | [tendsto_norm_deriv_z_coth_z_atTop_horizontalStrip](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/tendsto-norm-deriv-z-coth-z-attop-horizontalstrip.md) | 5733 | `result-track:78cee638dadd9396952449eb1f41f81b1b964b9c1783a0d8b6586d97115cbb07` |
| 245 | `lemma` | [HorizontalStrip.exists_norm_deriv_z_coth_z_le](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/horizontalstrip-exists-norm-deriv-z-coth-z-le.md) | 5759 | `result-track:5a6570161e919cdbc205a91e7786d9ec680b2c581b2b55fa038b0c91d95f059b` |
| 246 | `lemma` | [deriv_z_coth_z_growth_bound](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-growth-bound.md) | 5806 | `result-track:d0ebe26bedd1080f53e7fafdfdca7624d84d1cb92335302ecca6b667cdb3c277` |
| 247 | `lemma` | [deriv_z_coth_z_le_one](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-le-one.md) | 5823 | `result-track:0ac52eb118e27b08fa26c559189c2494aae25163b9229367a1d293ae465e56b6` |
| 248 | `lemma` | [isPreconnected_im_preimage_Ioo](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/ispreconnected-im-preimage-ioo.md) | 5847 | `result-track:83d6af59cdf9dc9e4cb3bf2171e63cb390345c327bc886697d9c05930262cc2b` |
| 249 | `lemma` | [differentiableOn_deriv_z_coth_z_strip](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/differentiableon-deriv-z-coth-z-strip.md) | 5854 | `result-track:0b37d605dae2990ff3daf8cd0a9a368a5edfa568d06c2f811034ff4fdcb7cc2a` |
| 250 | `lemma` | [deriv_z_coth_z_lt_one_of_abs_im_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-lt-one-of-abs-im-eq.md) | 5864 | `result-track:a40e481921d4808e4491532f4dd14e8378e4458d0fac3e9cfd02e6618aede8e5` |
| 251 | `theorem` | [CH2_lemma_4_2a](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/ch2-lemma-4-2a.md) | 5900 | `result-track:7526d4360c5fb9589b60f070b0e7272a836b24ceae7783a359459c4ce4f344f4` |
| 252 | `lemma` | [deriv_z_coth_z_bound_boundary_half_pi_real_ineq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-bound-boundary-half-pi-real-ineq.md) | 5928 | `result-track:b1062d7ef41b1c819e97aa4cf326463ac5d48c3aed9d833adc23bb40f2f66da5` |
| 253 | `lemma` | [deriv_z_coth_z_bound_boundary_half_pi](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-bound-boundary-half-pi.md) | 5967 | `result-track:4560dc458dab7885b5b5ed380fd10d6afd0ae32e1a83d5b6ea26b61f1c1f1ad1` |
| 254 | `lemma` | [deriv_z_coth_z_growth_bound_half_pi](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/deriv-z-coth-z-growth-bound-half-pi.md) | 6003 | `result-track:c5c948a16d5cb5cf00ae763e9781735b877ce5560facf18cea07e795f9bb2a4a` |
| 255 | `lemma` | [norm_dslope_deriv_z_coth_z_le_one](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/norm-dslope-deriv-z-coth-z-le-one.md) | 6032 | `result-track:81a5100d64ca41f32043a46ee7f183402d906a84cb71fae3cdbde709d0050b07` |
| 256 | `lemma` | [analyticOn_dslope_deriv_z_coth_z_zero](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/analyticon-dslope-deriv-z-coth-z-zero.md) | 6041 | `result-track:2c7679a97ca632b7766fc7290ae34170cd7d7f48009d3231a9595bff016e9ddd` |
| 257 | `lemma` | [norm_dslope_deriv_z_coth_z_le_one_of_abs_im_eq](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/norm-dslope-deriv-z-coth-z-le-one-of-abs-im-eq.md) | 6053 | `result-track:260cc2a2b523b87f7acea739e2d2dc2a01a640fafc00097b966b6279eaf0d09f` |
| 258 | `theorem` | [CH2_lemma_4_2b](../../../../MeasureAndIntegration/CH2Part1SourceEdition1.lean/declarations/ch2-lemma-4-2b.md) | 6077 | `result-track:0390e50edd4145d8d0798afee501761b57d0d40a56800b9fc266854b1885eca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71416796f17079df18402a60ca8768498f571ae742f1187422201e68af171b22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
