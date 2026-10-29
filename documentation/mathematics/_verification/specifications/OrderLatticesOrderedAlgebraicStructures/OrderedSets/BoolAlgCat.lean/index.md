# Verification target: Bool Alg Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "197d736c4fab163f3a118bae37d8387220714516",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlgCat/Variantc7079173ee97aaaa69b68bb1b408f58180f5b3e915c1dcaaac77a9f8f629d542.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `197d736c4fab163f3a118bae37d8387220714516`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlgCat/Variantc7079173ee97aaaa69b68bb1b408f58180f5b3e915c1dcaaac77a9f8f629d542.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlgCat/Variantc7079173ee97aaaa69b68bb1b408f58180f5b3e915c1dcaaac77a9f8f629d542.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.HeytAlgCat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolAlgCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/boolalgcat.md) | 25 | `declaration-track:6069bd51b0c63d2420b4ef66bf0002361f362943f4719c75b163d6ad4ac0cc9a` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/instance-source-edition-3.md) | 31 | `declaration-track:94b83fb813dae8045b1b1c860fdce1c9e4def917b4281b1476e7cfc63742dbda` |
| 3 | `instance` | [instBooleanAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/instbooleanalgebra.md) | 34 | `declaration-track:e09e24b7802306e85031ddac18ffab0e1ddf5b90260fe028def5ef47715a6fcc` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/of.md) | 38 | `declaration-track:64ffefa48a000711f6ab7648c65ff83a908c3884707a29af01d7d37bf7cc630e` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/coe-of.md) | 43 | `result-track:2103a58c657ecda1cc2591e1a054557a9c34c2bb7d715ce71b8955f4a5efea73` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/instance-source-edition-4.md) | 47 | `declaration-track:d9e250c4fcbde9f7ce2ed7cf9d8facb647659b1fc62d3d862dcc6f9f8a1f9c0a` |
| 7 | `def` | [toBddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/tobdddistlatcat.md) | 51 | `declaration-track:b035d29718c8d83da8a9da6b7a3beac94d1de279b5bd0312959db91faaef4c26` |
| 8 | `theorem` | [coe_toBddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/coe-tobdddistlatcat.md) | 56 | `result-track:3b3019f5a06a1bc0cce6efb81d8c7836967cc133fa4549df18f2bb815306aae1` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:8df16551199e2b38f45bd4140f9ad735cf104e923e2a851488ff7bae969d2738` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/instance.md) | 63 | `declaration-track:7fc2be89f78dfb3cfc63c3246cb19fd6af852b5b24353946feae61c629c6c283` |
| 11 | `instance` | [hasForgetToBddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/hasforgettobdddistlatcat.md) | 66 | `declaration-track:d2bd963112483c93196e9d950ab43fdb88d57d7b157f923df99d2020ad9c22b3` |
| 12 | `instance` | [hasForgetToHeytAlgCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/hasforgettoheytalgcat.md) | 75 | `declaration-track:7ff5d34fe532f513169b3b43c07c1aaf1b1f093a0f279b7a21eaaf43495854ce` |
| 13 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/iso-mk.md) | 88 | `declaration-track:04efab3d664830d7a9743f3ef9e48f426fd613dde436ec7a1a3c019e392d63dd` |
| 14 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/dual.md) | 97 | `declaration-track:24ae8e3dd19e62eb7563391ad38ab8e3ab2d64f30634059765ed5e10a17f4da4` |
| 15 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/dualequiv.md) | 104 | `declaration-track:214a40f1f84bd45f04548209de8fbcd05111440f3aab2bf212bdb17542fe43a6` |
| 16 | `theorem` | [boolAlgCat_dual_comp_forget_to_bddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgCat.lean/declarations/boolalgcat-dual-comp-forget-to-bdddistlatcat.md) | 113 | `result-track:60cd9ff5abfcfc59f0cb54efd363346f3b5db60b6a94ff4526697dd0f3a5e1d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2f1ac49f0cdf60bdeb13ee31e5cada2a3a7ea5155a5ba4f4773c9b7bf46b2e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlgCat/Variantc7079173ee97aaaa69b68bb1b408f58180f5b3e915c1dcaaac77a9f8f629d542.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlgCat/Variantc7079173ee97aaaa69b68bb1b408f58180f5b3e915c1dcaaac77a9f8f629d542.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
