# Verification target: Distributions Gamma Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e194bf7e8a440d26655f1b77b60404996c9cf69a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant5e5508d7374eb706f327c82a98e1d7090f7307044dd9d9b3d6e6e9a07486db88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e194bf7e8a440d26655f1b77b60404996c9cf69a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant5e5508d7374eb706f327c82a98e1d7090f7307044dd9d9b3d6e6e9a07486db88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Gamma/Variant5e5508d7374eb706f327c82a98e1d7090f7307044dd9d9b3d6e6e9a07486db88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_Iic_eq_lintegral_Iio_add_Icc](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/lintegral-iic-eq-lintegral-iio-add-icc.md) | 40 | `result-track:1640bf4abf303e78cd1701a0e8045ff2d0a8338c075545a11dc37255bfd5f66f` |
| 2 | `def` | [gammaPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdfreal.md) | 53 | `declaration-track:93d9cfb0a233c7d687f28b5bf4728d69d815aa1f6d94bbbc966cdde253f12521` |
| 3 | `def` | [gammaPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdf.md) | 58 | `declaration-track:a2540e02f5eca6eb2339d334b8e5ba0efa4cd8bf0e7fa14541b5cd2c47005ca7` |
| 4 | `lemma` | [gammaPDF_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdf-eq.md) | 61 | `result-track:ea87f3062fe72ea6c43d9e931ea9d48d3a54c784d13f1d4732bbab5051d42a4a` |
| 5 | `lemma` | [gammaPDF_of_neg](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdf-of-neg.md) | 66 | `result-track:b2c674793a68d82cb5d7110955dddc6c1b7b48f457f847913e6fdcbfa73f551a` |
| 6 | `lemma` | [gammaPDF_of_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdf-of-nonneg.md) | 69 | `result-track:eb2626f28b9587c6a6a3dff170c49077fc4f3e46b1621b7f7241ce005e04f41d` |
| 7 | `lemma` | [lintegral_gammaPDF_of_nonpos](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/lintegral-gammapdf-of-nonpos.md) | 74 | `result-track:960350751d72f484e9af017bc417694f6992db09e5b1bb2aa0e910129b66f2ee` |
| 8 | `lemma` | [measurable_gammaPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/measurable-gammapdfreal.md) | 84 | `result-track:1c7fa30496d26b4dde896bbd3a40f44e0afe6b620cf13fb9aaeb314e5285c874` |
| 9 | `lemma` | [stronglyMeasurable_gammaPDFReal](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/stronglymeasurable-gammapdfreal.md) | 90 | `result-track:51a409ddb51552c4ce20950416907fae5479e0a81524598505f759e6063810a0` |
| 10 | `lemma` | [gammaPDFReal_pos](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdfreal-pos.md) | 95 | `result-track:2a6ae48135a94d6193cc435d1b30b08cf10042f216feea9829333a0e39a831cb` |
| 11 | `lemma` | [gammaPDFReal_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammapdfreal-nonneg.md) | 101 | `result-track:608494a2852c1988848745379b898c1660fa03e917643ad98600d7be186b002b` |
| 12 | `lemma` | [lintegral_gammaPDF_eq_one](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/lintegral-gammapdf-eq-one.md) | 110 | `result-track:6c7948edd1296a0844437b526b69c82da1d8ecd8251d154dbab91ddfb1ad1551` |
| 13 | `def` | [gammaMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/gammameasure.md) | 136 | `declaration-track:b927cb651afe6f0cec57e3641ce6a0758ea4bdb86c69ad6b175dff43ec423860` |
| 14 | `lemma` | [isProbabilityMeasure_gammaMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/isprobabilitymeasure-gammameasure.md) | 139 | `result-track:f11270d838482b30fbdbae15ce839029169cbdfdb5af461d2adc5fb1a7f27e1a` |
| 15 | `lemma` | [cdf_gammaMeasure_eq_integral](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/cdf-gammameasure-eq-integral.md) | 145 | `result-track:6e3614d9b81e8f3e9a2a004dfcce31c073792f8e047e3f3b64109a9bbd79d2c3` |
| 16 | `lemma` | [cdf_gammaMeasure_eq_lintegral](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsGammaNamespacedPublic.lean/declarations/cdf-gammameasure-eq-lintegral.md) | 153 | `result-track:5f4b285bbf69d10b00f30be00204cc437673d33903d155084257f113e11cb90f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=629697a5bd43c4baee91b4defec5f95b9452005e20e1483d264ec22be395429a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant5e5508d7374eb706f327c82a98e1d7090f7307044dd9d9b3d6e6e9a07486db88.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Gamma/Variant5e5508d7374eb706f327c82a98e1d7090f7307044dd9d9b3d6e6e9a07486db88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
