# Verification target: Architecture Tests

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3e0d42dba1d6fcc16c2d8089c3000b5ad3acebf",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ArchitectureTests.lean/index.md) · [Full source](../../../../Combinatorics/ArchitectureTests.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3e0d42dba1d6fcc16c2d8089c3000b5ad3acebf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.CertifiedUpgrade` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Runtime.RingState` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Runtime.ReducerIR` — import line 3; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObservableAdapter` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Fin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairSystem](../../../../Combinatorics/ArchitectureTests.lean/declarations/pairsystem.md) | 22 | `declaration-track:7e782b75889f8769fb4c520532cd86549c45d08ac471d74246593ea7a57539d2` |
| 2 | `def` | [bitSystem](../../../../Combinatorics/ArchitectureTests.lean/declarations/bitsystem.md) | 31 | `declaration-track:7586a1097b3a0509a586d262004d0aeffde945a9f4b1ea70fceb91217692a644` |
| 3 | `def` | [firstBitFactor](../../../../Combinatorics/ArchitectureTests.lean/declarations/firstbitfactor.md) | 40 | `declaration-track:16875b7b9c633530d71bcde02afea37c1e35c43809ab0e6a015d390ac75b121d` |
| 4 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-4.md) | 49 | `declaration-track:220a67d09570c612323a4fc7c70860c81a94b0cb9a2f35c453cadf7871acf22e` |
| 5 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-20.md) | 56 | `declaration-track:99ee3b362d00d88ab24ee761ab3f49050dc5b94488484249f393a9f08c973ef3` |
| 6 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-14.md) | 61 | `declaration-track:6eb15370e7203d2c7981c79be1d4ce6f4dcceac54384058bbcae3693c82cc8d5` |
| 7 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-26.md) | 66 | `declaration-track:baad95f86eaee6b3185788b14463fab6809b6587a4e52e816e4d5fc35ecde3ae` |
| 8 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-24.md) | 73 | `declaration-track:b087d86c37465990774385aa47c95c7ee6f075f7ff28de62fb8f5441198542a4` |
| 9 | `def` | [chainDependencies](../../../../Combinatorics/ArchitectureTests.lean/declarations/chaindependencies.md) | 83 | `declaration-track:6a28777d6d98e45b5af2fa96dc6cc20d2543016a9ed08894c131d68607c959e6` |
| 10 | `def` | [chainGraph](../../../../Combinatorics/ArchitectureTests.lean/declarations/chaingraph.md) | 89 | `declaration-track:e92b3309082e1bbd9611d956ecb46fbb03cb56f86ef4a81cc239fd6cf67e990f` |
| 11 | `def` | [project0](../../../../Combinatorics/ArchitectureTests.lean/declarations/project0.md) | 95 | `declaration-track:303108b35da97ddfc4c86cc06f973d3417a479ff7c0f527d999b163c4c5ac810` |
| 12 | `def` | [project1](../../../../Combinatorics/ArchitectureTests.lean/declarations/project1.md) | 97 | `declaration-track:4b0d38ae5ee2879b5f6decbca68de6d3ab576b685fff87d2dc06e5a76738d792` |
| 13 | `def` | [project2](../../../../Combinatorics/ArchitectureTests.lean/declarations/project2.md) | 99 | `declaration-track:e94af0990169198924ef74a37861e3629da49478848302815d4dff15643d99e3` |
| 14 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-15.md) | 101 | `declaration-track:741af7bfbb5e3bc08433db639770ae76f4e94cd97f925cc6b0af936a3f1a258e` |
| 15 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-38.md) | 103 | `declaration-track:fc4f8d727407a76ad707dae86221b2dbc28b380739b620bcec01e51c0908eb2f` |
| 16 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-13.md) | 105 | `declaration-track:59138f4e31c25099f691f6bde710b38704fe119f75be01a2d26f8a8b6a269711` |
| 17 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-5.md) | 107 | `declaration-track:2c441a140c5388008683e187a2b9a7287df2db789af2882c6afce8e4cebef2c2` |
| 18 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-16.md) | 109 | `declaration-track:813a71b5ea968a45aa28d041ef4470845c9af0f1533b139523c849baabc50ee9` |
| 19 | `def` | [topTenant](../../../../Combinatorics/ArchitectureTests.lean/declarations/toptenant.md) | 116 | `declaration-track:c4f87048f3ba81f103a78e0f4e92c5db4c2e99468fd553d19ebe8222ff20f5da` |
| 20 | `def` | [indexEnvironment](../../../../Combinatorics/ArchitectureTests.lean/declarations/indexenvironment.md) | 120 | `declaration-track:83db2e728bdcd58123013492d8cacfb8e113959f1c9e9e7fb0ddf22b4c33dca2` |
| 21 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-23.md) | 123 | `declaration-track:a7584612bbe64f5b824c2c7999817abe984adb9b9f44680b540a06391c37a5af` |
| 22 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-3.md) | 125 | `declaration-track:1b4e4349a28647a03a11fd41872be9fdb8fdcd8d3be24692041fe11a664c0625` |
| 23 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-29.md) | 127 | `declaration-track:c639eef3d1b2c4d86c04a95bf9db6f3d77624427393450bd33fd55325315ff5f` |
| 24 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-21.md) | 129 | `declaration-track:9a1569832d76b23206b43f8fbd6c164a2ddffd164eb59aa8054d6808d5b8b7a1` |
| 25 | `def` | [oldChainNode](../../../../Combinatorics/ArchitectureTests.lean/declarations/oldchainnode.md) | 135 | `declaration-track:1af7632e6e51cf26e6e75114f74ebbb3252b1c0bc228a1e8995ee9c61a5a7d6d` |
| 26 | `def` | [newChainNode](../../../../Combinatorics/ArchitectureTests.lean/declarations/newchainnode.md) | 143 | `declaration-track:3ddc60ee931bba0f9f074eb3a989d3519e4419f68924a5164488ab18291b9d29` |
| 27 | `abbrev` | [oldChainWorkspace](../../../../Combinatorics/ArchitectureTests.lean/declarations/oldchainworkspace.md) | 151 | `declaration-track:50e3a04e30abff9f1390797688963f6b08079192fe6a5d4c596a1f2f721856df` |
| 28 | `abbrev` | [newChainWorkspace](../../../../Combinatorics/ArchitectureTests.lean/declarations/newchainworkspace.md) | 155 | `declaration-track:b8752c437684d96552da0bd8c15f89dd942148f00e5fc56a4eaa8d9d82dd1972` |
| 29 | `def` | [incrementUpgrade](../../../../Combinatorics/ArchitectureTests.lean/declarations/incrementupgrade.md) | 160 | `declaration-track:c507d46ed6da14a97838d03ffac9c5170f35b860c07d596c3c13bcaedf0e31f5` |
| 30 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-7.md) | 165 | `declaration-track:37e570abd4e4dbaaf47f805055e92c93b0d08972487b84e6fae5ee204af4b4d2` |
| 31 | `def` | [chainArtifactMigration](../../../../Combinatorics/ArchitectureTests.lean/declarations/chainartifactmigration.md) | 171 | `declaration-track:3c7edefb0736bf47a723904215207644f0356ccbc59ff667883e7cdcc02286d2` |
| 32 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-17.md) | 177 | `declaration-track:88c67b9504c08d80e9476f7ef19ffd26f2e904291ac3428da482c7de8473f430` |
| 33 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-37.md) | 187 | `declaration-track:f811d3be52a6fb0f3ce76d93c25d894f54bb7a1d72abac8796fed8114b10ec60` |
| 34 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-30.md) | 192 | `declaration-track:cd974e85a4e17e30ef9222aa626104a925e8b26e9bb3f47a2ba2e820cdf85911` |
| 35 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-8.md) | 197 | `declaration-track:3fc2e6768e64eb2bf673fc180e6f08f668f7004a16155d57daca6f74ef1a7299` |
| 36 | `def` | [publicMiddleChange](../../../../Combinatorics/ArchitectureTests.lean/declarations/publicmiddlechange.md) | 208 | `declaration-track:e2cb975927bdb05f17d64303b18607c250cedc8f9d5dad938ccdeeef5b776475` |
| 37 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-6.md) | 213 | `declaration-track:300dade2b8d37499af3f033ec87ab98321cafdd38787cc4f92ac885c2c9cbf38` |
| 38 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-10.md) | 219 | `declaration-track:4707caa9703373732526640c178bed3ea9025e5f3eedea4ea44a83a4d8187014` |
| 39 | `def` | [bottomTenant](../../../../Combinatorics/ArchitectureTests.lean/declarations/bottomtenant.md) | 223 | `declaration-track:90673e290521ed5b8fd276d3b5fa9013ef3d324af59348615e6c068fe1bffe1f` |
| 40 | `def` | [topImplementationChange](../../../../Combinatorics/ArchitectureTests.lean/declarations/topimplementationchange.md) | 226 | `declaration-track:3dd6bfc90471453294b9a4a1d66347fc22764d64763bf5f1b54317fbecfb05e6` |
| 41 | `def` | [certifiedIncrementUpgrade](../../../../Combinatorics/ArchitectureTests.lean/declarations/certifiedincrementupgrade.md) | 232 | `declaration-track:1e6d60a1a7585697e703f4a580321c5fc5068b307e565d24f72bbd0808c61511` |
| 42 | `def` | [certifiedIncrementResult](../../../../Combinatorics/ArchitectureTests.lean/declarations/certifiedincrementresult.md) | 239 | `declaration-track:412a8454dfa4e2d9ba7b1b7736bdc010dd9f54a28051b02bfe48f1fc7661d01a` |
| 43 | `def` | [chainRootSystemCapability](../../../../Combinatorics/ArchitectureTests.lean/declarations/chainrootsystemcapability.md) | 246 | `declaration-track:33866fc9f5dc23f34c174f8f04501ecc2c024be0f0694d0132b57b473d750057` |
| 44 | `def` | [chainRootSystemIsoCapability](../../../../Combinatorics/ArchitectureTests.lean/declarations/chainrootsystemisocapability.md) | 252 | `declaration-track:f086def2dd9569acc5bfc84e9a5b6252c76f37bb77e52ed18206d682ad0db60d` |
| 45 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-18.md) | 258 | `declaration-track:8b379b6b666b7a453eff289c9fc8349e1de29ac09389ba2e147ffc9b6a2ecd8b` |
| 46 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-33.md) | 267 | `declaration-track:e57981c098daf3b04572b905c4726ee39bbed62efaf276bb1057cda51fe36635` |
| 47 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-19.md) | 275 | `declaration-track:8ce43fb1ad9a8727f02a9c2b8e4fb0d0e8f43162ef9671160e31d2e182be274c` |
| 48 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example.md) | 280 | `declaration-track:06cc1e99024500945b2e0e1a376fef6f3769e3d90200afdaf22ef5ad18b5838f` |
| 49 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-32.md) | 286 | `declaration-track:e121f779d919af96c88150ba5d788c5cc840c3de8788f25aa5cf0754f9c101a9` |
| 50 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-22.md) | 291 | `declaration-track:9f9c113142777114f65e6a94f2f6e3967b7e9d55542bfc609d2fce9467740dc1` |
| 51 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-11.md) | 298 | `declaration-track:4c125215153e567998b67ce1ce96e90ae3e620a1f8fdb10290d5128561040a65` |
| 52 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-35.md) | 301 | `declaration-track:ef13128f5bad067caaac6586676868e5b8fb340d3be910e531b0ca20f6af2a6f` |
| 53 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-36.md) | 305 | `declaration-track:f7c875a2300d6b6b59963490ba5bdcc6cb0af9b0e82f80a383cdf142d773eb3a` |
| 54 | `def` | [emptyNatRing](../../../../Combinatorics/ArchitectureTests.lean/declarations/emptynatring.md) | 316 | `declaration-track:309e3505436a98d8594e2749ea811466968980fd4701497c6ff28455d8377246` |
| 55 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-34.md) | 320 | `declaration-track:ea63519248a149dc36adbda3a9e234d3fedf2fa503c1425fdb727b2d4a956f88` |
| 56 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-12.md) | 322 | `declaration-track:4ef1aee273bff944b06c254b91dbec1cd4135b2a563bce71fcb6e9f849ae3840` |
| 57 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-2.md) | 325 | `declaration-track:0944aa7af61c26a01808ce7b66c4c72926798b002e6c0e21cddf3764a90d207e` |
| 58 | `def` | [moduloThreeReducer](../../../../Combinatorics/ArchitectureTests.lean/declarations/modulothreereducer.md) | 329 | `declaration-track:5948c422e0448117dc36787814fac49fbaef57c4de95fc8d0fcf5e5ae36f1c51` |
| 59 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-9.md) | 335 | `declaration-track:44ee747b6b92bc4f514e828387c828a65e0a4e43e8b7404ab2e3f91d75bc60f5` |
| 60 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-28.md) | 338 | `declaration-track:c1f5380be913ebd30881d8a6e09b04eb5cb860b5333323b09cc24ffb5ea8199e` |
| 61 | `def` | [oldToggleSystem](../../../../Combinatorics/ArchitectureTests.lean/declarations/oldtogglesystem.md) | 345 | `declaration-track:4d76c5dc08890be03bda15a8038896acba04aa4cfbcf2f45050ce64197b65d02` |
| 62 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-25.md) | 351 | `declaration-track:b0ff912d809b792731b64af466283e5090d9ec2e0849dd1f22a977a316bab450` |
| 63 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-27.md) | 356 | `declaration-track:bc1f157c8d4153a0a1506dda1d3d944fd9378d00edde1576f580f52fabc149df` |
| 64 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTests.lean/declarations/example-source-edition-31.md) | 361 | `declaration-track:d205a7d369f64fa23aa1ab2d1d3afddecb5b1d82f7c88980e40bcfb14fc1333f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5c02d408f3aa80ae3ea5532bfeb95d3ab077ea2d7c87671a4072798f09e817c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant88657f10b38fb8bc7e55b4e1dd034bc1748cbc28a7cf4f1dd86fe8d57f4e5120.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
