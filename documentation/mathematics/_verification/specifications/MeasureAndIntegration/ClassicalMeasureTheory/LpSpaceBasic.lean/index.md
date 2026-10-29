# Verification target: Lp Space Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c25c3921c0edef4a0a45b185dee06bb379f33821",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c25c3921c0edef4a0a45b185dee06bb379f33821`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.ChebyshevMarkov` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.CompareExp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.TriangleInequality` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm_aeeqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/elpnorm-aeeqfun.md) | 74 | `result-track:8fb55e2db58494d5ff8467fd2d91dce9fa23d47595e5733a85cdd3772e9d116a` |
| 2 | `theorem` | [MemLp.eLpNorm_mk_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-elpnorm-mk-lt-top.md) | 79 | `result-track:2f2e29c426ad9bf53c2ba97be12adb72ae89bea5d35ee33d14e89159bfc01b6a` |
| 3 | `def` | [Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/lp.md) | 87 | `declaration-track:5d588d2efc751e1f3591ff48f4362b9512b2ee659cadd41c5135c41a3c42e85b` |
| 4 | `def` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp.md) | 104 | `declaration-track:2bf829b457ede087cc0c41a284adc7c1284a38089adebc6a8d2e45de386563e6` |
| 5 | `theorem` | [toLp_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-val.md) | 107 | `result-track:cee6faa451edb80a6c6532feaac3b1d5a9cca26dc2e0c8a16431bdd48be674e9` |
| 6 | `theorem` | [coeFn_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-tolp.md) | 109 | `result-track:c6e07dcdec48909a7935a350a6ff29277161e3aa1408d83298d690aa1b60e64e` |
| 7 | `theorem` | [toLp_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-congr.md) | 112 | `result-track:5c7f29a4012ceabf43855d57d00c73205016ed1489ca7a7fd4862a5fb38f4fe1` |
| 8 | `theorem` | [toLp_eq_toLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-eq-tolp-iff.md) | 116 | `result-track:1a666e9d17da23acac1f3ff9406c43191c92d6b233fa22fd07cbdb8946b9feee` |
| 9 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-zero.md) | 120 | `result-track:b17ce7bd0aa347be8e176cc4a515d6e0e99ed6c381f66a3651248a89fd69d7c0` |
| 10 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-add.md) | 123 | `result-track:5e3cd0e50f62249a37d307987f2af06b52029e3c8a643c2b5866424012663c86` |
| 11 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-neg.md) | 127 | `result-track:5688427bbdcb613ad92142599a8018896bab9b180b96e7bfe5ec85a14507a3dd` |
| 12 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-sub.md) | 130 | `result-track:4a2909fd8ce5ae182d5aefe22af8eb28ca5300e9d5cc7a3ac5433fe98d6c0e3d` |
| 13 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instcoefun.md) | 138 | `declaration-track:f3a424234530aa968e2137b720b18978ac5959cae9daf5b5eea33f1ff8307db4` |
| 14 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/ext.md) | 142 | `result-track:a7c6cd3f308f13f8aba6672faeeea04e01333c3ec5caad6680825d8238adaf42` |
| 15 | `theorem` | [mem_Lp_iff_eLpNorm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-iff-elpnorm-lt-top.md) | 148 | `result-track:b5ee205544888ad57ab567aa0801f33b4434c38869da124ec2fb98b774cc0511` |
| 16 | `theorem` | [mem_Lp_iff_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-iff-memlp.md) | 150 | `result-track:6d370b10f066850780644f7781cdee01c7a0bad68b1cbdd6421134959899c8a5` |
| 17 | `theorem` | [antitone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/antitone.md) | 156 | `result-track:dcd0eea7bb0011d35b144a66b14425f83659ceb79b9e868df31536accbd1fb16` |
| 18 | `theorem` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-mk.md) | 160 | `result-track:e99305ad62c0d3b33226ebf212a93dd90f2ee3b43538ff83c0cf87c1779beaf8` |
| 19 | `theorem` | [coe_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coe-mk.md) | 164 | `result-track:94c788d1869f414977a352f8e6ac0efa3ec2e775e3e718a9a80d60c14616fcc9` |
| 20 | `theorem` | [toLp_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-coefn.md) | 168 | `result-track:9e1f03421aa735de334e9eec2a99533d80687373786db99af071d91e007effca` |
| 21 | `theorem` | [eLpNorm_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/elpnorm-lt-top.md) | 172 | `result-track:fa318be4a71527c57a654f5eae29bf8765a911c477cbb3c5626efafc97340b48` |
| 22 | `theorem` | [eLpNorm_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/elpnorm-ne-top.md) | 175 | `result-track:b057ebf7e3d09080f8ad5bdb6ed1d5830254501faa09c691d53c96020d80e3e9` |
| 23 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/stronglymeasurable.md) | 179 | `result-track:1d3fbec5348bf51163b1e28fbfdb31b7607fa631b72a5987e8768acb82987bba` |
| 24 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/aestronglymeasurable.md) | 183 | `result-track:d423ae8f44c19d6e896b4137f130a60803c8579e90033e2d24f27f4a9bdddb3f` |
| 25 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp.md) | 186 | `result-track:bc6a7d4213a8ede7f462ae238941794eac2ede30e705e2407d7d242f5f3a3b39` |
| 26 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-zero.md) | 194 | `result-track:b3a08ce94fa6c21c6d9fa6144390e2704b4382f597d24c2310589197d5f5933a` |
| 27 | `theorem` | [coeFn_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-neg.md) | 199 | `result-track:567806338e7e6af372b4c951a3024c8269edf95602ba6c72aa1e557f75fee567` |
| 28 | `theorem` | [coeFn_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-add.md) | 202 | `result-track:2dc36f29913d38d0bc50a75cfa79ae5ce0d1f7643da39e701a4a42215db53b64` |
| 29 | `theorem` | [coeFn_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-sub.md) | 205 | `result-track:701c5b5e4d8c951893da62464ab406b6b566fb960987672ac5ad8c30ab0e062c` |
| 30 | `theorem` | [const_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/const-mem-lp.md) | 208 | `result-track:3f884a7561b52fac32651fb92afa952c1d6bd4c23f423ed5f79b330316d45196` |
| 31 | `instance` | [instNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instnorm.md) | 212 | `declaration-track:a2d41c3acb7d2f8da6d2e56ed8545cb63d9ab2640719b2439085fca232949155` |
| 32 | `instance` | [instNNNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instnnnorm.md) | 216 | `declaration-track:09f7ce86572c041e7aaa64c26be558ad75fb63e571adea9a832a00c4ae6d0a3e` |
| 33 | `instance` | [instDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instdist.md) | 218 | `declaration-track:1eb5f388d33f696b15427d1057b4565f96b8e33c2fb4bda58d7fcf21ca005649` |
| 34 | `instance` | [instEDist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instedist.md) | 220 | `declaration-track:a60875e3c2a82d316774208f53dc5e624d5367c94fab2f8ed8242b9ee2772887` |
| 35 | `theorem` | [norm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-def.md) | 222 | `result-track:cc0ccc4aacd2737948e9c9a3dbcee87886128ea98b30d3ff4c42f5a0fab2984e` |
| 36 | `theorem` | [nnnorm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-def.md) | 225 | `result-track:3a3cc758b78db534a3a0adcfbf3f86587134282b7dbe159a3db4a7bbb0c90873` |
| 37 | `theorem` | [coe_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coe-nnnorm.md) | 229 | `result-track:f6c959316fcb36bde2b08b6dd545073914f9be6ed83eae8cda05a7470c9ed49d` |
| 38 | `theorem` | [enorm_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/enorm-def.md) | 233 | `result-track:3e80800cf372fdf2deb4b89a3a42ee1a8d1596bc0a42b8d035895ea779031eba` |
| 39 | `lemma` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-tolp.md) | 239 | `result-track:f824dbbe27acc56265a5590d3626d96c38b11f54f7a53b775c0e01e4821c79b1` |
| 40 | `theorem` | [nnnorm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-tolp.md) | 243 | `result-track:7402398d3b300cd56aee9512a463eb7924af513c92f9ac98881dd724a1b2774d` |
| 41 | `lemma` | [enorm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/enorm-tolp.md) | 247 | `result-track:995c1848be8e361e98038ae11dd34c5c391c2cd252ff2f5c5e9f65a73d39e71d` |
| 42 | `theorem` | [dist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/dist-def.md) | 252 | `result-track:a44b6eb77c8d69ff9a5086f473726b53c22f3d9e49e0bfbe21cdde51a36e5a39` |
| 43 | `theorem` | [edist_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/edist-def.md) | 257 | `result-track:c890d96594695eef5a2eb812793a3fd230cab4de077b8b12ac4a852604cc04c6` |
| 44 | `theorem` | [edist_dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/edist-dist.md) | 260 | `result-track:51e4cf4a0eb71ae78207004893c87248fa35a843babb3df42816da999b678daf` |
| 45 | `theorem` | [dist_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/dist-edist.md) | 264 | `result-track:063be8863e98f48c376f1dad9d97a83cb344c7511711bd3ab148474cd521fba0` |
| 46 | `theorem` | [dist_eq_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/dist-eq-norm.md) | 267 | `result-track:a5ea7b2d90bda7f4b7bae0295d00cba173e33d6846c785e98ba39a7ae504ed98` |
| 47 | `theorem` | [edist_toLp_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/edist-tolp-tolp.md) | 270 | `result-track:ff57a3f29a8c5172b4d7a30f7e0d216c78584eeafd3829e3a2a3f5a12947212c` |
| 48 | `theorem` | [edist_toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/edist-tolp-zero.md) | 276 | `result-track:50f8e42367eb4d7851a5be653499ecf53e72090ce4605e25b2594a1c329c5fd3` |
| 49 | `theorem` | [nnnorm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-zero.md) | 280 | `result-track:05efd11eb89acad82e50449d1b54b0465e8ce12f66cf64d5c5ba85d80c806014` |
| 50 | `theorem` | [norm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-zero.md) | 286 | `result-track:864bb1e543321f0981e9a40de69a573110e5140c17c9ca16e43d13ae5a861bd9` |
| 51 | `theorem` | [norm_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-measure-zero.md) | 290 | `result-track:432d5a042b1d54a1f73826700b6bea3f59483650402e68cac0f7bcb5ad94e3f5` |
| 52 | `theorem` | [norm_exponent_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-exponent-zero.md) | 294 | `result-track:d4547aa22af8501784de0dbf5aaa9da367cd0adb11a6768d02942419ebbed17f` |
| 53 | `theorem` | [nnnorm_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-eq-zero-iff.md) | 298 | `result-track:c8c35070545fab498ca2e560aec5a30b36459fd910bbecdd2594db23a0b56189` |
| 54 | `theorem` | [norm_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-eq-zero-iff.md) | 308 | `result-track:0ff880deee0830ec00b4fd1929779966146644c52e4088c08fd1641f13f0d45f` |
| 55 | `theorem` | [eq_zero_iff_ae_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/eq-zero-iff-ae-eq-zero.md) | 311 | `result-track:e389ee7067e269395015d46a627eba96b546df5ee43cc82e41584df4a547d3a1` |
| 56 | `theorem` | [nnnorm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-neg.md) | 315 | `result-track:aaa362f60ec38bf23f4c58840d2e3236bdbc2a2275b1b14636ec501ad4e71fcf` |
| 57 | `theorem` | [norm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-neg.md) | 319 | `result-track:377c69bf6ebe2a80c9892d2c0a832a45b93815f829b32fc6c379e42b44c75240` |
| 58 | `theorem` | [nnnorm_le_mul_nnnorm_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-le-mul-nnnorm-of-ae-le-mul.md) | 322 | `result-track:9810d8174f013829ea5ab755c10c497f6740c709cfd416309715033120a71f64` |
| 59 | `theorem` | [norm_le_mul_norm_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-le-mul-norm-of-ae-le-mul.md) | 331 | `result-track:8f1dc12ffa6905085a242236c37dc8b6024c2fc91439901dd228b0e511122f24` |
| 60 | `theorem` | [norm_le_norm_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-le-norm-of-ae-le.md) | 340 | `result-track:5f372d4e154c23bed766e6cc8cf2541022ace4e0b4293a1af5a44fc708115f52` |
| 61 | `theorem` | [mem_Lp_of_nnnorm_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-of-nnnorm-ae-le-mul.md) | 345 | `result-track:4a07376cf17db7f11acfb6989393f47a3ad1800d93ac6aa457c22dfe274ef9a4` |
| 62 | `theorem` | [mem_Lp_of_ae_le_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-of-ae-le-mul.md) | 349 | `result-track:c4b930f1eceea86cd9c1980961c81a0e10ec0d5123d3c9057ace78adb703dfce` |
| 63 | `theorem` | [mem_Lp_of_nnnorm_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-of-nnnorm-ae-le.md) | 353 | `result-track:865b1ac25567af6392ec8468e3a30a754f85cd1201371b84b7463c998f9f9d62` |
| 64 | `theorem` | [mem_Lp_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-of-ae-le.md) | 357 | `result-track:10371b253824412c3e40b3a87c7a5ee6a59575756bb4c599cc320ec1107a2700` |
| 65 | `theorem` | [mem_Lp_of_ae_nnnorm_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-of-ae-nnnorm-bound.md) | 361 | `result-track:f3cbba9a449920d29b1d9af7083656815383735033cdba498ff0b666c259669e` |
| 66 | `theorem` | [mem_Lp_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mem-lp-of-ae-bound.md) | 365 | `result-track:a40a2ea0e277c340952592181b5146d5195ce819ac38c5f2d5dea8ccc9cee59a` |
| 67 | `theorem` | [nnnorm_le_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/nnnorm-le-of-ae-bound.md) | 369 | `result-track:7752f5a51d883937bb48d23b3c4367bbdc7f1d502607f780ce19ff97d9bd62af` |
| 68 | `theorem` | [norm_le_of_ae_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-le-of-ae-bound.md) | 380 | `result-track:5f50c614c9e1e5d7dee75959ad8a21baba635fd63b4e29732985f7093ba933af` |
| 69 | `instance` | [instNormedAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instnormedaddcommgroup.md) | 386 | `declaration-track:e82f5b789cd6d9843923179b67768123321cf4686a82dae003b55a3c3eccdc77` |
| 70 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/example-source-edition-2.md) | 404 | `declaration-track:ee14aaa8cfbd3899d5da232cfb07a1b9de4bbdce55dec1612f26ba50e493dbe4` |
| 71 | `example` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/example.md) | 407 | `declaration-track:c3035328fbaf08d7dd3e5c1cb256b82e44156d12d6cd61a0c7b6bc06f065f526` |
| 72 | `theorem` | [const_smul_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/const-smul-mem-lp.md) | 415 | `result-track:bce5969cbef925b768a3434ee91f4982489782d626dd7096430d1e50b75d5006` |
| 73 | `def` | [LpSubmodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/lpsubmodule.md) | 423 | `declaration-track:8ed716d3201dec89e61f5b04b99a92160cfadb5f2f017439c4e9aff9b2015c32` |
| 74 | `theorem` | [coe_LpSubmodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coe-lpsubmodule.md) | 428 | `result-track:ee1856d73a84425dc986eb1cd382741136f80546a3564e97070ec68f764d167b` |
| 75 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instmodule.md) | 431 | `declaration-track:caea18c326492232737d54ebbe740fcd47ac523cc485de3e5942c35c1313995f` |
| 76 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-smul.md) | 434 | `result-track:8dfb4dc72fb7a89fe3c26e06dcd2065afda16652d050510d8b4d30d7f6e89bb3` |
| 77 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instiscentralscalar.md) | 437 | `declaration-track:2215e450409bbea5cc55481406e4dea5cd453a6038fd349296507782e0d1f586` |
| 78 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instsmulcommclass.md) | 441 | `declaration-track:e33047e512b4d65a6fd3d45139b4727d64d7ed2b3474e0ef2de6101da8cdc5b7` |
| 79 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instisscalartower.md) | 444 | `declaration-track:e2ed6992e1e9319b5193c757dd62c30461c2f655c145d07627df212cbb297fa0` |
| 80 | `instance` | [instIsBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instisboundedsmul.md) | 447 | `declaration-track:339759573078e157c1bf050e356aad47a95a7b0b58504bde0bbfdfcff7925db8` |
| 81 | `instance` | [instNormedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/instnormedspace.md) | 458 | `declaration-track:82e6d5132f4822c93a113042a5c897b37773fe3aaac0d0f7f4708ed3eaced297` |
| 82 | `theorem` | [toLp_const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-const-smul.md) | 469 | `result-track:30a6e00d967f8ef5a7bb599225fa13de7df4cec84feb744583b39800b279ce18` |
| 83 | `theorem` | [MemLp.enorm_rpow_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-enorm-rpow-div.md) | 477 | `result-track:3894c16dae0b47fffdb142ef0b6a36dcab1bd9913d092e7c453f74158fa074d1` |
| 84 | `theorem` | [MemLp.norm_rpow_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-norm-rpow-div.md) | 494 | `result-track:353c8e98b966dd09fab162f1d14e2f4be4ffbcecddedf70a337c26ca50a53c0c` |
| 85 | `theorem` | [memLp_enorm_rpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-enorm-rpow-iff.md) | 514 | `result-track:197d2a6e4e900da9ef5918c4b2e65f043326a352b5a59aa1bbcd7d452589287c` |
| 86 | `theorem` | [memLp_norm_rpow_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-norm-rpow-iff.md) | 526 | `result-track:1af55a97355008ccb6b0cdffb562ceb0b2dbfeba388e6fb51aa64963ff7294fd` |
| 87 | `theorem` | [MemLp.enorm_rpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-enorm-rpow.md) | 541 | `result-track:b0db5ad7550f947e18764c9151bf175666e897f04539d546040dc428e9715cdd` |
| 88 | `theorem` | [MemLp.norm_rpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-norm-rpow.md) | 546 | `result-track:1feb74b6f3460cb5662172373476f2c30d527078562ff1ab7ae5b6662a326959` |
| 89 | `theorem` | [AEEqFun.compMeasurePreserving_mem_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/aeeqfun-compmeasurepreserving-mem-lp.md) | 554 | `result-track:e6f9bfe16f813c869f798d5f3dd474b669db4caeb9b21b05e05e684ff1e378d3` |
| 90 | `def` | [compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/compmeasurepreserving-source-edition-3.md) | 568 | `declaration-track:bfa496d996579e9a6f44871fe92e6c3e2a59e19b5a6a9d47d8b8056abadb76e1` |
| 91 | `theorem` | [compMeasurePreserving_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/compmeasurepreserving-val.md) | 575 | `result-track:8fba5c0a9201bb1717d5aa030c9dccf4ca11c1e75b88adc87f3a02ee4a0fc2d6` |
| 92 | `theorem` | [coeFn_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-compmeasurepreserving.md) | 579 | `result-track:fb017ac852a8ca82eb9446d66eb08c3e06d069da9f6789433c445f91d1c5192f` |
| 93 | `theorem` | [norm_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-compmeasurepreserving.md) | 584 | `result-track:0680ea957d9eb59d9a114b9bca15bd46f6f607a170dc07dac1c5e5eb265cc0bc` |
| 94 | `theorem` | [isometry_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/isometry-compmeasurepreserving.md) | 588 | `result-track:9457a09bf8bd0bb98c837f2f1fed56037d9fb56beda0869e7edc3480fdf3f7a2` |
| 95 | `theorem` | [toLp_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/tolp-compmeasurepreserving.md) | 592 | `result-track:4ad87dd20c9467acf5f8810c3f0b466680c0b7113f7e05437bd1bd4fdb925313` |
| 96 | `def` | [compMeasurePreservingₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/compmeasurepreserving-source-edition-2.md) | 599 | `declaration-track:98751306a75afd52d06409314e6c8e269db90a03195315a7db6b3135f6470f00` |
| 97 | `def` | [compMeasurePreservingₗᵢ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/compmeasurepreserving.md) | 606 | `declaration-track:7b1cd795ae2200ab2c9845cf1e7026b0755e0195f78c6a753fce4051a581b0eb` |
| 98 | `theorem` | [LipschitzWith.comp_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/lipschitzwith-comp-memlp.md) | 630 | `result-track:2f27bc8b7db4aa03bea2473c8dc9548e3a2a18b0bdda4c85bb3276671eefbeed` |
| 99 | `theorem` | [MeasureTheory.MemLp.of_comp_antilipschitzWith](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/measuretheory-memlp-of-comp-antilipschitzwith.md) | 641 | `result-track:06ba48eff85aa8e5212d04d7d4434e9d42370444280ddc1a5d3c50ba747556d9` |
| 100 | `lemma` | [MeasureTheory.MemLp.continuousLinearMap_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/measuretheory-memlp-continuouslinearmap-comp.md) | 657 | `result-track:8e23afb2aababba8905ffc18dd1c63ef8be4551e95a380abc5f5ae47f86c15f7` |
| 101 | `theorem` | [memLp_comp_iff_of_antilipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/memlp-comp-iff-of-antilipschitz.md) | 665 | `result-track:77e1a6884bc30a58fcdfb24e1e8b48550602546f6bf59444b673e2c6c414768c` |
| 102 | `def` | [compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/complp-source-edition-2.md) | 675 | `declaration-track:27834dd2033b9bab8949d0bccb848cb6e0972b2c5723ca3db9375bc65586632d` |
| 103 | `theorem` | [coeFn_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-complp-source-edition-3.md) | 684 | `result-track:c85657f29fdd96871a2f51eb54f4f601f129a93aed117eb85bdb13df94e27532` |
| 104 | `theorem` | [compLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/complp-zero.md) | 689 | `result-track:ce27e776a5dbbf023dca6a9035e6c29fa079e737e497a7f61d2875b5fcb703e5` |
| 105 | `theorem` | [norm_compLp_sub_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-complp-sub-le.md) | 695 | `result-track:823c99f4e749b769fcdfde32ee906e06a181cc70a2de97df1a79069aa5aa5060` |
| 106 | `theorem` | [norm_compLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-complp-le-source-edition-2.md) | 703 | `result-track:b2cd0ad2d58e3132509067df64ff04810f05a85cc89355a99ef36fc2e9403088` |
| 107 | `theorem` | [lipschitzWith_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/lipschitzwith-complp.md) | 708 | `result-track:d9d9e8d456dc2a9adee5ddd0188e02993bf2570976d4d08b9ba6c551a2a8027f` |
| 108 | `theorem` | [continuous_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/continuous-complp.md) | 713 | `result-track:44555e1a965292f8ba57de8f012a0e034ed1b27cacdb3d4f6c6fe4a6a48cb531` |
| 109 | `def` | [compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/complp-source-edition-3.md) | 724 | `declaration-track:7b706b7cbb2a4df8e636eaf2827fac068b5bf48063a9122b873c0188e7cab416` |
| 110 | `theorem` | [coeFn_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-complp.md) | 727 | `result-track:7d68431b9ed5d9882d7e77c39a3b34cf40fdf7bddc36935d5e72d50ac555ea64` |
| 111 | `theorem` | [coeFn_compLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-complp-source-edition-2.md) | 730 | `result-track:841527fdbd46e7aca8657469fc6592384d7ff66121289d8d93e2b390f904fa7d` |
| 112 | `theorem` | [comp_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/comp-memlp.md) | 733 | `result-track:3fdbb05fd73cd0d43abf76259eee030953716d9ee0b0ab46f4761eb1bdceb98c` |
| 113 | `theorem` | [comp_memLp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/comp-memlp-source-edition-2.md) | 739 | `result-track:e4799ba846707a2b90c025c537f2ecacceffc1f7177925422216030c6c03a25b` |
| 114 | `theorem` | [_root_.MeasureTheory.MemLp.ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/root-measuretheory-memlp-ofreal.md) | 749 | `result-track:c245f9d5d9c3c3784874d72b13c396d0fdd679f16ee6c355017c1dc4cef0f2d7` |
| 115 | `theorem` | [_root_.MeasureTheory.memLp_re_im_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/root-measuretheory-memlp-re-im-iff.md) | 756 | `result-track:dce31433f2e75eb8e0a349a6b60bf572f63d2f740e46146340a709b9aee5fd6b` |
| 116 | `theorem` | [add_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/add-complp.md) | 770 | `result-track:36af0de12185c55b613e6163da64ec19900e13c6a6f88de6f9d9a3edd3f1197c` |
| 117 | `theorem` | [smul_compLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/smul-complp.md) | 780 | `result-track:6a60362ad79be698edb7c5d55e32aec88d816d79b8034335a132db9256f633b5` |
| 118 | `theorem` | [norm_compLp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-complp-le.md) | 788 | `result-track:51a6582d18e741aefff3fb53282f2c7fb54c9c4eedc47c6f805433cdeaaeea1b` |
| 119 | `def` | [compLpₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/complp.md) | 794 | `declaration-track:0e46b566e54bd61a2d2a8787ef53162cf004b30fece83410632cce8fd066ab1f` |
| 120 | `def` | [compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/complpl.md) | 816 | `declaration-track:574b711ca05371deeb6f9f103ffb32f8efdeb344a23beeb620d41406fbce8682` |
| 121 | `theorem` | [coeFn_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-complpl.md) | 821 | `result-track:c43c8c7c23a26783208b381b5d3bac4492a08389389451dc9f6c11d9fd8c5e97` |
| 122 | `theorem` | [add_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/add-complpl.md) | 825 | `result-track:5a0772f61359b4d432c269b2cb37425f6df17260a8bf903ca9b1ceb11db15a96` |
| 123 | `theorem` | [smul_compLpL](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/smul-complpl.md) | 828 | `result-track:e079bf5e01dc30a8bdec9af8c0b98664782da5480170c3bc587b4b26ad038911` |
| 124 | `theorem` | [norm_compLpL_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/norm-complpl-le.md) | 832 | `result-track:236b61465581c9d4717066e4cb3ec4d84026dff893ccc7038928abd0f2ba604f` |
| 125 | `theorem` | [lipschitzWith_pos_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/lipschitzwith-pos-part.md) | 841 | `result-track:a1fa9b1cd05d9e57f3d8c9835612d0e4b4854b7f5ac9464f0c84c853f238a4ed` |
| 126 | `theorem` | [_root_.MeasureTheory.MemLp.pos_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/root-measuretheory-memlp-pos-part.md) | 844 | `result-track:6d9efe47658105d3fe46a6a148bfa984e2f03328ab4f7668b16045b65bd889e1` |
| 127 | `theorem` | [_root_.MeasureTheory.MemLp.neg_part](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/root-measuretheory-memlp-neg-part.md) | 851 | `result-track:139d8a9e24cba4b17818f6f9cf7e2270496c17204f7b226c4bc7523863a24235` |
| 128 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/pospart.md) | 859 | `declaration-track:4962f67ffaf55a2b4b928ef2ecdb101fbeff9e5cf26f58f0e77bae3f17a6fd45` |
| 129 | `def` | [negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/negpart.md) | 863 | `declaration-track:0b56a93e0f51b1597c898b72f78f815faef28c8ba63d2a5d7e42518fe35ce1a4` |
| 130 | `theorem` | [coe_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coe-pospart.md) | 867 | `result-track:e0fd78c82e11b78b07a5dba5386f8703497aef5b447436a89276623a6b4db058` |
| 131 | `theorem` | [coeFn_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-pospart.md) | 870 | `result-track:a627ddbe34fb80d91ca741ea39df0621c7512135efe861a4da91347fc5d15b24` |
| 132 | `theorem` | [coeFn_negPart_eq_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-negpart-eq-max.md) | 873 | `result-track:7425f94f6c1c7c96acfa6f4c4214a226f18f409ec176b3b9a2d973f9ea5f2b7d` |
| 133 | `theorem` | [coeFn_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/coefn-negpart.md) | 878 | `result-track:fcc19e4f0de662890b39e9bd5c4bcf094e717975cc7d8428f2ec283bae1c5da0` |
| 134 | `theorem` | [continuous_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/continuous-pospart.md) | 881 | `result-track:de33e6d69c162b7abe943a68c0387572454842a59a23ad78e9f29547b61263de` |
| 135 | `theorem` | [continuous_negPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/continuous-negpart.md) | 884 | `result-track:0c8acd8c0ca37c298939bf5fba408efce3d0da76c616f4e1c672901b710b1ca1` |
| 136 | `lemma` | [pow_mul_meas_ge_le_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/pow-mul-meas-ge-le-enorm.md) | 897 | `result-track:f3c2328346ccfaba416cfb2844f3aec6cee7cce55aa19c33609df035e92f696b` |
| 137 | `lemma` | [mul_meas_ge_le_pow_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mul-meas-ge-le-pow-enorm-source-edition-2.md) | 903 | `result-track:bdcf1752f301ac0134caec949ac75d0468f9af2356928ec67dbe639fffd22a8b` |
| 138 | `theorem` | [mul_meas_ge_le_pow_enorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/mul-meas-ge-le-pow-enorm.md) | 909 | `result-track:0536e645d94756d7bb5b1bf547872ad1c079fc3bce03270b3116f7f4afbdee6b` |
| 139 | `theorem` | [meas_ge_le_mul_pow_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasic.lean/declarations/meas-ge-le-mul-pow-enorm.md) | 915 | `result-track:624b6ddd87d3128a537babace440f38875e44ef15477514f04417b85fd42f85a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462d9f3a45119b62e72755911ab01d018bd557fd694acb1a47fe7e7d0a3fdbff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
