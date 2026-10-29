# Verification target: Weights Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ec2915202ded868d35553e0e3b567102de51807",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ec2915202ded868d35553e0e3b567102de51807`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Divisibility.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Nilpotent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Engel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/weightspace.md) | 59 | `declaration-track:90069f7f305e927a1e830ccd8014ae3b3774581f246fe478ab95c74a5183ebda` |
| 2 | `lemma` | [mem_weightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/mem-weightspace.md) | 63 | `result-track:2149b3c84387d9620dc38cd5946e93d29b83e1d073490d48324f3b576eba7fdb` |
| 3 | `theorem` | [weight_vector_multiplication](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/weight-vector-multiplication.md) | 72 | `result-track:88ea22c27a549aca61975c7d08432ce691432951c7e56369c879d8924738754a` |
| 4 | `lemma` | [lie_mem_maxGenEigenspace_toEnd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/lie-mem-maxgeneigenspace-toend.md) | 144 | `result-track:1fe702c4caae3f88f766246ae9f478ca1899fe50f10fe17edece31b857d81f04` |
| 5 | `def` | [genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspaceof.md) | 159 | `declaration-track:2c72c844c746ee8a9dee464c0e7b5288913539d44e1bed2800fa7bf7f062a05b` |
| 6 | `theorem` | [mem_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/mem-genweightspaceof.md) | 173 | `result-track:df7e72d8cf9f937d17c6430f2d2f8ea459832b74594666da53027f93695cbbc5` |
| 7 | `theorem` | [coe_genWeightSpaceOf_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/coe-genweightspaceof-zero.md) | 177 | `result-track:6213eff9e936e2d4ae23f524bf8b7a2a75798e4b8e6ff77c6dd386b8698a2706` |
| 8 | `def` | [genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspace.md) | 187 | `declaration-track:8b7562f1b9c7b76aa9305c4a460e968026faaf394b5a945e90969070d59a5574` |
| 9 | `theorem` | [mem_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/mem-genweightspace.md) | 190 | `result-track:0d86bb41d0d7240276e55e252cd673d93392238d6412521c181a3e7175c49f56` |
| 10 | `lemma` | [genWeightSpace_le_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspace-le-genweightspaceof.md) | 194 | `result-track:947e56b102ee83d6e9baeb84b58344525ee11e4650fa8a0c196d5a57a1d4d32f` |
| 11 | `lemma` | [weightSpace_le_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/weightspace-le-genweightspace.md) | 198 | `result-track:82cae243ce09f6f6fc6355fc97c438c75683655dd6114342514288d008f90568` |
| 12 | `structure` | [Weight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/weight.md) | 209 | `declaration-track:1730a437f59431cc94f871847d96874a40bfc3a81a76d440c7a142aedf99198d` |
| 13 | `instance` | [instFunLike](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instfunlike.md) | 216 | `declaration-track:dc88bcbef67fd869d8a3cd6b239c39ac6c03fe46afc3cc4ea69d3e751c76ac6a` |
| 14 | `lemma` | [coe_weight_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/coe-weight-mk.md) | 220 | `result-track:b87fa9263c2ee193b687eaacb8ea28cbdc26a7f1b815a84ffce5659c7fffa97c` |
| 15 | `lemma` | [genWeightSpace_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspace-ne-bot.md) | 224 | `result-track:597b2ec8c0663b7a3cde58c9f9eca19ee6e8096c0e8c978b68f13e064d4dea8a` |
| 16 | `lemma` | [ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/ext.md) | 228 | `result-track:dc8cba7dc88ba2475e75ff0160e07a4fb33d29541b7551796bae3aa25078eb0c` |
| 17 | `lemma` | [ext_iff'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/ext-iff.md) | 231 | `result-track:e63924015a06756aaf2d87f70fc82a4ee5d592a686b45f870a1be4b8dd36f4af` |
| 18 | `lemma` | [exists_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/exists-ne-zero.md) | 233 | `result-track:773f0b1a12489d69b817b05b1c1973e42b3c74a2a82b8506bd48dbbe8cb53f9b` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-4.md) | 237 | `declaration-track:bd82849eff99b780fa60909a3af09d290c897477e4ddbf7187520700a9451cb2` |
| 20 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance.md) | 240 | `declaration-track:0f77172c3c6d2d7ed81e47a7193d6f5df2debaebee56e45c42118d9f365f3400` |
| 21 | `lemma` | [coe_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/coe-zero.md) | 244 | `result-track:7fe03f904b9959b6990ef8e29bcd7871e41897c2197ca7aa8a92d4d732809758` |
| 22 | `lemma` | [zero_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/zero-apply.md) | 246 | `result-track:0c6f0832e3f9566c1c841cb30f43bd62d20bf162b15123ba4602d195fee49e5a` |
| 23 | `def` | [IsZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iszero.md) | 252 | `declaration-track:3b18b8ffa22c28d26fe8ba33033c8ee48cf755db2145d223e4c53a24a5f30144` |
| 24 | `lemma` | [IsZero.eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iszero-eq.md) | 254 | `result-track:655d1a39c3b3f97361e48ad43e1721f7408bcd8cbe67f89f2eb9a1986851cc4a` |
| 25 | `lemma` | [coe_eq_zero_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/coe-eq-zero-iff.md) | 256 | `result-track:3e40a3590340a3546b0d2b83778e54277ce6afd3a706dfe4df45f0dc21e0398a` |
| 26 | `lemma` | [isZero_iff_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iszero-iff-eq-zero.md) | 258 | `result-track:3d9b33c330dc6a36a0720b2be22f2925a5f756fccefc109ed801eef2753225fb` |
| 27 | `lemma` | [isZero_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iszero-zero.md) | 261 | `result-track:e56fab5efd74598515e254428534f95a023fb5c0ae1133982936e31989ebf7c9` |
| 28 | `abbrev` | [IsNonZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isnonzero.md) | 264 | `declaration-track:7074a87ce6b1349c42499bf048bed6179c96714379cd57a2a14397ce5a5c85e2` |
| 29 | `lemma` | [isNonZero_iff_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isnonzero-iff-ne-zero.md) | 266 | `result-track:7b42a92363531b40f7b2c68e30632662cb39101710ab279760f52f1fd9cdab7b` |
| 30 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-7.md) | 269 | `declaration-track:f6f0864f819774d93893b67fed0232fa7404fa21f496d38ad23e34682f88bb54` |
| 31 | `def` | [equivSetOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/equivsetof.md) | 273 | `declaration-track:a30b2e94b31b1d47007ab11132b02cb2b11469a316f1e77a705c8cfe42a75cf0` |
| 32 | `lemma` | [genWeightSpaceOf_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspaceof-ne-bot.md) | 279 | `result-track:08cd11ad3ace52f1d05e75039b8421188941f37cee771ec9f474cde27456cb32` |
| 33 | `lemma` | [hasEigenvalueAt](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/haseigenvalueat.md) | 286 | `result-track:894b6528e13fcf42ce2bb1883d78cd385073d4827dbf8b90ceee4ef76b2a4c6f` |
| 34 | `lemma` | [apply_eq_zero_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/apply-eq-zero-of-isnilpotent.md) | 292 | `result-track:63c1c1bfa0561059b827c396647f337b23b46bc771975ecfe136810fe5c7ad82` |
| 35 | `theorem` | [zero_genWeightSpace_eq_top_of_nilpotent'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/zero-genweightspace-eq-top-of-nilpotent.md) | 301 | `result-track:00f6a117e072784d3d861ab38a802d128c746af71e68e7775f58b27e6e018322` |
| 36 | `theorem` | [coe_genWeightSpace_of_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/coe-genweightspace-of-top.md) | 306 | `result-track:d586e9af92be8cd03553870efef31cbbbc3bc509e2e061e52575f3e1c11cdfe3` |
| 37 | `theorem` | [zero_genWeightSpace_eq_top_of_nilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/zero-genweightspace-eq-top-of-nilpotent-source-edition-2.md) | 314 | `result-track:fba8e52d6e50dce2f93f4cfaeaf5a3484cfc73e4eb41de5ccb10228a736e8e2c` |
| 38 | `theorem` | [exists_genWeightSpace_le_ker_of_isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/exists-genweightspace-le-ker-of-isnoetherian.md) | 323 | `result-track:0b596fad7a54fe755375fb345921a97065521c0e05987dcd8976bc0d2e91f124` |
| 39 | `theorem` | [exists_genWeightSpace_zero_le_ker_of_isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/exists-genweightspace-zero-le-ker-of-isnoetherian.md) | 333 | `result-track:07aa39a9ef34451bf1bf63ace693d22730e4c4a9a1d78c67e8449b8258e0b0e9` |
| 40 | `lemma` | [isNilpotent_toEnd_sub_algebraMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isnilpotent-toend-sub-algebramap.md) | 338 | `result-track:f29669479f0da17fbf0f25e927eb472f6969c96a618b6de6d32cea5c31559669` |
| 41 | `theorem` | [isNilpotent_toEnd_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isnilpotent-toend-genweightspace-zero.md) | 353 | `result-track:43b0c85f85c6c4e5aef6e48079b949dc253feb748d29887ece039bd1df0f04b7` |
| 42 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-3.md) | 358 | `declaration-track:9ed59a3438bf230861b813d61fd3934715baea418cbf83016bf7f4179d405e53` |
| 43 | `lemma` | [genWeightSpace_zero_normalizer_eq_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspace-zero-normalizer-eq-self.md) | 365 | `result-track:52874abf84b1f1eb54abb7ab5bf0a47f262053eae87950e5785aef1646420d95` |
| 44 | `lemma` | [iSup_ucs_le_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isup-ucs-le-genweightspace-zero.md) | 376 | `result-track:e8b18a7bb87e84567966bdbb71bbd01304379c53668d79b1cdc9b14f818539fe` |
| 45 | `lemma` | [iSup_ucs_eq_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isup-ucs-eq-genweightspace-zero.md) | 382 | `result-track:524966e40cd8e8684a0be3a65e0a246bcf05c5f4b634436acf31f831b0f8f6e2` |
| 46 | `def` | [posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcompof.md) | 399 | `declaration-track:8d1cd517b7872a6aa50cee6402d64b9092fa562bc5d6179ccd26dd3a73d49808` |
| 47 | `lemma` | [mem_posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/mem-posfittingcompof.md) | 422 | `result-track:42137268072128100b05b1351181565bf7e1f884758d7f2032b3c66f573465f5` |
| 48 | `lemma` | [posFittingCompOf_le_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcompof-le-lowercentralseries.md) | 426 | `result-track:36db97ee0f1202473ff5f6f100d63b2cec54299c6c4d6ab8aaeaf93151f3bcbb` |
| 49 | `lemma` | [posFittingCompOf_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcompof-eq-bot-of-isnilpotent.md) | 439 | `result-track:7f124bccbd54b502e42d9b7bb22f13b29600cc7ba5dc9220e9030679e3e0d231` |
| 50 | `def` | [posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcomp.md) | 452 | `declaration-track:0407c993796b0bd998416e4f40030690fc8158b73e1bf62f8881740407504d18` |
| 51 | `lemma` | [mem_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/mem-posfittingcomp.md) | 455 | `result-track:47d6bc56f9d11d32ef271a74d34579ba91739ed248985e94508667a54d7d70e5` |
| 52 | `lemma` | [posFittingCompOf_le_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcompof-le-posfittingcomp.md) | 459 | `result-track:6d8cdef981689cb7a9e0a60d1b8a2465219d87a20075a71841ce3855c980bf3e` |
| 53 | `lemma` | [posFittingComp_le_iInf_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcomp-le-iinf-lowercentralseries.md) | 463 | `result-track:0212df6c8251754227868974259bd6ce12c07a554df7ea03af23a875f171c2f4` |
| 54 | `lemma` | [iInf_lowerCentralSeries_eq_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iinf-lowercentralseries-eq-posfittingcomp.md) | 468 | `result-track:6eb2f93dad2c1f5669ac59eb429b7de7d7efa0318390ffb0af61a9ffccb4a12d` |
| 55 | `lemma` | [posFittingComp_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcomp-eq-bot-of-isnilpotent.md) | 490 | `result-track:3fb8c61d9b067959f984a20824e51222aba448214d37dccd516466cbb0c2af91` |
| 56 | `lemma` | [map_posFittingComp_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/map-posfittingcomp-le.md) | 502 | `result-track:3e9707239042ff7aa1617e9cdaa1fd1aff266b6f2f1eb1f239547631fd62b53c` |
| 57 | `lemma` | [map_genWeightSpace_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/map-genweightspace-le.md) | 513 | `result-track:d38eaf6eb50ed845387bea2be158152602b84d5dcfb6c4a99dfe19b3fb73f778` |
| 58 | `lemma` | [comap_genWeightSpace_eq_of_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/comap-genweightspace-eq-of-injective.md) | 527 | `result-track:bd80f2456fcc975c39e74244633be9d85c572fcc3d265347cb751dae29ea59c8` |
| 59 | `lemma` | [map_genWeightSpace_eq_of_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/map-genweightspace-eq-of-injective.md) | 543 | `result-track:6ed659a71253453809cce2eb368cb34322531adebf4b3e33303ecb683d060d76` |
| 60 | `lemma` | [map_genWeightSpace_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/map-genweightspace-eq.md) | 551 | `result-track:d200b0ae896d211594ea4531df79071e7d8698a03a3f495e5ad78bacf1efbd9d` |
| 61 | `lemma` | [map_posFittingComp_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/map-posfittingcomp-eq.md) | 555 | `result-track:21bb6b2b4aa00a94fb7baf1bc353d7731883f5135c4e4d2ef75cbe980577b995` |
| 62 | `lemma` | [posFittingComp_map_incl_sup_of_codisjoint](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/posfittingcomp-map-incl-sup-of-codisjoint.md) | 566 | `result-track:8c8f18f187b258e38fb088d90bdc50b4be8ff2562c3de3c81ab59ecc1f13a868` |
| 63 | `lemma` | [genWeightSpace_genWeightSpaceOf_map_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/genweightspace-genweightspaceof-map-incl.md) | 579 | `result-track:1fb345918b6c94f979e98a4322a1055716b7d02d6fc0a3ea9e688050100b3668` |
| 64 | `lemma` | [isCompl_genWeightSpaceOf_zero_posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iscompl-genweightspaceof-zero-posfittingcompof.md) | 591 | `result-track:7fc00677cb697065548357bf6b18128c95a98af1c952c334c3aa431adbe18fd2` |
| 65 | `lemma` | [isCompl_genWeightSpace_zero_posFittingComp_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iscompl-genweightspace-zero-posfittingcomp-aux.md) | 600 | `result-track:b4b1de760fc716c1ba124533a7d656c50b0fefad67b718d2b523190bdc0a8b89` |
| 66 | `lemma` | [isCompl_genWeightSpace_zero_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/iscompl-genweightspace-zero-posfittingcomp.md) | 633 | `result-track:8a7aaef797723a2222eb9a78dcc23c15d2c4d5e15b273afd3f73b88bd2034147` |
| 67 | `lemma` | [disjoint_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/disjoint-genweightspaceof.md) | 650 | `result-track:20cd8eee7db2ca8a722b7a4b58c200a1405b30218fe4e1b0e3710d5da91fa7e3` |
| 68 | `lemma` | [disjoint_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/disjoint-genweightspace.md) | 656 | `result-track:46ce66f9323ad6b2683d390f99186f6d2ab00030c49de09da8acff51cb17db2e` |
| 69 | `lemma` | [injOn_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/injon-genweightspace.md) | 662 | `result-track:840427035319acf52a3d2f47ad0b48acb3d40a54be2521c154748f1585a26ab1` |
| 70 | `lemma` | [iSupIndep_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isupindep-genweightspace.md) | 671 | `result-track:3055f73cfc9dc722afaff7d547a01434c7475f8f401a0c7d09a02354aa09d0ea` |
| 71 | `lemma` | [iSupIndep_genWeightSpace'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isupindep-genweightspace-source-edition-2.md) | 680 | `result-track:33e9a63851838a9412e03e63b08febb37f551ad4e01c5a5dd582c7fa58a4922c` |
| 72 | `lemma` | [iSupIndep_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isupindep-genweightspaceof.md) | 687 | `result-track:2bd41ef1f16352827f01b0cb1ef2740e23e3c86fcfd4d2dcf72d14b7887641a8` |
| 73 | `lemma` | [finite_genWeightSpaceOf_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/finite-genweightspaceof-ne-bot.md) | 696 | `result-track:e2acc95fdc30515860fbfd0daf04daaa9b3db0fbe4d1dae215841f58175bfc9b` |
| 74 | `lemma` | [finite_genWeightSpace_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/finite-genweightspace-ne-bot.md) | 700 | `result-track:eddb6b6083b980343ccdd7e0732324ce771cf84b50ec09cb02025be6932d7e1f` |
| 75 | `instance` | [Weight.instFinite](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/weight-instfinite.md) | 704 | `declaration-track:ea3d1e5158fb675e8bf8fbddfdcf6981dd53e48a9b459a9d0d4c31120f41c646` |
| 76 | `instance` | [Weight.instFintype](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/weight-instfintype.md) | 709 | `declaration-track:0997d0c2d23c625028a6ad0a18126cc19a5666c0f4dd286ff38448d16dc4af6e` |
| 77 | `class` | [IsTriangularizable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/istriangularizable.md) | 715 | `declaration-track:1ba05eff2f6fc104167a78b11915840d91a594ec0ce154950207a9d6455f4a6f` |
| 78 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-2.md) | 718 | `declaration-track:9e330ee86d455f158789fce32c64e0fe1588cdad912274ba1a070ff7cf9154fa` |
| 79 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-8.md) | 721 | `declaration-track:fb174fe7f5bda55a4e34299a1d580075adf4cab704e1be676ed98b5a46372680` |
| 80 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-6.md) | 724 | `declaration-track:e0fdb7a8256d655953e4517a857ab0914d44836a2d3cc6287ca21a571e8a42bc` |
| 81 | `lemma` | [iSup_genWeightSpaceOf_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isup-genweightspaceof-eq-top.md) | 730 | `result-track:bf94d7d52a2732cc1689431569a3b6b1e41224cdc7aee7e11abf959b105ed176` |
| 82 | `lemma` | [trace_toEnd_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/trace-toend-genweightspace.md) | 739 | `result-track:09ec038a0748e54b48e84dfd7b80b18e74626e941c08ed2700499f035d122e38` |
| 83 | `instance` | [instIsTriangularizableOfIsAlgClosed](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instistriangularizableofisalgclosed.md) | 756 | `declaration-track:0589b45063a2c75c8154da4bfb210d203e274a61ce96f60a2e5dd939350d423a` |
| 84 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/instance-source-edition-5.md) | 759 | `declaration-track:cfa48409347099f7b0f4774e088bc87ebcbf4340f6065a5723168f4bbef94dae` |
| 85 | `lemma` | [iSup_genWeightSpace_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isup-genweightspace-eq-top.md) | 767 | `result-track:3c5c6c2bc87674ee5323b083fceb6b4c5b11be90c71d2df0ecf27743efbfa9ae` |
| 86 | `lemma` | [iSup_genWeightSpace_eq_top'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasic.lean/declarations/isup-genweightspace-eq-top-source-edition-2.md) | 775 | `result-track:3cf203b38fe999088b53d2ef3182eca04970e8efc69d693dd3bfdba73efc8518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de3517ec8bbba68838476747d1c70c7b3d6e90e6b70f3a8469daaa99b04e915a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant7ee9904167d4b5fe1a81f36871de523c877a83cb764215525c7d124722f370bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
