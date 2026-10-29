# Verification target: Unique

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a15f4a1c9244f398f42d5162075d447bc491e7e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a15f4a1c9244f398f42d5162075d447bc491e7e4`.

Source path: `GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration.Integral` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_condKernel_of_measure_eq_compProd'](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/eq-condkernel-of-measure-eq-compprod.md) | 47 | `result-track:0436403d3790290001bcb33eb836132380a3e2e852132fd5d40adb46fba84a66` |
| 2 | `lemma` | [eq_condKernel_of_measure_eq_compProd_real](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/eq-condkernel-of-measure-eq-compprod-real.md) | 59 | `result-track:2c514f4fa4f732b47a0ce63b3b8c318687513dca77a174d0476ee829979f22bc` |
| 3 | `theorem` | [eq_condKernel_of_measure_eq_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/eq-condkernel-of-measure-eq-compprod-source-edition-2.md) | 80 | `result-track:79e6e7457d83369dd8ce9dc7f9a106a90e45b3f352280e620ad075f0587be5f8` |
| 4 | `lemma` | [condKernel_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/condkernel-compprod.md) | 125 | `result-track:31fe51effa954df523b4d00374697dad3dcd05310742b9d0ecf531c266f1e0f1` |
| 5 | `lemma` | [Kernel.apply_eq_measure_condKernel_of_compProd_eq](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/kernel-apply-eq-measure-condkernel-of-compprod-eq.md) | 135 | `result-track:dbd2da3bb4659d79213bcda21a997c8291437b904147d81957ddd473a71ad28f` |
| 6 | `lemma` | [Kernel.condKernel_apply_eq_condKernel](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/kernel-condkernel-apply-eq-condkernel.md) | 151 | `result-track:d5bb38c383d67531beb61d59cb9edbdd6639b0ca0cfb91fecb8a5d82a1ac9aa6` |
| 7 | `lemma` | [condKernel_const](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/condkernel-const.md) | 156 | `result-track:505c462cc7598ef66d273475c04088200c1861c0cb754c730b41e352bdb007f2` |
| 8 | `theorem` | [eq_condKernel_of_kernel_eq_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/Unique.lean/declarations/eq-condkernel-of-kernel-eq-compprod.md) | 173 | `result-track:0f282259c53a33d31f13b3ace3473a8613f783ca2bf38880524b000ab6ca7843` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb9b4a5a5c9b8f3807e04429e8def0d4c34600029095ec1e6a21be9a8f488aec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
