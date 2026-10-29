# Verification target: Complex Deriv Tendsto Abs Tan Of Cos Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2678cb0e3bcd9fc436fe73d7db37e9a98e76abf7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/index.md) · [Full source](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2678cb0e3bcd9fc436fe73d7db37e9a98e76abf7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/macro-rules.md) | 19 | `declaration-track:73cebaae32f5b046a70a8d6cf0602a84c768c394a92cc8012509c603b78177e8` |
| 2 | `theorem` | [hasStrictDerivAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/hasstrictderivat-tan.md) | 27 | `result-track:00ed1a649e49d902b523d9e5918715a24bbf4c508bcc198c55745a48bc13bc1c` |
| 3 | `theorem` | [hasDerivAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/hasderivat-tan.md) | 33 | `result-track:a0ed2fc01d91db5f2e32fb6915a728c323cfc2ad70d3d561321a2a9b08122a6d` |
| 4 | `theorem` | [tendsto_abs_tan_of_cos_eq_zero](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/tendsto-abs-tan-of-cos-eq-zero.md) | 39 | `result-track:15a5924a50834ca8ef6307c27f46f9f3fd8b9726df2fccd528e26220148a5eb9` |
| 5 | `theorem` | [tendsto_abs_tan_atTop](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/tendsto-abs-tan-attop.md) | 49 | `result-track:c8a4acfad61aab560bf5d3dc4830444d1b936cd9c7b9a416118d88faacc9b770` |
| 6 | `theorem` | [continuousAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/continuousat-tan.md) | 55 | `result-track:d6d1865b8c4774aa81be25e6cb70a9dcbe0e2cf74ac31badb2f5fa30105cfd8e` |
| 7 | `theorem` | [differentiableAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/differentiableat-tan.md) | 62 | `result-track:f187efa953a65570424672ee3668f8cee2c87d37fd789f1e071b87b4c1642eeb` |
| 8 | `theorem` | [deriv_tan](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/deriv-tan.md) | 67 | `result-track:9540734288955f7e408bcf21c397021271b2454b6c3185c8922532c49e0ec78f` |
| 9 | `theorem` | [contDiffAt_tan](../../../../SpecialFunctions/ComplexDerivTendstoAbsTanOfCosEqZero.lean/declarations/contdiffat-tan.md) | 75 | `result-track:d44c9251d0cc252c3dd97c8f3189021934f20820e372d92cc312ca6977723554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11cb431de14c2f22b9d9c0c31cb56c7aedf0bbee0e79af6081205e3efe13c2de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
