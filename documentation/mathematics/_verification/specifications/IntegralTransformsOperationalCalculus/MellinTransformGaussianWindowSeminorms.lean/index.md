# Verification target: GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "175c2dbaec5eef024237b0a26332ccd62b3c6250",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/index.md) · [Full source](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `175c2dbaec5eef024237b0a26332ccd62b3c6250`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianWindowSeminorms.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.CompactGaussianWindow`](../../../../IntegralTransformsOperationalCalculus/MellinTransformCompactGaussianWindow.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives`](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/index.md) — import line 19; pinned internal source present.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianFixedWindow](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianfixedwindow.md) | 31 | `declaration-track:75f55cf0165d5f632abd84cc06392b975e0e77b568d48885f0b76235ac2d0816` |
| 2 | `lemma` | [gaussianFixedWindow_small](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianfixedwindow-small.md) | 32 | `result-track:d49d9989e556338c4a0dd2eab682155e02ebe6d92c01f73833fcebc79351f482` |
| 3 | `lemma` | [gaussianFixedWindow_large](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianfixedwindow-large.md) | 34 | `result-track:345de2d7bddec35001144f3078ec8c31840790ab90519073c6cf664cc951aa94` |
| 4 | `lemma` | [gaussianFixedWindow_compact](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianfixedwindow-compact.md) | 36 | `result-track:40a4fb51acd9b1b98669c34999ecbbec1ca2bb41f7d5e04fb9ba46bd825c1460` |
| 5 | `lemma` | [gaussianFixedWindow_contDiff](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianfixedwindow-contdiff.md) | 43 | `result-track:a16212fb53dbeb754a1dd93913970147010644d5231fbd9fec943bba646e5706` |
| 6 | `def` | [gaussianFixedSchwartz](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianfixedschwartz.md) | 57 | `declaration-track:0e36b376452c3c3b040366dd34b7885906d3b4762a032a467eacd96836eea86c` |
| 7 | `lemma` | [gaussianProfile_scaled_smooth](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussianprofile-scaled-smooth.md) | 59 | `result-track:941da718903d162c8f62107ba119e02525d363928400f58e9997f1933c6369da` |
| 8 | `lemma` | [gaussianDyadicProfile_factor](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussiandyadicprofile-factor.md) | 66 | `result-track:6f2bd6252d4724734c9824ef5945addf17c7d61876e1290a06f10ba8043eb5fa` |
| 9 | `lemma` | [gaussianDyadicProfile_derivative_outside](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussiandyadicprofile-derivative-outside.md) | 74 | `result-track:f37414b71e24ea98e570379e9f046160a03a4866bf44a290b6f2fa9a1811f811` |
| 10 | `lemma` | [gaussianDyadicProfile_derivative_uniform](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussiandyadicprofile-derivative-uniform.md) | 86 | `result-track:02b1c003cc711524135c4b67517d0cfaa77acf789e8012fc492c640fafbac950` |
| 11 | `theorem` | [gaussianDyadicSchwartz_seminorm](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussiandyadicschwartz-seminorm.md) | 117 | `result-track:c5da1606e3a043086308fbc90fbb284fc21d21ff1bf18076665a3112f6f8ed90` |
| 12 | `theorem` | [gaussianDyadicSchwartz_finite_seminorm](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussiandyadicschwartz-finite-seminorm.md) | 137 | `result-track:735de92fd703fb705bcbd9e07bdf23fdf48299443f69d5347dbf1b6d3590cdc6` |
| 13 | `theorem` | [gaussianDyadicSchwartz_two_sided](../../../../IntegralTransformsOperationalCalculus/MellinTransformGaussianWindowSeminorms.lean/declarations/gaussiandyadicschwartz-two-sided.md) | 158 | `result-track:e2d7751263286c145552446c15d500f224dc45f6e544402154598d13462047a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2716bc19c442efd238b6b2a8c4681a6e5f06ff9a0629a135ff76f345a2bddac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/GaussianWindowSeminorms.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
