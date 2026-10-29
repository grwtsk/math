# Verification target: Actual Mellin Dilation Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bbcfb8fcad6c9061fd5331b9b3b0ca74caa4c2a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/index.md) · [Full source](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bbcfb8fcad6c9061fd5331b9b3b0ca74caa4c2a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `UnnormalizedDilation` — import line 6; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinConvergent_unnormalized](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/mellinconvergent-unnormalized.md) | 22 | `result-track:caace0aa62e16d30f4ad6f0c8c5c323d5a6055957baa742f99690d452ff85643` |
| 2 | `theorem` | [mellinConvergent_normalized](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/mellinconvergent-normalized.md) | 37 | `result-track:ba1b431b4eb958a4cfcb524a2c5544a6daf89bb44d8fad6daff43ee46dd45114` |
| 3 | `theorem` | [sqrt_cpow](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/sqrt-cpow.md) | 42 | `result-track:dd6705f3f98dd168a2f1b77949142baf73a982cb703f24677bd4b3ccb44fdb7f` |
| 4 | `theorem` | [mellin_normalized_func](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/mellin-normalized-func.md) | 47 | `result-track:4122145d88df02d7e1c32540a653aefe9591bcf8ae31b1a24188d2d7ef401c5f` |
| 5 | `theorem` | [actual_unnormalized_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-unnormalized-mellinconvergent.md) | 55 | `result-track:7513c84a61576e905294bf61fd985d98d685067a1b2d4f4853acb627c5392034` |
| 6 | `theorem` | [actual_normalized_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-normalized-mellinconvergent.md) | 60 | `result-track:442687a9dcdda1fc05e07cacfe915377c7eb0b7d55820450bff49cd6ea9d93e6` |
| 7 | `theorem` | [actual_unnormalized_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-unnormalized-mellin.md) | 65 | `result-track:7ece964a8ac2ac80fb94af42d5f1e8d8a5a23bdc205467af570194da2e4fda44` |
| 8 | `theorem` | [actual_normalized_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-normalized-mellin.md) | 70 | `result-track:8af35325d94b5e06953eee2bdd4f65ad400cfd36ff844c9cc9e8f91a069c2012` |
| 9 | `theorem` | [actual_dilated_class_mellinConvergent](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-dilated-class-mellinconvergent.md) | 75 | `result-track:163cf3f8de225c14f26acc950ae83bb9796223f83938841e71538eca257bdfb0` |
| 10 | `theorem` | [actual_dilated_class_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-dilated-class-mellin.md) | 82 | `result-track:e2edcc142b0fd98df62f1a61271b0695443792647c08b7b8b52a4d836dd7b568` |
| 11 | `theorem` | [actual_integer_class_mellin](../../../../RealFunctions/ActualMellinDilationAttempt01Namespaced.lean/declarations/actual-integer-class-mellin.md) | 91 | `result-track:7219336095e1c2adf758571296079ee7857d0d100bfc10b27360167c4501336d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f277a4b61d48633cc63c62ae35589bb160ace0d81428b418af93c69932cde71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt01/Variant290a8cc7c28c32f8e752c780f7a7813426f9037b7d5abdbb7ef91b8a1955502d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
