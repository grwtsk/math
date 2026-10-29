# Verification target: Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a338fcbecb87d91e6611aa774236b79b996466",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a338fcbecb87d91e6611aa774236b79b996466`.

Source path: `GRWTSK/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.Id` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArtifactKind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/artifactkind.md) | 21 | `declaration-track:dcc621e3f1347be84ef95203b491ccc75c7a952bae5c2bd2d5fd5e9fe7b594cb` |
| 2 | `inductive` | [TransportExactness](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/transportexactness.md) | 31 | `declaration-track:6c1a6a2ef940709e6319e5856fd689fb879e9589dda64c2a3064ede53fbace7d` |
| 3 | `inductive` | [TransportAuthority](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/transportauthority.md) | 37 | `declaration-track:4bc34085fd84a505d4964752ef11092a331c3350283c487c2c21bee190098d6d` |
| 4 | `structure` | [BoundaryKey](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/boundarykey.md) | 42 | `declaration-track:2428cb7050f983381d4662b51271898f4b0d00691c448f74d1f4039f54c9741d` |
| 5 | `structure` | [BoundaryTransport](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/boundarytransport.md) | 54 | `declaration-track:f055cc53d1db4f6a6136aab089e2fcb04da357aa7ee6d5ef1fc37a41d28f8493` |
| 6 | `inductive` | [TransportPath](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/transportpath.md) | 73 | `declaration-track:9d3aaf6f61bf4e7a59d3a2e71bdae4350e752ff45c9689b164ded7173f00bd4a` |
| 7 | `def` | [MayConsume](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/mayconsume.md) | 85 | `declaration-track:1881d7e151eb8aa9195abf9e54e47763fa3ca8930df50e58f55c7ad3e3289448` |
| 8 | `theorem` | [MayConsume.same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/mayconsume-same.md) | 90 | `result-track:21ceaf695f9a03959c68621d4fc8365fb2bb1cf220e26154d7c1902a603623ec` |
| 9 | `theorem` | [MayConsume.distinctBoundaryStartsWithTransport](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BoundaryNamespaced.lean/declarations/mayconsume-distinctboundarystartswithtransport.md) | 96 | `result-track:ca304a64625ed2250c92a572096ad33330a2fa42df3989f448618de62d8ebb06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b676eeca2387de4bb81db0a25abaa3f65d5ef2a943c92ff0e11b0615df2f13b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean","GRWTSK/_verification/specifications/Algebra/Boundary/Variant36aeaade2964ae43a537c9e4292c7f334600d5d8e542914be2ef2c99e7918ca1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
