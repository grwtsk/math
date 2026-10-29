# Verification target: D27028145b08333 Source Actual Negative Defect Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "766cd01324873832703d0107fb47749c2aed6062",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Variant947920e73822e3bab207af070fb8efb397d8c26a1f215e3d1683855cfa8af73e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `766cd01324873832703d0107fb47749c2aed6062`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Variant947920e73822e3bab207af070fb8efb397d8c26a1f215e3d1683855cfa8af73e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Variant947920e73822e3bab207af070fb8efb397d8c26a1f215e3d1683855cfa8af73e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualOffAxisReducedLimit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualSourceNegativeDefect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/declarations/actualsourcenegativedefect.md) | 30 | `declaration-track:7093bc673bd1fcaf63e2003982b593e759b15e9590ba847930d81fa644ed91df` |
| 2 | `def` | [actualReducedOffAxisNegativeDefect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/declarations/actualreducedoffaxisnegativedefect.md) | 34 | `declaration-track:19328b73497af9f01d0f048ad0062f8e630e5961559c59c15caa5f252cf34587` |
| 3 | `theorem` | [negative_part_abs_sub_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/declarations/negative-part-abs-sub-le.md) | 37 | `result-track:1c9299a00db9fda760038280b5019b526dccdb40917aca9d814b8e59d336f472` |
| 4 | `theorem` | [actualNegativeDefect_distance_le_source_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/declarations/actualnegativedefect-distance-le-source-error.md) | 44 | `result-track:13ff3b534d8fc97a40b1e29a0bdf6a8c6369b507dfe4d16daa5610da08d375e0` |
| 5 | `theorem` | [actualNegativeDefect_reducedOffAxis_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/declarations/actualnegativedefect-reducedoffaxis-bound.md) | 54 | `result-track:610f64e740275be2b98dca6653d478e23ea1f8de4b470313cde95bf85ef8cc17` |
| 6 | `theorem` | [actualNegativeDefect_reducedOffAxis_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/D27028145b08333SourceActualNegativeDefectNamespaced.lean/declarations/actualnegativedefect-reducedoffaxis-tendsto-zero.md) | 64 | `result-track:fad406542adbda237cc0a0b0ec887c1aee0f5d9c179a6458428f9ba20b052886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=813fbe53296c3a5a4bb3adde6656d05a1aaa935435f59d31d5ebb80c190dce2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Variant947920e73822e3bab207af070fb8efb397d8c26a1f215e3d1683855cfa8af73e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9d27028145b08333SourceActualNegativeDefect/Variant947920e73822e3bab207af070fb8efb397d8c26a1f215e3d1683855cfa8af73e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
