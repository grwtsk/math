# Verification target: Disintegration Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb06a703408783f07bcf0bf9f3b5526e9ce4c97",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant22b3751b204bfac9ef33c84e42240f1db405e383eb9445471aedb50d7bd126a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb06a703408783f07bcf0bf9f3b5526e9ce4c97`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant22b3751b204bfac9ef33c84e42240f1db405e383eb9445471aedb50d7bd126a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant22b3751b204bfac9ef33c84e42240f1db405e383eb9445471aedb50d7bd126a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfLIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel.md) | 54 | `declaration-track:9e7bd73f369ba85051da08c61a0d165f0c9fb26e731340eb0c2198291b00c636` |
| 2 | `lemma` | [disintegrate](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/disintegrate.md) | 59 | `result-track:805a02d75131005b2386833af44b79c8dc9e8a5dd1f4ac3640d41facc30798c0` |
| 3 | `lemma` | [IsCondKernel.isSFiniteKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-issfinitekernel.md) | 61 | `result-track:c6fc841daa50a2ff7ddd3f977d39ccdbdf1b387a037f5c0016d0c4c351fb8e19` |
| 4 | `lemma` | [IsCondKernel.apply_of_ne_zero_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-apply-of-ne-zero-of-measurableset.md) | 67 | `result-track:7689d2f89749567f370af76b3856d6b3635f81bedf7a3f852989c1dfcc581e7f` |
| 5 | `lemma` | [IsCondKernel.apply_of_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-apply-of-ne-zero.md) | 89 | `result-track:6664a05bd9ad26585557255a9bc727fc1298624c919ff4c2ede51dc971587d27` |
| 6 | `lemma` | [IsCondKernel.isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-isprobabilitymeasure.md) | 97 | `result-track:a6530ed23991af7a9aa0ca756d058a1e13ad7bc1c302db2b9fc0762627bc149f` |
| 7 | `lemma` | [IsCondKernel.isMarkovKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-ismarkovkernel.md) | 103 | `result-track:76ace5ca0fc26d4140a41abd82116de6ed701245a8a416a5f788e227db433a46` |
| 8 | `class` | [IsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-source-edition-2.md) | 124 | `declaration-track:e1f971e32508d2ddc9be1681b86a6f13ede9d58d95f776e99240fdb22a0a6f71` |
| 9 | `instance` | [instIsCondKernel_zero](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/instiscondkernel-zero.md) | 127 | `declaration-track:8b52941c45874492e337cfbe57c5dfe60be7f47ad48c11060cd72608bd2316de` |
| 10 | `lemma` | [disintegrate](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/disintegrate-source-edition-2.md) | 130 | `result-track:fc6887fb2bdb3a6793c98e87c0b4ba551915fafd755950c9b08b4bec4294d91b` |
| 11 | `lemma` | [IsCondKernel.isProbabilityMeasure_ae](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/iscondkernel-isprobabilitymeasure-ae.md) | 133 | `result-track:bac5b908ca21f82549e6c018b7d60b0f360da213564cce68829bef30659953cf` |
| 12 | `def` | [condKernelCountable](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/condkernelcountable.md) | 192 | `declaration-track:805ab329c33f85f0b55610ba5ae8c92fede69373e06cd3310f21a16e97c6dd78` |
| 13 | `lemma` | [condKernelCountable_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/condkernelcountable-apply.md) | 201 | `result-track:5f8f615ddfe61c5df80f40c2894ca258db964f3711c5d9c2caaf72b0ea18f7cc` |
| 14 | `instance` | [condKernelCountable.instIsMarkovKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/condkernelcountable-instismarkovkernel.md) | 204 | `declaration-track:d9b114ac839c5c5ba342017b74c6ea871c5ed7c477b0f95495df5fd73f110f1d` |
| 15 | `instance` | [condKernelCountable.instIsCondKernel](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationBasic.lean/declarations/condkernelcountable-instiscondkernel.md) | 209 | `declaration-track:e92850c5f9d26410e1e92d83cc2b613bfb8a0616d57619922e2722c2cb0b1bbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee961b95637821d09b3ec9fa475fe66d3b753efbf45cdbd33d513975ecc64c12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant22b3751b204bfac9ef33c84e42240f1db405e383eb9445471aedb50d7bd126a3.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant22b3751b204bfac9ef33c84e42240f1db405e383eb9445471aedb50d7bd126a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
