# Verification target: Cauchy Cauchy Seq Shift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "662eabc97c2bdea7893341296de0a9465bc6d2c6",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CauchyCauchySeqShift.lean/index.md) · [Full source](../../../../GeneralTopology/CauchyCauchySeqShift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `662eabc97c2bdea7893341296de0a9465bc6d2c6`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cauchy](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy.md) | 25 | `declaration-track:f49dabb32b54231ddffaeaaa360be02fd28c0357889b9695d56d800925373a30` |
| 2 | `def` | [IsComplete](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscomplete.md) | 30 | `declaration-track:c2c52872bab5f0742ac430bc3c816b1476ef456b9d5b5ceb75cf63bf33c02964` |
| 3 | `theorem` | [Filter.HasBasis.cauchy_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-hasbasis-cauchy-iff.md) | 33 | `result-track:c4d88da3df5f4ed4c12c691a0af2caff61cf5ed53786e1718408a8f971a7496b` |
| 4 | `theorem` | [cauchy_iff'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-iff.md) | 40 | `result-track:1b5a9ab55882ac7f3736a1a52c80f0b7586bab488b36893cd3c404596bce05dc` |
| 5 | `theorem` | [cauchy_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-iff-source-edition-2.md) | 44 | `result-track:8da0a01451a26b0ea84abd1f5688c382d76ad65fd1055a309fa4ac20c6e85c2a` |
| 6 | `lemma` | [cauchy_iff_le](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-iff-le.md) | 48 | `result-track:517a957cdd6ef34ba7ece5ce19b5be4c72b861d564ff2947cfb90c44396abf7d` |
| 7 | `theorem` | [Cauchy.ultrafilter_of](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-ultrafilter-of.md) | 52 | `result-track:13c557fbc17ddacdabdd0d81f3847a552779c2c902b0d5ebc366f781a6aacf4c` |
| 8 | `theorem` | [cauchy_map_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-map-iff.md) | 58 | `result-track:45c8bf0313714e37c26f4f0adfcb18c3df6d07d0e024b3ac8f6f7b97ba838a1a` |
| 9 | `theorem` | [cauchy_map_iff'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-map-iff-source-edition-2.md) | 62 | `result-track:9b7115dec82549a650fc98ef2cdf9b2640b4ff86f8b9acd4cebd81ca5e142749` |
| 10 | `theorem` | [Cauchy.mono](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-mono-source-edition-2.md) | 66 | `result-track:99bc7abf9eabb97011a7ccc1560e46d325acf531e3230a32a74da637413744eb` |
| 11 | `theorem` | [Cauchy.mono'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-mono.md) | 69 | `result-track:97eaca27132817dbfea9ce05e6b10c3ded99f4bb691a20aca37ec251758987d1` |
| 12 | `theorem` | [cauchy_nhds](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-nhds.md) | 72 | `result-track:640e3ea0c03c553f4171081bbf45d7843d6489689519245a8656ad3a418f31f3` |
| 13 | `theorem` | [cauchy_pure](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-pure.md) | 75 | `result-track:6f9091be724530cb53f426159353556feffa4d2519f5ce24bef4bbdcace8c594` |
| 14 | `theorem` | [Filter.Tendsto.cauchy_map](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-tendsto-cauchy-map.md) | 78 | `result-track:3dd585e709ac23a4439fd4b8ec0afb1bf0440906caf005206f8d6f9e6d8224d0` |
| 15 | `lemma` | [Cauchy.mono_uniformSpace](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-mono-uniformspace.md) | 82 | `result-track:2cae7f36982c192248a1744d76c5b19a83473c49dc2728331d1bbd474b78c44d` |
| 16 | `lemma` | [cauchy_inf_uniformSpace](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-inf-uniformspace.md) | 86 | `result-track:b60d9d168488c92c581ee09acf3f9c8116fdf2e5c2ef972620abbe90bc3ddbd7` |
| 17 | `lemma` | [cauchy_iInf_uniformSpace](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-iinf-uniformspace.md) | 92 | `result-track:93b04570b03b12c49ec5c30cb94963b5acbcfd6cd90af3bd4e3ba3c45c915fcf` |
| 18 | `lemma` | [cauchy_iInf_uniformSpace'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-iinf-uniformspace-source-edition-2.md) | 98 | `result-track:e32700ea5c51016f2b9de4ceac517f2449d6955ebb6990fd4458fa77633d2133` |
| 19 | `lemma` | [cauchy_comap_uniformSpace](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-comap-uniformspace.md) | 103 | `result-track:4b28b534162988d9b469ca685d7826294464fcf5c3d687eae6896ba536f1c75d` |
| 20 | `lemma` | [cauchy_prod_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-prod-iff.md) | 108 | `result-track:eb18f90432db2ca52a83c21b909d547333884659f5472cb43e9f973f77e93f27` |
| 21 | `theorem` | [Cauchy.prod](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-prod.md) | 112 | `result-track:ccd7a69ff31a631bb24cd8c5ad6a50bdf78c8d24cd661c99de636ebb75a4d170` |
| 22 | `theorem` | [le_nhds_of_cauchy_adhp_aux](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/le-nhds-of-cauchy-adhp-aux.md) | 121 | `result-track:0886ec4c098bf20ab7062bcff8537675a0aef24dac30c656bcdc34c315300a83` |
| 23 | `theorem` | [le_nhds_of_cauchy_adhp](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/le-nhds-of-cauchy-adhp.md) | 135 | `result-track:04c0af6383700cec0c4d92f4a19a4e458f242041a4924af53428f00b8c04c35e` |
| 24 | `theorem` | [le_nhds_iff_adhp_of_cauchy](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/le-nhds-iff-adhp-of-cauchy.md) | 143 | `result-track:33cff82d298eab6a3056397b17566fbfc9ca9d7ca7cd6a47556cd191dedc0cb5` |
| 25 | `theorem` | [Cauchy.map](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-map.md) | 147 | `result-track:73ab10572eff87df7d17cd7fe0c5c82116253625208ca3aa87a3ef00695e51b6` |
| 26 | `theorem` | [Cauchy.comap](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-comap.md) | 155 | `result-track:151e9aea54f24a7f2ef771e266f91434717ae69e8b9fdfd01074706635f6a1a0` |
| 27 | `theorem` | [Cauchy.comap'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-comap-source-edition-2.md) | 164 | `result-track:658b67f6aa1af0300326f6ed27e8bd8d0b03d50b2c414755542a026c2ea5796c` |
| 28 | `def` | [CauchySeq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq.md) | 172 | `declaration-track:963c47e2ac08f36615156603ec3dffbde82945dd4718ec572be81781fb263a0b` |
| 29 | `theorem` | [CauchySeq.tendsto_uniformity](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-tendsto-uniformity.md) | 175 | `result-track:2e2170d6d191d4304c1fb0bd4975ea219f92a722d92a5d67ae03be86347587d3` |
| 30 | `theorem` | [CauchySeq.nonempty](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-nonempty.md) | 179 | `result-track:52b92bbd5ea57a3be1fc8f3fb790563e090c1b93a9e0198b4658cad08e567ff1` |
| 31 | `theorem` | [CauchySeq.mem_entourage](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-mem-entourage.md) | 182 | `result-track:9bb36af6f17353f432163389349179f80e19258e167712510bf7eff1efa52e8c` |
| 32 | `theorem` | [Filter.Tendsto.cauchySeq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-tendsto-cauchyseq.md) | 188 | `result-track:18173b6611d3e6198e0605f2c15ed022995f955bdd308c6589ea0d74a1dd61c5` |
| 33 | `theorem` | [cauchySeq_const](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-const.md) | 192 | `result-track:45fcf5aed43d76b9f6b178c55e68ff705ac1ae60e1aa2f5bfb4d0777245fca7c` |
| 34 | `theorem` | [cauchySeq_iff_tendsto](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-iff-tendsto.md) | 195 | `result-track:d2b1c96b6594f17cb2e6463a8af7be1671e4733be52ba09d6080668c63c2903c` |
| 35 | `theorem` | [CauchySeq.comp_tendsto](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-comp-tendsto.md) | 199 | `result-track:7c6492e1174277f389abed08783ecc933af227181d303a489a376ca159db0bf7` |
| 36 | `theorem` | [CauchySeq.comp_injective](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-comp-injective.md) | 203 | `result-track:d55c14e2f138085f42eb5259f945be9c4976d2cef3de62fdb7d7997f63fda965` |
| 37 | `theorem` | [Function.Bijective.cauchySeq_comp_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/function-bijective-cauchyseq-comp-iff.md) | 207 | `result-track:d8d22330705225ae9aeb6233705a3c74dae3ba41f583a1ead92ffd79055e8979` |
| 38 | `theorem` | [CauchySeq.subseq_subseq_mem](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-subseq-subseq-mem.md) | 213 | `result-track:337d35590fe3dd9f46886e4e232d1d665cd970f300e6aad2d176fbbc53271c67` |
| 39 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-iff.md) | 220 | `result-track:2f6707549e9e77d043fbb7f0c3bed1ae4fd290495202275c646f16bb51712515` |
| 40 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-iff-source-edition-2.md) | 224 | `result-track:3cabd5b0554fd93c338a48f01c763ba718bd86dd662c05a263dafdcbc594cc9c` |
| 41 | `theorem` | [CauchySeq.prodMap](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-prodmap.md) | 228 | `result-track:c729bcd59fc931d647af9c960c79732679987b4fe7c1a0155a80789defb29840` |
| 42 | `theorem` | [CauchySeq.prodMk](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-prodmk.md) | 235 | `result-track:35ce732a95ec628c8d7184746949141fc47b25571eed7189628633f928dfadf6` |
| 43 | `theorem` | [CauchySeq.eventually_eventually](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-eventually-eventually.md) | 243 | `result-track:5844771473bbd97eaaf24c3214f45b5903e4c58df13a27181763a23e70ba4db4` |
| 44 | `theorem` | [UniformContinuous.comp_cauchySeq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/uniformcontinuous-comp-cauchyseq.md) | 247 | `result-track:f839e3aad9bf4f8797142ed5b13dad2a521f58e1a1b6c176ce1950b3f8893fce` |
| 45 | `theorem` | [CauchySeq.subseq_mem](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-subseq-mem.md) | 251 | `result-track:2fda7bba74d144b95a72b32d615db7f71c2774eb6e2f1e7924b970b78ae27478` |
| 46 | `theorem` | [Filter.Tendsto.subseq_mem_entourage](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-tendsto-subseq-mem-entourage.md) | 261 | `result-track:36279411f7005e98c865f658320fca7db9f3609be562f86905c6f4718bf2691e` |
| 47 | `theorem` | [tendsto_nhds_of_cauchySeq_of_subseq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/tendsto-nhds-of-cauchyseq-of-subseq.md) | 270 | `result-track:9cd9ace06cbdd2e9c915ac0790e2a07a3d4fc75fdd32fc716ea64370919a6a20` |
| 48 | `theorem` | [cauchySeq_shift](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-shift.md) | 276 | `result-track:9dd7a0c415a67a696a2999ff8a56230e773e952a0014f35ae06f4db140c67268` |
| 49 | `theorem` | [Filter.HasBasis.cauchySeq_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-hasbasis-cauchyseq-iff-source-edition-2.md) | 286 | `result-track:60185d86dc9b39681465eab218a39686333c6d6578df79c21443562db9831a7d` |
| 50 | `theorem` | [Filter.HasBasis.cauchySeq_iff'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-hasbasis-cauchyseq-iff.md) | 294 | `result-track:5b25f5ff8b4278633af6be9ed1fffb12851d74b9a9a9d30c978302172a0a6436` |
| 51 | `theorem` | [cauchySeq_of_controlled](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-of-controlled.md) | 304 | `result-track:d5f61ca7604d4a4e61ef693f9ce4e8e3c48b5cbdf754cd6a73ad13d27835eee1` |
| 52 | `theorem` | [isComplete_iff_clusterPt](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscomplete-iff-clusterpt.md) | 316 | `result-track:133a468df0d78fca75775757d043dd2786bf436867a7c63b74464693aee1024c` |
| 53 | `theorem` | [isComplete_iff_ultrafilter](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscomplete-iff-ultrafilter.md) | 321 | `result-track:2ba142277f8d90685b3973b41f60403dc3ef475b75afd83a75acbf19810b69a7` |
| 54 | `theorem` | [isComplete_iff_ultrafilter'](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscomplete-iff-ultrafilter-source-edition-2.md) | 328 | `result-track:e5d3ed923af8f91fe7a50c9246de63b93d412b7e816d70b0c6a8dfc415bf4366` |
| 55 | `theorem` | [IsComplete.union](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscomplete-union.md) | 332 | `result-track:cd5a2472d2d59304444b5cd379abf108bdaf939dcab4c7168bce2c146d5a690f` |
| 56 | `theorem` | [isComplete_iUnion_separated](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscomplete-iunion-separated.md) | 339 | `result-track:3b8b633496ca35c3688276270e321594dd5146a19ce018de22ea815ee9a987d2` |
| 57 | `class` | [CompleteSpace](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace.md) | 361 | `declaration-track:1eb7bb72ef54bed5ae9c9464df0aa32241670e0a2b68dae32cd2938d4c403488` |
| 58 | `theorem` | [complete_univ](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/complete-univ.md) | 365 | `result-track:85540f5ebfcedfd740185be0a72c35809f96d68848965ed0a2d91a2137eaf699` |
| 59 | `instance` | [CompleteSpace.prod](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-prod.md) | 370 | `declaration-track:b08a718479e040992ef97e5ef4614caf5c854a5a6e4786956fd8163369fb4cc8` |
| 60 | `lemma` | [CompleteSpace.fst_of_prod](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-fst-of-prod.md) | 377 | `result-track:95f19d6e39c112a4aee5fc9cb5fff133d0de021446e9fe117ced87d75b124415` |
| 61 | `lemma` | [CompleteSpace.snd_of_prod](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-snd-of-prod.md) | 384 | `result-track:1b05d7c7c2d3720e5831c1ffe982a44a2406b380f7dae9b6e10ed51e894cf74c` |
| 62 | `lemma` | [completeSpace_prod_of_nonempty](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-prod-of-nonempty.md) | 391 | `result-track:759577aa8e879e7036f60917279bcf1e04c71b7fb071169b94297c2b2e8605ef` |
| 63 | `instance` | [CompleteSpace.mulOpposite](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-mulopposite.md) | 396 | `declaration-track:5eb0c7f9547e02147c2717d66b7e744f70456ac6bac3d24a8f13696137e22c41` |
| 64 | `theorem` | [completeSpace_of_isComplete_univ](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-of-iscomplete-univ.md) | 403 | `result-track:4bc70a8e0be60b4434e46ee3f25f19e87fc780f89abea1889bad45334e5d9842` |
| 65 | `theorem` | [completeSpace_iff_isComplete_univ](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-iff-iscomplete-univ.md) | 406 | `result-track:7ca1999966bee78cfb2eb0da87eaef3d3425660c5c0ba63fb3dc6026b43968fb` |
| 66 | `theorem` | [completeSpace_iff_ultrafilter](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/completespace-iff-ultrafilter.md) | 409 | `result-track:8e3a2c09be3177a2e61646b748050f1cbb6c57ac6fcecd865575ec1bb7154b5c` |
| 67 | `theorem` | [cauchy_iff_exists_le_nhds](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-iff-exists-le-nhds.md) | 413 | `result-track:57fc6e55e91db9a44f10760a5652e59c6e06901194c4b9792e35b83ed1125f85` |
| 68 | `theorem` | [cauchy_map_iff_exists_tendsto](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-map-iff-exists-tendsto.md) | 417 | `result-track:3d8bb792c31d4ccf206836e77d176792918e51fd75f4b7bb89183d465ffb1ae5` |
| 69 | `theorem` | [cauchySeq_tendsto_of_complete](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-tendsto-of-complete.md) | 422 | `result-track:a0985413bea7a4440ca84e65cfe67e673ceda6630140f997cd28a957eca91cee` |
| 70 | `theorem` | [cauchySeq_tendsto_of_isComplete](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-tendsto-of-iscomplete.md) | 427 | `result-track:283268579289f35a48cfb8c5a66b578e8cb42c669ead2326c5ee7a5ccce8ec9e` |
| 71 | `theorem` | [Cauchy.le_nhds_lim](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchy-le-nhds-lim.md) | 432 | `result-track:3bfa6a739312e489dfa17ddff211f9f79af9495ea5b66bbd829f6da80b38cb67` |
| 72 | `theorem` | [CauchySeq.tendsto_limUnder](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-tendsto-limunder.md) | 436 | `result-track:a80224269bd581d98d0ab50236c5398d64c4110295d176e857e721310eb54b67` |
| 73 | `theorem` | [IsClosed.isComplete](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/isclosed-iscomplete.md) | 440 | `result-track:59fab21454a5db7736ef6d6e77c51ce36aeab006e063216cfa35a2fe2cc13cd6` |
| 74 | `def` | [TotallyBounded](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded.md) | 447 | `declaration-track:9d7861d57db6efb9c743fd380bc83d499db562717f0c138b0787c856aa275ba1` |
| 75 | `theorem` | [TotallyBounded.exists_subset](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-exists-subset.md) | 450 | `result-track:d7f0a4c943a497281d801307235bc20c33234ac5fffba1725d4c4741870a9568` |
| 76 | `theorem` | [totallyBounded_iff_subset](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-iff-subset.md) | 466 | `result-track:827e2820200baa7b8be2f13871e00aca22e6f5c9e624e6ff9fb6dc9e32303c4a` |
| 77 | `theorem` | [Filter.HasBasis.totallyBounded_iff](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/filter-hasbasis-totallybounded-iff.md) | 471 | `result-track:bb1d6964b12a9ca85dde1a289785a48a88277f0bb0796500ee925778ca694d1c` |
| 78 | `theorem` | [totallyBounded_of_forall_symm](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-of-forall-symm.md) | 477 | `result-track:11b27c475cf5790a96f61036f34c1dfcaad8f488ad800876b113df2e336abb30` |
| 79 | `theorem` | [TotallyBounded.subset](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-subset.md) | 483 | `result-track:15032c50ace935d51a7f3bd9e5fc9b766a05ceb2211c64fc52bca4c466a652b9` |
| 80 | `theorem` | [TotallyBounded.closure](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-closure.md) | 489 | `result-track:a7d5894de416eaf5727ef782396b6af353f37ae0539d96bf89b6b1dc8a5a8f06` |
| 81 | `lemma` | [totallyBounded_closure](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-closure-source-edition-2.md) | 495 | `result-track:e24c36cb75fb56aff2c2bb02ef849fa47b2e09a9715f1b7a14334f3d7c0cf19c` |
| 82 | `lemma` | [totallyBounded_iUnion](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-iunion.md) | 501 | `result-track:125216f5d4a790bb40e0d1ef4b6d98be0b2d235e6f977275d370f5e5507a2659` |
| 83 | `lemma` | [totallyBounded_biUnion](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-biunion.md) | 511 | `result-track:79235235f745258e5de839fad205ce8b3e953bc0ee999522da9d51f084b637ab` |
| 84 | `lemma` | [totallyBounded_sUnion](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-sunion.md) | 518 | `result-track:6f357c4c8dd46920bad4c855a3c8f1c6cb81c0e5090fd0c8338cb244ac58b1b8` |
| 85 | `lemma` | [Set.Finite.totallyBounded](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/set-finite-totallybounded.md) | 523 | `result-track:28a00a0f281e6de2bf6ddc9f7367ff158a2a9f279474eb0cb05bffcf362267ec` |
| 86 | `lemma` | [Set.Subsingleton.totallyBounded](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/set-subsingleton-totallybounded.md) | 527 | `result-track:dc5646c8042181e4af80cf6e392196a53f5659f137d266af0fec602f7f779da6` |
| 87 | `lemma` | [totallyBounded_singleton](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-singleton.md) | 532 | `result-track:1a024580a259aeff03ead208a65ab49bd30dda8cada31bbe41adbd878ff16772` |
| 88 | `theorem` | [totallyBounded_empty](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-empty.md) | 535 | `result-track:f41f53de88fb0ac8fc25b1efb99742647082d0bd6236ec64b4a60dca1b438fa1` |
| 89 | `lemma` | [totallyBounded_union](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-union.md) | 540 | `result-track:3f27bd027129dc87af5d2e35ac5489854b595affa924574ab8d4128117c05cb3` |
| 90 | `lemma` | [TotallyBounded.union](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-union-source-edition-2.md) | 546 | `result-track:eb2959a3cea8c7598d390a93770f50dca4db9e87d6a3122d6b98b70267c0d64e` |
| 91 | `lemma` | [totallyBounded_insert](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-insert.md) | 551 | `result-track:e4e3db58507ff67657e57eae7dc90d4aa00756404fa91528b24a91a37c906540` |
| 92 | `theorem` | [TotallyBounded.image](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-image.md) | 558 | `result-track:2b7bf20b1ba6769d4cb0491261a88c8cac10631cef4156b996feb74337d01234` |
| 93 | `theorem` | [Ultrafilter.cauchy_of_totallyBounded](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/ultrafilter-cauchy-of-totallybounded.md) | 570 | `result-track:3673a351366043061871ca071e86e34270a04250d63b114381176cc478453d89` |
| 94 | `theorem` | [totallyBounded_iff_filter](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-iff-filter.md) | 582 | `result-track:d412fbebb6247dbfaac89dcea1f869cf44ab4e3c362b03e2787def7d334389fc` |
| 95 | `theorem` | [totallyBounded_iff_ultrafilter](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-iff-ultrafilter.md) | 602 | `result-track:dd0b6636c17b1b1d1639cbb018f3037292d28f41d349a75079f014ea142ae655` |
| 96 | `theorem` | [isCompact_iff_totallyBounded_isComplete](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscompact-iff-totallybounded-iscomplete.md) | 608 | `result-track:9cbbeabaad331163ff16955a582ff9b8c871857d794b3cec632ed8eebce7c82d` |
| 97 | `theorem` | [IsCompact.totallyBounded](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscompact-totallybounded.md) | 621 | `result-track:4874faab6571cde6d37aa045c8cf7a07210b6d7405c92497388406c2f78b5847` |
| 98 | `theorem` | [IsCompact.isComplete](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscompact-iscomplete.md) | 624 | `result-track:418db906ec91676188ecd0ee40463b68add5af4dd4bb2ca28197377fb907c9f3` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/instance.md) | 628 | `declaration-track:5e413dc25a25c9b72798e77a35d1d2c23543996081f1c37b22d37652d51bca1d` |
| 100 | `theorem` | [isCompact_of_totallyBounded_isClosed](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscompact-of-totallybounded-isclosed.md) | 632 | `result-track:0ef8595ab275e674a630676544820422ce588b48755ed0522b9c915b8f3eece9` |
| 101 | `theorem` | [CauchySeq.totallyBounded_range](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/cauchyseq-totallybounded-range.md) | 637 | `result-track:7cd3c040755302f8e97ae1f3dfd6d4495a543064f9009ba02235df6cb48f69d5` |
| 102 | `def` | [interUnionBalls](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/interunionballs.md) | 651 | `declaration-track:70186e4d8f42d87af30a1f76a05fcc52c192bdcfde9017f51adbdf0a678f46af` |
| 103 | `lemma` | [totallyBounded_interUnionBalls](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/totallybounded-interunionballs.md) | 654 | `result-track:cc61f054842a957825b457b08740bbf8bdabfb17b9e8a5f7e97ca1497613727a` |
| 104 | `theorem` | [isCompact_closure_interUnionBalls](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/iscompact-closure-interunionballs.md) | 669 | `result-track:25c6f5bf839f3e1dc93172c8f979ea39d83c8df4467d79ddd2957472f60c94fc` |
| 105 | `def` | [setSeqAux](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/setseqaux.md) | 699 | `declaration-track:35bccc8d76f010dcc943cad61620d0932716162a1161fbec8255357a9dfb9ad5` |
| 106 | `def` | [setSeq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/setseq.md) | 704 | `declaration-track:4f1b1bf8cddc6c815cf3316fa5a83c1b251ee869fe3eb79bcc52d0fd7c75e06b` |
| 107 | `theorem` | [setSeq_mem](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/setseq-mem.md) | 707 | `result-track:4966f8fa0c8e32dc32cc8206a0879e9022843e21aa84ea37057ec04876da4dfb` |
| 108 | `theorem` | [setSeq_mono](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/setseq-mono.md) | 710 | `result-track:a04a9465bf1edb5d4a514829d3329c481bb25926f804fa58205ebfe7d7a34bc5` |
| 109 | `theorem` | [setSeq_sub_aux](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/setseq-sub-aux.md) | 713 | `result-track:4d9a09bd8466840d46ae9461152ffb309cdfe9891515e9856ad33fe7f1541941` |
| 110 | `theorem` | [setSeq_prod_subset](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/setseq-prod-subset.md) | 716 | `result-track:24ff7fd0f7ca2fdd11f1136482a0d5de87a6f53db4e34641a8ed6053822bf47c` |
| 111 | `def` | [seq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/seq.md) | 725 | `declaration-track:7994695b7cc4c6fe48265121d190daca253a920b4379e60f86179481d3a64642` |
| 112 | `theorem` | [seq_mem](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/seq-mem.md) | 728 | `result-track:363b7dfeaf2468fd1a9c5e2a13921970878e0e3d38160d879029b70a335d9611` |
| 113 | `theorem` | [seq_pair_mem](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/seq-pair-mem.md) | 731 | `result-track:db8ed52d99a670c215340af495a2d64ff12db55cea77a3ed089cdeec049ff2e2` |
| 114 | `theorem` | [seq_is_cauchySeq](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/seq-is-cauchyseq.md) | 735 | `result-track:e91ca58c4a8711190d5a7f6a4360d1ac20911841fb462524e19ddf3b8392f9c6` |
| 115 | `theorem` | [le_nhds_of_seq_tendsto_nhds](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/le-nhds-of-seq-tendsto-nhds.md) | 739 | `result-track:c004528b51246c1d8c80adb0ff307629b98142831ff7461e91e2b7c7904fc20b` |
| 116 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/complete-of-convergent-controlled-sequences.md) | 764 | `result-track:3add97d70f545c3aa28111e6e04d70271ff91caeca359c7e087f0069df86a12b` |
| 117 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/complete-of-cauchyseq-tendsto.md) | 777 | `result-track:0b4e31d820af3c566f8d24caa08d529253d2525559232d604176e9a9d057e07d` |
| 118 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/instance-source-edition-2.md) | 786 | `declaration-track:ac8531d8baeccaf6cbed909d641af189976b65838e10ffc58f303d79d831d681` |
| 119 | `theorem` | [secondCountable_of_separable](../../../../GeneralTopology/CauchyCauchySeqShift.lean/declarations/secondcountable-of-separable.md) | 794 | `result-track:6b29e35d0f9cf6aab4f8788c4dbc366c4a5f76d268ce36c20ec76ad540cc193e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f19721181a1ff25d995f7c4c3bfa4a75d53bbd9a727f22bfddef8e7c0e500889 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant4e0b6aa3b4628f1af85130975ad83926bd1b5c14530faed4fc342b990e177189.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
