# Verification target: Subsemigroup Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af02e39ff936e621ddc8bd5ac1688b1403183aee",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant4ab4d0c29bf4550a10c9108bd64cc5cab58ade6021ffc97fc6ca7c6aa14021f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af02e39ff936e621ddc8bd5ac1688b1403183aee`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant4ab4d0c29bf4550a10c9108bd64cc5cab58ade6021ffc97fc6ca7c6aa14021f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant4ab4d0c29bf4550a10c9108bd64cc5cab58ade6021ffc97fc6ca7c6aa14021f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulMemClass](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mulmemclass.md) | 62 | `declaration-track:b61b6ae78b720c01ed09555c149fa9755737f75404bdf5b69f5f6fa93fca1964` |
| 2 | `class` | [AddMemClass](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/addmemclass.md) | 69 | `declaration-track:df8b19f6fdcf6108847170a39bcce4b5ab1c4a7ed01b456903973499497be86b` |
| 3 | `structure` | [Subsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/subsemigroup.md) | 80 | `declaration-track:3fcb7e959906b475561df6c27d27641415dc4b6f8bca0ad0f0789dc82fe14c9d` |
| 4 | `structure` | [AddSubsemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/addsubsemigroup.md) | 87 | `declaration-track:d4c8f9734a9d91f8abdd0c936b6902a29ee1f8b1930a63431210114eeed3f642` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-6.md) | 98 | `declaration-track:541356dcddf211ee0c4b7f98f6a4dfd87e96f9fb269593488af853be8a68dac8` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-11.md) | 101 | `declaration-track:b8d4276939e68a0d7940518fa6eb45be66a545d480d223d3fead18a234fc8403` |
| 7 | `def` | [ofClass](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/ofclass.md) | 109 | `declaration-track:e2252a879b0772aebdcd6af72806d7d78154098fcfe908491d571f96f5fec57a` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:0d442125a4d422554c01c119cdef296a323281b236728b5a1aca33a80da2c19b` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:1c24f196ba22611c9c5ea013373f38f8e433e0a38e654e8f9f1ced066eabb6cb` |
| 10 | `theorem` | [mem_carrier](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mem-carrier.md) | 121 | `result-track:d0c27852f75989c11fc5d9872700d0c165d50d781c915c01f7bbd8aad77ba7f3` |
| 11 | `theorem` | [mem_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mem-mk.md) | 125 | `result-track:4f52b3d1f8c31215de61bf881068e45bdf5faed7fde41570027c4909e2252fc0` |
| 12 | `theorem` | [coe_set_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-set-mk.md) | 129 | `result-track:9850b98de3df4e22dd8162b6f1263bdb94f2d73c55b1dc9c8f5c63a29fd7d7c6` |
| 13 | `theorem` | [mk_le_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mk-le-mk.md) | 133 | `result-track:8a9ce9e1f7a224e08a2cb327b53b565abf92eadd2312846555561f3231404e36` |
| 14 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/ext.md) | 138 | `result-track:5d4e8c90ccc9ed2dddb0bf2a43261e79e96ddaabaf58aad5480a1baf5e5e24e9` |
| 15 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/copy.md) | 144 | `declaration-track:f7d0250c743c503905f20398a059fec0973e9e5d1c5216749ec737b977840018` |
| 16 | `theorem` | [coe_copy](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-copy.md) | 152 | `result-track:cb5dc2620e1cf07b3d5aa6d35c1b5da27ae463ec68f60ab28608b31ff5d218f7` |
| 17 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/copy-eq.md) | 156 | `result-track:db4fef11818c0a50966c8c1174918c362dd12a4305b11033ca6e77d7d002a10e` |
| 18 | `theorem` | [mul_mem](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mul-mem.md) | 163 | `result-track:effc69dbc557a9318b97e82e8b4235c666cf60dbb4a4b7d195a021fb6c45cdd9` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-5.md) | 168 | `declaration-track:2dc5f4570e1f182d8afaafb04d286b1c6d4e7a62f6e32f67770d146a6b4fc6a8` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance.md) | 174 | `declaration-track:05093780fa6d53293b60e2e0f537f78dc0828b5e2e9db104534e9197298dd782` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-4.md) | 179 | `declaration-track:2a4db60c64317fb19a29f6f24212c8db43503af964f35de2401cf4a22f4da2a2` |
| 22 | `theorem` | [notMem_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/notmem-bot.md) | 183 | `result-track:20f7401ba0a2e0e541e471f6bb60ca8c9095008a4a93050ec1c33253a8c99381` |
| 23 | `theorem` | [mem_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mem-top.md) | 187 | `result-track:279c0279477486f1514e59c80fd4f95342f5897d9f2b884771ae8339f35a4f04` |
| 24 | `theorem` | [coe_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-top.md) | 191 | `result-track:2ce0bb4860be9a0bf9ff763cdf9ba22eeda4f0beaa9e9abf84579601bc55b911` |
| 25 | `theorem` | [coe_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-bot.md) | 195 | `result-track:b4d038ecd0736ab56e6c05dc5dfa4edaafa277a68f524c36cd916afc00c033b3` |
| 26 | `lemma` | [mk_eq_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mk-eq-top.md) | 199 | `result-track:277b40477b15401c389a88b60666965a0703e3cbc1eb371bba70f1becf8ffde7` |
| 27 | `lemma` | [mk_eq_bot](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mk-eq-bot.md) | 203 | `result-track:bd081b1547610ea16a5db03e3e1c44543ba8492187db4f2a7a9bdf7be191db9b` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-8.md) | 208 | `declaration-track:9ff09e1a86b1e0018d7e5e311603d768b83f7836c9a447394a07a52042baf147` |
| 29 | `theorem` | [coe_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-inf.md) | 214 | `result-track:a6a8da23f3b0d68b99423ed76978f8410bc5c46400d67c2ed23e8926005e979f` |
| 30 | `theorem` | [mem_inf](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mem-inf.md) | 218 | `result-track:dc1073ce5017643682d824723e9a40245cab7c99906e7bcb16a61787f50698d6` |
| 31 | `theorem` | [subsingleton_of_subsingleton](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/subsingleton-of-subsingleton.md) | 222 | `result-track:ef28f3c3a552209236cc05f950ab4348349f186ad9f3f1bdcf388fb314548907` |
| 32 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-7.md) | 228 | `declaration-track:6a56ea5160aed75b4d30a56ee3fe1cc85b56ec6f393cb626e15a8d08a84a9f2d` |
| 33 | `def` | [eqLocus](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/eqlocus.md) | 244 | `declaration-track:d7afb45246508e8c291b02f7aaf31fe8c7b544367ac95507d511ee2362dbdc51` |
| 34 | `theorem` | [mem_eqLocus](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mem-eqlocus.md) | 249 | `result-track:86c670c3ff7d7cd1564b01d6fa907ea9c2811ea10cf704c03f99e1a8f68665ff` |
| 35 | `theorem` | [eq_of_eqOn_top](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/eq-of-eqon-top.md) | 252 | `result-track:9d199b633d3e83bb6107e3510ede86aa5dd47157433d260a0b17083b0e41d47c` |
| 36 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-9.md) | 266 | `declaration-track:a2d36f4d58df62350754aed937b6c9b66378e0b38905e92325210e04009cd61f` |
| 37 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-mul.md) | 271 | `result-track:03d324f0c6279013b0833aa5e4bbca512c0aa74a005bb62e6736db5918970a91` |
| 38 | `theorem` | [mk_mul_mk](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mk-mul-mk.md) | 276 | `result-track:54006646c6fe42ae1eaf35c0d493f9ff95355555dc215a5b460a05a8aaf77e1d` |
| 39 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/mul-def.md) | 281 | `result-track:ab5ab7ef32d382ae2925328b09f82c8a48330697c72f00b8c129793340153f9c` |
| 40 | `instance` | [toSemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/tosemigroup.md) | 287 | `declaration-track:b659b95c7953aaaecca93835fd90c8b6108fb192310454fe23c2a95cee707d36` |
| 41 | `instance` | [toCommSemigroup](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/tocommsemigroup.md) | 293 | `declaration-track:6354d174c7e969b0bfb0279c6b9fd5fc545788086e4f3d93098f04bbf843fa90` |
| 42 | `instance` | [isLeftCancelMul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/isleftcancelmul.md) | 300 | `declaration-track:bbef5c23ed9b81f7fed4283c3aef87fe197fd202a2cd14ad78c8c51ed91967c4` |
| 43 | `instance` | [isRightCancelMul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/isrightcancelmul.md) | 306 | `declaration-track:5a9dc13ed0cead2b6c40af22aff859aa572189d2282bd342cafd14dfb7691f42` |
| 44 | `instance` | [isCancelMul](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/iscancelmul.md) | 311 | `declaration-track:5ca59c7d68244bd7be8d40ef9348cf774749c1e89267e2ae02324905ca9b3985` |
| 45 | `def` | [subtype](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/subtype.md) | 316 | `declaration-track:7ffde2d6a9f9dfb6dbdd7d4db0642656a9049ec9ddb2de62f4592f07a2e3825a` |
| 46 | `lemma` | [subtype_apply](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/subtype-apply.md) | 321 | `result-track:e0784d24e58577158589292330cec45050e1ffdf5f698bace15ed5792b738247` |
| 47 | `lemma` | [subtype_injective](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/subtype-injective.md) | 325 | `result-track:66e242eb9c82e7b82fd92d992b33a34622e57dd1a2544aa7de9463ce9789e279` |
| 48 | `theorem` | [coe_subtype](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/coe-subtype.md) | 330 | `result-track:43a2049c10ba9f1cbe76ee15ac7dfc2e1a21413bf4e483108fb2de7e7516b86d` |
| 49 | `lemma` | [isMulCommutative_iff_of_setLike](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/ismulcommutative-iff-of-setlike.md) | 340 | `result-track:fe02768f3c4898eee6a7883b6ede87a93c20916099b1f6d0f687073b29bfbbdf` |
| 50 | `lemma` | [setLike_mul_comm](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/setlike-mul-comm.md) | 349 | `result-track:900bb410e7e540747534e10dbb73b2255c6a0f5a02ce3c704f139951ae79a7f3` |
| 51 | `lemma` | [isMulCommutative_anti](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/ismulcommutative-anti.md) | 355 | `result-track:f37742a2a4254e1e35a39d230bf4595c0bfa4e7c830119fafafed998a1b7cb94` |
| 52 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-10.md) | 360 | `declaration-track:b2964e83273debc5dcf9889138aee56e4b93bc374f65541a5b5ce0dd0fbf3f4d` |
| 53 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubsemigroupDefsPublic.lean/declarations/instance-source-edition-12.md) | 363 | `declaration-track:ebf030bff0ae878b8db35fc52b14175917d061d290e2a9ac452a5de51fed0051` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938b0a39b124b4ce1006f060494c89294cabf5fa0206d11259f23aeb4122a4e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant4ab4d0c29bf4550a10c9108bd64cc5cab58ade6021ffc97fc6ca7c6aa14021f2.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant4ab4d0c29bf4550a10c9108bd64cc5cab58ade6021ffc97fc6ca7c6aa14021f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
