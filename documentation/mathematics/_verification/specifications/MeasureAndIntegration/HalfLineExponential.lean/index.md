# Verification target: Half Line Exponential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bea733cf2111dfde32bfe4a33e26d41414c6b07",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HalfLineExponential.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HalfLineExponential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bea733cf2111dfde32bfe4a33e26d41414c6b07`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfLineMeasure](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/halflinemeasure.md) | 12 | `declaration-track:c45e6cf002e0b7a0034b7a12ca96229420356af43d5a3ea4fdfa5a74422d7602` |
| 2 | `abbrev` | [H](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/h.md) | 15 | `declaration-track:d34002970effa0e1b787720c27c4fa03ab9985bf4887f6f8a4855722f0b16381` |
| 3 | `def` | [exponentialFunction](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction.md) | 18 | `declaration-track:0e29f6fcc89870e09f3686e049d82c20f2643475cf5fc0a7b1196d7034d9fc29` |
| 4 | `theorem` | [exponentialFunction_continuous](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction-continuous.md) | 20 | `result-track:db6162ca25de2468ad85df4d0fd589f370d0d35b386bab81f7736701d6fc655a` |
| 5 | `theorem` | [exponentialFunction_integrable](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction-integrable.md) | 24 | `result-track:fe1e49792926757f9d8c4f66596b589eb9cdd36e52fe6049614002936ec43fac` |
| 6 | `theorem` | [exponentialFunction_norm_sq](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction-norm-sq.md) | 28 | `result-track:c55e632140c4e46d9f3a85d38392d1bd172c375c325bcb6acece6124d41ca395` |
| 7 | `theorem` | [exponentialFunction_sq_integrable](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction-sq-integrable.md) | 37 | `result-track:58cf39068b86c9818d1f002d2d2d329b06765e7c1b9ce754ccb3c089e5cda050` |
| 8 | `theorem` | [exponentialFunction_memLp](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction-memlp.md) | 42 | `result-track:43e8095e3abf82f827a333f63763f2b30d43e71e03db9ad80ad895d75757080c` |
| 9 | `theorem` | [exponentialFunction_sq_integral](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialfunction-sq-integral.md) | 48 | `result-track:ec45212f2f8a535078122c04be5a6af05832123eadbddab8995fb91aeab45b0a` |
| 10 | `def` | [exponentialVector](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialvector.md) | 55 | `declaration-track:4aa5281970800575c2688155e3d632cc52dded033abf277c20668eba76cf227c` |
| 11 | `theorem` | [exponentialVector_ae](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialvector-ae.md) | 58 | `result-track:75c87ef3a2a53450670080b83a71e385d444765e67003e9bc040071fefe17747` |
| 12 | `theorem` | [pointwise_inner_exponential](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/pointwise-inner-exponential.md) | 62 | `result-track:eefb8076999824991191256106736400d02b0f33256d08f53010ced483755dc3` |
| 13 | `theorem` | [inner_exponential_integrable](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/inner-exponential-integrable.md) | 72 | `result-track:2d106dfb17ad408fc012cfa32b7643cb7cfcf6eb735913fe16ea0359e1111295` |
| 14 | `theorem` | [inner_exponential_integral](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/inner-exponential-integral.md) | 78 | `result-track:f003dadffbb46506df4ebeab6f88a498d1c2691586e1cb28061fd78d1d63ce78` |
| 15 | `theorem` | [inner_exponentialVector](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/inner-exponentialvector.md) | 87 | `result-track:a73b555ee4fdd555f2c0baace97e371f2f074209a26689241d5ad4988f2fdb35` |
| 16 | `theorem` | [exponentialVector_norm_sq](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialvector-norm-sq.md) | 98 | `result-track:95927331248d61e10e218cf5376bcf2fdea61ea1b1e2032e5384345e96e52312` |
| 17 | `theorem` | [exponentialVector_ne_zero](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/exponentialvector-ne-zero.md) | 109 | `result-track:a7398049596e09cf9bd373253510cd636cbd3721c46830c4e899b6991d6d1c07` |
| 18 | `def` | [referenceVector](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/referencevector.md) | 118 | `declaration-track:caa8ed3a7f989df71480d02780a8c73781c403cbffe43af486f05a14312f1864` |
| 19 | `theorem` | [referenceVector_ae](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/referencevector-ae.md) | 120 | `result-track:747efeaeddd9d65c5defc86915c546e8b1eb25201cb74ccc645be48039b2c4ca` |
| 20 | `theorem` | [referenceVector_norm_sq](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/referencevector-norm-sq.md) | 126 | `result-track:731442bb647e4000883711c5195ae5740b9f91dd38f0fd4f5ec6e586f68b3c86` |
| 21 | `theorem` | [inner_reference_exponential](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/inner-reference-exponential.md) | 129 | `result-track:caa2aa9ff5b959275a0122e6b66f98131222b346854169f1118b0a50cfa2747e` |
| 22 | `theorem` | [inner_exponential_reference](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/inner-exponential-reference.md) | 133 | `result-track:dc5584fb1b051f8f50a4e1a1f5e17862cf783b03af769cf410da9491185b673f` |
| 23 | `theorem` | [norm_sq_inner_reference_exponential](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/norm-sq-inner-reference-exponential.md) | 137 | `result-track:df5849b20a8b05534f33c73445681d2e5fe89b20b1e53bbaea8c95e2b2fabdf0` |
| 24 | `theorem` | [reference_projection_coefficient](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/reference-projection-coefficient.md) | 145 | `result-track:c40023d1c2aef43e4ab8628fd2195a76d88606a0b2d7598c6a00ac5e0923ac05` |
| 25 | `theorem` | [one_add_ne_zero](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/one-add-ne-zero.md) | 152 | `result-track:050c883b846084b1eac8dc50edc0bc85228fdf79a1036106f56f6c94df4b1285` |
| 26 | `theorem` | [reference_projection_coefficient_pos](../../../../MeasureAndIntegration/HalfLineExponential.lean/declarations/reference-projection-coefficient-pos.md) | 158 | `result-track:c5253653544b06fb2bceecf4f71f0dba8ee556cccd7c00f73b1f3aae050bfb9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1a046022b564335de451760741f857221bb2e28f6ecae0749ae79473be2441b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
