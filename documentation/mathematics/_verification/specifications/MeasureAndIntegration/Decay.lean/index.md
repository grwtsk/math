# Verification target: Decay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Decay.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Decay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Norms` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Strip` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [autocorr_even'](../../../../MeasureAndIntegration/Decay.lean/declarations/autocorr-even.md) | 36 | `result-track:ff1f34a74a98c160bec3c29559aa29f9b7f6fa641c18b82176189915d5d40ea3` |
| 2 | `theorem` | [volume_Icc_inter_shift](../../../../MeasureAndIntegration/Decay.lean/declarations/volume-icc-inter-shift.md) | 44 | `result-track:298d7303d6ace5739da8cfb215cfccf5ec419870094306e6a8e35e71f521dafd` |
| 3 | `theorem` | [integrable_indicator_Icc_inter](../../../../MeasureAndIntegration/Decay.lean/declarations/integrable-indicator-icc-inter.md) | 52 | `result-track:144bae5351d4625ddbb549db72b5a3d08427415ead7022476c259b3b4212ce74` |
| 4 | `theorem` | [autocorr_le_of_support](../../../../MeasureAndIntegration/Decay.lean/declarations/autocorr-le-of-support.md) | 59 | `result-track:74f8ba658179097509e8f9d3b43b5b399c713302f0c4cd50d62d1b9f8ec3ce92` |
| 5 | `theorem` | [le_autocorr_of_plateau](../../../../MeasureAndIntegration/Decay.lean/declarations/le-autocorr-of-plateau.md) | 84 | `result-track:4e1741b44ada6d8f71701ccbd324865525cdf156df0bb4d45ca93fbe5a0fb0c0` |
| 6 | `theorem` | [autocorr_eq_zero_of_support](../../../../MeasureAndIntegration/Decay.lean/declarations/autocorr-eq-zero-of-support.md) | 106 | `result-track:c58b2653604f29a93ee6eeee73841481e8f4f5c3563b3daecb46971c778289ed` |
| 7 | `theorem` | [autocorr_continuous_of_support](../../../../MeasureAndIntegration/Decay.lean/declarations/autocorr-continuous-of-support.md) | 121 | `result-track:2379706d89d4202fab0550c2a500944a312e04ad48690509fc66d6d26eefdca8` |
| 8 | `theorem` | [phi_sq_eq_zero](../../../../MeasureAndIntegration/Decay.lean/declarations/phi-sq-eq-zero.md) | 140 | `result-track:935c1545437f99a3924c62cbc61894e88f3b82a8a7de74083b3a1b8451dd982f` |
| 9 | `theorem` | [integrable_phi_mul_shift](../../../../MeasureAndIntegration/Decay.lean/declarations/integrable-phi-mul-shift.md) | 144 | `result-track:6fd6b812ffe3de879c67c3c06d5089570239951087f432f5cbd185ac88981e17` |
| 10 | `theorem` | [integrable_phi_sq_mul_shift](../../../../MeasureAndIntegration/Decay.lean/declarations/integrable-phi-sq-mul-shift.md) | 155 | `result-track:4dff828c410b105523c821b3c87db62b04397aa494a06261631c510858794a42` |
| 11 | `theorem` | [Aphi_even](../../../../MeasureAndIntegration/Decay.lean/declarations/aphi-even.md) | 167 | `result-track:1b5c78c3e3fca411d690ef5e62bac5427cc9b56a6934c313d88d613e98196335` |
| 12 | `theorem` | [g_even](../../../../MeasureAndIntegration/Decay.lean/declarations/g-even.md) | 170 | `result-track:7f8db94f34969d15276fbf7608ddb61fbe1dac34d8137772e57e7b7371651293` |
| 13 | `theorem` | [g_ge](../../../../MeasureAndIntegration/Decay.lean/declarations/g-ge.md) | 173 | `result-track:82f24505e394fc256f5908b4ca1460b834b5190e78e794e4760a5c24272d1f34` |
| 14 | `theorem` | [g_le_Aphi](../../../../MeasureAndIntegration/Decay.lean/declarations/g-le-aphi.md) | 181 | `result-track:6b181e9ff95e3173d1b9b099d6407bc62d301285a109d8e7bebbf45ec7b54fc7` |
| 15 | `theorem` | [Aphi_le](../../../../MeasureAndIntegration/Decay.lean/declarations/aphi-le.md) | 191 | `result-track:ec995f61b87c18774c53a3cebfa2cc4bbc97161e0f2eaf1344a06dc31d96decb` |
| 16 | `theorem` | [g_nonneg](../../../../MeasureAndIntegration/Decay.lean/declarations/g-nonneg.md) | 198 | `result-track:7ff0d58e86f1b0c0e71b5f17e0e73ba29f786b6e727afaeb376b5b72e652448d` |
| 17 | `theorem` | [Aphi_nonneg](../../../../MeasureAndIntegration/Decay.lean/declarations/aphi-nonneg.md) | 202 | `result-track:cb019829e5eef92dc7912052cce0f49177a6c9012e222b6cfbf826812245f934` |
| 18 | `theorem` | [g_eq_zero](../../../../MeasureAndIntegration/Decay.lean/declarations/g-eq-zero.md) | 207 | `result-track:7730c22e9d11f44d53abd3301d7e481d5f543052f59172775198a0e0baefdcac` |
| 19 | `theorem` | [Aphi_eq_zero](../../../../MeasureAndIntegration/Decay.lean/declarations/aphi-eq-zero.md) | 213 | `result-track:83e35dfb338008a30eb723be1df62d46521a4ab427d4bbcfea1a0257c0c8780e` |
| 20 | `theorem` | [g_continuous](../../../../MeasureAndIntegration/Decay.lean/declarations/g-continuous.md) | 218 | `result-track:86b0c02e12b0648b5164f89f37321dbd40b0fc9f980d810c259de374c8c0c699` |
| 21 | `theorem` | [Aphi_continuous](../../../../MeasureAndIntegration/Decay.lean/declarations/aphi-continuous.md) | 223 | `result-track:d435497a7b4c1909f2a1469838b60569a503713284bf0e022344bd3a1ad8a89e` |
| 22 | `theorem` | [norm_paperFT_mul_le](../../../../MeasureAndIntegration/Decay.lean/declarations/norm-paperft-mul-le.md) | 240 | `result-track:0ee32a94ed87b41f2cda9f94bdf35bc3c963a72f994a93a232854631a18baec5` |
| 23 | `theorem` | [phiSqC_contDiff](../../../../MeasureAndIntegration/Decay.lean/declarations/phisqc-contdiff.md) | 257 | `result-track:651066f3bbf176f9b6c930ee8bc25d2347acf17be8c3ecd6020be133688a5220` |
| 24 | `theorem` | [phiSqC_support](../../../../MeasureAndIntegration/Decay.lean/declarations/phisqc-support.md) | 263 | `result-track:3867c8fb39a6a27b30081fc19e44427173517800844dbf332345140d700a9b52` |
| 25 | `theorem` | [deriv_phiSqC](../../../../MeasureAndIntegration/Decay.lean/declarations/deriv-phisqc.md) | 270 | `result-track:f0d591daa53edbeec8f7ea48b72c54d7652b3c90d6ba695bcbfe41eb9c9e5096` |
| 26 | `theorem` | [deriv_deriv_phiSqC](../../../../MeasureAndIntegration/Decay.lean/declarations/deriv-deriv-phisqc.md) | 275 | `result-track:96cf0aab231fa41c86ea02d23e2c41ad7e035847d086d32d6e9703d7aeeccd1f` |
| 27 | `theorem` | [integral_phi_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-phi-sq-le.md) | 284 | `result-track:438093dc766778ee3aee087cefb0b4f4b347f474a86fac4f6ae9c4cb9ad26b33` |
| 28 | `theorem` | [abs_phiHatR_le_norm](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phihatr-le-norm.md) | 292 | `result-track:51c049cd37c4bab09f3238882b926a6e8491097eaeb50e7294a5b8200945d499` |
| 29 | `theorem` | [abs_PhiR_le_norm](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phir-le-norm.md) | 295 | `result-track:126d74127da9838ba4549b7889cff14c82d2eb55ad6c8b6a8a129dfbfeac547d` |
| 30 | `theorem` | [abs_phiHatR_le_L](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phihatr-le-l.md) | 298 | `result-track:0eac28c92f1aaef269d860ef4dca363c5ddbd121a0f0c0c6ebcf74e7e1de6e2a` |
| 31 | `theorem` | [abs_phiHatR_mul_abs_le](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phihatr-mul-abs-le.md) | 304 | `result-track:de561389d0f56567e20c99995bf64ced16668460be2fdaf018dd0136c9455fab` |
| 32 | `theorem` | [abs_phiHatR_mul_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phihatr-mul-sq-le.md) | 315 | `result-track:dcab5bd2b9a038ed06c81d9beabe9fe290f170d8bc963b596f0abccab586006d` |
| 33 | `theorem` | [abs_PhiR_le_L](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phir-le-l.md) | 327 | `result-track:706bbd38c2127c2e059d9b192ee67fa67187f4b130f2923c90be6b5f7528f950` |
| 34 | `theorem` | [abs_PhiR_mul_abs_le](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phir-mul-abs-le.md) | 341 | `result-track:c426adee238a7af32009c75d1bfd0ba0d54533cf2e8e81b89f335b6ebc2f9d7e` |
| 35 | `theorem` | [abs_PhiR_mul_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phir-mul-sq-le.md) | 352 | `result-track:4d300bb5a9f0768288b26502e17bda2153118e1cebe4106f0df68218b2f2c30c` |
| 36 | `theorem` | [abs_le_psi_of_bounds](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-le-psi-of-bounds.md) | 365 | `result-track:8eea14a5eeec87ae641568adc0be2ed73ee406a40b70eaecb4054c9e7ddf12cf` |
| 37 | `theorem` | [abs_phiHatR_le_psi](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phihatr-le-psi.md) | 378 | `result-track:1dd5487079a9597631bca041e1fd4a4c31698fcf19862a22395dde96c54c8cb8` |
| 38 | `theorem` | [abs_PhiR_le_psi](../../../../MeasureAndIntegration/Decay.lean/declarations/abs-phir-le-psi.md) | 383 | `result-track:46691536ac0f1579ad6d1039015d989b5d6d4a93faad5c27404269d045ad6ac5` |
| 39 | `theorem` | [psi_nonneg](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-nonneg.md) | 388 | `result-track:c994c497821c85a4c9a2062fd4f36c2bf05453f8e3265cab9d6c18046bb6d037` |
| 40 | `theorem` | [psi_even](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-even.md) | 397 | `result-track:cf976f9ebc2b62b32d78da949ee92f0d39b36ef7b65e9373d262d6cc312a1feb` |
| 41 | `theorem` | [psi_le_L](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-le-l.md) | 400 | `result-track:16d56e04f47e5ee793bb42d7c3ce899a82ff1bef2176d17c010db1d91fab790d` |
| 42 | `theorem` | [psi_mul_abs_le](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-mul-abs-le.md) | 407 | `result-track:90dbd03a0ebc18bafc2a75aa64ed4b83c6b12a002290ec2fcd96be55e93aad9f` |
| 43 | `theorem` | [psi_mul_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-mul-sq-le.md) | 416 | `result-track:47f51917cf1c68d7a1722a00d1cd36855961b9d7a4c145cc6cd0599b8c51b2ff` |
| 44 | `theorem` | [psi_abs](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-abs.md) | 429 | `result-track:ba9a1a9d703ab25b8fdcb30fabdd819fa87ae45e3fcb7e0782d1b3bb97479836` |
| 45 | `theorem` | [psi_measurable](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-measurable.md) | 433 | `result-track:6ac644d1e2530578fc870645da76a89ea19d0d0c004ecb03749b883711ef7b88` |
| 46 | `theorem` | [psi_le_rpow_neg_two](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-le-rpow-neg-two.md) | 447 | `result-track:79cdd7ef1e3d0684bf8ff8314b0a7990418deb4311a4109594d5cd74e65affc0` |
| 47 | `def` | [plateauMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/plateaumaj.md) | 456 | `declaration-track:a668b1dadf656f42217bdaf6ce4fea65d5f5e50ae1e3be4f46b678e25b9583f8` |
| 48 | `theorem` | [tail_indicator_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/tail-indicator-integrable.md) | 460 | `result-track:b5cf49f198b7ec5ee1af5a37cf06d604b714946daa53aa434197f36b1bb41a64` |
| 49 | `theorem` | [plateauMaj_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/plateaumaj-integrable.md) | 464 | `result-track:ae4a66221375a5ce27894490f4db044483af4efef5db1942554592709c46a8bc` |
| 50 | `theorem` | [integral_plateauMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-plateaumaj.md) | 468 | `result-track:679b42bc7fa39eca97b9b3870657e5cc9602baff8d060a3b37277f068133a80f` |
| 51 | `abbrev` | [psiMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/psimaj.md) | 501 | `declaration-track:9b64adbe7a87e002e76fa1a16780cb5e94f8cedcf5b350661e3a660a804467ff` |
| 52 | `theorem` | [psiMaj_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/psimaj-integrable.md) | 503 | `result-track:2b7fce99fb2c2809e7f1f2e62b8da6a8fac7b7be9f25ef135a2a30f781358ab5` |
| 53 | `theorem` | [psi_le_psiMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-le-psimaj.md) | 505 | `result-track:6aa4383a4f2470e0b9b1e7d2caf57a0e982db87a151047c5cd74d1935558b7bd` |
| 54 | `theorem` | [continuous_paperFT_ofReal](../../../../MeasureAndIntegration/Decay.lean/declarations/continuous-paperft-ofreal.md) | 535 | `result-track:f138a9e9c3c5fbbfb6e1ae144c0dc403c08f96d6995bba018d31944c3114e727` |
| 55 | `theorem` | [continuous_phiHatR_aux](../../../../MeasureAndIntegration/Decay.lean/declarations/continuous-phihatr-aux.md) | 546 | `result-track:e7be287093093d042ec483825e8841aaf3e832030d020ccad2c804bce4dc9fda` |
| 56 | `theorem` | [continuous_PhiR_aux](../../../../MeasureAndIntegration/Decay.lean/declarations/continuous-phir-aux.md) | 552 | `result-track:536f1a22c8dad09d93bdeba0f688c841f9811d0c9e5104842db83c7d95e4cc9e` |
| 57 | `theorem` | [psiints_consts](../../../../MeasureAndIntegration/Decay.lean/declarations/psiints-consts.md) | 566 | `result-track:c712fa287eba3ece36ab5d9c4c534975503f8121decb310ef77f73c0a31f4248` |
| 58 | `theorem` | [indicator_psi_le](../../../../MeasureAndIntegration/Decay.lean/declarations/indicator-psi-le.md) | 578 | `result-track:e28890f231445b389bca64c7b92112efb95ea3ba73bc3a857b3af4d32a65875b` |
| 59 | `theorem` | [integral_psi_Ioi_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-psi-ioi-le.md) | 620 | `result-track:00f9259aa58c613605ad0aaee68f72e8b4f4439cb1962d7cde54341941016f21` |
| 60 | `theorem` | [integral_psi_sq_mul_abs_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-psi-sq-mul-abs-le.md) | 676 | `result-track:5645a60b835ebe2c834ba30e541019f46d397fe525ffd073a8e3f4ef4253ba33` |
| 61 | `theorem` | [integral_psi_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-psi-sq-le.md) | 783 | `result-track:1715a328b15476f53475fdb5848c68010f50945c9615954ffe1012008ae9561b` |
| 62 | `theorem` | [psi_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-integrable.md) | 846 | `result-track:1c30f07bee9939ce76f5dd3f5593f04f05defb5f12f1929f51bbae7103272446` |
| 63 | `theorem` | [psi_sq_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-sq-integrable.md) | 854 | `result-track:65c1dcc39817c4e1996f298a2586fef08de7c65382192d8be4aea24678024bdb` |
| 64 | `theorem` | [psi_sq_mul_abs_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/psi-sq-mul-abs-integrable.md) | 864 | `result-track:f77f58798b78cb7eb3fd463571496a1286e2dcd584e380270d1d66043a3dc6eb` |
| 65 | `theorem` | [integral_sq_mul_abs_le_of_le_psi](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-sq-mul-abs-le-of-le-psi.md) | 878 | `result-track:92b74eaa6bb1bbacb4cff8d0ddce99c43b2cf309e1f29797cb0aca49bca99209` |
| 66 | `abbrev` | [momMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/mommaj.md) | 890 | `declaration-track:6c5deab6db1fdcc3aefce1f1c986c078c78be2e290d8e7f5568d7beac7ddeb63` |
| 67 | `theorem` | [momMaj_integrable](../../../../MeasureAndIntegration/Decay.lean/declarations/mommaj-integrable.md) | 892 | `result-track:be03e2fdc72743609383ec7a48c7bec5b3408b9d7abd38cc7ec1727a82468f53` |
| 68 | `theorem` | [integral_momMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-mommaj.md) | 894 | `result-track:dc479cc8562af77484c7817abfacb7c9547eca1e064ff394683cbc5367700f3d` |
| 69 | `theorem` | [sq_mul_sq_le_momMaj](../../../../MeasureAndIntegration/Decay.lean/declarations/sq-mul-sq-le-mommaj.md) | 898 | `result-track:313e8f5465f24bc9a2d362e4cc43823b959fb8ce83a4fff3bb5700677a6cb753` |
| 70 | `theorem` | [integrable_sq_mul_sq_of_bounds](../../../../MeasureAndIntegration/Decay.lean/declarations/integrable-sq-mul-sq-of-bounds.md) | 937 | `result-track:4fe1a8c88527f1ffc2f83fdf0847dd91bb1a3e3b549d58e29bd7ab55ac7dac13` |
| 71 | `theorem` | [integral_sq_mul_sq_le_of_bounds](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-sq-mul-sq-le-of-bounds.md) | 944 | `result-track:b9132ce654131a6252eff9d6cd024777cbd90780789e6d21ccfdceee8bed596d` |
| 72 | `theorem` | [integral_phiHatR_sq_mul_abs_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-phihatr-sq-mul-abs-le.md) | 952 | `result-track:166f45343571a7ca7e09a5048259846df8c9fa7e2d82439735a5c0f0cdb2b6c6` |
| 73 | `theorem` | [integral_PhiR_sq_mul_abs_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-phir-sq-mul-abs-le.md) | 957 | `result-track:b73415a48f2b4977cf12f2e6ddcfb426f9f3b12905d013c750763a93675f9a64` |
| 74 | `theorem` | [integrable_phiHatR_sq_mul_sq](../../../../MeasureAndIntegration/Decay.lean/declarations/integrable-phihatr-sq-mul-sq.md) | 963 | `result-track:8c6d16a9ad3a055c4911289bfb8c502089e379b5404e36bf69c7cb3907dc570c` |
| 75 | `theorem` | [integral_phiHatR_sq_mul_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-phihatr-sq-mul-sq-le.md) | 973 | `result-track:08f06558396de784bcaeac09649a3cef6ab840ac2050fc7a9a4dc421b7b185db` |
| 76 | `theorem` | [integrable_PhiR_sq_mul_sq](../../../../MeasureAndIntegration/Decay.lean/declarations/integrable-phir-sq-mul-sq.md) | 982 | `result-track:93be88eac8022b9e821dd734877faf500c6c10f91756f6965a241d61504239e0` |
| 77 | `theorem` | [integral_PhiR_sq_mul_sq_le](../../../../MeasureAndIntegration/Decay.lean/declarations/integral-phir-sq-mul-sq-le.md) | 991 | `result-track:3379b3db99d50093376f508392670aa034097ca6ed6cd93c90cbb6660c0b52e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=061967ef6ccd0b90d32edbba550c56bc8004c020d65b9222f1f9b57425f1bd85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
