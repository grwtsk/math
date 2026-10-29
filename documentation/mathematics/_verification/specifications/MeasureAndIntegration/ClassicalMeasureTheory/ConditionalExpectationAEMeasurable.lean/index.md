# Verification target: Conditional Expectation AEMeasurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b934ff951637017686cb7a8a3433df8f959ad205",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b934ff951637017686cb7a8a3433df8f959ad205`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LpSeminorm.Trim` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEStronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/aestronglymeasurable.md) | 48 | `declaration-track:0fafcdd3fce5e318f9029f6e10426ad7ea08e46711deef78198b8adb3320fbff` |
| 2 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/congr.md) | 57 | `result-track:cec03a27bd65202ca8c5281959afaf8d3252b2b265383169a3895b3238905df1` |
| 3 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mono.md) | 61 | `result-track:b96829f560ddc79bdab85639d7f8566763764530b7e35fcf091bb7a6f1e8f9ab` |
| 4 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/add.md) | 65 | `result-track:084dd306cc6c432b61aa769d28c6dbb5bd80e2a1f42341be91bed2bcb6edd0c3` |
| 5 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/neg.md) | 70 | `result-track:6390bb9e294f42ab493c5f0b88fcd51a4e13918496c7d0c6e0008485e01825e2` |
| 6 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/sub.md) | 75 | `result-track:f13b7b3c03fb168402721ecf6584f589934d85ac8d46430c60424c010d71244d` |
| 7 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/const-smul.md) | 80 | `result-track:0d182037c210e0ef18f3302f20df3dcad33982a516b6592efbd286070ea79597` |
| 8 | `theorem` | [const_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/const-inner.md) | 85 | `result-track:9d43819a5a094d45ff9e05b43bebb456413a6c457cf2395bd118148cb750a1df` |
| 9 | `theorem` | [of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/of-subsingleton.md) | 91 | `result-track:5aa6f4b036ad5d4d62b9f0bed2aed7c9cc0535240fcf15cea26bcbd4a8b761a3` |
| 10 | `theorem` | [of_subsingleton'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/of-subsingleton-source-edition-2.md) | 94 | `result-track:ff866ea6277683999af96e94f2eac0227fe7098088937a67c7f3ca45a5800d13` |
| 11 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mk.md) | 98 | `declaration-track:53fa2d01d5403b894d4ba49b28ff3eb4cb2f85e2b8df9bcf00d046277ff31361` |
| 12 | `theorem` | [stronglyMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/stronglymeasurable-mk.md) | 102 | `result-track:aa9a1c311d9ad671ebd284111689ff99a587ba464480ff25b4b303be46359294` |
| 13 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/ae-eq-mk.md) | 107 | `result-track:5c2274980a0e7e8b916c1260ab075ba55404dc9d26d543d83739ba88eb786853` |
| 14 | `theorem` | [continuous_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/continuous-comp.md) | 111 | `result-track:a99a12535710de4972beae3c12855f4fff6630270b045f464d63b63102e340a1` |
| 15 | `theorem` | [aeStronglyMeasurable'_of_aeStronglyMeasurable'_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/aestronglymeasurable-of-aestronglymeasurable-trim.md) | 118 | `result-track:1e268f8366e84ebf2a044ee7fd9ad732a9fa9dc813f199ce00f9341f7243ee0f` |
| 16 | `theorem` | [StronglyMeasurable.aeStronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/stronglymeasurable-aestronglymeasurable.md) | 123 | `result-track:563c7cb137a876c799803b9a1fec611806454109f424d4336c69faa29ea4b17f` |
| 17 | `theorem` | [ae_eq_trim_iff_of_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/ae-eq-trim-iff-of-aestronglymeasurable.md) | 127 | `result-track:f338d50286d802bdeed1e7014a7f127eccbc00d21d2ebd6e1fe3bdb03ba20048` |
| 18 | `theorem` | [AEStronglyMeasurable.comp_ae_measurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/aestronglymeasurable-comp-ae-measurable.md) | 138 | `result-track:6b33a121990f9d914256f757dc2b7d7c93a30295a59637011cac3cef8336a947` |
| 19 | `theorem` | [AEStronglyMeasurable'.aeStronglyMeasurable'_of_measurableSpace_le_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/aestronglymeasurable-aestronglymeasurable-of-measurablespace-le-on.md) | 150 | `result-track:aa972884e1ccbe8aafa32c549aa70e0a8b464104aa11feba25e33fe86eee8fa7` |
| 20 | `def` | [lpMeasSubgroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgroup.md) | 173 | `declaration-track:5f704914d491ab926d8d562b32320f42fa02867c2da040dbe44938f4d864321d` |
| 21 | `def` | [lpMeas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeas.md) | 185 | `declaration-track:8d06a5e37425902e0dbb77a235655d395496b02c9bf42d4696221b6501c0a74a` |
| 22 | `theorem` | [mem_lpMeasSubgroup_iff_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mem-lpmeassubgroup-iff-aestronglymeasurable.md) | 194 | `result-track:04eecea4e52f189e319aecf7239064d5e0da629b37d562f5274a4560fdeb1b3c` |
| 23 | `theorem` | [mem_lpMeas_iff_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mem-lpmeas-iff-aestronglymeasurable.md) | 203 | `result-track:c9b58d0f93b7884df85074850ebc67250854b2c16f0cbeae332fd7b7973db3c1` |
| 24 | `theorem` | [lpMeas.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeas-aestronglymeasurable.md) | 212 | `result-track:09ec13ab541cc880fe8c67e94b5c47ae2d86a5a864077cdc10e6e690a232041b` |
| 25 | `theorem` | [mem_lpMeas_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mem-lpmeas-self.md) | 221 | `result-track:b2f3c7e5d37e236df350cd0b1f88fda617efc90aac1a889d08b21302f2433763` |
| 26 | `theorem` | [mem_lpMeas_indicatorConstLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mem-lpmeas-indicatorconstlp.md) | 225 | `result-track:3765aceac4ab1c24a4dbd9b376ad198ae5b0f59de1a6c28bd4924f4ec42e69c8` |
| 27 | `theorem` | [memLp_trim_of_mem_lpMeasSubgroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/memlp-trim-of-mem-lpmeassubgroup.md) | 244 | `result-track:e5cee530eedd2fffd3f06b92e47f4c349e46993afb459e01f6a9c545932e889c` |
| 28 | `theorem` | [mem_lpMeasSubgroup_toLp_of_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/mem-lpmeassubgroup-tolp-of-trim.md) | 264 | `result-track:abbd1e41414f930f66a5af72e1ea05befe6125d2114543e19f7213608422346b` |
| 29 | `def` | [lpMeasSubgroupToLpTrim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim.md) | 274 | `declaration-track:31ac3783d674824025886cf6c372b291def8d65c52fd184825be5e1176182dd3` |
| 30 | `def` | [lpMeasToLpTrim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeastolptrim.md) | 281 | `declaration-track:79cae8d51909777f40b4a91ad69e18f7201296f809ab061a16600fb3a90498ea` |
| 31 | `def` | [lpTrimToLpMeasSubgroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lptrimtolpmeassubgroup.md) | 287 | `declaration-track:d54ddb1e75159f85b463813c7e105f1bd2f26dcfffec64751c1af811a65b6d3b` |
| 32 | `def` | [lpTrimToLpMeas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lptrimtolpmeas.md) | 293 | `declaration-track:023dca8d46a993ee159fa4f25c6d3b9c28cb232729572ca3e986f4238581aef5` |
| 33 | `theorem` | [lpMeasSubgroupToLpTrim_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-ae-eq.md) | 298 | `result-track:20449f195da0ddadb8dafe254da0e1b037c705a3617d871ef00e515b48cd474d` |
| 34 | `theorem` | [lpTrimToLpMeasSubgroup_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lptrimtolpmeassubgroup-ae-eq.md) | 303 | `result-track:e32bf4e326cdba99be222e8bd0aec36e8785e7284d7c94a8825fab28792507d9` |
| 35 | `theorem` | [lpMeasToLpTrim_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeastolptrim-ae-eq.md) | 307 | `result-track:c67430f3fedf63531da214f8dee9f6e5968f3efea6ca7df20e2ff2c6a1f6d065` |
| 36 | `theorem` | [lpTrimToLpMeas_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lptrimtolpmeas-ae-eq.md) | 312 | `result-track:cb4d57cc324dfb3aa27c87c7fc47e8796cf6f07e0317f35e46c241551786e9bd` |
| 37 | `theorem` | [lpMeasSubgroupToLpTrim_right_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-right-inv.md) | 317 | `result-track:aa0246cd99251200005c207e409ff856840a9ed85ea40952ab7bcd458190cc0f` |
| 38 | `theorem` | [lpMeasSubgroupToLpTrim_left_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-left-inv.md) | 326 | `result-track:d7a98819b33a90daf8ad914097bf1155ea006b58d767ba1a451054f6e3fc4a70` |
| 39 | `theorem` | [lpMeasSubgroupToLpTrim_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-add.md) | 333 | `result-track:feabac7db7b0d6c446cf5c40057a15f1215ef01ddf6a8801d7381d5bfc79ee7e` |
| 40 | `theorem` | [lpMeasSubgroupToLpTrim_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-neg.md) | 348 | `result-track:cd68c5384df605b328775dad81dc322b12b7d6b33eb574a32bffea855697c8e7` |
| 41 | `theorem` | [lpMeasSubgroupToLpTrim_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-sub.md) | 357 | `result-track:e6cac46de2cccb5394e751e52929534f4e4782a29a86d144df00d064f84bfe84` |
| 42 | `theorem` | [lpMeasToLpTrim_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeastolptrim-smul.md) | 363 | `result-track:018f7042d176f4a98383634f8abaf9651f350762c3e5b57631fb3697d166e26e` |
| 43 | `theorem` | [lpMeasSubgroupToLpTrim_norm_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrim-norm-map.md) | 375 | `result-track:e93290c78ced7c47db11cf608102cfb714ce3d393ecd80972a6b358f47e0babb` |
| 44 | `theorem` | [isometry_lpMeasSubgroupToLpTrim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/isometry-lpmeassubgrouptolptrim.md) | 381 | `result-track:56e733822d147e4ecf0f10efaccc6acdfed59dfdb7d5574552d61574c79bd049` |
| 45 | `def` | [lpMeasSubgroupToLpTrimIso](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolptrimiso.md) | 390 | `declaration-track:f8b5ef1fdffe17704d009330b0c5428560e623d2b2cb700677f02de4a9c530d0` |
| 46 | `def` | [lpMeasSubgroupToLpMeasIso](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeassubgrouptolpmeasiso.md) | 401 | `declaration-track:10374a6edf3bcd9d50b0d5e1e263f408db756b4b363197736200bf6053936c8c` |
| 47 | `def` | [lpMeasToLpTrimLie](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeastolptrimlie.md) | 406 | `declaration-track:8220e0006de4455fa0fd2119d4b91208ac6387557cccba1b20afa4e05a1f18cd` |
| 48 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/instance-source-edition-2.md) | 418 | `declaration-track:db228d828a6fa08d975adf1ad3b85e55497712cd550e708dc45c6a4553a5cbd6` |
| 49 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/instance.md) | 426 | `declaration-track:1d7dcf7d5dcf6c66974f1cf5eac60c6db3d7e1f46b74e29c0f47cc1876d26ce3` |
| 50 | `theorem` | [isComplete_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/iscomplete-aestronglymeasurable.md) | 430 | `result-track:ae5690a20a27c267cf279307c7caa616ef2c2479360258a9d0132f42e7012e62` |
| 51 | `theorem` | [isClosed_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/isclosed-aestronglymeasurable.md) | 440 | `result-track:3bae7ef85104531438688f6b71214cbd6a925803b51898b74135938edd1ccf37` |
| 52 | `theorem` | [lpMeas.ae_fin_strongly_measurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeas-ae-fin-strongly-measurable.md) | 456 | `result-track:d4b7fe0e4a81d6aa8ccd85e3997fae53de0f87470338d0ae469206ca5fc96c89` |
| 53 | `theorem` | [lpMeasToLpTrimLie_symm_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeastolptrimlie-symm-indicator.md) | 465 | `result-track:b839d0b4839ec0f97e3e7391969b8b5a48c508959f74e286a9d71805f80af7e3` |
| 54 | `theorem` | [lpMeasToLpTrimLie_symm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lpmeastolptrimlie-symm-tolp.md) | 476 | `result-track:b27e282c04878f8ddd252ca7879b04e0e69ba0caf8ac7dad37d979b6dfc3efb1` |
| 55 | `theorem` | [Lp.induction_stronglyMeasurable_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lp-induction-stronglymeasurable-aux.md) | 494 | `result-track:8fdb493dbfc5d2d3f804636446c59ae1652a52726a54cebba327196c8f09e82a` |
| 56 | `theorem` | [Lp.induction_stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/lp-induction-stronglymeasurable.md) | 540 | `result-track:a472e687c27b9b0c98186fb5e7a20d67962739505fbd0d1775bf53507014b67f` |
| 57 | `theorem` | [MemLp.induction_stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/declarations/memlp-induction-stronglymeasurable.md) | 603 | `result-track:718e8d28e8e8e5e3ba88760f129b748f38371285ffb60a1e86f85805ba1c7193` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b76ce94c86a55ac6e39701037d3b83380b4a783ad252450044a5bceccfbc15b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
