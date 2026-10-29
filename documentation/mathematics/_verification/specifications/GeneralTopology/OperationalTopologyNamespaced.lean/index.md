# Verification target: Operational Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dd39b7f68a7453744cea1f8ead9aa8cac162d1d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dd39b7f68a7453744cea1f8ead9aa8cac162d1d`.

Source path: `GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Probe` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OperationalRelation](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationalrelation.md) | 23 | `declaration-track:5e4f74fe5691cec569871a66d19f53bcc7773650c923310ce27529a1626ea70c` |
| 2 | `def` | [closure](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/closure.md) | 33 | `declaration-track:ccbcacb5a75039db82cc39e353887d4f32e513728a4f51901947a0f6a3e4c38e` |
| 3 | `theorem` | [mem_closure](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/mem-closure.md) | 36 | `result-track:87f2e7890abca16986975c15c332282a82fbca771d69ffb37672d478a56a5837` |
| 4 | `theorem` | [closure_empty](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/closure-empty.md) | 39 | `result-track:03d29417c111aec5b29c43df006fb7f6862eecf212517e3faea4812c07eb0368` |
| 5 | `theorem` | [subset_closure](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/subset-closure.md) | 44 | `result-track:2ff2b9c2b1e51e0bd7ad4391f505f0f0ddc1b5e73ca5398d953a76ec9ff47036` |
| 6 | `theorem` | [closure_union](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/closure-union.md) | 49 | `result-track:71658d0a5667c1cdc0c471d0f9df64c4cfdfe0b9649618ef5dfaef8a2083c479` |
| 7 | `theorem` | [closure_idem](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/closure-idem.md) | 63 | `result-track:68f26d757fd8e7d6b9353f888d08a6abb607610a143f1b24b15fda783b49aa4d` |
| 8 | `structure` | [KuratowskiCertificate](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/kuratowskicertificate-source-edition-2.md) | 71 | `declaration-track:c22ac24e80baa9c1501af9e1d3e1fcb5589f4abe580c0c375c792e4d3f979aee` |
| 9 | `theorem` | [kuratowskiCertificate](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/kuratowskicertificate.md) | 78 | `result-track:1284f40ba1b9da7c6e2c588b2bd6079a4a114fe35ca37e5e2c434d73755f73b8` |
| 10 | `def` | [operationalTopology](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationaltopology.md) | 85 | `declaration-track:94344f9e0a8f1a7d20b6e9e2173befd927e8d7de4531566969a06e3c41c7e603` |
| 11 | `theorem` | [isClosed_iff_upward](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/isclosed-iff-upward.md) | 99 | `result-track:3f4626a2943ddcf554a782b35df54ec010bc4a032e0be8a448536b498c33c366` |
| 12 | `theorem` | [isClosed_closure](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/isclosed-closure.md) | 116 | `result-track:2f238d595608e7d134b04606286af4e0288fb5b653015c9f54a6b3e3be216e90` |
| 13 | `theorem` | [topological_closure_eq](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/topological-closure-eq.md) | 124 | `result-track:2fdf3f71354a4ba9ff222b35705f7794f4ab5071c21ae8ffec4dd02cf49959cc` |
| 14 | `def` | [interior](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/interior.md) | 141 | `declaration-track:14f95cc5db00d79d01ede3c21efc94c810dea0b7222875f69e3a23bd01dd12a2` |
| 15 | `def` | [boundary](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/boundary.md) | 145 | `declaration-track:d0aee2f5f3aab2d1813a9d08b70df14de098bdfebbb781919814c6bb76d41d53` |
| 16 | `def` | [exitBoundary](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/exitboundary.md) | 149 | `declaration-track:5b419d33a8c33846e8a18f06a892365639e1577d9874012f1d606f96f4296d71` |
| 17 | `def` | [entryBoundary](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/entryboundary.md) | 153 | `declaration-track:2ba5ec5aec638739645027a7a01f4b64a5edab4a25659ec9e718de0bf7a8e649` |
| 18 | `def` | [lowerSet](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/lowerset.md) | 157 | `declaration-track:6fc9fdac6946babbbefd8bd0785816f5c1b5a12ccf647038f009beb0bc88368f` |
| 19 | `theorem` | [mem_lowerSet](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/mem-lowerset.md) | 159 | `result-track:d38ad523a482e3b7ef5e1cda0cd66cfb53279169a992a0a3ef684d03f1aedac4` |
| 20 | `theorem` | [isOpen_lowerSet](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/isopen-lowerset.md) | 161 | `result-track:5c88ebbb26a693bc902cfde4363cb4955d3b418d33c743b69bfc92f5092bc04a` |
| 21 | `theorem` | [isOpen_sInter](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/isopen-sinter.md) | 167 | `result-track:92be6b3a3da347c301aca2259d0b7a6939a65fc27bfc2765733b4c27df8c6a47` |
| 22 | `def` | [MonotoneTo](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/monotoneto.md) | 176 | `declaration-track:ec74f865b830a9ff35acd9c0f6997d04c56af41e4ff8b1554689e58908b681d3` |
| 23 | `theorem` | [continuous_of_monotone](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/continuous-of-monotone.md) | 180 | `result-track:e87d8f5e3b73204962d591ce05c94cdce51926adb1497a71c9a95fe04460d4e1` |
| 24 | `theorem` | [monotone_of_continuous](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/monotone-of-continuous.md) | 192 | `result-track:f19eba1a98085c79b2d6a3a7b1f471efb15a37ef5e16a780b776d716fa086bb4` |
| 25 | `theorem` | [continuous_iff_monotone](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/continuous-iff-monotone.md) | 208 | `result-track:8a58ca959a2f2fc1cb6220aac4443cb05f5a9c750b9552c0b93a19b6610a8bad` |
| 26 | `def` | [Mutual](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/mutual.md) | 217 | `declaration-track:1e415942aa6291bc6398d07aec4712ff3f20c74f5fd54aea4cc98b56ec4a341a` |
| 27 | `def` | [mutualSetoid](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/mutualsetoid.md) | 220 | `declaration-track:aa57c34f422f27bdf95365538fd9cefdf9e96203d23de19b07356fa7c49f020b` |
| 28 | `abbrev` | [T0Carrier](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/t0carrier.md) | 229 | `declaration-track:62bcc8a2191ad6847024916126c0c55205d8925f433972bb9e13b751fb99e815` |
| 29 | `inductive` | [OperationalDependencyKind](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationaldependencykind.md) | 233 | `declaration-track:801d69b0e450a010699797163eb32b824f27392dda0325e28682e8cbb107ebe6` |
| 30 | `structure` | [OperationalDependencyEdge](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationaldependencyedge.md) | 254 | `declaration-track:c68bbb8cd459040c457c1affaa54fb677b3fdf47d5bbdf247ced3d50ffb4c2e2` |
| 31 | `structure` | [OperationalDependencyRelationRecord](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationaldependencyrelationrecord.md) | 264 | `declaration-track:9cca7bf3e923594d86e87d189f50c003f6313be13093754ec1cd08bc16ef2f7b` |
| 32 | `structure` | [OperationalClosureRecord](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationalclosurerecord.md) | 272 | `declaration-track:4d2a099bcae303e6b6cee3030a7331efd6a84d04116a7cea572eab0ea56d2659` |
| 33 | `inductive` | [SpecializationOrientation](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/specializationorientation.md) | 280 | `declaration-track:bc4f372cd0c86e4f219d537e4c5cde0ad62fc0ae1e020c8982e2e96c379d38f6` |
| 34 | `structure` | [TopologyResourceBounds](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/topologyresourcebounds.md) | 285 | `declaration-track:d7ffea6fb33b61788e0dee03d911b71b5ab33a9ef1a6e0d76fc6a59f8a2f7931` |
| 35 | `structure` | [OperationalTopologyRecord](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationaltopologyrecord.md) | 290 | `declaration-track:eee0f58b32be98a9933a364bcc99a21912d69015ed7038cccb2851a966188756` |
| 36 | `structure` | [ClassicalTopologyCertificate](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/classicaltopologycertificate.md) | 300 | `declaration-track:aa6695ed392e1568319bcdc6b4149557e31813c1f7c86ed50a0858bad72b1a3b` |
| 37 | `structure` | [OperationalBoundaryRecord](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationalboundaryrecord.md) | 316 | `declaration-track:0606c461dda2a18b6ed56496091a8f347d7b14f83cadfd9cda093fe1e3934c71` |
| 38 | `structure` | [DirectedBoundaryRecord](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/directedboundaryrecord.md) | 324 | `declaration-track:a6ae8e290621d2544f07528fbe7803c2a776156a3bc05857c59504e1db1708f4` |
| 39 | `inductive` | [ResidualBlockingReason](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/residualblockingreason.md) | 331 | `declaration-track:cd2afdba75ec0047a3e2781dda5207578d242b16b3fa4cbd072ed60404323578` |
| 40 | `structure` | [ResidualFrontierEdge](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/residualfrontieredge.md) | 344 | `declaration-track:9a1c3a44de638a1cb6ad9c375904cafc53b3fb0ff5f8fa6ac8bc7b4d8e589d34` |
| 41 | `structure` | [ResidualFrontierRecord](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/residualfrontierrecord.md) | 350 | `declaration-track:09dcbe33951fa99627529c77882e7a1528cb296554c523475d3a8620fb9d92f2` |
| 42 | `inductive` | [TopologyConstructionKind](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/topologyconstructionkind.md) | 355 | `declaration-track:ec419052abfd6674c065c9001c13eea0cfb5d1688a24d4f9733b96d48f8bdc86` |
| 43 | `structure` | [OperationalTopologyConstruction](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationaltopologyconstruction.md) | 363 | `declaration-track:ce0b49af598d1b3c4622c45882c451e378f87d83ac9dd6293e5aa0d3a0ef2d2d` |
| 44 | `inductive` | [HomeomorphismStatus](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/homeomorphismstatus.md) | 370 | `declaration-track:dd7dc7c06f17cb8f23544644f20ebd32f3d5923f27ca13cc02cf1fedceef65b0` |
| 45 | `structure` | [OperationalContinuityCertificate](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/operationalcontinuitycertificate.md) | 377 | `declaration-track:90b9a81435c0703c812922671daa92ddcce2294959e23923c3b29d0b743f1462` |
| 46 | `inductive` | [TheoremHypothesisStatus](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/theoremhypothesisstatus.md) | 387 | `declaration-track:1dcec4adb68b1ba0ad65846703d9a295e6051ae968954baf0ae3242a73951d2c` |
| 47 | `structure` | [TheoremHypothesisWitness](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/theoremhypothesiswitness.md) | 394 | `declaration-track:53fe48b741978ccc438ec34f966089c76cb2de5154185c4fecbd79b8edca5845` |
| 48 | `structure` | [TopologicalTheoremApplicabilityCertificate](../../../../GeneralTopology/OperationalTopologyNamespaced.lean/declarations/topologicaltheoremapplicabilitycertificate.md) | 399 | `declaration-track:9a433ed4db3960a02b3dc07847641af0e6edb83e5e99f3043864a17d9f34c444` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81799c57a26cce245a9a9172c62c634cac1d006c5a75d90edd1178d68c3e9774 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
