# Verification target: Artinian Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bba7874d05a01bb6ec83586b5d0f40be1d770d49",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42ac94e76de000f8fecbd323f910b9cf9d51b42933868f887b15ae1bfc875797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bba7874d05a01bb6ec83586b5d0f40be1d770d49`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant42ac94e76de000f8fecbd323f910b9cf9d51b42933868f887b15ae1bfc875797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant42ac94e76de000f8fecbd323f910b9cf9d51b42933868f887b15ae1bfc875797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsArtinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/declarations/isartinian.md) | 51 | `declaration-track:873018ceb04665943aa538aa50fe7f231854c7758dbd962ff95018912112ef96` |
| 2 | `theorem` | [isArtinian_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/declarations/isartinian-iff.md) | 55 | `result-track:788873cbb9aec1a27d515f10cb49ecfbfef3614f528c2fee0c4bee90aed41764` |
| 3 | `theorem` | [IsArtinian.induction](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/declarations/isartinian-induction.md) | 60 | `result-track:a6c0b0947f2c21ebeca49be629b619fdce56e3fea27bc21a7d5bcf09b395886c` |
| 4 | `abbrev` | [IsArtinianRing](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/declarations/isartinianring.md) | 75 | `declaration-track:514833c509b8197356ac15c47690cd263c87d89225d8484c8c78d07279b3ff66` |
| 5 | `theorem` | [isArtinianRing_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsNamespacedPublic.lean/declarations/isartinianring-iff.md) | 78 | `result-track:1f2c4f5b3e9a0cd593b2c123d3713605a6f8b0fcb944877bc1e41116e2900229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12b8f634235091413d38ff16cb7d0f704d8774b17c46f5148ee6bd9aa15b467b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant42ac94e76de000f8fecbd323f910b9cf9d51b42933868f887b15ae1bfc875797.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant42ac94e76de000f8fecbd323f910b9cf9d51b42933868f887b15ae1bfc875797.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
