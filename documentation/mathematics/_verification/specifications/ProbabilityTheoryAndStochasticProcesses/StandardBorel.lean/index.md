# Verification target: Standard Borel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c447608fc4db3467930c248d2790b9f48795cf7d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c447608fc4db3467930c248d2790b9f48795cf7d`.

Source path: `GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.CondCDF` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.Density` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.CDFToKernel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.EmbeddingReal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isRatCondKernelCDFAux_density_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/isratcondkernelcdfaux-density-iic.md) | 79 | `result-track:603d4766b296a24f02b49bae9e724f915349cb48a793894335ea312974142aa7` |
| 2 | `lemma` | [isRatCondKernelCDF_density_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/isratcondkernelcdf-density-iic.md) | 116 | `result-track:464329d9422a7e05f4e288ca517b1ebb84fdd65645eb2ecd6d4fa5b6c47c0923` |
| 3 | `def` | [condKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelcdf.md) | 123 | `declaration-track:7fda0e3214a8e14df614048563b2833cb6dbcfb0a059f4fbf96cf8b1ee661516` |
| 4 | `lemma` | [isCondKernelCDF_condKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/iscondkernelcdf-condkernelcdf.md) | 127 | `result-track:f2a52f51230a668af863b586fe7d6bda95c2ee0e3839c6fa969350a415665b11` |
| 5 | `def` | [condKernelReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelreal.md) | 134 | `declaration-track:7d11a3094377f133fbfdc1058d09a03333b78b7ab6f071fa3a4c9eaf9775979c` |
| 6 | `instance` | [instIsMarkovKernelCondKernelReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instismarkovkernelcondkernelreal.md) | 137 | `declaration-track:a10f2ce0890102d95c02973c45960f4d8645a31b18dfbf7485b4f08ce432b3ae` |
| 7 | `lemma` | [compProd_fst_condKernelReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/compprod-fst-condkernelreal.md) | 142 | `result-track:778910318ca91fdc08614342b7b91c208530e47aa7f54525b6ffd8d30808b042` |
| 8 | `def` | [condKernelUnitReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelunitreal.md) | 150 | `declaration-track:e5888d50a911adaad5a210a319ef82049f4dfbf02e8cecacf84511361752d0eb` |
| 9 | `instance` | [instIsMarkovKernelCondKernelUnitReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instismarkovkernelcondkernelunitreal.md) | 153 | `declaration-track:ec2af505f8a2d854fd8811b1e0ef0b5781cd5db9b7f8a0b7a04cc3a6e48c61fa` |
| 10 | `instance` | [condKernelUnitReal.instIsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelunitreal-instiscondkernel.md) | 158 | `declaration-track:9ac4acbf33656805044b633108657b0eb3a5d84826e04b260615fe2cb5954bc7` |
| 11 | `def` | [borelMarkovFromReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/borelmarkovfromreal.md) | 181 | `declaration-track:531bb77c5fb4de870da8823dc87a5dc1b4ebb70257253cd031f3aecfbc983989` |
| 12 | `lemma` | [borelMarkovFromReal_apply](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/borelmarkovfromreal-apply-source-edition-2.md) | 191 | `result-track:9b9eabc15eab948e9e90445716aa6ec77f607a895e46edad8f93f7a6f31a5f19` |
| 13 | `lemma` | [borelMarkovFromReal_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/borelmarkovfromreal-apply.md) | 201 | `result-track:753c9de95c39adda31ba3bfdb8b2246404f89db8d73f5dd24938742b6c96f4db` |
| 14 | `instance` | [instIsSFiniteKernelBorelMarkovFromReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instissfinitekernelborelmarkovfromreal.md) | 213 | `declaration-track:09c0405dc7da037361d22c29ef1c5008568dc85080517635f336501410df0d8d` |
| 15 | `instance` | [instIsFiniteKernelBorelMarkovFromReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instisfinitekernelborelmarkovfromreal.md) | 218 | `declaration-track:ecdd2f5cd89873f88fe029d8ceea4a1ddcf9cb51f0ceda970211d641a51ccdc4` |
| 16 | `instance` | [instIsMarkovKernelBorelMarkovFromReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instismarkovkernelborelmarkovfromreal.md) | 223 | `declaration-track:426f73ce1e9e74e2d0fc41b59e65bf741d673b2691bb50c172f2af0ea8e2d550` |
| 17 | `lemma` | [compProd_fst_borelMarkovFromReal_eq_comapRight_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/compprod-fst-borelmarkovfromreal-eq-comapright-compprod.md) | 235 | `result-track:fe0908a5d1d7a02e5319ec5c054f4f59fa9f6021b508615cab062ee734b69252` |
| 18 | `lemma` | [compProd_fst_borelMarkovFromReal](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/compprod-fst-borelmarkovfromreal.md) | 284 | `result-track:252f00f098c3dbd1932dccaff1a1953b5b2746c74d3e318e669c12fb767012a6` |
| 19 | `def` | [condKernelBorel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelborel.md) | 312 | `declaration-track:ccbee695f3fc84a950ac009a762d24f60b7561d10c0a2f88f43d4927f0935f26` |
| 20 | `instance` | [instIsMarkovKernelCondKernelBorel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instismarkovkernelcondkernelborel.md) | 316 | `declaration-track:35a2d28a0336695e7d7d6a17b56a974c198f1784499afe2d2e49a5295ff9f4c2` |
| 21 | `instance` | [condKernelBorel.instIsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelborel-instiscondkernel.md) | 321 | `declaration-track:6bac0d9e84175b73300183843da69a27cdd9f6501b648d54eda70df1c425d31a` |
| 22 | `def` | [condKernelUnitBorel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelunitborel.md) | 335 | `declaration-track:75889d7bcce8e2daae31ca3ea5accac435b4b2024e4897f877d7455146428693` |
| 23 | `instance` | [instIsMarkovKernelCondKernelUnitBorel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instismarkovkernelcondkernelunitborel.md) | 339 | `declaration-track:0e859608b6de473365d1a39a42f3ba288af196eae015e31d33d8c324ecdaac03` |
| 24 | `instance` | [condKernelUnitBorel.instIsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernelunitborel-instiscondkernel.md) | 343 | `declaration-track:a52c02fcdeee711e840e339cc65788d00255c976e3c61904a2d58e6a4714ca9c` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/root-measuretheory-measure-condkernel-apply.md) | 360 | `result-track:f1550f65fb5bba828a598c6f33adfdceeb9793eb9881ecb54ef0408db5af1ca4` |
| 26 | `instance` | [_root_.MeasureTheory.Measure.condKernel.instIsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/root-measuretheory-measure-condkernel-instiscondkernel.md) | 365 | `declaration-track:64a5c98ffc806a86a01197cd20172680dbfc9da993f5694db9d477db4951ce31` |
| 27 | `instance` | [_root_.MeasureTheory.Measure.instIsMarkovKernelCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/root-measuretheory-measure-instismarkovkernelcondkernel.md) | 377 | `declaration-track:3abcd658a8d70fa27255f2930478b589cc58e0529244794d9b9e3af438d867d7` |
| 28 | `lemma` | [_root_.MeasureTheory.Measure.condKernel_apply_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/root-measuretheory-measure-condkernel-apply-of-ne-zero.md) | 384 | `result-track:20e3c51f48ffef7c86194dcc3293385e218e46b01c3c885bdf31b98183f93d67` |
| 29 | `instance` | [instIsMarkovKernelCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/instismarkovkernelcondkernel.md) | 408 | `declaration-track:5e49d59186ec0f26ae133aee4687254e183db026e3bb0ac744fc4f25753f4b09` |
| 30 | `instance` | [condKernel.instIsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/StandardBorel.lean/declarations/condkernel-instiscondkernel.md) | 412 | `declaration-track:dd05ced5a377e554999649a57da0d2f1cb4b0bd0da2a2bbdc3a49cfba0408af3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0824e520d7586e75506c0b403d7984b7313179f5c85cf2d321a9f6be317ff41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/StandardBorel/Variant6cf6290e0c5867d393367b47f2bdf98c499a1e2e30add73c21eb4deb316cdf73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
