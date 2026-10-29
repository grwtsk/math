# Verification target: Complete Lat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bdbae6c01df8fa1a2d6e2b74b9cb8c52deceb82",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variant23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bdbae6c01df8fa1a2d6e2b74b9cb8c52deceb82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variant23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variant23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddLat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompleteLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/completelat.md) | 21 | `declaration-track:1633a74feb39c392ca24a7bb7f15bd07a566a9a155031d2edbc5e4cec345a94c` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/instance-source-edition-2.md) | 32 | `declaration-track:30d61403d16b8f00b1156574c577c97b85969f1a4f2371510d538534045fc027` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/of.md) | 38 | `declaration-track:d21c1138e8f9f60f63ad6e4818785fa6fcab76798bf17920eb8552057c4e54bb` |
| 4 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/coe-of.md) | 40 | `result-track:8cf15c4eb32c5cbce10e996b363f505d67e015cc3fa37d5d4cb1c2f5040f36f4` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/instance.md) | 43 | `declaration-track:241068b3bf21b85af905df63ced3abb7f0898e88af7ca3c520437bf9d21c13a2` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/instance-source-edition-3.md) | 46 | `declaration-track:48667d18a5e41b6a43b1b687d4000b85b095195f6cd3ff6d1a7a63d3f7093f49` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/instance-source-edition-4.md) | 51 | `declaration-track:4a44319b8961578caeb5fd38ca9b1bdf3ed51fe782be9a62f93fff2054e561a5` |
| 8 | `instance` | [hasForgetToBddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/hasforgettobddlat.md) | 55 | `declaration-track:50c65a4e509cbef18e2adcaebaac9fad84ff9d1ed086fc4e377c719ce6b3baa8` |
| 9 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/iso-mk.md) | 61 | `declaration-track:812c298b1596721077287f9dd07d57ed39358d9a29190332067b6afc4e613177` |
| 10 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/dual.md) | 69 | `declaration-track:0ec1cf9124773b682661111182b5bee0976c83a54fc5262ff3699fbf8fce604c` |
| 11 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/dualequiv.md) | 75 | `declaration-track:5acbb83bf9a41abfbdf93a317614279f1cda3fb191d7b49bfe8ecada701374a4` |
| 12 | `theorem` | [completeLat_dual_comp_forget_to_bddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLat.lean/declarations/completelat-dual-comp-forget-to-bddlat.md) | 83 | `result-track:81be2bdaa4fe2b9f8c1e21743debeb9464b4f134278955e875a69ec129280752` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3649c56d8189134a7320fde1e4d80b88a522a95c6c8e2aaecf68efe0a5e7e4af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variant23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variant23d483a09857e73083f321d35190c032d0d70060732a3cf6f11b9ec5989fef42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
