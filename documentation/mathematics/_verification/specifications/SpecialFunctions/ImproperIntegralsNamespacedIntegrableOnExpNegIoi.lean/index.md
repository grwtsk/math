# Verification target: Improper Integrals Namespaced Integrable On Exp Neg Ioi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4461690a51b88a8cd3ab7d3b8445d7711a0d23f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant25b14102747c32252ed7504d634fc6851772252d41161af9fde647f70ad0e673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/index.md) · [Full source](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4461690a51b88a8cd3ab7d3b8445d7711a0d23f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant25b14102747c32252ed7504d634fc6851772252d41161af9fde647f70ad0e673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant25b14102747c32252ed7504d634fc6851772252d41161af9fde647f70ad0e673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_exp_Iic](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-exp-iic.md) | 41 | `result-track:3fc95135cec1000422a3657a4d3248b424b1557ccfe3177c8d7198f4c91befb2` |
| 2 | `theorem` | [integrableOn_exp_neg_Ioi](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-exp-neg-ioi.md) | 49 | `result-track:83eee3d3ba2e705c1ff019c3839356e8b22f61c5ae00fb361d1984de03b48b9f` |
| 3 | `theorem` | [integral_exp_Iic](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-iic.md) | 52 | `result-track:f6d38983e7568b6eecacf8e5150c3e6561db95b610719b3563b4766188f2409e` |
| 4 | `theorem` | [integral_exp_Iic_zero](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-iic-zero.md) | 59 | `result-track:18ed31b2d9fe826c7c9447c30ec17e3e2855d4f93792a7d189644e6fbe28a385` |
| 5 | `theorem` | [integral_exp_neg_Ioi](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-neg-ioi.md) | 62 | `result-track:ab9d9c398ff30d65ce18d52a38450b6c3e0674268a1665a97519e12fcee1d97d` |
| 6 | `theorem` | [integral_exp_neg_Ioi_zero](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-neg-ioi-zero.md) | 65 | `result-track:43322e7871b311df96c9f42ac6242e658f7265b15185b343605da45ee7ee683d` |
| 7 | `theorem` | [integrableOn_exp_mul_complex_Ioi](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-exp-mul-complex-ioi.md) | 68 | `result-track:2460646dceb4e789a205590141aaad5543c9110936f6e7d94689b102b2d6888e` |
| 8 | `theorem` | [integrableOn_exp_mul_complex_Iic](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-exp-mul-complex-iic.md) | 77 | `result-track:6191cc765c4db01a5d49ee47266de109fc2b0b9a97712470a41558459f172f05` |
| 9 | `theorem` | [integrableOn_exp_mul_Ioi](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-exp-mul-ioi.md) | 82 | `result-track:5153c91a662af49596382693e4c185ebaff5fa72dd4a9c7725c009ec3ee182f4` |
| 10 | `theorem` | [integrableOn_exp_mul_Iic](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-exp-mul-iic.md) | 87 | `result-track:689c20afe6ea69651659593f829afc2ab70701b4505b22ad76c5d939910155b7` |
| 11 | `theorem` | [integral_exp_mul_complex_Ioi](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-mul-complex-ioi.md) | 92 | `result-track:67c199d37a4ccd017ad21ce70316a18fe6e16c4838f5105e6d5280418d3d8135` |
| 12 | `theorem` | [integral_exp_mul_complex_Iic](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-mul-complex-iic.md) | 101 | `result-track:17e5170ae93f8b520723d03c02f6e67635a1f45c9021072956e80044d8d24b0a` |
| 13 | `theorem` | [integral_exp_mul_Ioi](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-mul-ioi.md) | 107 | `result-track:ab33cb19b5a05f0f3e02e7cfbd880b41d2ad00d116b8f087e6861cb09ba28388` |
| 14 | `theorem` | [integral_exp_mul_Iic](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-exp-mul-iic.md) | 114 | `result-track:2aec84de3e1a68980b3a1d013c2daf54713ad7204208ce2fb0be8e0af79f1ffb` |
| 15 | `theorem` | [integrableOn_Ioi_rpow_of_lt](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-rpow-of-lt.md) | 120 | `result-track:bdaba0648de29e55c340d8dbb5e8fc5fac89c4ce135cc37beb7ff66b12dbe168` |
| 16 | `theorem` | [integrableOn_Ioi_rpow_iff](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-rpow-iff.md) | 132 | `result-track:ba355615390db469c468241b35eb170dab806b1acc4aa776eed2c88f44a967e2` |
| 17 | `theorem` | [integrableAtFilter_rpow_atTop_iff](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableatfilter-rpow-attop-iff.md) | 148 | `result-track:b0a16616ae0a983ca119f2347164962174878ad3f84bd1fadfa717c5ae0fe240` |
| 18 | `theorem` | [not_integrableOn_Ioi_rpow](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/not-integrableon-ioi-rpow.md) | 157 | `result-track:acc349d8f2ca8ad55c6ab1306bf9e0b3e3dd7a451d34e920c8644d3988592e93` |
| 19 | `theorem` | [setIntegral_Ioi_zero_rpow](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/setintegral-ioi-zero-rpow.md) | 167 | `result-track:8b5ab570a4ee642504e6496edea66cf11cf9371167d2db39e4ed0bdd57adfa75` |
| 20 | `theorem` | [integral_Ioi_rpow_of_lt](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-ioi-rpow-of-lt.md) | 170 | `result-track:a856d1e8a5792ad45b5ce44a2fcf75358f1614cd4f0837e6dcfa1372f6807eda` |
| 21 | `theorem` | [integrableOn_Ioi_norm_cpow_of_lt](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-norm-cpow-of-lt.md) | 182 | `result-track:62d0f119a4d7ee9ee9c3b13b3847b53672005f19c2703628cb05a5f61aa462a0` |
| 22 | `theorem` | [integrableOn_Ioi_cpow_of_lt](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-cpow-of-lt.md) | 187 | `result-track:3f0c55e6d1a9bea8569175a85bf87c85611db9fdbb566a52ad3dfc8834f55445` |
| 23 | `theorem` | [integrableOn_Ioi_norm_cpow_iff](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-norm-cpow-iff.md) | 193 | `result-track:41717b980ce46a4a5eb7f583ecc352c7058e4f0a9ec26dfb678763a0cfcad048` |
| 24 | `theorem` | [integrableOn_Ioi_cpow_iff](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-cpow-iff.md) | 199 | `result-track:f750b7637a27230a429fb7e7c2ceaab154ae9964686f28f20db71b903a2de789` |
| 25 | `theorem` | [integrableOn_Ioi_deriv_ofReal_cpow](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-deriv-ofreal-cpow.md) | 203 | `result-track:edf299ee5f94784fbcd2b840ad9b86d6078c9459559fef5baedf75c32bf9bd78` |
| 26 | `theorem` | [integrableOn_Ioi_deriv_norm_ofReal_cpow](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrableon-ioi-deriv-norm-ofreal-cpow.md) | 211 | `result-track:7f473951e574e0b181181e5e2299b3fa67b422b788ae1e11ff5968959d033486` |
| 27 | `theorem` | [not_integrableOn_Ioi_cpow](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/not-integrableon-ioi-cpow.md) | 222 | `result-track:5767ed37d83496e4c0011c769b8ff3b67519a1bac5611f49aebc7d802d2ffb17` |
| 28 | `theorem` | [setIntegral_Ioi_zero_cpow](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/setintegral-ioi-zero-cpow.md) | 235 | `result-track:6bad6fdf2a72117fe22d1ca026d9454960b07dee38d9910c0ebaf1c5634ace17` |
| 29 | `theorem` | [integral_Ioi_cpow_of_lt](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-ioi-cpow-of-lt.md) | 238 | `result-track:faa236dbd7b42aee17a5f1e33b68310dcce1fe0bdc99615db1c2d5fb54d6b9fe` |
| 30 | `theorem` | [integrable_inv_one_add_sq](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integrable-inv-one-add-sq.md) | 261 | `result-track:9c254bf58f93451c3480daf829487ded9604c09ea696be003b4b03d8888c3331` |
| 31 | `theorem` | [integral_Iic_inv_one_add_sq](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-iic-inv-one-add-sq.md) | 266 | `result-track:0d03b016cd3cb999ea863bb113c9fd6b280cc5d34deb4aa6ac37fde9266b32dc` |
| 32 | `theorem` | [integral_Ioi_inv_one_add_sq](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-ioi-inv-one-add-sq.md) | 273 | `result-track:ff180d65c096e2eed47031b86b07639dc92e237506ef1b9534287ffcae17036f` |
| 33 | `theorem` | [integral_univ_inv_one_add_sq](../../../../SpecialFunctions/ImproperIntegralsNamespacedIntegrableOnExpNegIoi.lean/declarations/integral-univ-inv-one-add-sq.md) | 279 | `result-track:106a492797770f6fb0840abbf2580d2d2e778407e969da9a2b483c4bafa9d91b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6474159edaf5a16a4a41dc5044e2a0071911b30f42a6787e5018a2cd61e1096 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant25b14102747c32252ed7504d634fc6851772252d41161af9fde647f70ad0e673.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant25b14102747c32252ed7504d634fc6851772252d41161af9fde647f70ad0e673.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
