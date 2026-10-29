# Verification target: Adjoin Tower Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "495bef128361bfcb079e92edb9efe2e4706195b1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `495bef128361bfcb079e92edb9efe2e4706195b1`.

Source path: `GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.FG` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjoin_restrictScalars](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/declarations/adjoin-restrictscalars.md) | 36 | `result-track:90f1bbdf44912620ec51b766c517681f2c35d5b3483cd3e205a5b335fb7be6a3` |
| 2 | `theorem` | [adjoin_res_eq_adjoin_res](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/declarations/adjoin-res-eq-adjoin-res.md) | 54 | `result-track:d384e739834bb38554a0990e89a60da3fe2ceca2110a6f8406203104b7e210ea` |
| 3 | `theorem` | [Algebra.fg_trans'](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/declarations/algebra-fg-trans.md) | 69 | `result-track:3093d183bee3254a03d757e820922b17cf8c9652d270616ef54b88d4ba84bb20` |
| 4 | `theorem` | [exists_subalgebra_of_fg](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/declarations/exists-subalgebra-of-fg.md) | 95 | `result-track:39a30c62e0dde8a71636af8bb03aec05dfaf0a8949721478cd765b3ef3c1fb22` |
| 5 | `theorem` | [fg_of_fg_of_fg](../../../../CommutativeAlgebra/AdjoinTowerNamespaced.lean/declarations/fg-of-fg-of-fg.md) | 154 | `result-track:51edf1362c301bbf645666c1c8c092d06c957f9b5f7bcffd7f4175195718702b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ebacdc8555f11c27d62ad3df9c569b6baf0995b33af47bdced3fc85c50c6f84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean","GRWTSK/_verification/specifications/Algebra/Tower/Variantb2d9f4c751e51a5dc7945303cef06a82e313ec7a7ac37efb23290d8a19e9d719.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
