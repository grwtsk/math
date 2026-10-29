# Verification target: Semantics Namespaced Cubic Integral Witness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9649e92f66363caedc3c95f6ce50037cd1fd838",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9649e92f66363caedc3c95f6ce50037cd1fd838`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Polynomial.Interval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CubicIntegralWitness](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/declarations/cubicintegralwitness-source-edition-2.md) | 28 | `declaration-track:bcf5c0708fde592d47500383ac2fd9e74ea5e06028a62ccf9299bd8e9787de26` |
| 2 | `theorem` | [CubicIntegralWitness.correct](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/declarations/cubicintegralwitness-correct.md) | 35 | `result-track:ce593caa4e776486180a39e16dda9c489c102e1b5e3131dfa512a2179c4f6968` |
| 3 | `theorem` | [CubicIntegralWitness.correct_endpointDifference](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/declarations/cubicintegralwitness-correct-endpointdifference.md) | 45 | `result-track:90930a754e7b40935a63ad8315016810ddbfea413cd1bb77c3693962626b33f2` |
| 4 | `def` | [cubicIntegralWitness](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/declarations/cubicintegralwitness.md) | 53 | `declaration-track:07a561691da4deaffcef8dd562aab1546ada96474f15d849fa798444a61d6b07` |
| 5 | `theorem` | [cubicIntegralWitness_value](../../../../MeasureAndIntegration/SemanticsNamespacedCubicIntegralWitness.lean/declarations/cubicintegralwitness-value.md) | 59 | `result-track:cfd2116572edd050f2da61460aa8b7b0297eee1cd13d486d10304e2e24e54eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=830f7e09124ff647376ba84b4ae2af10806898378b68935a70fad96a670bbc81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
