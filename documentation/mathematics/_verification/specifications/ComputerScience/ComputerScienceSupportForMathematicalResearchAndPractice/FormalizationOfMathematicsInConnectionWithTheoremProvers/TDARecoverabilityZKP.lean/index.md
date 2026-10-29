# Verification target: TDARecoverability ZKP

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `130ad30fbbbabe1ccb2f3fa5c48ea9c6d9d19b23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.TorsionBlindDataHomology` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PrismaticProjection` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RecoverabilityCollision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/recoverabilitycollision.md) | 43 | `declaration-track:f9b72604e2d4c53714d87353d190832daea915f4b646fe5eedda7e40d06e256c` |
| 2 | `def` | [DeterministicPairErrorAtLeastHalf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/deterministicpairerroratleasthalf.md) | 46 | `declaration-track:d531365f9cfa116e93220b8c677d1f2f9d2b9c3eeebc39392a7ff0e1ebac8106` |
| 3 | `theorem` | [deterministic_recoverability_collapse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/deterministic-recoverability-collapse.md) | 53 | `result-track:272e2e3b2010d98db049dd645e5b731cce0423984e44023982b846702643ed0e` |
| 4 | `structure` | [RandomizedFieldOnlyAlgorithm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/randomizedfieldonlyalgorithm.md) | 67 | `declaration-track:702f3a2ff6a3567d79c3d03dbc4be13dec28a65092277a7b2e056ee42ad16160` |
| 5 | `def` | [successWeight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/successweight.md) | 76 | `declaration-track:82c070e21920a785d66f32fec57562dcfa65e632a3e5ffba0baf6050cf0308dd` |
| 6 | `def` | [PairErrorAtLeastHalf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/pairerroratleasthalf.md) | 88 | `declaration-track:811d92229357035a5c92e7c6f0b56e665ff2cb56efe27bc1ba9b5a95183fe643` |
| 7 | `theorem` | [randomized_pair_success_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/randomized-pair-success-bound.md) | 94 | `result-track:a718d9b009c88f7e28d430826cdb534bc8e1708cee7e7b3e039ad9de736ebb82` |
| 8 | `def` | [StrictlyBetterThanHalfSuccess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/strictlybetterthanhalfsuccess.md) | 107 | `declaration-track:27cd4a8407de5cd845d727e7d8549e4ac90e2bdd8edb4b4a27c071517e305b7d` |
| 9 | `theorem` | [randomized_not_both_strictly_better_than_half](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/randomized-not-both-strictly-better-than-half.md) | 113 | `result-track:ebd33d563021ed47cf7540baf03f5058a8b8d71f410e67a5c619423a3c5d4d8d` |
| 10 | `theorem` | [recoverability_collapse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/recoverability-collapse.md) | 127 | `result-track:3746be8422b3c031562a7df7e6d53005fe07fc6a9c2d3036ac46f0e6f5ffd2c9` |
| 11 | `structure` | [TorsionClaim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/torsionclaim.md) | 142 | `declaration-track:60ed5be1dc2c161303a40a2ae89c8e62ee7a1c8984b7442069b82d091d90b1da` |
| 12 | `structure` | [PublicStatement](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/publicstatement.md) | 148 | `declaration-track:490caefb9b844c319a43c236e3d256c53ffabe35b2198ebf63cc78dbb0ef7427` |
| 13 | `structure` | [TopologicalWitness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/topologicalwitness.md) | 155 | `declaration-track:a1071debcbd5ee72e6cab9813c3b6ef5f54453ae9e4a1c9acd52da54feab85f2` |
| 14 | `structure` | [ArithmeticWitness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/arithmeticwitness.md) | 161 | `declaration-track:52a6ba7c960eaabb5db20da8bb160e64c62ac801b26608035b7525f02ed56b1a` |
| 15 | `structure` | [PrivateWitness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/privatewitness.md) | 168 | `declaration-track:2481ca00c6eb3a45b6ae14409cf8011be0c57003fab5aabfd4ffe85f2e5fc78f` |
| 16 | `def` | [ZKPRelation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkprelation.md) | 176 | `declaration-track:e42fd6c07563283e334022bb777c557269b631bb0795dc0166ce8f6c0213aefb` |
| 17 | `def` | [ShapeUpdateWitnessMatchesPublic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/shapeupdatewitnessmatchespublic.md) | 196 | `declaration-track:49b55e56851097a3b313b49e03105e38cacfcea2eb52861ed0760e329554c8e2` |
| 18 | `theorem` | [shapeUpdate_none_matches_default](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/shapeupdate-none-matches-default.md) | 205 | `result-track:0422c9dd5d12d0a53417dd84caef94299920a8ac173d6d2d0c8daad0efe576d7` |
| 19 | `theorem` | [zkp_relation_still_torsion_after_shape_update_extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkp-relation-still-torsion-after-shape-update-extension.md) | 214 | `result-track:2f534e2a84573ad55e2760ee81cb03870dce72b1fd4f60fc4f87719711981d5c` |
| 20 | `theorem` | [relation_observation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/relation-observation.md) | 222 | `result-track:7fb06a8c711c72938cf63b0c725524e0249053933c20fcd456bd5d35765f37e6` |
| 21 | `theorem` | [relation_torsion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/relation-torsion.md) | 230 | `result-track:98318df2bb1ccd8e523062ba63d6240c6b6c5b43867896c945daf57f60b2c008` |
| 22 | `inductive` | [WitnessLeaf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/witnessleaf.md) | 240 | `declaration-track:2e81d94cfcc2d28a0107070801c94f0c0d1b23e5ef6fe4fcc10747bebe5bdd8e` |
| 23 | `inductive` | [OperatorNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/operatornode.md) | 248 | `declaration-track:afd0f4f4d92e258af81560931dca80b2e02f6d8b0821ebdae5a886b8f51086d5` |
| 24 | `inductive` | [OperatorTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/operatortree.md) | 261 | `declaration-track:265ef84786ab32677a8134cc3737a4e1a445a44f607c6e25c9d5f42cd0949d78` |
| 25 | `def` | [topologicalBranch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/topologicalbranch.md) | 269 | `declaration-track:436f07bdceab448c326812d75fb6ab8efcc71731a6ce129761c69de9c09fd640` |
| 26 | `def` | [arithmeticBranch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/arithmeticbranch.md) | 276 | `declaration-track:46b6448beebf0f9f3f69c9e71d8e62474e92a633812a31caa486a0b382ce63c6` |
| 27 | `def` | [zkpOperatorTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkpoperatortree.md) | 283 | `declaration-track:39912f4cbf32c47cf5033c0cb2669477a41123e805d8720436458e0c4a0d784a` |
| 28 | `def` | [dotInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/dotint.md) | 298 | `declaration-track:3e2ce91e4d3aa24c18b0bb87f461f87cb9ddf1805bc06b9f949ca4c583891656` |
| 29 | `structure` | [RankOneConstraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/rankoneconstraint.md) | 304 | `declaration-track:75c0cecb3356c1ff30a739dab4aa867d948118309efa95ae33c6ca25e882b84b` |
| 30 | `def` | [Holds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/holds.md) | 313 | `declaration-track:0aefd3bdf6fe02d5cbe51eecf7e69f8c9b07678da2af00a9e5a7a47cb35d9fab` |
| 31 | `structure` | [R1CS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/r1cs.md) | 319 | `declaration-track:703a7bad2bb286f0e291f41d8b0fdf533735c744ba3d3b32beed314faa9a62e5` |
| 32 | `def` | [Holds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/holds-source-edition-2.md) | 327 | `declaration-track:2ad5bf11f987381e4bce8b6589b724a514211bae23ce11000dfb374f1205c78e` |
| 33 | `structure` | [OperatorTreeCompilation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/operatortreecompilation.md) | 333 | `declaration-track:1dba3402419b8b949da1b150008ade3b2d78a90bbf25cf1231072226ef1737ea` |
| 34 | `theorem` | [r1cs_compilation_sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/r1cs-compilation-sound.md) | 342 | `result-track:f86b0e6b61f1cf2701d7ac41ab9f21dc9735cac56e0d779c4055bfc233e0bdc7` |
| 35 | `structure` | [ZkSNARK](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zksnark.md) | 353 | `declaration-track:f7a5db2cdd8a3533a2781b6435788a54e6fa3c14b476aa48565dd1ccd8eaf505` |
| 36 | `theorem` | [zkp_accepts_valid_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkp-accepts-valid-witness.md) | 376 | `result-track:544b0dfb6f5399c48c2182b8805147ebb5ab8bc3b2eb541c35b8eb94188d1870` |
| 37 | `theorem` | [zkp_soundness_extracts_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkp-soundness-extracts-witness.md) | 387 | `result-track:102d672119ead8b1e55ad3e37fdb0a31ea6b10653dbcafb85b47dce5e9086e60` |
| 38 | `structure` | [PairingCheckCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/pairingcheckcertificate.md) | 397 | `declaration-track:96df06f0e8f2a93cdbf56591b7882aec4098271d8524d4d5c7dc7634935be686` |
| 39 | `theorem` | [pairing_root_soundness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/pairing-root-soundness.md) | 407 | `result-track:e287330666ae792fe3b3de7f70a11adb2a0c42b3478ad90bc2a1b60715617e4d` |
| 40 | `theorem` | [zkp_bridge_overcomes_field_blindness_by_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkp-bridge-overcomes-field-blindness-by-witness.md) | 421 | `result-track:b35bfed0b7f83b06c2a6793666df16558f33cb1748a61e774c3ded6966e37c8a` |
| 41 | `theorem` | [zkp_certifies_collision_side_by_private_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/zkp-certifies-collision-side-by-private-witness.md) | 437 | `result-track:03aed8124934438545ae2d56b8b5dca772a19a65c5187c64b6fe980ab4ba12c8` |
| 42 | `structure` | [RecoverabilityWithZKPPrimitive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/recoverabilitywithzkpprimitive.md) | 461 | `declaration-track:826955874d0282a5af5c2d8445f10472313b53ac2f8355f19c815ccd6acdeab7` |
| 43 | `def` | [buildPrimitive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TDARecoverabilityZKP.lean/declarations/buildprimitive.md) | 474 | `declaration-track:b5b544a96fbf3ebcb111c8aa2be20cbfac10297c8ec14ddf4be55a1759e5e236` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdc7a1b92d11f46086a3abcd5d68fd7680121dcb5b41105782a4192fd7d1e07e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TDARecoverabilityZKP/Variant44067c0f272541b90a005f146e533cf197c25ca4463e79ba554e026c5de24fbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
