# Verification target: Option Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0359def8ab7d62f2b048682607477e64c7a779e0",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1010363e2bd8d328b64905c6da94410f123201c379bccf4cc3747d5af848ecec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0359def8ab7d62f2b048682607477e64c7a779e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1010363e2bd8d328b64905c6da94410f123201c379bccf4cc3747d5af848ecec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1010363e2bd8d328b64905c6da94410f123201c379bccf4cc3747d5af848ecec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/coe-def.md) | 53 | `result-track:44cdc4fdaae3c92978ee1ba233d5f05daddd66852e986d27fb579d4527be960b` |
| 2 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/mem-map.md) | 56 | `result-track:9ec94318a40326f55f93769109acdc85776319a19c5b5cc06bb2e3e4165a98c3` |
| 3 | `theorem` | [mem_map_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/mem-map-of-injective.md) | 59 | `result-track:e361cb193e7f903680f14386699bc94d413a9de26587f228010e59636146b691` |
| 4 | `theorem` | [forall_mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/forall-mem-map.md) | 63 | `result-track:40cdba96efef7239127b7f62eb29fbc98c7bf59ab02fc2c6ef658072e0cd2246` |
| 5 | `theorem` | [exists_mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/exists-mem-map.md) | 66 | `result-track:120dc3072e4acd4832fa0ed3c4338065bc17ec35a137d5ac37da11960024eb9d` |
| 6 | `theorem` | [coe_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/coe-get.md) | 69 | `result-track:620dac23f6494c71fec2c7da83278082633096adf9ab9c8129e65414ec2f342d` |
| 7 | `theorem` | [eq_of_mem_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/eq-of-mem-of-mem.md) | 72 | `result-track:11199b244d8b09eb45c93488017230481e3c294cb6a4458cb267da976919cd89` |
| 8 | `theorem` | [Mem.leftUnique](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/mem-leftunique.md) | 75 | `result-track:6f2c4cf9952164c217f856c6eff2842295712d99fa296cfd231e83af113bcad4` |
| 9 | `theorem` | [some_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/some-injective.md) | 78 | `result-track:9b7ed82b9a9e3295fb5c68ddcdedf08763b0270b8f25a08a50534453226df892` |
| 10 | `theorem` | [map_comp_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-comp-some.md) | 81 | `result-track:456a6fbdfeeb57cbe8c25ed3bce6e72c5fe5ab0cbdd9288d5602670c2b578bb4` |
| 11 | `theorem` | [bind_congr'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/bind-congr.md) | 85 | `result-track:28ee6726d0f15a0bb9d331c7f17a6f1dac5dd714f165c382922b26ef64a3b34d` |
| 12 | `theorem` | [joinM_eq_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/joinm-eq-join.md) | 89 | `result-track:4a59555732f680432f406d15b29f24ecbe668e5c7155c5802dea999515290caa` |
| 13 | `theorem` | [bind_eq_bind'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/bind-eq-bind.md) | 92 | `result-track:cee50c490b9056247041b6f0e23c17a0d2e9e6d2444e578d5f0ec881d480b8e2` |
| 14 | `theorem` | [map_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-coe-source-edition-2.md) | 95 | `result-track:9dfc1c42e3dc712b8a264f2935943e93aa669b611e742c0f82eed4797909e882` |
| 15 | `theorem` | [map_coe'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-coe.md) | 99 | `result-track:1445ce0763022727456371554b6c6026441a487e0be760b9a7a9cacfb09d03c0` |
| 16 | `theorem` | [map_injective'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-injective.md) | 103 | `result-track:01b4af997bf14883d81057cec131af6560233a28c813455dbb7625a55c8abd48` |
| 17 | `theorem` | [map_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-inj.md) | 107 | `result-track:c3bd426dc4c5bfc633ce08eed8fe89dc69e3d9a21db0d4b4bb99d3eb7b364d7e` |
| 18 | `theorem` | [map_eq_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-eq-id.md) | 111 | `result-track:18a4a99acb79f888f088b7b7fc2428e5e646eb60d1a2c65620dc658b61e4d5fe` |
| 19 | `theorem` | [map_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/map-comm.md) | 114 | `result-track:3eab49c6cbade3d4904fabfc7dad78e3e8c65483db6c1a804ff8790ea613470e` |
| 20 | `theorem` | [mem_pmem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/mem-pmem.md) | 122 | `result-track:36a4b7799ed19a28d3051a1928eb3f4953a1c094b061dbc3ea6ed8ead7efc53c` |
| 21 | `theorem` | [pmap_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/pmap-bind.md) | 127 | `result-track:06871a9cab12006adb51a6e2d706dbce341efa00a24ce25d1384441a9e558d33` |
| 22 | `theorem` | [bind_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/bind-pmap.md) | 132 | `result-track:4ed07efdef63dd1901ede718961d8f43fa93be9190d5fb25c1fde6f77053eed6` |
| 23 | `theorem` | [pbind_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/pbind-eq-none.md) | 138 | `result-track:35cbcba6f56dbaf8c24d7be861ae8ab8066a94bc3fa3c40314048f7b951501bf` |
| 24 | `theorem` | [join_pmap_eq_pmap_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/join-pmap-eq-pmap-join.md) | 142 | `result-track:24b7a787df0719cb7602c3ce9f7d45ab3b484cc400983fd41c24ce48f531d3dd` |
| 25 | `theorem` | [pmap_bind_id_eq_pmap_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/pmap-bind-id-eq-pmap-join.md) | 146 | `result-track:e12756eacb2658e89d2009faaef34254cb6fb3d4a84205bda20bfe771a325bec` |
| 26 | `theorem` | [seq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/seq-some.md) | 154 | `result-track:2b8d61d96c2e00af0b7f3887391aa92162bbdd3bd93445430c283a98ee6b0b42` |
| 27 | `theorem` | [failure_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/failure-eq-none.md) | 158 | `result-track:c9cd23460ac727856fee07448eef2165d6b28f4011ce6d1354a037ee6c7e7b2a` |
| 28 | `theorem` | [guard_eq_some'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/guard-eq-some.md) | 161 | `result-track:c7cff1ac57d6b3f1cc71451638c3a9f898e9006e8ebd1c48cbf2f51c81ec5914` |
| 29 | `def` | [casesOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/caseson.md) | 166 | `declaration-track:f133b784c9e0c03db0892e0cd1f46a9257e57ff077cac7ff964b365afa32b594` |
| 30 | `theorem` | [casesOn'_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/caseson-none.md) | 171 | `result-track:b44007bfb7c229c4adb0ccf4c307b16cc29aeb90b36f69ced6b40519ab9cc98a` |
| 31 | `theorem` | [casesOn'_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/caseson-some.md) | 175 | `result-track:a6ad47b585f3519021afa069fbe079fa1d6c28a2c818afbf8d206ab71d30d17c` |
| 32 | `theorem` | [casesOn'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/caseson-coe.md) | 179 | `result-track:b0b51405dc828fb47d7ae62fcf90d25a031d110d64669e812df1a79f2174dbdc` |
| 33 | `theorem` | [casesOn'_none_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/caseson-none-coe.md) | 183 | `result-track:7be74ed35dde5a80b8d6edb08cba7ce0b267a4f58a66b343b2c6698adaa4cb08` |
| 34 | `lemma` | [casesOn'_eq_elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/caseson-eq-elim.md) | 186 | `result-track:ad910449cea0d3ee1bac9ab8c758c8ca544a8fb647438439c961542f4b34f7aa` |
| 35 | `theorem` | [orElse_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/orelse-eq-some.md) | 189 | `result-track:79dcd39ae2fd97ab07452f9a0ea4812ad83cce45bf9d16e9e81489fa1dee1cca` |
| 36 | `theorem` | [orElse_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/orelse-eq-none.md) | 193 | `result-track:e775dc858df4bf5813b838caf19773f203a49bc59a632685373630d869886e68` |
| 37 | `theorem` | [choice_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/choice-eq-none.md) | 198 | `result-track:999db7fef6140ae73ffd77eb4746cf7c418357a9b0ff0cfdb6551754e1cc4229` |
| 38 | `theorem` | [elim_none_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/elim-none-some.md) | 204 | `result-track:fc5304a75fdca4d7aae927b51675a0c897f0b8f3e74f51e6f453f3f932405896` |
| 39 | `theorem` | [elim_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/elim-comp-source-edition-2.md) | 207 | `result-track:f50f1c1521c67429ada31467b4e4d2e981c40ab27b653c05249dfcd9f27089bd` |
| 40 | `theorem` | [elim_comp₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/elim-comp.md) | 210 | `result-track:191b3b830a5e6d50fd3572d05d1592ba4c46a5ba43101a32ee558806543e0e59` |
| 41 | `theorem` | [elim_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/elim-apply.md) | 214 | `result-track:2604a4a8bc19acb26e0bb649b2b1a5404bedddd290a2ce809ba69c3bad889516` |
| 42 | `lemma` | [elim'_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/elim-update.md) | 219 | `result-track:f1970f2ea3f10a75ac6f43f8ff7d73ae2f1112b00ddbdb5e35a51d73bea36331` |
| 43 | `lemma` | [getD_comp_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/getd-comp-some.md) | 228 | `result-track:6b322810291dc8e9c0f52fba2c37e61aaba87292e456016f1c66e56ff8fd623c` |
| 44 | `theorem` | [none_eq_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/none-eq-map-iff.md) | 233 | `result-track:6d3565bc4104b2ab2b6a7ea03347d92bbc45a6da872011070b3e908919ec9306` |
| 45 | `theorem` | [some_eq_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionBasicNamespacedPublic.lean/declarations/some-eq-map-iff.md) | 237 | `result-track:c5332861ca629211b2a8baf5dc5fc7da3c80f2abc4080cb074bf8b84652e0f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f39953a49e3c441a954f748d3f32a5f0d56693f2f15df0cb2974720415c211b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1010363e2bd8d328b64905c6da94410f123201c379bccf4cc3747d5af848ecec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1010363e2bd8d328b64905c6da94410f123201c379bccf4cc3747d5af848ecec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
