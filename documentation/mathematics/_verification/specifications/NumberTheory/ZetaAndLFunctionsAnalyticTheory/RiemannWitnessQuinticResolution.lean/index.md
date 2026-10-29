# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessQuinticResolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb91ddea537a9c2605efe4b4f8d411ba94a96466",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessQuinticResolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb91ddea537a9c2605efe4b4f8d411ba94a96466`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessQuinticResolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RiemannWitnessQuinticResolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RiemannWitnessFiniteScaleFilterResolution`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessFiniteScaleFilterResolution.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quinticOverlapP0](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapp0.md) | 38 | `declaration-track:baf9a18a2aac0c1b47e1eb3c2a4df63de87211bbdb3bf95aaea34f7c8d32f357` |
| 2 | `def` | [quinticOverlapP2](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapp2.md) | 43 | `declaration-track:d65449b68962ba5f3d5bca37d5900a5ad4776673b28bda0f422d000d4f32c777` |
| 3 | `def` | [quinticOverlapP4](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapp4.md) | 48 | `declaration-track:505a29d3901ee4364263391913547296ecfb596f0e60385218ec2a81636c44de` |
| 4 | `def` | [quinticOverlapProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapprofile.md) | 53 | `declaration-track:64689b78ce059f6db87201c466ba85f7ea313537986e7a5c239d93bf9d9b9dab` |
| 5 | `def` | [quinticOverlapSecondProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapsecondprofile.md) | 58 | `declaration-track:dd79fc14d3581ba4c81b16cd6712c48fa2529ee43e8935456c656223c84ec7d2` |
| 6 | `def` | [quinticOverlapFourthProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapfourthprofile.md) | 63 | `declaration-track:2c2cdc19d535df8d22a10f7d6821a283700fa1f8fed18a5fd4618f7bb3c398db` |
| 7 | `def` | [quinticThreeProfileResponse](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticthreeprofileresponse.md) | 67 | `declaration-track:87ada3a3ba464d7c8bf87dbac8645596ae75d53cbbb0cb8270e75d23fd665df8` |
| 8 | `def` | [quinticBoundaryQuotient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticboundaryquotient.md) | 73 | `declaration-track:44bbc7ac9b412b3429c57529039e4b837dff21e8528aee07ef484055fd5aadf1` |
| 9 | `theorem` | [quinticThreeProfileResponse_eq_factor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticthreeprofileresponse-eq-factor.md) | 79 | `result-track:c65fe8c1b1af6d635aeb542da66bf198c7c511b04e2bfc5c9a208238f08913bc` |
| 10 | `theorem` | [quinticBoundaryQuotient_at_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticboundaryquotient-at-two.md) | 87 | `result-track:26f06901876ce01b441983b8e368a08060f82fc71aa809b519550e918a2ec72b` |
| 11 | `theorem` | [quinticThreeProfileResponse_at_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticthreeprofileresponse-at-two.md) | 94 | `result-track:ba3a12f44d1f5b34962fc4c185b8c9b4e70c013955c37e81939d4d2f999883bf` |
| 12 | `theorem` | [quinticBoundaryQuotient_at_two_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticboundaryquotient-at-two-pos.md) | 102 | `result-track:27cbf5f4026177269a14dc55879b9345e574f44f2fe258b0c56f45e904161509` |
| 13 | `theorem` | [quinticThreeProfileResponse_one_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticthreeprofileresponse-one-zero.md) | 108 | `result-track:5bab32b77d1d9c58e1ec28810e09ec38ab873ef32cb9f49e2a58d3f9aef5f3ea` |
| 14 | `theorem` | [quintic_factor_does_not_supply_midpoint_symmetry](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-factor-does-not-supply-midpoint-symmetry.md) | 117 | `result-track:654eb6a3b09d53e96a702967655dfc0b687f7413580753785b69395cd74c39c4` |
| 15 | `def` | [quinticAcceptedFormalResearchMain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticacceptedformalresearchmain.md) | 125 | `declaration-track:80219a3ef3df3a0010ce0550a0854fd7c9bccbd882c7aa14c0bed7c16eaddb4f` |
| 16 | `def` | [quinticProgramSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticprogramsource.md) | 129 | `declaration-track:628e93b541aa94a0049ce8aacbc2004c88ce00d1d8f9eb0940f9c9acdb59a5a3` |
| 17 | `def` | [quinticOverlapExternalSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticoverlapexternalsource.md) | 140 | `declaration-track:cbe4eaa72b2ecce3a149033f094367cbe2fabd7ccba75e90789839d3de620fa4` |
| 18 | `def` | [quinticThreeProfileExternalSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticthreeprofileexternalsource.md) | 152 | `declaration-track:8e3ee2d9abf3df2b48f06898945cc0e68717c2f8a058d7a1e2128b4547d29d2d` |
| 19 | `def` | [quinticResidualExternalSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticresidualexternalsource.md) | 164 | `declaration-track:878bf257e2d257c2d60aaf70faa0179ba85279476a058b949b6ad5383b267e30` |
| 20 | `def` | [quinticSeparateSymmetrySource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticseparatesymmetrysource.md) | 177 | `declaration-track:c0d136092c8e7f1d9c48de9b75af95d7cedc0496331567b9e2e8fb675ba67a6a` |
| 21 | `def` | [quinticEstimateConsumerSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticestimateconsumersource.md) | 190 | `declaration-track:e304ce053cf1a2729d3d4b3a8250d0ae48c6862a822cae7bf316e576389a397e` |
| 22 | `structure` | [QuinticWitnessResolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticwitnessresolution-source-edition-2.md) | 203 | `declaration-track:d31118e26d4ac266f874933a65bfdb1ca365eabe7a3a5b4d043210b126481994` |
| 23 | `def` | [quinticWitnessResolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticwitnessresolution.md) | 220 | `declaration-track:9620244cd55f0de71816ef41cffc01b003c4a092798648a730ae4260ee621b9f` |
| 24 | `def` | [quinticResolvedNode](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticresolvednode.md) | 237 | `declaration-track:e36386255a35d8f7e1181fb27e52e843c82f00d75455c5b6f7e55983f2d6b950` |
| 25 | `def` | [replaceQuinticNode](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/replacequinticnode.md) | 251 | `declaration-track:6ab8006a34ed4703f88fadecf721474f32c434ecd53e1cb203a8df3b0f15b3c6` |
| 26 | `def` | [isQuinticOutgoing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/isquinticoutgoing.md) | 254 | `declaration-track:e2d207a32452bfbd1678ab0ad5102ca4d05713f912f8ec84eb451749132567bc` |
| 27 | `def` | [quinticNoConnection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticnoconnection.md) | 257 | `declaration-track:e4f7c04923e6ca6c366f5c0bd08772c161dce8ae5d464d707c0c9f19e3f14ad7` |
| 28 | `def` | [quinticResolvedNoRectangleEdge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticresolvednorectangleedge.md) | 267 | `declaration-track:ff8b5b47d324e4d513c21d84628b8dd3e57cf9af8298aa8a55af5b3563e23a0b` |
| 29 | `def` | [quinticResolvedNoEndpointEdge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticresolvednoendpointedge.md) | 272 | `declaration-track:12da4f2492a5d3d96e8de7c495e8d7bc55a73a79861c93a157e565f3abef0ce3` |
| 30 | `def` | [quinticResolvedNoReflectionEdge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticresolvednoreflectionedge.md) | 277 | `declaration-track:637e1d0db2426131f33a05c20f4585a6d5bcc5b79ca86eaa250451ed5c44f53b` |
| 31 | `def` | [quinticRelevantToBoundaryEdge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticrelevanttoboundaryedge.md) | 283 | `declaration-track:6cd1c0d26bbb450098843ecc20fae5ac8b8d57501bc4a36a5733729c1d421536` |
| 32 | `def` | [quinticRelevantToFiniteScaleEdge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quinticrelevanttofinitescaleedge.md) | 294 | `declaration-track:f9d8dfb4ff2ec7590a62a83594f7079c6408ed62de8f9a18cb871211199bea6f` |
| 33 | `def` | [registryWithQuinticResolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/registrywithquinticresolution.md) | 305 | `declaration-track:0417abe277519d5369b1706315f6dd11692e409fc1adf5bef3bc2111cb9185d4` |
| 34 | `theorem` | [quintic_source_is_resolved](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-source-is-resolved.md) | 316 | `result-track:22c4868695b1e431fe1c6d072b677905ccd8ba8914bf5a39f0bf2263a0418659` |
| 35 | `theorem` | [quintic_source_is_external](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-source-is-external.md) | 319 | `result-track:9e3d5b6fd266b2f4a317110858bab67ed008c672df31597f3b6bcb191342d19b` |
| 36 | `theorem` | [quintic_symmetry_not_supplied](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-symmetry-not-supplied.md) | 322 | `result-track:af63c115698907cc162d368728abf12262ef547712ffe7247bcebc2e69f4fccc` |
| 37 | `theorem` | [quintic_arithmetic_tail_not_constructed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-arithmetic-tail-not-constructed.md) | 325 | `result-track:85aab7e34eb274a27dc62b63a86e749c66cc054329b905d8c628ac92322dbef1` |
| 38 | `theorem` | [quintic_rh_bridge_not_discharged](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-rh-bridge-not-discharged.md) | 328 | `result-track:4e66f238bc3ede2b4afb956f0cfad9aa5a4cc614e4018dfbcd027e4e93bc2404` |
| 39 | `theorem` | [quintic_edges_remain_nontraversable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-edges-remain-nontraversable.md) | 331 | `result-track:7f64e7792936def113cbc517e07ecc6afcd2eeda2d3721461c943238001f4d4b` |
| 40 | `theorem` | [quintic_identifier_present](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/quintic-identifier-present.md) | 339 | `result-track:0d030657bf58db38450ce9d5fea0b53b2dfe97cb5b2a41bca82f613da43eeb4e` |
| 41 | `theorem` | [historical_label_sources_resolved](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RiemannWitnessQuinticResolution.lean/declarations/historical-label-sources-resolved.md) | 346 | `result-track:e97285e0c98c7af99a8fb6bcc0ef9a6d8c40eeca0ac2edf7d3ddd62888d20ae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6012a4780b4f7b3a846447dca5c2dc0a9417360cd8f1afb2af4666ea936232a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessQuinticResolution.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/RiemannWitnessQuinticResolution.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
