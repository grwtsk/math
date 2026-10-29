# Verification target: Riesz Markov Kakutani Real Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bec1a1f1ffb3ef5fcc820b3ff68054d69a624b39`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Union` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/rieszmeasure.md) | 53 | `declaration-track:fb25334af78e72ca67a47fb3b29b795a3210d531f3b613d3bf6f06c72ab75d04` |
| 2 | `lemma` | [le_rieszMeasure_tsupport_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/le-rieszmeasure-tsupport-subset.md) | 57 | `result-track:fe8b621ef1a0d08b3f4901b2745dfe3955bc7383894ea104f51c8fbb5b8ca365` |
| 3 | `lemma` | [rieszMeasure_le_of_eq_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/rieszmeasure-le-of-eq-one.md) | 76 | `result-track:6ec508894d17220c50d4ac11d2090e676ee965d171a7a5be0bbad08cc3e7e9ec` |
| 4 | `lemma` | [range_cut_partition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/range-cut-partition.md) | 94 | `result-track:7cc052f1b0d6c032e5fa1187378fe7f76ceeb9f604fdb04c214f1e3cb7be7ace` |
| 5 | `lemma` | [exists_open_approx](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/exists-open-approx.md) | 143 | `result-track:c3ec7bc6196e6c93515121497409f4847970aed8d4513bda40e8e81bb7d0edae` |
| 6 | `lemma` | [exists_nat_large](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/exists-nat-large.md) | 161 | `result-track:4b8941217869bbd3f74b415f3356f17a56a2ee186d3bde4912feb63dfc7c4da8` |
| 7 | `lemma` | [integral_riesz_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/integral-riesz-aux.md) | 174 | `result-track:2516c131a07f5ab051adc89ad7ed0ceacd62f99b1f381006edc2c436aac983d6` |
| 8 | `theorem` | [integral_rieszMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/RieszMarkovKakutaniRealReal.lean/declarations/integral-rieszmeasure.md) | 328 | `result-track:db77760fe0c2fd466223637a8e3af19ab3cd5d8190f961e6008dae02b610b87a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ccbcdeeee338abb6abfc33f78e0d8a8373521d7d28ef9122dbfbc8948c77536 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Real/Variant4dc6b429d4e1487048ac6192f0c85171fba82757cc48df9fe984b74f1ddf40f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
