# Verification target: Pointwise Complete Lattice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdd12efab2f9b688c2d61da979b145f628cfbf64",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant753dad6f926c1e4117218be0d5a799abe4b2747b2e8b08de5412089f98267b0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdd12efab2f9b688c2d61da979b145f628cfbf64`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant753dad6f926c1e4117218be0d5a799abe4b2747b2e8b08de5412089f98267b0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant753dad6f926c1e4117218be0d5a799abe4b2747b2e8b08de5412089f98267b0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [csSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/cssup-one.md) | 31 | `result-track:541ffea9ed4bcb0ac6172e3cade6b2a344c1edf5fec5aec695fec9f6401e2608` |
| 2 | `lemma` | [csInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/csinf-one.md) | 32 | `result-track:eea7846e4c1d71d6935b52b2e4d629f7922e4cce9a41723de048cef307119b5c` |
| 3 | `lemma` | [csSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/cssup-inv.md) | 41 | `result-track:4856ad4bc9cfbae3168b7363ae61a8b93757393bbf557bebae8d000715e08591` |
| 4 | `lemma` | [csInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/csinf-inv.md) | 46 | `result-track:17559e63ff1268965942a9a9823a3301805a57d17199aa83e16800741e97f4e4` |
| 5 | `lemma` | [csSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/cssup-mul.md) | 51 | `result-track:6f232a8c1cbcb49fe170ea646db51ad9123e174df69363b0c70479e3d9656126` |
| 6 | `lemma` | [csInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/csinf-mul.md) | 57 | `result-track:4a8c175f69193b04ca9b3e65e0a203cd316517b99b1d69429f3655ac41cb8e7e` |
| 7 | `lemma` | [csSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/cssup-div.md) | 63 | `result-track:aec3b06eb4ec54088f79d2de7ac5f1c6d04030895db36eac30064164d7e392d2` |
| 8 | `lemma` | [csInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/csinf-div.md) | 68 | `result-track:50bdd10ac8f8d6bed0f005b1a150818a9093b9c3cbb68ddf4cadc134f8e7baca` |
| 9 | `lemma` | [sSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/ssup-one.md) | 81 | `result-track:185cc38ebee2729ed301aa0e77ecc18190439256b9bce39632caaf928b74d892` |
| 10 | `lemma` | [sInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/sinf-one.md) | 82 | `result-track:19fff278ac881db35b92f3a66fd4f814ce287af16f40549b7ecfbf3d346422b1` |
| 11 | `lemma` | [sSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/ssup-inv.md) | 91 | `result-track:af178d520259c6fcf4cbe87f0642b451eafd9f548f3d42850243762d12207803` |
| 12 | `lemma` | [sInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/sinf-inv.md) | 96 | `result-track:a68e4ae42ebd1a70a6424304b820b3ff6a0f96308401fb5ca9a48cde0efca41a` |
| 13 | `lemma` | [sSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/ssup-mul.md) | 101 | `result-track:ac1041775b65b0c028f68f58cdca55ef4de9b202121e03089ca7d025b789897d` |
| 14 | `lemma` | [sInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/sinf-mul.md) | 106 | `result-track:fb02df8fd9f82c6390ad4fd4b1e5c7c53b892450f2df8310ce73980c25fd1874` |
| 15 | `lemma` | [sSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/ssup-div.md) | 111 | `result-track:b342d791e698ea3e6fc79e11cf3668e4ffa23be3ac70482e772d3a1d7a7cf34d` |
| 16 | `lemma` | [sInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLattice.lean/declarations/sinf-div.md) | 114 | `result-track:df6f77bf4d4fdeb08d9b5569ae88f1caef91d72b086e55905101092307582eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f8b09d251d512a0a1629a5467a0199b5870dd12fca1aad17b3bc8f2a58e6775 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant753dad6f926c1e4117218be0d5a799abe4b2747b2e8b08de5412089f98267b0a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant753dad6f926c1e4117218be0d5a799abe4b2747b2e8b08de5412089f98267b0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
