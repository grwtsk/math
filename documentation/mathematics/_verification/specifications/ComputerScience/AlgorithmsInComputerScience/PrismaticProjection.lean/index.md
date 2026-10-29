# Verification target: Prismatic Projection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29b6969c0d0883fdd987d9419dc6780be4ddf24d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29b6969c0d0883fdd987d9419dc6780be4ddf24d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ProjectionDepth` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectionErrorEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/projectionerrorenvelope.md) | 24 | `declaration-track:6debb9212200e8b1144a422f20959759ffcce99c4533c01146101f904a302e90` |
| 2 | `structure` | [MatrixTreeHashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/matrixtreehashes.md) | 38 | `declaration-track:44c05fdb6a19cb586426e82614ce9678c6b6970bee032f0708e59589d86a1302` |
| 3 | `structure` | [BoundaryHashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/boundaryhashes.md) | 46 | `declaration-track:5d66806cdb550a9f677d8d6cab7727a3cceee6ed084eddfb53e09db0dff25e96` |
| 4 | `structure` | [ToroidalShadowState](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/toroidalshadowstate.md) | 60 | `declaration-track:1ea14a3f314c623777b0ec9a384c173b775a0ac6316751215f28c916d04e34f0` |
| 5 | `structure` | [ToroidalShadowStream](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/toroidalshadowstream.md) | 73 | `declaration-track:0c44eda3d19c44aa44ce186163468ce7dc60a51f465d4ee1e8a67e99c5b68976` |
| 6 | `structure` | [PrismaticCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/prismaticcertificate.md) | 84 | `declaration-track:86ae965566765bed0a8d2f3bbd005ee0fa3f096b5ba7f461b70c3edefbaadf8a` |
| 7 | `structure` | [ShapeUpdateWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shapeupdatewitness.md) | 98 | `declaration-track:2e4e715d404a545d8bd72755156c3f5671421db8c9eb5f235aa5785fe17ca9c6` |
| 8 | `def` | [stepChecked](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/stepchecked.md) | 117 | `declaration-track:5681c1d90c2b623c11b998ed1f2d475f90e5bda06d55f0b690cb01073bf23517` |
| 9 | `theorem` | [stepChecked_comparison_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/stepchecked-comparison-sound.md) | 125 | `result-track:f17c6bc4087dba1c78a1d2819711678a2944b51c1f3512c26c9ccf9cd805ea99` |
| 10 | `theorem` | [stepChecked_precision_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/stepchecked-precision-sound.md) | 132 | `result-track:7952be137a00fefac0e676f1caa22748ccbdca103ea1fb20b15ab7e78d8a3fe4` |
| 11 | `theorem` | [stepChecked_prior_hash_consistency](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/stepchecked-prior-hash-consistency.md) | 139 | `result-track:4146426b1702c7ef4ec0d2c2945be4c4fc3fc41ced32842d741bef0a3e0c7917` |
| 12 | `theorem` | [stepChecked_next_hash_consistency](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/stepchecked-next-hash-consistency.md) | 146 | `result-track:2427cd4280eb9952d9c076407cbd0ff537162b94bcf6a9ebcf33bf6e17d4ab2e` |
| 13 | `def` | [ShapeUpdateWitnessOwnsFullGeometry](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shapeupdatewitnessownsfullgeometry.md) | 153 | `declaration-track:6ea6aec12aa544ea2b7403bc070ea84b48413dbcbd23a0791befb380ab4025bb` |
| 14 | `theorem` | [shape_update_witness_does_not_own_full_geometry](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shape-update-witness-does-not-own-full-geometry.md) | 157 | `result-track:d1ef97eecbea353984cb33fc299cbc01adf9cd96a76dac391c08e4da903685ef` |
| 15 | `structure` | [PrismaticComputed](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/prismaticcomputed.md) | 169 | `declaration-track:763b8b0b71978e6cc228834a725b247698108dde6e49812fad41bf9dbb8ce03e` |
| 16 | `def` | [PrismaticComputed.toShapeUpdateWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/prismaticcomputed-toshapeupdatewitness.md) | 181 | `declaration-track:c576bc5976458e80f850014a599d50297b9b481a25aa75711e5b9365289d57df` |
| 17 | `theorem` | [computed_toShapeUpdateWitness_prior_hash](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/computed-toshapeupdatewitness-prior-hash.md) | 201 | `result-track:2c1c798b8c96bd70e82430d0ab89069897deb60c9a3c6a28cd95d7e37179bd8a` |
| 18 | `theorem` | [computed_toShapeUpdateWitness_next_hash](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/computed-toshapeupdatewitness-next-hash.md) | 214 | `result-track:901d9dc4e0f3038ff83a388d54817cf8cce9800d33debc2516b19f2e725a68ba` |
| 19 | `theorem` | [shadow_state_exposes_support_hashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shadow-state-exposes-support-hashes.md) | 228 | `result-track:f7a1d6a19c28248924ab0fd44335b82bac9f839f98f8a624f3ffbafd49357416` |
| 20 | `theorem` | [shadow_state_exposes_matrix_tree_hashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shadow-state-exposes-matrix-tree-hashes.md) | 235 | `result-track:35e6d9d486f118be3573805f45bc370c9a32bfa11bcf78e75f3b42c46c1764bb` |
| 21 | `theorem` | [shadow_state_exposes_boundary_hashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shadow-state-exposes-boundary-hashes.md) | 244 | `result-track:619eab6085d52e619fa557aeb74e2913aaf62f96bf1a53c66496963ed0adae95` |
| 22 | `theorem` | [shadow_state_exposes_depths](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/shadow-state-exposes-depths.md) | 257 | `result-track:cb46c732bf5c8995771b061034cf814ed00ed9df80624fe034c0b65408dddc68` |
| 23 | `theorem` | [error_envelope_total_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/error-envelope-total-eq.md) | 263 | `result-track:b4978504f36a5c2a8454ea9c44d467f88b92e818351d55ed991f8fb898190f75` |
| 24 | `def` | [exampleZeroErrorEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/examplezeroerrorenvelope.md) | 272 | `declaration-track:18e632715af6019af2997a8f677b5cacdc6ddf7ab313ffe746d88ed189dde170` |
| 25 | `def` | [exampleMatrixTreeHashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/examplematrixtreehashes.md) | 283 | `declaration-track:c5e97083392a66dd39781b2e1b49a52e8505035ed4893c8d5b24a66df16c7356` |
| 26 | `def` | [exampleBoundaryHashes](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/exampleboundaryhashes.md) | 289 | `declaration-track:aefb23f0fa14c62fb47940b41eb5838ea4d756d89267d421d5a89d969785ad45` |
| 27 | `def` | [examplePriorShadowState](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/examplepriorshadowstate.md) | 295 | `declaration-track:7865400a0730bb953d99eac6e6db5e1a24adab51a96df88da708f9e639bd8fc5` |
| 28 | `def` | [exampleNextShadowState](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/examplenextshadowstate.md) | 306 | `declaration-track:31a6f4310d9b73bc6effcf51bdd12397086141359214bef1adf2cbfae11edc92` |
| 29 | `def` | [examplePrismaticCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/exampleprismaticcertificate.md) | 317 | `declaration-track:224b12cdbe56024b20c852437a6da1aa4395e7d8b076d284a1c102c2dad211b5` |
| 30 | `def` | [examplePrismaticComputed](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/exampleprismaticcomputed.md) | 324 | `declaration-track:e9e19feacc8e9c33d50cc9ae70a565c4180dd9c2e80bfd73f138d8664cfce923` |
| 31 | `def` | [exampleShapeUpdateWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/exampleshapeupdatewitness.md) | 329 | `declaration-track:7e28a6943cbe66bbbd25f7b7d0453e5012dfb162d3697c1b1824fd3dbdb91157` |
| 32 | `theorem` | [example_stepChecked](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/example-stepchecked.md) | 338 | `result-track:c0f395cfe56fc274c93dabf2ac204747a5b42a6865e9799459b05490eb505eeb` |
| 33 | `theorem` | [example_stepChecked_exposes_precision](../../../../../ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/declarations/example-stepchecked-exposes-precision.md) | 342 | `result-track:22ca57573072b2321dac563d83b00b57b2aaef6a57935f38877b4f6ab927d35b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bd51217c03a84414db8126efd4c183fa3f5d3444ea76950eb39ad44df70ea11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
