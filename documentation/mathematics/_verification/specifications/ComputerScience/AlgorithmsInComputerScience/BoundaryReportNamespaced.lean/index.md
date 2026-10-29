# Verification target: Boundary Report Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb6b431e42e3990942b5024ff940edcfa7474ea6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f426f756e646172795265706f72742e6c65616e/Variant071bbcf02aee677a0747ed5b15452d90d3deaab759476deb2b866ff0be9d4b5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb6b431e42e3990942b5024ff940edcfa7474ea6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f426f756e646172795265706f72742e6c65616e/Variant071bbcf02aee677a0747ed5b15452d90d3deaab759476deb2b866ff0be9d4b5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f426f756e646172795265706f72742e6c65616e/Variant071bbcf02aee677a0747ed5b15452d90d3deaab759476deb2b866ff0be9d4b5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f4e6f6e636c61696d2e6c65616e` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f526573696475652e6c65616e` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundaryReport](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/boundaryreport.md) | 19 | `declaration-track:465ec72f2fff6f2b3afa30ea18717b45773d86030a66216892151be2fd9b7a83` |
| 2 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/context.md) | 23 | `declaration-track:2bc3f806e6db727d2f75d88dfdfc9dc5cbd8b2603424536e84c5a99a4a626cf5` |
| 3 | `def` | [finalClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/finalclaim.md) | 27 | `declaration-track:9b3e721d0ee32a356d50b2217ed25e7303e503aa0b45d057360500a82f9107aa` |
| 4 | `def` | [finalWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/finalwitness.md) | 30 | `declaration-track:e1096a6d295bc9251116026a480d6b562dbd1e42edaab7326faa983c0fcef77f` |
| 5 | `theorem` | [finalWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/finalwitness-hasresidue.md) | 33 | `result-track:e6f3709e59af6fe06f20dbbc1f7518cc911c2f5ae1a6c5196b3584308add27b7` |
| 6 | `inductive` | [SrcLibBoundaryKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibboundarykind.md) | 37 | `declaration-track:f75d078d1fa5bbd7ba20261fdacdd15c2b971ef8438899154169dee12013c71a` |
| 7 | `inductive` | [SrcLibTargetShape](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibtargetshape.md) | 46 | `declaration-track:a85deb7fa1b27eca30af86bfbf05dc3e248e423f5262f1dac6f79cb25e8a7107` |
| 8 | `inductive` | [SrcLibProofAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibproofauthority.md) | 54 | `declaration-track:83a6a2ca141be391ae3dc45dea970499563bbd69792a3efa544038eb9ebe2764` |
| 9 | `inductive` | [SrcLibBridgeStrength](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibbridgestrength.md) | 62 | `declaration-track:ca377dce0d214556302c96afd0a0a00ef1fdd7c94859795ea9e2814346059aa8` |
| 10 | `inductive` | [SrcLibHypothesisMatch](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibhypothesismatch.md) | 69 | `declaration-track:03c09cd2aa19d7c610668aa680772d3c6984058c6e510e364d68da4fc81bee31` |
| 11 | `inductive` | [SrcLibAuthorityTransportPolicy](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibauthoritytransportpolicy.md) | 76 | `declaration-track:ca5e1c38f60d32d4e073ec535199ca7553ae2314d87ad2812c3d6f79c15c29f9` |
| 12 | `structure` | [SrcLibBoundaryCrossingRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibboundarycrossingrecord.md) | 83 | `declaration-track:be60dd61cce941a3166c1826a94a419c087cbe5400879ded2c0a4ab10fa2a874` |
| 13 | `def` | [srcLibProofAuthorityIsSufficient](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibproofauthorityissufficient.md) | 92 | `declaration-track:fba35f841c8756b0b4050aef31b4fb77a3b59c31a92a2c52072240929c64f1fc` |
| 14 | `def` | [srcLibTargetShapeIsPromotable](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibtargetshapeispromotable.md) | 99 | `declaration-track:52127717fd305ad4df8c9ab6ee3d807d856210ad3f4a75d65ee382eb07506f70` |
| 15 | `def` | [srcLibTargetShapeMustRefusePromotion](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibtargetshapemustrefusepromotion.md) | 106 | `declaration-track:d0a42015a5f2dc0af0c7283b005582bb6f8e70c0fbf21f4138ca37fdfb9841cb` |
| 16 | `def` | [srcLibHypothesisMatchIsExact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibhypothesismatchisexact.md) | 113 | `declaration-track:adfbcab149efd04afaee74e85671251dc2a3e926b9fa38ddd9544221d4390788` |
| 17 | `def` | [srcLibMayPromoteOriginalTarget](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibmaypromoteoriginaltarget.md) | 119 | `declaration-track:02a6b3ebccb22c038c20abe177245f7a82fd328181d4f3bd4961edd1842d1af9` |
| 18 | `def` | [srcLibMustRefusePromotion](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibmustrefusepromotion.md) | 126 | `declaration-track:3e43f0b242f9709319732da952be4d94eb6e11535cc70ebba0943ee6997e8b99` |
| 19 | `def` | [srcLibMayTransportAuthorityAcrossBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclibmaytransportauthorityacrossbridge.md) | 132 | `declaration-track:38d853f99ea141df597efc71fbedcdd8c0e705cc56af167fa2e5ef508f1c7cb9` |
| 20 | `theorem` | [srcLib_finiteWitnessAuthority_not_sufficient](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclib-finitewitnessauthority-not-sufficient.md) | 138 | `result-track:e8ae376067323c8f1eaa78b63433c4ce11cc1551f78dbbe89e50a7f1fc1358a2` |
| 21 | `theorem` | [srcLib_residueAuthority_not_sufficient](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclib-residueauthority-not-sufficient.md) | 143 | `result-track:eb5a63d1687fe58a3f886efb80aa3a50c4ec2e50cdc4f4d7042a05b082151cf9` |
| 22 | `theorem` | [srcLib_criterionShape_must_refuse_promotion](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclib-criterionshape-must-refuse-promotion.md) | 147 | `result-track:d8ac0a02d56658a4596f0f0be23be1746ec2f576d436511ff86f4d4b486a28d7` |
| 23 | `theorem` | [srcLib_bridgeTransport_needs_limitClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclib-bridgetransport-needs-limitclosure.md) | 151 | `result-track:e5729a599b3dcc643982200d211519bd56888cc2d612e6edf4e04f98c8318ecc` |
| 24 | `theorem` | [srcLib_exactLeanProofWithLimitClosure_can_promote](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundaryReportNamespaced.lean/declarations/srclib-exactleanproofwithlimitclosure-can-promote.md) | 157 | `result-track:68a64b8130a8a0e76531cd78cbcf176d14698812658567d3c6f7b47255e41b48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d4e27bbaf96b5ac7e65c13af5c3b16a5bec24b791c5d716a67d23013dd7aa09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f426f756e646172795265706f72742e6c65616e/Variant071bbcf02aee677a0747ed5b15452d90d3deaab759476deb2b866ff0be9d4b5d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f426f756e646172795265706f72742e6c65616e/Variant071bbcf02aee677a0747ed5b15452d90d3deaab759476deb2b866ff0be9d4b5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
