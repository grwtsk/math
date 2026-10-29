# Verification target: Notation Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f80e104e6b801b369038dd98c61db52c51856d08",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8a253a7c5ad249f103e47b06a7ba2453a6f3d129ca51117769e34bff8858eabf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f80e104e6b801b369038dd98c61db52c51856d08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8a253a7c5ad249f103e47b06a7ba2453a6f3d129ca51117769e34bff8858eabf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8a253a7c5ad249f103e47b06a7ba2453a6f3d129ca51117769e34bff8858eabf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToAdditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_dite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/one-le-dite.md) | 30 | `result-track:fc6df51d4ed5b175484e3bc4329781fe7b7944d614062afa06e31f5e27b5643c` |
| 2 | `lemma` | [dite_le_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/dite-le-one.md) | 34 | `result-track:2d08b59b4c6940f69690bf68cbf02ae4ff8ce79a12221cf6c74923d04d4c52c5` |
| 3 | `lemma` | [one_lt_dite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/one-lt-dite.md) | 38 | `result-track:aa7671f78b1c9776837959d19238bccbe40d085449d0341e3e7618fe54fe6f11` |
| 4 | `lemma` | [dite_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/dite-lt-one.md) | 42 | `result-track:a9b9c4f24f40112ddebf88f2c3eb30c4527303dce7d4e35df4a172ccab7dfee3` |
| 5 | `lemma` | [one_le_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/one-le-ite.md) | 51 | `result-track:5083197fb3113d55a6df69cd5766ebb678cc5155b360e7cb1e99f61a01b97b81` |
| 6 | `lemma` | [ite_le_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/ite-le-one.md) | 54 | `result-track:911e081a9dc656d044e2465633f98b681bcd5fbbfcd41627f9d57acb108f1d5b` |
| 7 | `lemma` | [one_lt_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/one-lt-ite.md) | 57 | `result-track:b4855a14c63ef48351cc7dca25c8eaa520fcd159de7f9605d75c3a2b7e8e686e` |
| 8 | `lemma` | [ite_lt_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NotationLemmasNamespaced.lean/declarations/ite-lt-one.md) | 60 | `result-track:03d94e19ed88795e0c0816d1d42b36a220422d50e65fb0ad868d2e58a24dac28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e471e0e2d85593ae74b88ed4e1d7e51c228db69e955b0ff87565af0fb0b09bc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8a253a7c5ad249f103e47b06a7ba2453a6f3d129ca51117769e34bff8858eabf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant8a253a7c5ad249f103e47b06a7ba2453a6f3d129ca51117769e34bff8858eabf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
