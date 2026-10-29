# Verification target: Complete Partial Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982039c0dfc4a41c45f0f85b9dadb5b1a459d497",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant6bd4319ae14e61071c850cc04bce91ca977b03f669f78c821e652cfe0b5ca5ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982039c0dfc4a41c45f0f85b9dadb5b1a459d497`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant6bd4319ae14e61071c850cc04bce91ca977b03f669f78c821e652cfe0b5ca5ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant6bd4319ae14e61071c850cc04bce91ca977b03f669f78c821e652cfe0b5ca5ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.OmegaCompletePartialOrder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/completepartialorder.md) | 48 | `declaration-track:f463237f4bae07ff8573da8536374d8bc5df74bc70b2140c04fd8a0363fab0ed` |
| 2 | `lemma` | [DirectedOn.isLUB_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/directedon-islub-ssup.md) | 54 | `result-track:2cc95e5391fb141f8db8232e582f8624f56842b38958596c9ae0a1bc79795fd3` |
| 3 | `lemma` | [DirectedOn.le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/directedon-le-ssup.md) | 57 | `result-track:c8cdeeeb327e133182af8c64a49976bcfb53a3c1ec8adf0e2c41d008268e0a20` |
| 4 | `lemma` | [DirectedOn.sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/directedon-ssup-le.md) | 60 | `result-track:d00e2192d69e0b00530841f59ac7ee00fd221fbc67dd1b8bc32270a30c8b92e8` |
| 5 | `lemma` | [Directed.le_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/directed-le-isup.md) | 63 | `result-track:69d17198ff970af1281ea4dba43d62d237f8598916d3e689cc16242866851531` |
| 6 | `lemma` | [Directed.iSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/directed-isup-le.md) | 66 | `result-track:65e0c91929cda11780aacd15ddd6889fc3a7b1256325d011d52ec03f0a74554d` |
| 7 | `lemma` | [CompletePartialOrder.scottContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/completepartialorder-scottcontinuous.md) | 72 | `result-track:0cca8b453c811e7dd2429f789be1dd4b74499df638cfa151063856ece651c7f7` |
| 8 | `instance` | [CompletePartialOrder.toOmegaCompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/completepartialorder-toomegacompletepartialorder.md) | 82 | `declaration-track:4e216ff1894de6e3a3a0a5eb3af69ed2015476075fdc01bbe0422a39ff26293c` |
| 9 | `instance` | [CompleteLattice.toCompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompletePartialOrderNamespaced.lean/declarations/completelattice-tocompletepartialorder.md) | 90 | `declaration-track:f923370f87ed3d9b74b0b6f2e8fb034045480a3b703f4e79c60049642cfecb65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd3e56602daf5ba679fb1f11fb679119bc0ad12af88e4519334d8f55bb22ac44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant6bd4319ae14e61071c850cc04bce91ca977b03f669f78c821e652cfe0b5ca5ce.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompletePartialOrder/Variant6bd4319ae14e61071c850cc04bce91ca977b03f669f78c821e652cfe0b5ca5ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
