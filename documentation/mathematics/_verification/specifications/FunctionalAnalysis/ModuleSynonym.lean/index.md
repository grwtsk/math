# Verification target: Module Synonym

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e49967f5da09b3913407aeaaabb0c9126f6f2e5",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant5d4640acb961ec53391dccd66469ea35171e29ab30b82a49224bfa1b797ed063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ModuleSynonym.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ModuleSynonym.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e49967f5da09b3913407aeaaabb0c9126f6f2e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant5d4640acb961ec53391dccd66469ea35171e29ab30b82a49224bfa1b797ed063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant5d4640acb961ec53391dccd66469ea35171e29ab30b82a49224bfa1b797ed063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithCStarModule](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/withcstarmodule.md) | 55 | `declaration-track:75e5f1703ed9febb631e0002627c57d86e6503dbf00cfcefdc817b12cdf33818` |
| 2 | `def` | [equiv](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv.md) | 68 | `declaration-track:afd022ac4f0ff238e0962443b9251c00e405d5dd0d69631dc4d7571ee6a33232` |
| 3 | `instance` | [instNontrivial](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instnontrivial.md) | 70 | `declaration-track:a8b7276a12b4b5404c1f4794e5c323a26464bef2d556a8ebe4ead6e355c07905` |
| 4 | `instance` | [instInhabited](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instinhabited.md) | 71 | `declaration-track:348d845a74dfa3d1b11fb86d164d89adcba599ef8629d56abe2f87d7fbde3029` |
| 5 | `instance` | [instNonempty](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instnonempty.md) | 72 | `declaration-track:a48d6b27225bc5a671d717aa9d62e4772a077e622244312605c8dc904f3601fa` |
| 6 | `instance` | [instUnique](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instunique.md) | 73 | `declaration-track:8e9c7c16d77685c898e8c1bb73d80dd00a887dc6b039826a432c96a1b4672a1c` |
| 7 | `instance` | [instZero](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instzero.md) | 77 | `declaration-track:2a26ca95c8e122dc584a196b781b23763033a43d189d4bb3247c0dd5a3bb7338` |
| 8 | `instance` | [instAdd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instadd.md) | 78 | `declaration-track:9b91d7155b546a72111f97466a83cbb84843a2ec0da1f62d48372e714eb188cf` |
| 9 | `instance` | [instSub](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instsub.md) | 79 | `declaration-track:82637b5eaa0a4fb61034e1afbbcc0f27266bb3215fc886829bbae689ca81aea7` |
| 10 | `instance` | [instNeg](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instneg.md) | 80 | `declaration-track:ff6b45f938c103354a548d8d1c0434f3994d4d386dba616c78fcd1b5f51d1e4d` |
| 11 | `instance` | [instAddMonoid](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instaddmonoid.md) | 81 | `declaration-track:cd6a1b0f66d3f3265857125adb84963bd57a1d7fa251531efa629ba21d3645a5` |
| 12 | `instance` | [instSubNegMonoid](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instsubnegmonoid.md) | 82 | `declaration-track:c09fe30846307d82278faa97b2ba759e3321642dfb016eb8362451dd9f7b7763` |
| 13 | `instance` | [instSubNegZeroMonoid](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instsubnegzeromonoid.md) | 83 | `declaration-track:5a579accb25fb98b2b88f9b5892f17d47aac1b5eb5205df57321e50a6cf44e22` |
| 14 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instaddcommgroup.md) | 86 | `declaration-track:532276310e06601ceec0a79eb1b7bf3923cdc2d11c460dae4d340fead776b122` |
| 15 | `instance` | [instSMul](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instsmul.md) | 88 | `declaration-track:4665680e68aec511bd361f8b1db11c0a3f6d1f5ebea346af9010a261999575cd` |
| 16 | `instance` | [instModule](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instmodule.md) | 90 | `declaration-track:e1d38b2f793754533a877fd0f609f87eb791892f08d3ebdd4be6267ed040509f` |
| 17 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instisscalartower.md) | 94 | `declaration-track:541960f9c1f3880e0385401bba6c286048dea0545cb44f15ec3a6df0e40c9150` |
| 18 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instsmulcommclass.md) | 98 | `declaration-track:d5705c475358a6e9d6b4694cb5ddac85c1fedeb881f28e816db17a23dc7442e8` |
| 19 | `theorem` | [equiv_zero](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-zero.md) | 114 | `result-track:2ab4214c87befd48915586f8e81fb3bc6d25d18623591a86924a97dceef6d52f` |
| 20 | `theorem` | [equiv_symm_zero](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-zero.md) | 118 | `result-track:669788adb6e684fe34021bc92d7a1f71676061e535294e9a2441158e0eb0ed20` |
| 21 | `theorem` | [equiv_add](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-add.md) | 122 | `result-track:c43ad8c4e457198224e7a2943e41ebf35f7a222c11ebf3e4373dd9283e0910d7` |
| 22 | `theorem` | [equiv_symm_add](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-add.md) | 126 | `result-track:ecfa47d5d9c5257becc1afef6213e3c62eb8d0ebcf7ed86a073f590b6674ed67` |
| 23 | `theorem` | [equiv_sub](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-sub.md) | 131 | `result-track:101938969b18bcbee41c9e425a287689a5f6a7b540a830a309e0dddcf2af5e2a` |
| 24 | `theorem` | [equiv_symm_sub](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-sub.md) | 135 | `result-track:0fd747e6ef6d9c8dcc692d26aaba872048a8f6e2c02ff98f9f9f460f9004e222` |
| 25 | `theorem` | [equiv_neg](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-neg.md) | 140 | `result-track:0e46b0f31763929495e0e4b29e57c0896feb338b0f36030af1c1d8fd116a604a` |
| 26 | `theorem` | [equiv_symm_neg](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-neg.md) | 144 | `result-track:2f8afadd1f91978ee571e2bb93bf7d0f6c10670c9569d0ad9e36a079ac37031f` |
| 27 | `theorem` | [equiv_smul](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-smul.md) | 150 | `result-track:032d38708ab8224967d030ad5712196400e63c32f6d8144eaba07791fc3129f5` |
| 28 | `theorem` | [equiv_symm_smul](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-smul.md) | 154 | `result-track:829af3c104c38346a35ad302ce8e1d66aac3b1bab7d9493a3c469d30a8999a61` |
| 29 | `def` | [addEquiv](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/addequiv.md) | 160 | `declaration-track:56619230f38e6f794914e0b51a9c83aace62f48ea034b0d723a8b9c708a94766` |
| 30 | `def` | [linearEquiv](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/linearequiv.md) | 167 | `declaration-track:722d5eaace0c8f985d22908d51d2d7f0b9897537aa9f78ae68eb90a4054c64c3` |
| 31 | `lemma` | [map_top_submodule](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/map-top-submodule.md) | 172 | `result-track:681bac1f9ac238b40632ddcad90376a7ff06320d561a312571e10a1fd16c551e` |
| 32 | `instance` | [instModuleFinite](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instmodulefinite.md) | 179 | `declaration-track:71b0ca59d99a199153196544c1325e5bfb243f21bd5691ae6ec7f005c455fd82` |
| 33 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance-source-edition-4.md) | 186 | `declaration-track:5658b7f550292e6e7884c6bdf4b2124785b0551e43a13cba5a5355bc7267512c` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance-source-edition-7.md) | 188 | `declaration-track:6906023c829576bd727beebf084ea5435e74a5d00fc5877aa2c5b54b15182a38` |
| 35 | `def` | [uniformEquiv](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/uniformequiv.md) | 192 | `declaration-track:a9cc1e5391696cbfdc1ab93ef7a8c7cb1b0d5ad156e3c1edeaf82841f20ad5da` |
| 36 | `def` | [equivL](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equivl.md) | 197 | `declaration-track:7578c9e899d2dfd93bdd43bfc424415a73a7fddff444357f67a9dee4b2a3afbd` |
| 37 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance-source-edition-3.md) | 202 | `declaration-track:4829cef4b18b5b179266173b430f2db8437057b3a519bac88bb02347f258df19` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance-source-edition-6.md) | 205 | `declaration-track:62f59ffc090a08a7fc32d541ed80815993823d02b450700f4573f73cf1efc937` |
| 39 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance.md) | 208 | `declaration-track:3b85e0ff87b54c732412dfc52ca6962d281110bdf1b7aabacbf0abdb9b8b9d78` |
| 40 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance-source-edition-2.md) | 211 | `declaration-track:475d9d4dea46a65f53da944559da91a098f830df1b1d981327a2de0fa8a4410d` |
| 41 | `theorem` | [zero_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/zero-fst.md) | 233 | `result-track:3a65281bfc5d2d2e64731d7f621290d2565bc3fba118a21b21217b9c0f2d24ec` |
| 42 | `theorem` | [zero_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/zero-snd.md) | 237 | `result-track:ffc462426afc3c56648bacfd4890c9c710aad44db7e70374a75299a03233be18` |
| 43 | `theorem` | [add_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/add-fst.md) | 241 | `result-track:fcb766afd043aff5436ab4624e449b8dcdfd1b80d1e780db053f677aa3016bb7` |
| 44 | `theorem` | [add_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/add-snd.md) | 245 | `result-track:7fdf31c767d0ed4c7338a1dae80edcd5ad351b505373c10a0b23d874abc2700a` |
| 45 | `theorem` | [sub_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/sub-fst.md) | 249 | `result-track:f92bc9ff6e7b38b997b0835c9c71202f817ddb0f0e9802a4ec57e53d5b75367b` |
| 46 | `theorem` | [sub_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/sub-snd.md) | 253 | `result-track:4b8f2a840cb32d421e6ab8664b25a632f417e47ff572cff99adc0881b53c0b3a` |
| 47 | `theorem` | [neg_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/neg-fst.md) | 257 | `result-track:81f39e6442c5a838490a080edbb4bc74bfad6c7330d549573b1ca3b47b0765f5` |
| 48 | `theorem` | [neg_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/neg-snd.md) | 261 | `result-track:3533d73fc8d2aebeef9cb1eec983b66b4308ed1b3cfb96b00bca07a53b9e0fba` |
| 49 | `theorem` | [smul_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/smul-fst.md) | 267 | `result-track:c9826d3b8558af1d546802077b97f106a8d85498f2e2aae8e62592406018bca5` |
| 50 | `theorem` | [smul_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/smul-snd.md) | 271 | `result-track:6d405c1385ae01babb011bdc500e8d56cfdcc73765d9495549a34f1dbd85304d` |
| 51 | `theorem` | [equiv_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-fst.md) | 278 | `result-track:8b9c272b41fa6377b34d426dfecfeab5e5707d04ba308efb1c31fa8b33ab12a9` |
| 52 | `theorem` | [equiv_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-snd.md) | 282 | `result-track:9ed9f2d2873cb9d3e407ef5754e2e630cf267ffa57bbcd6c72e64041e5153794` |
| 53 | `theorem` | [equiv_symm_fst](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-fst.md) | 286 | `result-track:5a6d577d00d2eb643ecbe1fa5a889c357a005a21df45f56c00bff988d15dd2f7` |
| 54 | `theorem` | [equiv_symm_snd](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-snd.md) | 290 | `result-track:efe98654da5f9cf27f2a7ee64dfaa626eb3e808e7bcabf69449fefa2abf41716` |
| 55 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/instance-source-edition-5.md) | 306 | `declaration-track:5d3549737e4b8d7072b2e6e24514e6ca5795dcb50430c82f1b6598ec1f6f9b38` |
| 56 | `theorem` | [ext](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/ext.md) | 310 | `result-track:62380786758334f95e5731e9a834241c4ff7582e0ee4afc61f588b44ea40df7e` |
| 57 | `theorem` | [zero_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/zero-apply.md) | 323 | `result-track:01d19b64efd627f687b92174e1fdf68fa0402f99321beaa04b329b2f867e3d49` |
| 58 | `theorem` | [add_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/add-apply.md) | 327 | `result-track:3e24f43121b5e7dc614cd3b21ba194e976fcb8bf0d093c150bf6a2cf7986f0fd` |
| 59 | `theorem` | [sub_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/sub-apply.md) | 331 | `result-track:35a5eb113962708b032788f6ab7e4c2c8f892161da4e0b5cf9c89eec1ef8b7bb` |
| 60 | `theorem` | [neg_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/neg-apply.md) | 335 | `result-track:f0309d452980a5e4ebc467d71ad61aabba86b15b06b22d417b56d6b82a7e6369` |
| 61 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/smul-apply.md) | 341 | `result-track:7336c9db03c79c0ac64e415e7432beec7d2ae946cc7939e8ebb75c10d5cff313` |
| 62 | `theorem` | [equiv_pi_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-pi-apply.md) | 348 | `result-track:258b4231a4763a6b0488c711c792a816e1a15fc30e4fa8030c662931fab21f05` |
| 63 | `theorem` | [equiv_symm_pi_apply](../../../../FunctionalAnalysis/ModuleSynonym.lean/declarations/equiv-symm-pi-apply.md) | 352 | `result-track:b745b77f438eb8bbc3c0031af3c90fc76b09b80fe209565b241f843a26d6e3ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4049ad6da7985f2493d7870fd58c8d1f1ffab669e89a3c19f81f33f141ba2a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant5d4640acb961ec53391dccd66469ea35171e29ab30b82a49224bfa1b797ed063.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Synonym/Variant5d4640acb961ec53391dccd66469ea35171e29ab30b82a49224bfa1b797ed063.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
