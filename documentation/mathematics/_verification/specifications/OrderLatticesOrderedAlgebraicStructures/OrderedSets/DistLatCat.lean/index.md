# Verification target: Dist Lat Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90879a478895d9c78514c6ee7f95d6f8941c7a42",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLatCat/Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90879a478895d9c78514c6ee7f95d6f8941c7a42`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLatCat/Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLatCat/Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.LatCat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/distlatcat.md) | 28 | `declaration-track:55f41f19383ad219ad67fac09f291d5ea99e28047dbd778cdc0bd27d2432103c` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/instance.md) | 34 | `declaration-track:0072cbb6494881fdd9a854671372672146d9bf43bf19cd81787d21bafb492494` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/instance-source-edition-2.md) | 37 | `declaration-track:0900da75884ed873f8b8a1ae8f1f2c8cd105ee3b44f91d8fc542de417fdf5db4` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/of.md) | 41 | `declaration-track:db6d4f4e8a7e9e458660ebe128915b6815e954c44f263c3de7cf37bba6718951` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/coe-of.md) | 46 | `result-track:628bb979dcf499127bf96372a7f5b8fcab3a986c3ec1a94b038d0db6bddd5a32` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/instance-source-edition-3.md) | 50 | `declaration-track:b48d49e2501e8bab9d57f38d054b87c82b4ef15d061843b929a2c37e89789fc6` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/instance-source-edition-5.md) | 53 | `declaration-track:fb8b2f1e903d752dbdf716e0720fe779c2a64ef53aeddbf7f345a38ef062e6d6` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:d8d086d854c293fab50a3695d50800e7040ef37b9807ddad819bcfc68b00b90c` |
| 9 | `instance` | [hasForgetToLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/hasforgettolatcat.md) | 62 | `declaration-track:bd11524bf5150c3366ab8e697dbf81b1f6c8bd48aafab7deb203edbf6a1f5622` |
| 10 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/iso-mk.md) | 69 | `declaration-track:cfb639e9f4fe1a1ca477e695030d5c46ada7b879a2357f8de5e1532765d05000` |
| 11 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/dual.md) | 82 | `declaration-track:629c038f727dd40942e83131812d45321883dbd3bf35eb0aa0ae8f936d7302e4` |
| 12 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/dualequiv.md) | 89 | `declaration-track:2e422bd3043fc4c94f961a43de68f8592b7344465fff8a0490f228f1a0fe9aa0` |
| 13 | `theorem` | [distLatCat_dual_comp_forget_to_latCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DistLatCat.lean/declarations/distlatcat-dual-comp-forget-to-latcat.md) | 98 | `result-track:f346b2add73c7932eb27b1e721fbc8ddf52a472d5f255afd5702aa0c9c694295` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b9e50095bc9b27898ea2e59c890fc580b04f3ad2e81d7f25f1623056f464bb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLatCat/Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DistLatCat/Variant8174b19bb718d327f6856fac7531a717c734815c109bf193e7832a6b09fbae68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
