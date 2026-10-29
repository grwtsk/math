# Verification target: Freiman Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f015e9840e1f7fbd5eb3c7e3a4fc5f216365438",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variant720b988b522ac854fd5dd9237064f93ec5537e453fee54193285f3384ba3cb52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FreimanHomPublic.lean/index.md) · [Full source](../../../../Combinatorics/FreimanHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f015e9840e1f7fbd5eb3c7e3a4fc5f216365438`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variant720b988b522ac854fd5dd9237064f93ec5537e453fee54193285f3384ba3cb52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FreimanHom/Variant720b988b522ac854fd5dd9237064f93ec5537e453fee54193285f3384ba3cb52.lean.json)

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
| 1 | `structure` | [IsAddFreimanHom](../../../../Combinatorics/FreimanHomPublic.lean/declarations/isaddfreimanhom.md) | 80 | `declaration-track:8e7b2349f40305401d5037a56e6cb6b9bfc87d5253082f7bf5e50ced27a4c7e9` |
| 2 | `structure` | [IsMulFreimanHom](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom.md) | 91 | `declaration-track:ef521784eb62c673a5709d03e865d21dfceaf5f64059c280d2d88303046da8ad` |
| 3 | `structure` | [IsAddFreimanIso](../../../../Combinatorics/FreimanHomPublic.lean/declarations/isaddfreimaniso.md) | 100 | `declaration-track:0f77e5f86bde7d403107033a6b3743d37b514b0f12698704b54a155dcd68814b` |
| 4 | `structure` | [IsMulFreimanIso](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso.md) | 111 | `declaration-track:5eb759f76b4dac6e48aa51b04f304bc3cd49360eda205c453eecde3fe4813ea9` |
| 5 | `lemma` | [IsMulFreimanIso.isMulFreimanHom](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-ismulfreimanhom.md) | 119 | `result-track:8c5b70adec9eb2568d4e21c23e78531b6fd2957382fea98bdba5b0bbb0167fed` |
| 6 | `lemma` | [IsMulFreimanHom.congr](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-congr.md) | 123 | `result-track:b4701f5466dd350b54b7a2de2024485d1c6666c13751ff32c6b722540cc24621` |
| 7 | `lemma` | [IsMulFreimanIso.congr](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-congr.md) | 130 | `result-track:2ba81f9bd86a9da2523750cde43230de6199097fac091d5cb794f845e5f871f2` |
| 8 | `lemma` | [IsMulFreimanIso.symm](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-symm.md) | 146 | `result-track:27bf649b7dfbc362d6d60e4ea41ea04687c72162a087c743dbf5c1ff8f2d7578` |
| 9 | `lemma` | [IsMulFreimanHom.to_isMulFreimanIso](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-to-ismulfreimaniso.md) | 164 | `result-track:839aaa69e2434f50948b4d4a72f71eb6c67d231aea9ae07c76efa4ae1617b63f` |
| 10 | `lemma` | [IsMulFreimanIso.invFunOn](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-invfunon.md) | 182 | `result-track:60a10cd0faaaa9defbe7c9633e6ece2de72f84ceab491ed9fe897c93035fd02d` |
| 11 | `lemma` | [IsMulFreimanHom.prod_apply](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-prod-apply.md) | 189 | `result-track:2affeba534d67aa46605b3a99daf291a91df4681662b3fbe1b5b81a61d62bf92` |
| 12 | `lemma` | [IsMulFreimanHom.mul_eq_mul](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-mul-eq-mul.md) | 196 | `result-track:1d5e2ffb723a9aeb73c01846ca81b120599f55ad1b17f1ebb07159820290fa41` |
| 13 | `lemma` | [IsMulFreimanIso.mul_eq_mul](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-mul-eq-mul.md) | 203 | `result-track:73788542fc8dde03f63f44ad08a9a4702136e1ce5d700ee76351e32a5f265e90` |
| 14 | `lemma` | [isMulFreimanHom_two](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-two.md) | 211 | `result-track:ccaae4a368ce14da5ae85a0c9897142b116eb43b0237a007d1771d0174e027d1` |
| 15 | `lemma` | [isMulFreimanIso_two](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-two.md) | 219 | `result-track:7ba26b3f89975148409f78011b01cdce52d230bc42ca393b3135d0ac68f7d415` |
| 16 | `lemma` | [isMulFreimanHom_id](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-id.md) | 225 | `result-track:52822b3c04c67c33f353c6e97f4aedfd5bf36114559b7c10f3a28e5eaa5aca84` |
| 17 | `lemma` | [isMulFreimanIso_id](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-id.md) | 229 | `result-track:f29efd25544c8fcfca9b653daaa431306d84f61fd099a3a3b66658caf9f2c494` |
| 18 | `lemma` | [IsMulFreimanHom.comp](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-comp.md) | 233 | `result-track:e251b0d4a497c94cea074f291a7cc7edd82e932519ef557815adbe47662a8fb0` |
| 19 | `lemma` | [IsMulFreimanIso.comp](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-comp.md) | 243 | `result-track:f387f96827b26b8c1151109ef7a4b6677103526df35124845402b3a112e48c20` |
| 20 | `lemma` | [IsMulFreimanHom.subset](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-subset.md) | 253 | `result-track:4c1b8aa93e4d674505eab4c16a12dcd92f63edfda819dda95616f87acd32ff48` |
| 21 | `lemma` | [IsMulFreimanHom.superset](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-superset.md) | 258 | `result-track:b32ea852ade21fe9a4840815525b16f0a9fa196e6e4761208bafc3994ba15bd7` |
| 22 | `lemma` | [IsMulFreimanIso.subset](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-subset.md) | 261 | `result-track:3bf1d3985b5f5c2e59270de5a8515ce3a001d872d1d15e210ceb7afda92af70a` |
| 23 | `lemma` | [isMulFreimanHom_const](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-const.md) | 268 | `result-track:9c6db3d38a272836c9379228c4fc7e11b856bd4614cf585b92e4212c9f7ba29b` |
| 24 | `lemma` | [isMulFreimanHom_zero_iff](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-zero-iff.md) | 273 | `result-track:c3bea0bbcfa7c7dc6cda8b6ad810ee26a8da65ad26871444f5029e6e68d72abb` |
| 25 | `lemma` | [isMulFreimanIso_zero_iff](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-zero-iff.md) | 277 | `result-track:a0ece97ed87d17b4533871201e908e0139df3fcd70339ec381407d57ecf05457` |
| 26 | `lemma` | [isMulFreimanHom_one_iff](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-one-iff.md) | 281 | `result-track:c1f8101c1c9dad163b000d909a447f8b443dd06462afd5ad846de180d5ca26ad` |
| 27 | `lemma` | [isMulFreimanIso_one_iff](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-one-iff.md) | 285 | `result-track:b706906c18ca529626a33d422484430c0d3ebe8338e7b8259f52cd49fe4ab545` |
| 28 | `lemma` | [isMulFreimanHom_empty](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-empty.md) | 289 | `result-track:6400017fdf8fc861c892d66edc1022d1ad8c9d57e731708d23c17d584211ab1e` |
| 29 | `lemma` | [isMulFreimanIso_empty](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-empty.md) | 294 | `result-track:36ce7efbcf8c7b2e59edf5805f2258536d20161e74593985cf05d51011c82fc8` |
| 30 | `lemma` | [IsMulFreimanHom.mul](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-mul.md) | 299 | `result-track:e4cb4b262b0fc3d1bf18e3f9daac5b2aaa0908fc51dfbfed5935348bb2c0a199` |
| 31 | `lemma` | [MulHomClass.isMulFreimanHom](../../../../Combinatorics/FreimanHomPublic.lean/declarations/mulhomclass-ismulfreimanhom.md) | 306 | `result-track:03e971d665adbc36624b02097e77b0f6bacee64782494c738f1b94ebcc20af24` |
| 32 | `lemma` | [MulEquivClass.isMulFreimanIso](../../../../Combinatorics/FreimanHomPublic.lean/declarations/mulequivclass-ismulfreimaniso.md) | 320 | `result-track:2fa94e418827f7c2b8f331cda1d82356167446586835c4ed3a17778f38749bef` |
| 33 | `lemma` | [IsMulFreimanHom.subtypeVal](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-subtypeval.md) | 327 | `result-track:0b5fb877167788b730193fef36505e4d9810019171aa398c12c0f779f0e42b11` |
| 34 | `lemma` | [isMulFreimanHom_antitone](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-antitone.md) | 337 | `result-track:120d6d74d549bc73a489b1b6bd5aa26f288548fc65b6c1977bbd0cf3d5af4626` |
| 35 | `lemma` | [IsMulFreimanHom.mono](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-mono.md) | 348 | `result-track:1134d6b4d25570cab74939843c3b9f7e440b114a390b24b6fdf43500656d1b5d` |
| 36 | `lemma` | [IsMulFreimanIso.mono](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-mono.md) | 357 | `result-track:4c31ccaf33f33e2dbcace9cce7e0a80b9c2f40884fb317bf66808f428f022670` |
| 37 | `lemma` | [IsMulFreimanHom.inv](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-inv.md) | 368 | `result-track:36a3d293c70dafdf73521693006070dccfac1847cbd9d63498b7b991fba18868` |
| 38 | `lemma` | [IsMulFreimanHom.div](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-div.md) | 373 | `result-track:0292b24ac3cd698c2171fc598b6d30396aec27d3a7141fca0e9a4939e937e09d` |
| 39 | `lemma` | [IsMulFreimanHom.fst](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-fst.md) | 386 | `result-track:5938bc0d4c0092171e50892463e7b5cfae22f0eda592864a7c86f1f5ef81da82` |
| 40 | `lemma` | [IsMulFreimanHom.snd](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-snd.md) | 391 | `result-track:5cc19ae32f61e049fd98e18ba8e06fe82949fb0e48abccf6932acd4fe1a293ba` |
| 41 | `lemma` | [IsMulFreimanHom.prodMk](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-prodmk.md) | 401 | `result-track:470a2d41b34f337f0833148d069c732995dfe3db15a9568a6ad674d929f38813` |
| 42 | `lemma` | [IsMulFreimanHom.prodMap](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimanhom-prodmap.md) | 416 | `result-track:d3a61f759b161126ffc039b3de1bc99b45da8453552467df46b1bda8653955c3` |
| 43 | `lemma` | [IsMulFreimanIso.prodMap](../../../../Combinatorics/FreimanHomPublic.lean/declarations/ismulfreimaniso-prodmap.md) | 421 | `result-track:141ace5c509db71ce7b4b248f58501338f59b856074611b0a2263ea7e4f4bad0` |
| 44 | `lemma` | [aux](../../../../Combinatorics/FreimanHomPublic.lean/declarations/aux.md) | 436 | `result-track:e8d5f98b837b18858706f27ffc93e32fc6509f415fbf8131ad6376e3700dc62f` |
| 45 | `lemma` | [isAddFreimanIso_Iic](../../../../Combinatorics/FreimanHomPublic.lean/declarations/isaddfreimaniso-iic.md) | 443 | `result-track:94389c841525fcbd4f28e8396e0909634dd6fa683a5ffe7b358f1528b4e5c73e` |
| 46 | `lemma` | [isAddFreimanIso_Iio](../../../../Combinatorics/FreimanHomPublic.lean/declarations/isaddfreimaniso-iio.md) | 463 | `result-track:f40c6bb2882aa651a137fe5b43f6fd5cb69d5995e0c58aebefda3f5d659a1521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de092583739d5793fdb523416a02003d1e46ee90ec1498662edfe3cb2e6eff06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variant720b988b522ac854fd5dd9237064f93ec5537e453fee54193285f3384ba3cb52.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FreimanHom/Variant720b988b522ac854fd5dd9237064f93ec5537e453fee54193285f3384ba3cb52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
