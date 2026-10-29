# Verification target: Gz Gp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e42ec40aaa1fba3380c379aefd9371d57526e89d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GzGpNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GzGpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e42ec40aaa1fba3380c379aefd9371d57526e89d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integral_comp_neg_real](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/integral-comp-neg-real.md) | 46 | `result-track:d91d0e81a18a6c9c69a1149050c42fb7cb57f478293815b0da62eb64503ce919` |
| 2 | `lemma` | [phi_neg](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/phi-neg.md) | 52 | `result-track:8818c5c9c5b50a2536468b6d8738d796fe2010b3575284159ba3d1771221c701` |
| 3 | `lemma` | [paperFT_fk](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/paperft-fk.md) | 55 | `result-track:7a15b6e09b98c346154526d8bf4191df94bb090d479fc52a9ecbdfc72889464a` |
| 4 | `lemma` | [phiHat_conj](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/phihat-conj.md) | 65 | `result-track:25df196f84af566979dd6f701f036730426cc548410e9f444dc365e38203459e` |
| 5 | `lemma` | [phiHat_ofReal](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/phihat-ofreal.md) | 81 | `result-track:f5a17e5dd8495d855f33dd30273fc5835029031ba0f91a0ef6b37e1a094b0463` |
| 6 | `lemma` | [fk_contDiff](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/fk-contdiff.md) | 90 | `result-track:0bcd9e8ec71c374f9a64f8af451e38984ed8e049c828e3d158010f180ef4646d` |
| 7 | `lemma` | [fk_tsupport](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/fk-tsupport.md) | 99 | `result-track:f560237834a26e138afd5b883c6ab8f851b79f99aaa830cea9326fc32093d0e6` |
| 8 | `lemma` | [Gz_eq_W](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/gz-eq-w.md) | 106 | `result-track:85fcabc639a406c0e6e81bb44f90deca5791cf303df1ad27b097479c3845cc03` |
| 9 | `lemma` | [EFrhs_eq_Gp](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/efrhs-eq-gp.md) | 116 | `result-track:4522d56471e07f240bd6802735d072d69744f5cfb850ab34049980d28998f7d6` |
| 10 | `theorem` | [ZeroConfig.Gz_eq_Gp](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/zeroconfig-gz-eq-gp.md) | 132 | `result-track:f4bf636b0a897d7fd3970b2562dead415a19195928bd1a57266ae8c53433b8eb` |
| 11 | `theorem` | [ZeroConfig.summable_Gsummand](../../../../MeasureAndIntegration/GzGpNamespaced.lean/declarations/zeroconfig-summable-gsummand.md) | 144 | `result-track:b5bd5e76fe674ed6d3326a339fdfb0c02577a6b5b953796f044ae34afa4b5628` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6bba69a0d3de993625b56f9255342466201b1bd00d73b578c93907e0bc35b13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
