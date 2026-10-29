# Verification target: Complete Lat Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b32bfad6c86e9478f7b8ff0581f51773d99827b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b32bfad6c86e9478f7b8ff0581f51773d99827b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2.lean.json)

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
| 1 | `structure` | [CompleteLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/completelat.md) | 25 | `declaration-track:88303cd11ae7b18f262e7d3454fa0523f7cfc0ab981a865435394021f4367b17` |
| 2 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/delabof.md) | 41 | `declaration-track:3ac91f1f702fc0315151cb4f64743b4c3a34d9c63015e80d3dc38bee8bd5c969` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:3ad7213a82129f15f2f8ea6ef701e64f24a6d4c23dd0746bbb513b7183c0d13a` |
| 4 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/coe-of.md) | 48 | `result-track:cd5aba0255611c5ef63f0769a9499890cb0c78ef4c5d4bee8b7bf7678e4705cb` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/instance.md) | 51 | `declaration-track:124255233ba3cba0a683b276622470f3d53f7dc71cf8c5fa26c4a7d490023a1f` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/instance-source-edition-3.md) | 54 | `declaration-track:5b08dd0ddd29bc050a66c5344ca014f179899bc15b36e0f2c9889c4b1d66ad73` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:aebd192bdc7935028d0515e8df1bf8908bdb63e5d0dfb2e913079bab648cc0e5` |
| 8 | `instance` | [hasForgetToBddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/hasforgettobddlat.md) | 63 | `declaration-track:6026a5efeeffc0485bef2ac5f7a33e92c3c48c1a7fbfa57c6c74b2cc77c734dc` |
| 9 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/iso-mk.md) | 69 | `declaration-track:c22763f964709550a3880ae0fc162d2a3de5cb79b58bb4cfe778e329419ea7e4` |
| 10 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/dual.md) | 77 | `declaration-track:b4766442329279d02e6a6248d4c86b5d1cc9cfc078e1d1ec248d41a51033ad09` |
| 11 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/dualequiv.md) | 83 | `declaration-track:281cad7724bba962ceeb33747337ee31c0afc9e6387fe27dca697d80bda05199` |
| 12 | `theorem` | [completeLat_dual_comp_forget_to_bddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatPublic.lean/declarations/completelat-dual-comp-forget-to-bddlat.md) | 91 | `result-track:42ab4d52f4850c73e7fe0a090c79375ba0528acb0be55317e4aa07f64e956932` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc1d32ebaa120fd778c7d8560cf0174fe1e32b4b242302602c98b135e87134f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLat/Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
