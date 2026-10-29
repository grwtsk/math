# Verification target: GRWTSK.Analysis.MeasureTheory.InnerProductSpace.Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5638b724aa7b616fe881123d33fd51e75b2e69b0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean/index.md) · [Full source](../../../../../../Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5638b724aa7b616fe881123d33fd51e75b2e69b0`.

Source path: `GRWTSK/Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Orientation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Orientation.measure_orthonormalBasis](../../../../../../Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean/declarations/orientation-measure-orthonormalbasis--9dc9ab715b8d636e8a5c21a8.md) | 44 | `result-track:9dc9ab715b8d636e8a5c21a81d2dc5b17fc85f559763712ee80b265b7101b415` |
| 2 | `theorem` | [Orientation.measure_eq_volume](../../../../../../Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean/declarations/orientation-measure-eq-volume--e32c95499887837cdf55c28a.md) | 58 | `result-track:e32c95499887837cdf55c28a7f6d2019abef0fda2f5ebfecf506090d2adcbee7` |
| 3 | `theorem` | [OrthonormalBasis.volume_parallelepiped](../../../../../../Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean/declarations/orthonormalbasis-volume-parallelepiped--f0ba594ffb93b1882e99fbfd.md) | 71 | `result-track:f0ba594ffb93b1882e99fbfd7fff1c2278cc119de0d227bb91c6e27f116312e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a57885b4159b44b96595b8ea9ca5d72aa7b12e9360657a86ba14940e2c4a788 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/InnerProductSpace/Variantfb67667b76a9fd47460f805a0da3ac6fcede7f65a25be18c49515c97a2eb2207.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
