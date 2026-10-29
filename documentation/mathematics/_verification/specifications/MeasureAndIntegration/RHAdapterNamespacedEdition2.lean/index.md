# Verification target: RHAdapter Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e7edc12743c832f068da17c5f89c11b226fa50f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHAdapter/Variant297dc8dd33db5646a35c84663cbbe38f5783e63278b55565a3dc17480e888bcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e7edc12743c832f068da17c5f89c11b226fa50f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHAdapter/Variant297dc8dd33db5646a35c84663cbbe38f5783e63278b55565a3dc17480e888bcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHAdapter/Variant297dc8dd33db5646a35c84663cbbe38f5783e63278b55565a3dc17480e888bcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SectorIntegrability](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/sectorintegrability.md) | 31 | `declaration-track:95feb0f42a37c52fe888a401739a6f94920434af1595f790d7f6aca88ca2a363` |
| 2 | `def` | [evenPairing](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/evenpairing.md) | 54 | `declaration-track:d551ec692404bc7913dc5bdab4984b4fbc8f41d28fbda138718512ac9e2456cd` |
| 3 | `def` | [oddPairing](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/oddpairing.md) | 60 | `declaration-track:b183acc0043c722db99badce792b1a38cda80b8ab714b96bf390135e7d73f026` |
| 4 | `def` | [reflectedSourceValue](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/reflectedsourcevalue.md) | 67 | `declaration-track:a856205b28f529571c1beb97235b4f42e0fe9511be24e178274125844a88225a` |
| 5 | `theorem` | [signed_reflection_with_boundary](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/signed-reflection-with-boundary.md) | 77 | `result-track:815691b9d583232f287ceb05710cf1ffa00e2ed8a6f13cdf90ef275b33667b15` |
| 6 | `theorem` | [arithmetic_representation_with_reflection](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/arithmetic-representation-with-reflection.md) | 90 | `result-track:35db15342ed1d0989af46babba8fc2e7dcbf22bba0fbf98ad3d2e51e46c67f3f` |
| 7 | `theorem` | [boundary_removal_iff](../../../../MeasureAndIntegration/RHAdapterNamespacedEdition2.lean/declarations/boundary-removal-iff.md) | 99 | `result-track:ea6c39470555faad5334c7be3cb8e015acc0aa525c1d6c2a4ccf502eab9d0905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a25e5c9fe92ecfd9ad129fe5e1c3475d6c96c67dbd0fa6f3f22e5bfce5297213 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHAdapter/Variant297dc8dd33db5646a35c84663cbbe38f5783e63278b55565a3dc17480e888bcb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHAdapter/Variant297dc8dd33db5646a35c84663cbbe38f5783e63278b55565a3dc17480e888bcb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
