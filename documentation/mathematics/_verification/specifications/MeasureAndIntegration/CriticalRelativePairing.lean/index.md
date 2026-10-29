# Verification target: Critical Relative Pairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a99ef4f8897c2e38c12981ed6a85a8e6007a113",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a99ef4f8897c2e38c12981ed6a85a8e6007a113`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSignedStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relativePsiError](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/relativepsierror.md) | 26 | `declaration-track:6d0547fd9a2d5be0e274df0fe04d17615778174f330efa2e3b8e081240370de3` |
| 2 | `def` | [criticalWeight](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalweight.md) | 28 | `declaration-track:530c15addce868eb24e569a48205aff44c7c85aabc6358b12a3fb3feed5f9a82` |
| 3 | `def` | [criticalKernel](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalkernel.md) | 32 | `declaration-track:d7965939e77d4bfc4eb86d8c8557d63118866de077965ab8fd91afb97fbd7d2f` |
| 4 | `def` | [latticeKernel](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/latticekernel.md) | 35 | `declaration-track:27308ce171b130796540790e32ebcff5e3374643a4331e3fbc68375bd778417d` |
| 5 | `def` | [criticalRelativePairing](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalrelativepairing.md) | 38 | `declaration-track:cf4f8c219bc0cf301c9fcde8187cc16a55f531699d3847ea69a4bec0f52a45b4` |
| 6 | `def` | [latticePairing](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/latticepairing.md) | 40 | `declaration-track:01684a30d3bb8caac164720e235d8ee67e38c094adb73f23e687eb9b3e31ac6f` |
| 7 | `theorem` | [criticalWeight_continuous](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalweight-continuous.md) | 42 | `result-track:98e9996634eecf6917510540d5087e114855038e1e3dd68eec8cbec21afc607e` |
| 8 | `theorem` | [criticalWeight_abs_le](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalweight-abs-le.md) | 47 | `result-track:0608b64e81bd510a5fb980df18ee6129d52d756343f877c5bc558c7f0354239a` |
| 9 | `theorem` | [latticeKernel_measurable](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/latticekernel-measurable.md) | 59 | `result-track:247a0606f332e0b61a986de353ff11bc28242e4acabceeebb10ec8f04e741417` |
| 10 | `theorem` | [latticeKernel_abs_le](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/latticekernel-abs-le.md) | 65 | `result-track:fbef432875215fb9006faa934b0dfbc1c1692004a6cd6ce70e87869c382559d0` |
| 11 | `theorem` | [latticeKernel_integrable](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/latticekernel-integrable.md) | 77 | `result-track:5d84e08839bbec0ed5bb82951dabcfc38a0b06cbca5191df74555487feecdbee` |
| 12 | `theorem` | [latticePairing_abs_le](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/latticepairing-abs-le.md) | 87 | `result-track:f30631c7adf05d797923f7be499974af18fc33fd96e2344420a763e2dee4f797` |
| 13 | `theorem` | [kernel_exact_decomposition](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/kernel-exact-decomposition.md) | 101 | `result-track:57bf76ddc214dc40b1753172dee44d6b3bd3de1c5d5843403b1b9becee61b0ea` |
| 14 | `theorem` | [criticalKernel_integrable](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalkernel-integrable.md) | 126 | `result-track:3289794a604f18f48905be7d9bca21e1bf279f4b877d99f7e615c0ffe97e0a03` |
| 15 | `theorem` | [integerJ_eq_critical_add_lattice](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/integerj-eq-critical-add-lattice.md) | 136 | `result-track:ec6c9c7147efb22f7892e0a8c3c3467688e7b939dc070afe208381c60cb5234f` |
| 16 | `theorem` | [integerJ_le_critical](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/integerj-le-critical.md) | 145 | `result-track:d4795084d5ea4f02e233525ba052f87d20941763b16967423a9f8a169c4915b3` |
| 17 | `theorem` | [critical_le_integerJ](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/critical-le-integerj.md) | 150 | `result-track:913bf1d04956c65c5263cfed905567a0d0129a26aae175c885db7d5ff2e3902d` |
| 18 | `def` | [CriticalRelativeTailUpperBound](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/criticalrelativetailupperbound.md) | 156 | `declaration-track:67f111e7d6a91332197f0a1b1cf99a3fabc9612be206f6850ec1cc8618e56c2c` |
| 19 | `theorem` | [critical_tail_iff_integer_tail](../../../../MeasureAndIntegration/CriticalRelativePairing.lean/declarations/critical-tail-iff-integer-tail.md) | 160 | `result-track:7d61fe6b508151ad297279b7d8500ff629ce5d155485bea2e659be21eb07d174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5eb16b136367707ce6bf93b991e1afe6d3f307f04cbeb5c3925faa0de58b008f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variantd2571d7496b8d08c7f2736ddb18bc65bfe87cfceedf445a3eabeeba5a6013ce8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
