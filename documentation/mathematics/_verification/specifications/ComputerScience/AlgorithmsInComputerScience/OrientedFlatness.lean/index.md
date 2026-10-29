# Verification target: Oriented Flatness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1de8706e4e226e18c9d5f10f0b0845f6e9973c72",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1de8706e4e226e18c9d5f10f0b0845f6e9973c72`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.KakeyaTubeCover` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KakeyaTubeCoverCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/kakeyatubecovercertificate-certifiedformajorproof.md) | 31 | `declaration-track:ebbbe31110e1b80a8eead986ef06893810d4d2a91bc338dbfe1eba5dd49f5cdd` |
| 2 | `inductive` | [DyadicBoundaryKind](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/dyadicboundarykind.md) | 37 | `declaration-track:bfd3ea824b65915bb7c5227f1bd30c2cdabebca31da15e83516f5e834ae905d2` |
| 3 | `structure` | [DyadicScaleDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/dyadicscaledescriptor.md) | 47 | `declaration-track:a0b2cc3f2852a597b678d495576461c1e7355fe406da2d50540fdbb9288576b2` |
| 4 | `structure` | [TransportCoefficientDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/transportcoefficientdescriptor.md) | 61 | `declaration-track:44bce84884b4cf9bea8633749507b868df2f190ae5c51add9e9d7a83d1e5c134` |
| 5 | `structure` | [CycleOrientationDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/cycleorientationdescriptor.md) | 69 | `declaration-track:b37f3827119f007b9f74be705399a7c232f890c179dbd163129636df43a89149` |
| 6 | `structure` | [NormalizedTransportDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/normalizedtransportdescriptor.md) | 82 | `declaration-track:baf9b7a9caddaf958faa33a95e6d1ffa0de571c672be41ad8087e1259efbfe50` |
| 7 | `structure` | [MultiscaleNormalizationCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/multiscalenormalizationcertificate.md) | 90 | `declaration-track:4de40260b584ce1ce744a335181fb9252993f68867ad4f62362fba658b268910` |
| 8 | `structure` | [TubeOrientationCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/tubeorientationcertificate.md) | 101 | `declaration-track:73973e30808b8fc921f5a562acca0a1b6caec7c74203b78b29fb46a5dd603dd3` |
| 9 | `structure` | [PlankGluingCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/plankgluingcertificate.md) | 112 | `declaration-track:5d75e2aa80077d6a2da491b65d28c61fb2fcb322310c7f62c07532663cf55d59` |
| 10 | `def` | [PlankGluingCertificate.plankAngleCompatibility](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/plankgluingcertificate-plankanglecompatibility.md) | 129 | `declaration-track:c0a1a89595d23fe979b6a5f1fb53c9a6410dc91aa3f0594a45828ddad85b8b12` |
| 11 | `def` | [PlankGluingCertificate.plankUnionVolumeLowerBound](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/plankgluingcertificate-plankunionvolumelowerbound.md) | 141 | `declaration-track:32fa57e7f2476565b5f7a94d8b6cfcf243350b1c1689dfb36055ffbaeaf01618` |
| 12 | `structure` | [HomologicalRelaxationCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/homologicalrelaxationcertificate.md) | 146 | `declaration-track:52a0f6f24cbb864b2159df8beb2de289b29b3866abc4cbd29528fc9144ca9641` |
| 13 | `structure` | [OrientedFlatnessCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesscertificate.md) | 163 | `declaration-track:9fed3a4006e490b38ef264391a599e401b9a1bc02f0b349126d6d538508d31da` |
| 14 | `def` | [OrientedFlatnessCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesscertificate-certifiedformajorproof.md) | 201 | `declaration-track:3549cb430b183e231d44f4b211d0a06ec25fa0903b4d8865422723990e4bcbda` |
| 15 | `theorem` | [OrientedFlatnessCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesscertificate-certifiedformajorproof-of-fields.md) | 221 | `result-track:4a5d3444488d4e67c6407122e584c0f225f5af4f4e095fcba46e9f4f875ee878` |
| 16 | `def` | [OrientedFlatnessCertificate.mitigatedTransport](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesscertificate-mitigatedtransport.md) | 249 | `declaration-track:9905fd3ad821fcb7e77e274a911b954de217714b77333e45cc829b970b2a3ca1` |
| 17 | `structure` | [KakeyaTubeCoverDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/kakeyatubecoverdescriptor.md) | 259 | `declaration-track:ddb9c2a414821cc9a65020dbfa652b34ef17bc24ae1f93e32b918b55ad5ed524` |
| 18 | `structure` | [PrismaticSheafSurfaceDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/prismaticsheafsurfacedescriptor.md) | 271 | `declaration-track:184058893d51d73b976b94b32a270b9d90e7b5bdb7965a96b0f95addc6f3ff28` |
| 19 | `structure` | [OrientedFlatnessSheafCompatibility](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesssheafcompatibility.md) | 277 | `declaration-track:69443f42f5460c2c76c68f134d0f9644bf1164c3fd0f16a3728433e512ca378f` |
| 20 | `def` | [OrientedFlatnessSheafCompatibility.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesssheafcompatibility-certifiedformajorproof.md) | 290 | `declaration-track:702e7a0140ccca8493baa39e36cb2c63769826387ec5f7a3814c420e0b33ce7c` |
| 21 | `theorem` | [OrientedFlatnessSheafCompatibility.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/OrientedFlatness.lean/declarations/orientedflatnesssheafcompatibility-certifiedformajorproof-of-fields.md) | 297 | `result-track:bc2ffd9b434880a54bfce6c8d2169da1bac7b50b6a7cfdaf24f6b7f268a14024` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd5be20a5d1c42c945fdd458b21b90091df02cabe6f37aaa939212147d5fdfe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant6db1ed73aab1e5d1d1f3d86acab27c620094d2d15032a47d2d9f789e51619d3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
