# Verification target: Source Strict Complementary Abel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "957b2c2af82d0fc2b342824ac33003ecadd4612d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `957b2c2af82d0fc2b342824ac33003ecadd4612d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceFullDivisorLogInventory` — import line 6; external provider; requires a separately pinned dependency.
- `ActualSignedStieltjes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strictDivisorLogCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/strictdivisorlogcoefficient.md) | 37 | `declaration-track:43e2a149caf74f7b6dd75c43c2b50f5369f016adebbaf3bbbaa47d546d3954f6` |
| 2 | `def` | [shortDivisorLogCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/shortdivisorlogcoefficient.md) | 42 | `declaration-track:3df75a2ab1f4fc000fd6cc6e2a82b9c4a3d1f02eec236b446ce9f2b7b31f134c` |
| 3 | `def` | [complementaryPlainCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementaryplaincoefficient.md) | 47 | `declaration-track:8ac07319299d2c5e9645b2dccebe87bb8ba24404b0bde35814a929c1bd825e73` |
| 4 | `def` | [complementaryCumulative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementarycumulative.md) | 51 | `declaration-track:b40c6ceb06db899b99702b6ec361659259837b383da183377bb97cbd8fbe1b96` |
| 5 | `def` | [shortDivisorCumulative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/shortdivisorcumulative.md) | 55 | `declaration-track:2cdd6f64911cd01e2bed905ea254807b82a49d8e6e32f2e53481aede03577b5c` |
| 6 | `theorem` | [strictDivisorLogCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/strictdivisorlogcoefficient-zero.md) | 58 | `result-track:bcf632427b18b8ab095086eaccb37c44edc9b82e68379675d0c7a98cfad78c4c` |
| 7 | `theorem` | [strictDivisorLogCoefficient_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/strictdivisorlogcoefficient-one.md) | 62 | `result-track:e803cbef400fb4f0d8fd1365ba8e895a7fbb07db2f026fe1b39bce26812696bf` |
| 8 | `theorem` | [complementaryPlainCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementaryplaincoefficient-zero.md) | 66 | `result-track:7fcf92404b46903c2f362cec656461a33f6a70dd237c529d0fe460464be07ebd` |
| 9 | `theorem` | [complementaryPlainCoefficient_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementaryplaincoefficient-one.md) | 70 | `result-track:8d6c157e6e59f1e4b64f804827d69cd649ee89852702c040e3c73c1fa766c999` |
| 10 | `theorem` | [strict_add_short_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/strict-add-short-eq-vonmangoldt.md) | 75 | `result-track:f719e2c55d1e945967b7eab6e8893b728a5232f9b111eb7af45d1d2f13e69257` |
| 11 | `theorem` | [complementaryPlainCoefficient_eq_signed_sub_short](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementaryplaincoefficient-eq-signed-sub-short.md) | 88 | `result-track:31b6a26e1e6f27f0640861b4e02da2f8d29823b4742a5e6024345831dcd3bcf2` |
| 12 | `theorem` | [complementaryCumulative_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementarycumulative-eq.md) | 95 | `result-track:47ffe7ae850db78c59f9dd58e4b505e1bf62b7e251884242f90bb750ffa77cef` |
| 13 | `theorem` | [strict_cutoff_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/strict-cutoff-iff.md) | 103 | `result-track:a79dc90fc3d0e642d8faacdbac644db7b87dccb0b650db4a6bec3c707d57dcc7` |
| 14 | `theorem` | [largeDivisor_eq_strict_coefficient_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/largedivisor-eq-strict-coefficient-sum.md) | 108 | `result-track:54307c71116b280aa921138dd3f714571184a9d028e4d7bb6f4954e9b5f84492` |
| 15 | `theorem` | [literal_L_sub_plain_eq_weighted_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/literal-l-sub-plain-eq-weighted-sum.md) | 144 | `result-track:20b03f9f5ed65a3313b2849406f1d3e4a6c8db261fc5fefa0e78d856b278a328` |
| 16 | `theorem` | [complementary_derivative_integrable_Icc](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementary-derivative-integrable-icc.md) | 164 | `result-track:2026e1b28e8c91dc45786bc3585138683cee521b6597b093532c1aecc2d878eb` |
| 17 | `theorem` | [literal_L_sub_plain_eq_finite_Abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/literal-l-sub-plain-eq-finite-abel.md) | 171 | `result-track:78524033eed9ac89e6ee98acee965b4450753755eededc685571c6c698b5e6f8` |
| 18 | `theorem` | [complementary_derivative_integrable_Ioi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementary-derivative-integrable-ioi.md) | 188 | `result-track:bb665961224839147662b3ab27ac20a5ec68b28c8988e93bc7d22ad6e2977b57` |
| 19 | `theorem` | [literal_L_sub_plain_eq_full_Abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/literal-l-sub-plain-eq-full-abel.md) | 207 | `result-track:9c6e92bb9b15a41670c24186c6a79e9f2489f3b32c6fba863ac6ee14816937e4` |
| 20 | `def` | [complementaryCriticalKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementarycriticalkernel.md) | 221 | `declaration-track:76dc951a7570cd30787a8c190cbd725e6542f11e72bd4198c23ce4885051e448` |
| 21 | `theorem` | [complementary_log_kernel_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementary-log-kernel-eq.md) | 227 | `result-track:6dc651858a9e6611f068d9094164701a4fa94ffa5e2afbddd07d170df3f3c6d7` |
| 22 | `theorem` | [complementary_critical_kernel_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/complementary-critical-kernel-integrable.md) | 236 | `result-track:903a204d7ffb044e05a767cb88555c89f46ce5f555347556b241accf3d959c58` |
| 23 | `theorem` | [literal_L_sub_plain_eq_critical_pairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceStrictComplementaryAbelNamespaced.lean/declarations/literal-l-sub-plain-eq-critical-pairing.md) | 248 | `result-track:f56159ced8e586beb1b4fc66441b5fddf38e7f1eb551b188ee1fa98bf1e038a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2df29aaa7128a6c4d78b6457cf67767d73e1349ccbe507bea8e53320ad2aa95d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/7bce473d1648afd11564SourceStrictComplementaryAbel/Variantb958de2f0b3496c9910a9baae46171a9de92776709c20e05029ecb6abaccb51f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
