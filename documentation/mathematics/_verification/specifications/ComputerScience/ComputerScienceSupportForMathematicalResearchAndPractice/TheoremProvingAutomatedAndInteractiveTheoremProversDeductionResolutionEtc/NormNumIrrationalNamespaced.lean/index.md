# Verification target: Norm Num Irrational Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "103159d7045d05f2907435acfc8c22bbd9b4c425",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `103159d7045d05f2907435acfc8c22bbd9b4c425`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.GCD` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [irrational_rpow_rat_of_not_power](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-rpow-rat-of-not-power.md) | 43 | `result-track:64b815ba4ecaa69ee7c6e2263dc46f8bdb4fda348a569d38a0e1125441deada2` |
| 2 | `theorem` | [not_power_nat_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/not-power-nat-pow.md) | 55 | `result-track:1a89058d99b14c1472ac6e3615650af0ca3bc2269b53dde67036adfe394d4d2f` |
| 3 | `theorem` | [not_power_nat_of_bounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/not-power-nat-of-bounds.md) | 97 | `result-track:6366c322a999f6ca1f4eee4a2e049b2c0c072a55957def4039255ba6047dbf87` |
| 4 | `theorem` | [not_power_nat_pow_of_bounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/not-power-nat-pow-of-bounds.md) | 106 | `result-track:ab6a59f6f597390709475ef9962b950aceca41511930be1e25f39a634a75b506` |
| 5 | `lemma` | [eq_of_mul_eq_mul_of_coprime_aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/eq-of-mul-eq-mul-of-coprime-aux.md) | 114 | `result-track:cf5997392de2d58c8cae290353ed27c6c098b1a5824711d75dd088a2bc8f43bf` |
| 6 | `lemma` | [eq_of_mul_eq_mul_of_coprime](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/eq-of-mul-eq-mul-of-coprime.md) | 117 | `result-track:6def47b1281b7fbf23bcdbdc1e467ed063d309c0e8442027b7b435c401fc1994` |
| 7 | `theorem` | [not_power_rat_of_num_aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/not-power-rat-of-num-aux.md) | 124 | `result-track:f1c84b7b0595345cf4b6d000c379d3756c005532aef604ba1616560944cd6b84` |
| 8 | `theorem` | [not_power_rat_of_num](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/not-power-rat-of-num.md) | 158 | `result-track:2631c1854920a5639045c15cb036dda38d1ee2c7fedeeffbc96dac51e9a2819d` |
| 9 | `theorem` | [irrational_rpow_rat_rat_of_num](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-rpow-rat-rat-of-num.md) | 170 | `result-track:86895cb9d8fba3e85f22a09f6476b3afcf264f556831eac117deb6c196767707` |
| 10 | `theorem` | [irrational_rpow_rat_rat_of_den](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-rpow-rat-rat-of-den.md) | 200 | `result-track:2f3f7f35cc5b949988ee8a9d75b5fd7fa27cdd5ef59be4170c4456c2c7ac04eb` |
| 11 | `theorem` | [irrational_rpow_nat_rat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-rpow-nat-rat.md) | 216 | `result-track:22b3e6c70a42c52d987391a3c37492fdd0314d8889ab1dbdfc7cf04be157d91a` |
| 12 | `theorem` | [irrational_sqrt_rat_of_num](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-sqrt-rat-of-num.md) | 225 | `result-track:807173cf583f7015b30ac45f27960af248ce07a7411757afce3700419507ffe0` |
| 13 | `theorem` | [irrational_sqrt_rat_of_den](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-sqrt-rat-of-den.md) | 236 | `result-track:edb2a3f6af685a1be018f0eff93044bf965581558c71381877d209e9113817bf` |
| 14 | `theorem` | [irrational_sqrt_nat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/irrational-sqrt-nat.md) | 247 | `result-track:14d7d3c15ce16577c97551258ca11bdaa9a2e6f601b09d28bec847702e7c9ad2` |
| 15 | `structure` | [NotPowerCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/notpowercertificate.md) | 258 | `declaration-track:ca0f46d97ec932a417d51b6d31982dbc5cb5467f27fb24e1baf06e9ea64c80d5` |
| 16 | `def` | [findNotPowerCertificateCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/findnotpowercertificatecore.md) | 267 | `declaration-track:ba21443a047cf56ee78232c96d160a3068d233eb1f8b455609a6577c3565070c` |
| 17 | `def` | [findNotPowerCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/findnotpowercertificate.md) | 281 | `declaration-track:fcc2063ec8a93d7a5fea64226f02d6db3057f70b5f70d8ff2059dac1907926cb` |
| 18 | `def` | [evalIrrationalRpow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/evalirrationalrpow.md) | 294 | `declaration-track:7fa96ca5f5d12289af5816f97701ad53b90b7203e86ed15d5e1fc147e6855bf0` |
| 19 | `def` | [evalIrrationalSqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumIrrationalNamespaced.lean/declarations/evalirrationalsqrt.md) | 330 | `declaration-track:f4e9b6e15e5b1a5b36499ddeec111ac5aab1556f6f47f7112a88aaa834dc7e22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6177b4f03bb0caf166ca1738982eb058490f9522e3d14a7d33a3c1b398e08ac9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Irrational/Variant273bc59de3db478ecd2de066deb4d24b0c7cb845070b0748a27ebd76c9ad1ca2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
