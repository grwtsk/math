# Verification target: Zero Logarithmic Norm Probe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07fe4128d227ff863f1748a14d9497f35c3c70ba",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07fe4128d227ff863f1748a14d9497f35c3c70ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicWeight](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/logarithmicweight.md) | 23 | `declaration-track:21610195955f74d8d032b52e847a767ff450a8050b5a01c3b8f02d31aeb09fb4` |
| 2 | `def` | [rawLogarithmicEnergy](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/rawlogarithmicenergy.md) | 26 | `declaration-track:3140996439f3c748aff6e5a3cce6ea32cc7900bad808e7d8bb23eec87c2b7b4b` |
| 3 | `def` | [sourceLogarithmicEnergy](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/sourcelogarithmicenergy.md) | 30 | `declaration-track:0810fc1d9dc3ef18550c4ad79a59d69b34e81377e17f7471d9f8f92d4523f14a` |
| 4 | `theorem` | [logarithmicWeight_nonneg](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/logarithmicweight-nonneg.md) | 34 | `result-track:bd2ed9904e339d6e463eccea32ee3804f8fa67fae39123c6ce46ba0d1fe70c58` |
| 5 | `theorem` | [logarithmic_integrand_integrable](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/logarithmic-integrand-integrable.md) | 41 | `result-track:c93243df2504b79e16934390e513c771497be1e7818e0769a95f7f8d0fc6b1d5` |
| 6 | `theorem` | [sourceLogarithmic_integrand_integrable](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/sourcelogarithmic-integrand-integrable.md) | 53 | `result-track:0f171ff786bf45e29e81ff750f4f32d51fc1cb39d38614d39f4919b7da7c4825` |
| 7 | `theorem` | [sourceLogarithmicEnergy_eq_integral](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/sourcelogarithmicenergy-eq-integral.md) | 61 | `result-track:9be5769bcf08ce37af9a500d9e612a499c5935675444435dccd257cb26286eec` |
| 8 | `theorem` | [rawLogarithmicEnergy_nonneg](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/rawlogarithmicenergy-nonneg.md) | 67 | `result-track:f52092436512658e8cb14bf149a235a2ac2bf8cbca4dc816a5431b9c22048ba7` |
| 9 | `theorem` | [sourceLogarithmicEnergy_nonneg](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/sourcelogarithmicenergy-nonneg.md) | 71 | `result-track:f1de2d837c4b5f43df924cd5d476fd576181fbca0c3671ebfd173c6993cdcc7e` |
| 10 | `theorem` | [archimedean_integrable_of_c1](../../../../MeasureAndIntegration/ZeroLogarithmicNormProbe.lean/declarations/archimedean-integrable-of-c1.md) | 76 | `result-track:0a9a1ef64375ac837047f7c35ec3a6f07df443ed299f76272be32d3bee679855` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8acc3bfd98c5cc13410ec138753ff000d6494787d7ef401da0b782290d77ed1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
