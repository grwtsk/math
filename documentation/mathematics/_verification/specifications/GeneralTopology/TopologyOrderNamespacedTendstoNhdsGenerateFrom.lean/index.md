# Verification target: Topology Order Namespaced Tendsto Nhds Generate From

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "136aa517e684d22a8f9f80eb74e71f4f42251704",
  "lexical_observation_count": 164,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `136aa517e684d22a8f9f80eb74e71f4f42251704`.

Source path: `GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenerateOpen](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generateopen.md) | 68 | `declaration-track:4a27439d9606df26e49405bc9b8ed9bbb7d07bf3fa4908ec26dd94dc14d3d08a` |
| 2 | `def` | [generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom.md) | 76 | `declaration-track:e989a26c011747e179edfae1723738141bcebadd2513a887e4c919b24c9055cc` |
| 3 | `theorem` | [isOpen_generateFrom_of_mem](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-generatefrom-of-mem.md) | 83 | `result-track:d9f94584e0e54cc30139528662108f040a37a14e91f1790f133341a8867b2997` |
| 4 | `theorem` | [nhds_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-generatefrom.md) | 88 | `result-track:ea2b62dc531ad970483ab09c3ffb53e9906d7ea2c3df2e851acb43ece5d9b3ce` |
| 5 | `theorem` | [tendsto_nhds_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/tendsto-nhds-generatefrom.md) | 103 | `result-track:d8bed6d4fb3368c11d86db1f0190c877c46a3f669ee4391657a4418a240af1d7` |
| 6 | `def` | [mkOfNhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/mkofnhds.md) | 110 | `declaration-track:a6c8f9e4a368df6fd1df838e9bceb913e0b1dda9dc3e20b1ece6727feb497f72` |
| 7 | `theorem` | [nhds_mkOfNhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-mkofnhds.md) | 118 | `result-track:a655756ec1e316b960da628efa5d48458018c54923e2af46d7dd43d533c6ba71` |
| 8 | `theorem` | [nhds_mkOfNhds_single](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-mkofnhds-single.md) | 133 | `result-track:c1b98e5752ec6534153ba0ae8edf46a78634722b4dfb95f894c3938e49eef309` |
| 9 | `theorem` | [nhds_mkOfNhds_filterBasis](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-mkofnhds-filterbasis.md) | 147 | `result-track:cda39defce3d637ea4c20f0a2a644d9fdc7e3811b4be52cb0cbb13f7dc582941` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance.md) | 166 | `declaration-track:0a82502aa631482c18761134e680e2d86cd1c76321f590ebcebc8a62e38fbd8a` |
| 11 | `theorem` | [le_def](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-def.md) | 170 | `result-track:5febc6de6dd4de6e24fe345b495c481eb073b559cb79cfb76700a6af743039ba` |
| 12 | `theorem` | [le_generateFrom_iff_subset_isOpen](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-generatefrom-iff-subset-isopen.md) | 174 | `result-track:6d647664b4085e8503b0b16529cf15346863b46e40210be743e317a0736a5e52` |
| 13 | `def` | [mkOfClosure](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/mkofclosure.md) | 182 | `declaration-track:e4ea77f5f135b92e418220964abbcfdb8aad40eb16e06e4501884f60768fd79f` |
| 14 | `theorem` | [mkOfClosure_sets](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/mkofclosure-sets.md) | 190 | `result-track:c4ae03448e946123093797381e145a317c28c9bf2c9e2f42a01672040cf76817` |
| 15 | `theorem` | [gc_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/gc-generatefrom.md) | 195 | `result-track:1884f5f803d0099d51c645166c3677eb11490ccb6d62f5ffb1e291eb39103244` |
| 16 | `def` | [gciGenerateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/gcigeneratefrom.md) | 203 | `declaration-track:d39066f52f13711c2e8b61ee452ba77b6ff550c33178ae47e87f047a7d67b657` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-14.md) | 217 | `declaration-track:c5f50b8323b25f39f2730c8168f15d4a0af16c794b78ef0ad54b852fdc41fc1e` |
| 18 | `theorem` | [generateFrom_anti](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-anti.md) | 220 | `result-track:f74e163c499728697336cb92701603d992641a5671b7c8716acd973c113a40d1` |
| 19 | `theorem` | [generateFrom_setOf_isOpen](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-setof-isopen.md) | 225 | `result-track:f61022ac612bc1ca0183602502702bdd6ce8857abb098ff59dec376339db9464` |
| 20 | `theorem` | [leftInverse_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/leftinverse-generatefrom.md) | 230 | `result-track:e6124ac2fc8929d60bb002d1ae2243dc916a8cae8f2a975d1425d482f7cde95c` |
| 21 | `theorem` | [generateFrom_surjective](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-surjective.md) | 235 | `result-track:7925046b99aa05362343b0c49f3dae4b867d082ad58bc28f5e4a4544d69f1a24` |
| 22 | `theorem` | [setOf_isOpen_injective](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/setof-isopen-injective.md) | 239 | `result-track:9a1972633e56e5c8c2bc94a8a0806a94722de1e6e8fa4487d9a4e1d6dbf0f29c` |
| 23 | `theorem` | [IsOpen.mono](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-mono.md) | 251 | `result-track:382a283223016a9b5a5705eb40931768f5abbbdbdbd37dd5c0c2b4c5e3b2aec4` |
| 24 | `theorem` | [IsClosed.mono](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isclosed-mono.md) | 254 | `result-track:f515794155a13bc90ca7c2d253eff7d7a8d024777a2bced39a3e734c4a3f19a7` |
| 25 | `theorem` | [closure.mono](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/closure-mono.md) | 258 | `result-track:28779eff4535575ec42b9d0f59d4cecc35170f398bce6d0cd3ba95d94df91ad6` |
| 26 | `theorem` | [isOpen_implies_isOpen_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-implies-isopen-iff.md) | 261 | `result-track:70d922ad757bee97afd877abce1efbeab7b0bb22cccb5f51f24740a9ca77ec91` |
| 27 | `theorem` | [TopologicalSpace.isOpen_top_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/topologicalspace-isopen-top-iff.md) | 266 | `result-track:b8ef2d797bd21728aa36198ac26a82f912ee736658e5fa58561ae346ef70e3d3` |
| 28 | `class` | [DiscreteTopology](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/discretetopology.md) | 280 | `declaration-track:b6e37b5a53dd1c7905aaf2eb3e67cda0fbe0993fa5d531800117be867eed7590` |
| 29 | `theorem` | [discreteTopology_bot](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/discretetopology-bot.md) | 285 | `result-track:b39253ad9aeaed9cec48b48daacadbaf14e7f76f683ea482dcf6b22074f2a7e4` |
| 30 | `theorem` | [isOpen_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-discrete.md) | 294 | `result-track:34d79fc3ca3acbd567887e44308f295437262fc7690b4427235ee496b5ca21a0` |
| 31 | `theorem` | [isClosed_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isclosed-discrete.md) | 297 | `result-track:dbe515608abbd999e1a25c2296e43d5497bc730a9b8636320633faa96c707175` |
| 32 | `theorem` | [closure_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/closure-discrete.md) | 300 | `result-track:94422d6541a55093d07190d6958832f1eac6fd1396e3f727e663f5695e9fba24` |
| 33 | `theorem` | [dense_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/dense-discrete.md) | 302 | `result-track:6f5b889e891a412b1f146043994e1989e9facc696bc151a5b779585a18e5ec03` |
| 34 | `theorem` | [denseRange_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/denserange-discrete.md) | 305 | `result-track:44a44ae3b89d062400265e8b6c20b0e1aed9c2ac000ec49222a596fbe724ff56` |
| 35 | `theorem` | [continuous_of_discreteTopology](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-of-discretetopology.md) | 309 | `result-track:b7ffbb94374883c623886debc1bc089ffc33f01b0ff528fa8f34404d730424a9` |
| 36 | `theorem` | [nhds_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-discrete.md) | 314 | `result-track:a3b9b117daffc4802c9624f7e721b55051abe85588cf90525632e3992309afac` |
| 37 | `theorem` | [mem_nhds_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/mem-nhds-discrete.md) | 318 | `result-track:1b977461d162a2979298667d6f4e0a567fe54e1126e49efbbd33e9f68f3bdc71` |
| 38 | `theorem` | [le_of_nhds_le_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-of-nhds-le-nhds.md) | 324 | `result-track:53a91e9bad948d13ac38248026eb91d167d82ad4c7a9dccaa1beb4430b064e20` |
| 39 | `theorem` | [eq_of_nhds_eq_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/eq-of-nhds-eq-nhds.md) | 329 | `result-track:d5e1b05a5425e5e47e19a2b93204f06c14f6549d180fe10a030a57953a2686fb` |
| 40 | `theorem` | [eq_bot_of_singletons_open](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/eq-bot-of-singletons-open.md) | 334 | `result-track:b11e7e6e0e997f48a5761be6d4fc5668c30ad86cbaf2cd0dac4c398a2468b089` |
| 41 | `theorem` | [forall_open_iff_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/forall-open-iff-discrete.md) | 338 | `result-track:ea6dcd560f1cd435c1395da01ea3eb97cd5e3ea64c4c9bd1c95b68e88616ea5b` |
| 42 | `theorem` | [discreteTopology_iff_forall_isClosed](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/discretetopology-iff-forall-isclosed.md) | 343 | `result-track:5a33501a9f0a5fd132c996e9af004d31d9fe738b3c9b527a1c27acfa8f8a53dc` |
| 43 | `theorem` | [singletons_open_iff_discrete](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/singletons-open-iff-discrete.md) | 348 | `result-track:72c324918a29a7bb77518774f0587ddb0897d8b524b760eb3cd9ca6c51585911` |
| 44 | `theorem` | [discreteTopology_iff_singleton_mem_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/discretetopology-iff-singleton-mem-nhds.md) | 353 | `result-track:59519f4f69f2585b577da090a54f28912c6745cea99fdff501bc8126d52e8e3c` |
| 45 | `theorem` | [discreteTopology_iff_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/discretetopology-iff-nhds.md) | 360 | `result-track:b15c8edd7d727ad1e4be4907688d2337c84f806e39e063f0a1f4e3dca443bd46` |
| 46 | `theorem` | [discreteTopology_iff_nhds_ne](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/discretetopology-iff-nhds-ne.md) | 365 | `result-track:cc2c0a42b433754ad38ef0130e736e760d60eee0a9480921c2ed4ec345939ef9` |
| 47 | `def` | [TopologicalSpace.induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/topologicalspace-induced.md) | 379 | `declaration-track:01b5ed5be83240b534e59e95e48e108255898dd9b91a11807b022e010b2e4dcf` |
| 48 | `theorem` | [isOpen_induced_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-induced-iff.md) | 393 | `result-track:5a1d370f2e6302f4dfb1196b99074c254a74c58956ba6cc9599363efc4a40796` |
| 49 | `theorem` | [isClosed_induced_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isclosed-induced-iff.md) | 398 | `result-track:8c0f43c8e41fd7c6a5bb2a0917d5461ccb34e384f1414a8002bce307570d46b6` |
| 50 | `def` | [TopologicalSpace.coinduced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/topologicalspace-coinduced.md) | 408 | `declaration-track:0145b6dfb46463ab53c5ca7fe0532a7274f81f032179cf54367326986672b2da` |
| 51 | `theorem` | [isOpen_coinduced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-coinduced.md) | 416 | `result-track:42fdd8ae68cd7ff989e8a131dbe26a45a2e5ea927ed64f51c5881837e3907d00` |
| 52 | `theorem` | [preimage_nhds_coinduced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/preimage-nhds-coinduced.md) | 421 | `result-track:0df26bd82c668b18849ec21575cff7a5851b9c5d3709b858972a2226ddfd4195` |
| 53 | `theorem` | [Continuous.coinduced_le](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-coinduced-le.md) | 430 | `result-track:b297f304ef0135443e7f9a7f269ce72c9638d049592b63268b42fa83a97aeec1` |
| 54 | `theorem` | [coinduced_le_iff_le_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-le-iff-le-induced.md) | 434 | `result-track:15d637a2c1eb47cd33ca20bba67659452e2850a0f201a877e56794001c76d714` |
| 55 | `theorem` | [Continuous.le_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-le-induced.md) | 439 | `result-track:e7332a9bbdd03d08f45840e4ba540b0cea859a112f3a6b602e366a35ba0b1e2e` |
| 56 | `theorem` | [gc_coinduced_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/gc-coinduced-induced.md) | 443 | `result-track:82457b18ef68302cf05f667245f5df3bc94c685aba2f083e7e5627664483d466` |
| 57 | `theorem` | [induced_mono](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-mono.md) | 448 | `result-track:d4d8776e3d8c1a3b83cddc08aafe5a6abd5d13cec8ecb29fc44211763b14fd21` |
| 58 | `theorem` | [coinduced_mono](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-mono.md) | 452 | `result-track:a024330af2efb255c6a89e0bae9b1463428570df39a25938f14a402cf89b2741` |
| 59 | `theorem` | [induced_top](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-top.md) | 457 | `result-track:77f8ea47deb11bfe1527d78f8a31acdc48726e203af5dcb65ddb8366984fa5d8` |
| 60 | `theorem` | [induced_inf](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-inf.md) | 462 | `result-track:c69f6d6c7bff2e98e1e724855b11439b35627df6bb90dfe66a9003d98447666d` |
| 61 | `theorem` | [induced_iInf](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-iinf.md) | 467 | `result-track:43618c6bad18fe88ed736f263ff6c708d8a04940c941d6f2052fa1db08c4aa1c` |
| 62 | `theorem` | [coinduced_bot](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-bot.md) | 473 | `result-track:e1a72865d715007c38bf14e013b7ea5b818f11782f6dff19c04ad00f65a9d6d2` |
| 63 | `theorem` | [coinduced_sup](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-sup.md) | 478 | `result-track:dd655b80f8f13c198c11fd10efcc7c37e4c5ea2478bae402ddc3837ce046836a` |
| 64 | `theorem` | [coinduced_iSup](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-isup.md) | 483 | `result-track:52d54863117285e26f1285fe94bb4d3abfe6db1513ec6d7c5eedc1d48440fe2b` |
| 65 | `theorem` | [induced_id](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-id.md) | 488 | `result-track:f9f83c8b1e5d44278e08b5a0cfebd5982c9ca161f2b6338f4ad4ef4a4c5e436c` |
| 66 | `theorem` | [induced_compose](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-compose.md) | 493 | `result-track:2512d46421a36d96c3a177959d4dc2c29095eeb0075c6f4bc713989a92575afe` |
| 67 | `theorem` | [induced_const](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-const.md) | 501 | `result-track:92176216eda051771d8fe8a10f27702edfad7bbee492c58a84dfa948d569d0bc` |
| 68 | `theorem` | [coinduced_id](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-id.md) | 505 | `result-track:ef34e36ad5b002da0d3a32b2924e411ad7b9d87f10123a1bb5398c0cdef121d8` |
| 69 | `theorem` | [coinduced_compose](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/coinduced-compose.md) | 509 | `result-track:d7b6e5d0e9e04497d87c1f3d1f852b174c1cbceb83ca265683d83c9f5bb38d81` |
| 70 | `theorem` | [Equiv.induced_symm](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/equiv-induced-symm.md) | 514 | `result-track:bc8ae83a24bf2bb7904555d8ac9de745f8e7970aca58435ca18968d306b7b458` |
| 71 | `theorem` | [Equiv.coinduced_symm](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/equiv-coinduced-symm.md) | 521 | `result-track:3f33405eff246e5dd32c138e5a8bd8195dac636127207e8642d624167aaf2fd9` |
| 72 | `instance` | [inhabitedTopologicalSpace](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/inhabitedtopologicalspace.md) | 535 | `declaration-track:abd5d8c13862b8fd6c525203c2467a6e91e8ba130f8b64de9b75e7c0eb022528` |
| 73 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-17.md) | 539 | `declaration-track:e401d5a2682f90bade0d20e87dc0e70e1ae8a5020d3d41551138135d7e13fff2` |
| 74 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-6.md) | 547 | `declaration-track:39ecb78896e2431d4469e740d6ac04a87c00ca4e56e8b71ef2ec69267a8042ee` |
| 75 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-9.md) | 552 | `declaration-track:8a37cb0236f2e26734a0c1ba7c8bea9751321026a1984da96c615011c48d46f8` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-8.md) | 553 | `declaration-track:5d858bf8c2e85fb436e52cb9a53ad764568b1d4fda2f23015f376a3d19077208` |
| 77 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-12.md) | 555 | `declaration-track:a04584b6e5f80e80f200076d0a79c2de6c7ce951fdb58f711a3d5509ce4f211a` |
| 78 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-13.md) | 556 | `declaration-track:b8528313a6de56a849cb22ae29d41a8dfa1f572275cda775911a5f807af00cea` |
| 79 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-3.md) | 558 | `declaration-track:105cc69deec144998da6f99ac45820e7c49f2e5eef98bc5396bf322689d40e22` |
| 80 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-15.md) | 559 | `declaration-track:c97310d6d42b6e61c6c9f4cf7c63dff7e9d000d5d6f43329eb44f87db6177007` |
| 81 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-7.md) | 561 | `declaration-track:43e495027b015a61b9c2f7f51d4fefbcfd6c849451b5af00f718eaae2f280096` |
| 82 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-5.md) | 562 | `declaration-track:22672afcc59edb95dadccf82a8610f6408a6fa57b10a186db11f00ce5a97299d` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-2.md) | 564 | `declaration-track:0fb61a844a5cf1c7e1f0d4bb9a6fd79d0a22112733ab47b054467124a7d95400` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-4.md) | 565 | `declaration-track:1c530391bc2c6265dceef20f7f01214c499370b563fbcb0b972d75c9440ef498` |
| 85 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-16.md) | 567 | `declaration-track:d5c29e0c7c4cd381524cea665197159bf70d2cedb99cb480ab206ff8dda4008e` |
| 86 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-10.md) | 568 | `declaration-track:8b9004b44b30d1bec44b0135a7d32a9214356d1d3a46dbe834ca4142716134f2` |
| 87 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-11.md) | 570 | `declaration-track:9186d846ac1ac956f46c80f6e0a07c3c3b04b9c44f545b4b5870df98497c6b75` |
| 88 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/instance-source-edition-18.md) | 571 | `declaration-track:e4f7cfc42c73a025312cfa827532bebdfaac59afa0fbdee664d458cf89774253` |
| 89 | `instance` | [sierpinskiSpace](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/sierpinskispace.md) | 573 | `declaration-track:7e3487f749d74db7f65487e54454471a3e4954b93cbba041ea9d07a9aa32baba` |
| 90 | `theorem` | [continuous_empty_function](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-empty-function.md) | 577 | `result-track:572b1617eea2be259b0f0738b4c6efd6e109cc5e5af7716fc2a972fc01e9fe32` |
| 91 | `theorem` | [le_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-generatefrom.md) | 583 | `result-track:84f2c3a644f43e1f6f9c483febadb3fd91aad4aa46a226bb4bd28584e0636b80` |
| 92 | `theorem` | [induced_generateFrom_eq](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-generatefrom-eq.md) | 588 | `result-track:0f539d6f13677c3ac19cf763e5f29d73b594f0ceffea473348c7aef8e948a0c1` |
| 93 | `theorem` | [le_induced_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-induced-generatefrom.md) | 594 | `result-track:c1eb3ab9960e3449a21a12fc7844953745e62342e7c3de36b3d0f3b306cccd07` |
| 94 | `def` | [nhdsAdjoint](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhdsadjoint.md) | 604 | `declaration-track:7df00b05d0669c957e6e8527f4be72dc937fac7ee3f7e42bbaa7e789dae174c6` |
| 95 | `theorem` | [gc_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/gc-nhds.md) | 611 | `result-track:67654edd715c6207a5a3dfab6629728a6d49e8e4f20558b54501f7f6c329a27a` |
| 96 | `theorem` | [nhds_mono](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-mono.md) | 616 | `result-track:70b6e2b4945875b3446f7d7d9b339b4152628e0fa6d34aa60ccdca7c27ebed78` |
| 97 | `theorem` | [le_iff_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-iff-nhds.md) | 621 | `result-track:58a894bbca6697cf3033aff84ac670acb7a60e929082c22dd500f34344b82834` |
| 98 | `theorem` | [nhdsAdjoint_nhds](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhdsadjoint-nhds.md) | 626 | `result-track:a81ff8f2767bb9b407201157f24732e850e764815918c4bf7dd7e1a58835921d` |
| 99 | `theorem` | [nhdsAdjoint_nhds_of_ne](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhdsadjoint-nhds-of-ne.md) | 638 | `result-track:44fc83b71eadbb12a273361d28c34ff8cf16d1372009fde3668c6c79dfc99d72` |
| 100 | `theorem` | [isOpen_singleton_nhdsAdjoint](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-singleton-nhdsadjoint.md) | 650 | `result-track:587eaf82ee6fd88fb8f85e907d0d0c68c8c5a350944057bff5799fcd817cbfbf` |
| 101 | `theorem` | [le_nhdsAdjoint_iff'](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-nhdsadjoint-iff-source-edition-2.md) | 657 | `result-track:dce02a0826d008039d89caf997a05ada670d1a302a1422521c553c8127b28baf` |
| 102 | `theorem` | [le_nhdsAdjoint_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/le-nhdsadjoint-iff.md) | 675 | `result-track:57aecbdc1cea1e124358d59eefc2d107b5334b1083dd643a8a2a4ff0995d659a` |
| 103 | `theorem` | [nhds_iInf](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-iinf.md) | 683 | `result-track:56ebc8ea69d9c5b830925a678936ee9e19c07293c5f8e46a5836231373becfe4` |
| 104 | `theorem` | [nhds_sInf](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-sinf.md) | 688 | `result-track:9494a1ca93271aa2aca16f35fbd66988f9337f6f499092525315a5c602652e5e` |
| 105 | `theorem` | [nhds_inf](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-inf.md) | 694 | `result-track:a45a7c5fcd96fe4e994578e4db9a31a2b4d4c2a5f40e7987f07c5498074fb0eb` |
| 106 | `theorem` | [nhds_top](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-top.md) | 699 | `result-track:a51d19ee2d642f8bc2b79e6f9093d9382b994066d66bcd3c71da005715d05d53` |
| 107 | `theorem` | [isOpen_sup](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-sup.md) | 703 | `result-track:a845d90cc9317177208ada956be83f148533e1c5bf7c9830b496fc67703ed321` |
| 108 | `theorem` | [continuous_iff_coinduced_le](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-iff-coinduced-le.md) | 712 | `result-track:b1c8a5ce03d356f1ab0003d6afbea96e767b673651e8e0f272f3490177ea451b` |
| 109 | `theorem` | [continuous_iff_le_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-iff-le-induced.md) | 717 | `result-track:19906a7d2a5dab2eeee2442a58237a2dce481c3f10f4d5efc50829bcc271cb0c` |
| 110 | `theorem` | [continuous_generateFrom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-generatefrom.md) | 722 | `result-track:056e7f7c734ef50d63a977651ffafdfb6773eea3ad96a704ee23a30e9230104a` |
| 111 | `theorem` | [continuous_induced_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-induced-dom.md) | 729 | `result-track:fa29eea80439d948ca39c741492a3ce461bb4fe7b8fe462c7d0db31597f995a4` |
| 112 | `theorem` | [continuous_induced_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-induced-rng.md) | 733 | `result-track:472ef4b633984039fc0bee81098bd8cee0c78a90053ba0a2c458832f418eece7` |
| 113 | `theorem` | [continuous_coinduced_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-coinduced-rng.md) | 738 | `result-track:e32f5450b76ca6b6cf25bf27327e7329415c46874ed72679434485c4a817c062` |
| 114 | `theorem` | [continuous_coinduced_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-coinduced-dom.md) | 743 | `result-track:8dacc5873a77dd55b92e031d6c6f8e76dd6ab80cb9a4d8478a95fdaa054668f3` |
| 115 | `theorem` | [continuous_le_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-le-dom.md) | 748 | `result-track:50acd41f35f120a5cdccdc071a62d42efd44e6683e7650cf8212a48604cd6985` |
| 116 | `theorem` | [continuous_le_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-le-rng.md) | 754 | `result-track:29def4a8e09b743fa1c4ed3023a5ad42bed092dbad0eebeb0b050625e311a5f9` |
| 117 | `theorem` | [continuous_sup_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-sup-dom.md) | 760 | `result-track:7a09b86744354fb2b0a44e980a1b2d23587ee23db59cd485bb3be5d1190db05a` |
| 118 | `theorem` | [continuous_sup_rng_left](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-sup-rng-left.md) | 765 | `result-track:7c005375d21acbbe9f8fa9c35cdfdfd2a85b9252b96d05ae7e6b27c6418348e2` |
| 119 | `theorem` | [continuous_sup_rng_right](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-sup-rng-right.md) | 770 | `result-track:63e015bbdd1670b4b57ef55a2a4801ffc7a156e48655e13c576e02ea24f66034` |
| 120 | `theorem` | [continuous_sSup_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-ssup-dom.md) | 775 | `result-track:43c91d19c3610c01b09538d1e2a82526b8b06365f536aeada4b79ede35d09874` |
| 121 | `theorem` | [continuous_sSup_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-ssup-rng.md) | 780 | `result-track:25ba5af3627194d2cfa1a9d44d9087554f8edbf0b795808c22a455357ea24631` |
| 122 | `theorem` | [continuous_iSup_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-isup-dom.md) | 786 | `result-track:d47cad2e0c92fb19c576eb7bcae7081f5fccc3427582308ab4a482834694eed2` |
| 123 | `theorem` | [continuous_iSup_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-isup-rng.md) | 791 | `result-track:3bd751f4a5427bfcce2d277c0a3b1d2640fdf965cff3cbf205ead0ea5d396bab` |
| 124 | `theorem` | [continuous_inf_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-inf-rng.md) | 796 | `result-track:59445df2e050a94ccde3783a2785585b255af38750eec7e9caf742e7f7dad285` |
| 125 | `theorem` | [continuous_inf_dom_left](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-inf-dom-left.md) | 801 | `result-track:07d7838f1d19765f393db6b6d741fbbb4eb327488e0ae3b3528f85173c2f49b1` |
| 126 | `theorem` | [continuous_inf_dom_right](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-inf-dom-right.md) | 806 | `result-track:c67e921021c42d6c1e38d8f8854434137e6b324b3250a8dd6e77c75e2c764348` |
| 127 | `theorem` | [continuous_sInf_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-sinf-dom.md) | 811 | `result-track:aa92d78554154957d58ac16ee984412c5e1c6961f86a20d50cd6bc3ed25ced64` |
| 128 | `theorem` | [continuous_sInf_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-sinf-rng.md) | 817 | `result-track:5cb0adc60df69a6943d923cc0377f1e2b514d9527d35fb697c726c7f251ca4a3` |
| 129 | `theorem` | [continuous_iInf_dom](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-iinf-dom.md) | 822 | `result-track:f18823b9d742a8b8fcc0207b77cf200eed59f80277154e756f99235b6f4b9d22` |
| 130 | `theorem` | [continuous_iInf_rng](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-iinf-rng.md) | 827 | `result-track:6b939e9acbcbe04629da0afd18fef37448347d8d16112c50e3dfc26463f90b7e` |
| 131 | `theorem` | [continuous_bot](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-bot.md) | 833 | `result-track:bb2ed237a37190b87b8cea58b557450b8032473e6c88c2e3d168d50e61820e78` |
| 132 | `theorem` | [continuous_top](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-top.md) | 838 | `result-track:9cfd32c09c664304b44f751a7123567e2933a38b9df3d97e5bb5dd93116c5195` |
| 133 | `theorem` | [continuous_id_iff_le](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-id-iff-le.md) | 842 | `result-track:c6a87638fb33a716009d38d7bc9eb03f547ce2c9a63eec6bdcae16870f314415` |
| 134 | `theorem` | [continuous_id_of_le](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-id-of-le.md) | 846 | `result-track:12b0983651138d012a32ee52558d065c3dcb3d523cbdcb9f8cff1d445da98e8a` |
| 135 | `theorem` | [mem_nhds_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/mem-nhds-induced.md) | 851 | `result-track:9a6337f770b0a49d7e876bdc4c531eb9071b9b506e531374d58458e92a52d95a` |
| 136 | `theorem` | [nhds_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-induced.md) | 862 | `result-track:65d8cf60a806e02265c6dd7cf8627ffc7dcdc5bf3763e72b763d33df5677a642` |
| 137 | `theorem` | [induced_iff_nhds_eq](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/induced-iff-nhds-eq.md) | 868 | `result-track:e25402ea5082ddeb7e41c7d63dbb4676cdffc5b1c1356f60815a9a16cbfe441a` |
| 138 | `theorem` | [map_nhds_induced_of_surjective](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/map-nhds-induced-of-surjective.md) | 874 | `result-track:6e135595c6d23bf29348ac752febae32e0a952ad8b0653a6d8a6450922e1470d` |
| 139 | `theorem` | [isOpen_induced_eq](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-induced-eq.md) | 889 | `result-track:3ea0064745cfbe5c9e1cde4b491335d00c1c1a179ecc0a74b49ee63f9fe4e84c` |
| 140 | `theorem` | [isOpen_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-induced.md) | 894 | `result-track:8e1c768c337077a761e767141f8ae18792761d851b78ecf1294bd02e5ad683c1` |
| 141 | `theorem` | [map_nhds_induced_eq](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/map-nhds-induced-eq.md) | 898 | `result-track:c5efe6713bdd02ac9ff62221b923c9c8336353fc5ce183e5cb3e9e4ad7357bc1` |
| 142 | `theorem` | [map_nhds_induced_of_mem](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/map-nhds-induced-of-mem.md) | 902 | `result-track:5c49ada039cd29189ed451fa6ba3da086765eefde49cf503f58a3718139b44b5` |
| 143 | `theorem` | [closure_induced](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/closure-induced.md) | 906 | `result-track:941a99ebaf1005b1b7e6a52a186a6d0c4ab25c3ab4b276a36c21f7b626b22b64` |
| 144 | `theorem` | [isClosed_induced_iff'](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isclosed-induced-iff-source-edition-2.md) | 912 | `result-track:dd2f8ec5d761508eb6496ca065446e0757c530d773781523e525e983e98ddd5a` |
| 145 | `theorem` | [isOpen_singleton_true](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-singleton-true.md) | 925 | `result-track:f409acc3ba472589b05211dcc2010588ccb971f025f29d1845535d5cb044ac66` |
| 146 | `theorem` | [nhds_true](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-true.md) | 930 | `result-track:386bdfa28e491568df4cacee3541a2ac6d4c50b23ac948e8848a8bc4716acd6e` |
| 147 | `theorem` | [nhds_false](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/nhds-false.md) | 935 | `result-track:d63d4f43a848f13b6420ef1fbbefa0e42d2dbaf99e04449ffc39be319e520eca` |
| 148 | `theorem` | [tendsto_nhds_true](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/tendsto-nhds-true.md) | 939 | `result-track:c904be1904f4c98f4fbf0988a997b6290321cfd8f8964e7b74fe2d4e81b61ec3` |
| 149 | `theorem` | [tendsto_nhds_Prop](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/tendsto-nhds-prop.md) | 942 | `result-track:51cfea11d82054c82e9934030ad0abecd281a517045f3f2d468b5271c255181b` |
| 150 | `theorem` | [continuous_Prop](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/continuous-prop.md) | 946 | `result-track:4fab958ba7a82266e72e8965e4cc9c0285afb549788181b4ad85f70d40f6abad` |
| 151 | `theorem` | [isOpen_iff_continuous_mem](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-iff-continuous-mem.md) | 950 | `result-track:4152662931b2b8035950cec35da0e87048eeb66b754ad562bedd208dfaac4e38` |
| 152 | `theorem` | [generateFrom_union](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-union.md) | 962 | `result-track:9601b30ca946ef26f24153304fa70b64b3cc89f78f2b5c2e94fa5b3f04725869` |
| 153 | `theorem` | [setOf_isOpen_sup](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/setof-isopen-sup.md) | 967 | `result-track:d4674a7a0206a179c005f046bb0e84b490a5cc01dc157887ef54d48b92f464cd` |
| 154 | `theorem` | [generateFrom_iUnion](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-iunion.md) | 972 | `result-track:eecec4733ad833a597f736a7b08e90ccbb3b7a669bd4bc1a5e417ef996987fad` |
| 155 | `theorem` | [setOf_isOpen_iSup](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/setof-isopen-isup.md) | 977 | `result-track:625350ae44e7431fed72f6df7c32a37522d550f915136e0648ea0f644b0517d4` |
| 156 | `theorem` | [generateFrom_sUnion](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-sunion.md) | 982 | `result-track:127b88c25ef16448e6d31a12473bbfe24a439ea4785cd590b2b12fbdd3e8423e` |
| 157 | `theorem` | [setOf_isOpen_sSup](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/setof-isopen-ssup.md) | 987 | `result-track:469971628be3a50eb506db8a6cd6cb1a20d384a86da9418e48aec5a861df631e` |
| 158 | `theorem` | [generateFrom_union_isOpen](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-union-isopen.md) | 992 | `result-track:d54000dd71cc1ae810ffa6f9bfb430db5de3e58be5e531bd6a5fbce0de1360ed` |
| 159 | `theorem` | [generateFrom_iUnion_isOpen](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-iunion-isopen.md) | 997 | `result-track:296b016679cc4ce2425755f768eb1ac4ce021fc71151749a2a6d24350468b8f5` |
| 160 | `theorem` | [generateFrom_inter](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-inter.md) | 1002 | `result-track:4d5fccb1a15cadbd294a554d0e4f1decaa32875782639b43de002100fb9c8785` |
| 161 | `theorem` | [generateFrom_iInter](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-iinter.md) | 1007 | `result-track:d3071f073adb89c1646d3353ae363d4d549361f5bcecaf190e0977f1e94b4750` |
| 162 | `theorem` | [generateFrom_iInter_of_generateFrom_eq_self](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/generatefrom-iinter-of-generatefrom-eq-self.md) | 1012 | `result-track:6a2e8741f846354eb7dbec1c9cff569fe091ccc480b94ee72192da8a664c66b8` |
| 163 | `theorem` | [isOpen_iSup_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isopen-isup-iff.md) | 1020 | `result-track:99b9090ded295c1bcb07bd5e3767a530eb5679b1912c1da4e4d42f04bf44e2d9` |
| 164 | `theorem` | [isClosed_iSup_iff](../../../../GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/declarations/isclosed-isup-iff.md) | 1025 | `result-track:8b4deca28557a08fbb07ee6a1108b216162269ff7e10c58a26175995d1cc01fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e09cc2c9140ff3e0ba5ddc5ab76bd82df2d06fe0d05b31a0911c85293abc5d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
