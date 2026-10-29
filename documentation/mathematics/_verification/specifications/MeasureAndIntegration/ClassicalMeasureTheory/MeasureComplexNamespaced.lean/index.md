# Verification target: Measure Complex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "697690d3296c58e54b274c9987a4dc867e9acbb0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variant1e9cda1c69efe4577c565d23c37785d41d997edb28ae11c88af35aa80a42339b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `697690d3296c58e54b274c9987a4dc867e9acbb0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variant1e9cda1c69efe4577c565d23c37785d41d997edb28ae11c88af35aa80a42339b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variant1e9cda1c69efe4577c565d23c37785d41d997edb28ae11c88af35aa80a42339b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.VectorMeasure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [re](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/re.md) | 59 | `declaration-track:1c6db8f5f3878b5f3b5b20191653ce7ff78e453c8ff9102bb8b132c71204a076` |
| 2 | `def` | [im](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/im.md) | 65 | `declaration-track:4aab35a6ccb6aeea4b3a5b478ec1cbec763ec05b4da7b300b8147c36c95a5138` |
| 3 | `def` | [Measure Complex Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/tocomplexmeasure.md) | 71 | `declaration-track:41410aaf9c4ab3b5433498ddb04075bd4479bc21445fca39ef2d9c95e347d974` |
| 4 | `theorem` | [Measure Complex Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/tocomplexmeasure-apply.md) | 79 | `result-track:a82cb48b0f3b9cc6e4a7a9544c1ed7476d39cc4f76514531348d85ef95880fac` |
| 5 | `theorem` | [toComplexMeasure_to_signedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/tocomplexmeasure-to-signedmeasure.md) | 83 | `result-track:e36e67c1482df3276d134da6ba6db83385564936d93466613fda2fc191bfdf22` |
| 6 | `theorem` | [Measure Complex Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/re-tocomplexmeasure.md) | 87 | `result-track:b6c401cf0ff123bed6e6a6589293c310e870affff59ad46dd7b9c98d42416600` |
| 7 | `theorem` | [Measure Complex Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/im-tocomplexmeasure.md) | 91 | `result-track:e0ed798d2602593ae2a1598bef671f7ebc4358718eabc402bfab69adf4b94baa` |
| 8 | `def` | [equivSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/equivsignedmeasure-source-edition-2.md) | 97 | `declaration-track:80d380b56c3675e5794547c62eea143f1605a895753358aee2605c1543d27ec8` |
| 9 | `def` | [equivSignedMeasureₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/equivsignedmeasure.md) | 112 | `declaration-track:565e4af7b80c39e7768e0c2de708824a08723b038ce95620350baa337af6d3fd` |
| 10 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespaced.lean/declarations/absolutelycontinuous-ennreal-iff.md) | 125 | `result-track:cb3631262bc4ecd2b7eea3b698d20f42ff5167711600445e597693dc7adf7df1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2af725da51416a92deb816aafd43fd14619e14b03730b9331a8565b7db13fc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Complex/Variant1e9cda1c69efe4577c565d23c37785d41d997edb28ae11c88af35aa80a42339b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Complex/Variant1e9cda1c69efe4577c565d23c37785d41d997edb28ae11c88af35aa80a42339b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
