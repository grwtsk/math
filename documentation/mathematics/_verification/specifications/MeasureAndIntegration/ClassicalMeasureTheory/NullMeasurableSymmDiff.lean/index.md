# Verification target: Null Measurable Symm Diff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9ed19edb7255b3f29bfcb248746ddc19f32750",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta63c8f1a54e1d71342cd7141d40258986cf4c31c35be5507d903341d03a8d2ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9ed19edb7255b3f29bfcb248746ddc19f32750`.

Source path: `GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta63c8f1a54e1d71342cd7141d40258986cf4c31c35be5507d903341d03a8d2ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NullMeasurable/Varianta63c8f1a54e1d71342cd7141d40258986cf4c31c35be5507d903341d03a8d2ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.EventuallyMeasurable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.AEDisjoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NullMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurablespace.md) | 67 | `declaration-track:3b5a62fc11b8a9a416843cd4f84f9a4022838a67569fabec738b153b28337356` |
| 2 | `instance` | [NullMeasurableSpace.instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurablespace-instinhabited.md) | 75 | `declaration-track:090d4ac105b9771b746b92d98e123ca2b803232b706230d7b82b0ff34575cfc1` |
| 3 | `instance` | [NullMeasurableSpace.instSubsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurablespace-instsubsingleton.md) | 79 | `declaration-track:1a437a762c801ea1609bc7802aeef796d72370a4e030399295bb3d2706cfb91f` |
| 4 | `instance` | [NullMeasurableSpace.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurablespace-instmeasurablespace.md) | 83 | `declaration-track:43102d90c2768c2f624a8e9df0e68ef78eb4bf2c7dbdb02ce9bee50e8ba8b1d5` |
| 5 | `def` | [NullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset.md) | 88 | `declaration-track:39ab8ddc5cc0b18603d7677fef14749421fd5ccfaa201cf08ef3684a16b92dfc` |
| 6 | `theorem` | [_root_.MeasurableSet.nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-measurableset-nullmeasurableset.md) | 93 | `result-track:101d4c2c78753fefb09415e5ef5a79a6b2a8b41fd439f80162816a17d2822125` |
| 7 | `theorem` | [nullMeasurableSet_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-empty.md) | 96 | `result-track:4cb39d70ba73eba247599c5717a03da5395be5bb4b90421d1961ed92d7065ac2` |
| 8 | `theorem` | [nullMeasurableSet_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-univ.md) | 99 | `result-track:bb30a7443705634527d16dae3b811cf7928ed83786e44ff6c01fa3f078b0bc66` |
| 9 | `theorem` | [of_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/of-null.md) | 104 | `result-track:1c38fe6b7c3cca828299363e6fce18858630ee053908cd5520fa941814e50fe4` |
| 10 | `theorem` | [compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/compl.md) | 107 | `result-track:1c9b9cecc97846f4a18b6df9c1b35a61da2bd2f9c2d57298f1832805cde6d839` |
| 11 | `theorem` | [of_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/of-compl.md) | 110 | `result-track:ac71adca4d569710cb05c0a7a67510e1454eedf88f69887fe2880be9c0542cff` |
| 12 | `theorem` | [compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/compl-iff.md) | 114 | `result-track:fadb868fd0d5ae34c2cb27b057e1c0a67eed78950394125bdbc211ccd3519ff9` |
| 13 | `theorem` | [of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/of-subsingleton.md) | 118 | `result-track:c960f5559d6177eebb25c80eeda774680acefe9cf3492db947722982a730a575` |
| 14 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/congr.md) | 121 | `result-track:701563b693cc4882a0fd22e6c8ef5058926b534ca8a4bc755412ee4546ca6843` |
| 15 | `theorem` | [iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/iunion.md) | 125 | `result-track:166860064fe74e5fbfc063da5ef0f7dd4b9e5300300a93e9bd634ab8b2231739` |
| 16 | `theorem` | [biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/biunion.md) | 129 | `result-track:63a1b2fb4dd5c6adbbd70cab27a025aa54934afb2fd0294f908839dc8cdd39d6` |
| 17 | `theorem` | [sUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/sunion.md) | 133 | `result-track:0ef1e67be6cc485e74177eb04ba5ad67464d6dcc0820cc72f9a7413428ebcc6c` |
| 18 | `theorem` | [iInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/iinter.md) | 139 | `result-track:b4b956a0a222206cca8a40fcd4fb1a45b521ff2d1e18b0887f26e1ea83c2d421` |
| 19 | `theorem` | [biInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/biinter.md) | 143 | `result-track:aa27ec2292f72b92eca976fd22a033a75a7598d8b4f757e938646f9a13eb85a2` |
| 20 | `theorem` | [sInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/sinter.md) | 147 | `result-track:cc27a2d9b78fb8ea5a4cf79602f13b6ad547ec61c7fcbc251eefd46c2b8b3797` |
| 21 | `theorem` | [union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/union.md) | 152 | `result-track:b43324fec2ee5d3acc73cabf9ba6cc7b6110cf4b32c642095351a3f433e1fef1` |
| 22 | `theorem` | [union_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/union-null.md) | 156 | `result-track:59d1bd0fd531d052c9059373970d0d8ec9feb8b7b4aba258d73901aff4643fd1` |
| 23 | `theorem` | [inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/inter.md) | 161 | `result-track:b28daa7a08b05bea3920723ad16674b666dddc7d5e1ee8165c1cb9936352ef03` |
| 24 | `theorem` | [diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/diff.md) | 166 | `result-track:b489819b7ed33824b1c33472bcbf848c89d6e68b6c6ac9ee6f3ce87c5378a2e8` |
| 25 | `theorem` | [symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/symmdiff.md) | 171 | `result-track:2bae3baa8f4a07a1129f73b4284b707568d7c354f9821ca4f3b9526102420d16` |
| 26 | `theorem` | [disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/disjointed.md) | 176 | `result-track:008cfffd42780129086b20c4aad900e322828db57a0d1672b18ebae3fa4505a0` |
| 27 | `theorem` | [const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/const.md) | 180 | `result-track:eb578abc240d7b9ecb0cbb1a9197863032c1c457348c9fe37a7d7987ba7ab5f0` |
| 28 | `instance` | [instMeasurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/instmeasurablesingletonclass.md) | 183 | `declaration-track:9b96419b4d2c88a2c5732d1643d05c8f0b31810710c1b1c25803fcf40acac0b9` |
| 29 | `theorem` | [insert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/insert.md) | 187 | `result-track:afa7937a4c16b4b266cdd011baf6aaee798bb412894d473a9f91604ae263c780` |
| 30 | `theorem` | [exists_measurable_superset_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/exists-measurable-superset-ae-eq.md) | 191 | `result-track:b1cd1324ac452868c1db3630cec2d4f6790e7278a70916b342ece13d4956d63c` |
| 31 | `theorem` | [toMeasurable_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/tomeasurable-ae-eq.md) | 199 | `result-track:8cebaad765f620ce255e815367908a16abe3b0869c7ccbb90c7627e99501049c` |
| 32 | `theorem` | [compl_toMeasurable_compl_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/compl-tomeasurable-compl-ae-eq.md) | 203 | `result-track:36955812dc1455e81222e69517b2c2605521ab1377fcc38ab76314455dfea52f` |
| 33 | `theorem` | [exists_measurable_subset_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/exists-measurable-subset-ae-eq.md) | 206 | `result-track:8013731a12e465c69ca2a75b2a1db70bb7df3b5cca5d513826190397436cae8c` |
| 34 | `theorem` | [exists_subordinate_pairwise_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/exists-subordinate-pairwise-disjoint.md) | 220 | `result-track:e95aac5487c8ad6f4d65382a8b0d2c1c276cadb403535f6476f463870eaf4ff3` |
| 35 | `theorem` | [measure_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-iunion-source-edition-2.md) | 233 | `result-track:43d7cab4ed209557d07fd1e9ba3c4fbfa8db9a41b3fded87e5cc0b34fcb310dd` |
| 36 | `theorem` | [measure_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-iunion.md) | 242 | `result-track:238c67b51536a4fdc76c96df7a444fe2416186eae6dcd9c6ac50c4bf6757cb38` |
| 37 | `theorem` | [measure_union₀_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-union-aux.md) | 250 | `result-track:5b164cf114d20ad20ff7bded594cec8640f55ec3c6be9c8c3f073c94d92d3f97` |
| 38 | `theorem` | [measure_inter_add_diff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-inter-add-diff.md) | 257 | `result-track:17da34f138bd43dbf2895429fccd6ce66218629c44b439b7ceee7bbcaced6eac` |
| 39 | `theorem` | [measure_diff_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-diff-symm.md) | 273 | `result-track:f25e83de1078fad7bc666ddd2df78bce947e51626c3f67a9d78204dadcc9c836` |
| 40 | `theorem` | [measure_union_add_inter₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-union-add-inter.md) | 278 | `result-track:db46ee5248beb3a721db4144402cb994171cd2a9d254a0ab4f2fef68ab089f72` |
| 41 | `theorem` | [measure_union_add_inter₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-union-add-inter-source-edition-2.md) | 283 | `result-track:fee9d951ed8a1b8dad913aed06320e9dc2a30fadef55df2c56f56296a176f59b` |
| 42 | `theorem` | [measure_union₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-union-source-edition-2.md) | 287 | `result-track:aef98cdc0bf39e91d1ce1000a0e8ff07bebee0e30a984cb8dbd2329bac016b6d` |
| 43 | `theorem` | [measure_union₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-union.md) | 290 | `result-track:9c5bd9860ae0304f07e8451256bfcceee4986cd43f2f4a95a0153f2a14a43d95` |
| 44 | `theorem` | [measure_add_measure_compl₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-add-measure-compl.md) | 293 | `result-track:a1fd7dba02eb5846569ad48c8f8b37c91ee40993b511b04d0e1d6dfc76492a28` |
| 45 | `lemma` | [measure_of_measure_compl_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-of-measure-compl-eq-zero.md) | 296 | `result-track:5adf552fc1e39b118bcd2256b55ad870bf3c8ed2c7b8f881367bc4decb20268a` |
| 46 | `theorem` | [nullMeasurableSet_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-singleton.md) | 303 | `result-track:4ebc9a6803d58e4d0422c3f8134be707b632e317b640c45b526285014f4f2db9` |
| 47 | `theorem` | [nullMeasurableSet_insert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-insert.md) | 307 | `result-track:9ad0055a7277cf5109e82ad77d5659d83d7b7adf9b0a796ca646b0c40b24c5dc` |
| 48 | `theorem` | [nullMeasurableSet_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-eq.md) | 311 | `result-track:7b3b8d2f5ff217b40789e12b8ab1c2a060defe3539a861987f32998db976eb5e` |
| 49 | `theorem` | [_root_.Set.Finite.nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-set-finite-nullmeasurableset.md) | 314 | `result-track:5905e3fa2bc327167f3db2489b1538b6f87101370e27213836680e0efb8dd75c` |
| 50 | `theorem` | [_root_.Finset.nullMeasurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-finset-nullmeasurableset.md) | 317 | `result-track:bc0cfb5a3467b37ab770a8861b5ed57ab1e11f5192f70fa1f665009733281b35` |
| 51 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-set-finite-nullmeasurableset-biunion.md) | 322 | `result-track:23378a061e03db8b9fed337745fa57b08d4ff240e905ef7c4786bac5ca3a33a1` |
| 52 | `theorem` | [_root_.Finset.nullMeasurableSet_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-finset-nullmeasurableset-biunion.md) | 326 | `result-track:404360e087a93dd97b57c8a0e9e48403f1cd80ea9cd2081bdae09593df4fe179` |
| 53 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_sUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-set-finite-nullmeasurableset-sunion.md) | 330 | `result-track:f338ba20a147db6b8ce161cbd310a54f5b054637dbf3117bfcfe9902261ee40d` |
| 54 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_biInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-set-finite-nullmeasurableset-biinter.md) | 334 | `result-track:3d6a157634e58227eb522664ec5c8a606a7572cbd70651e741f9994bfc66abff` |
| 55 | `theorem` | [_root_.Finset.nullMeasurableSet_biInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-finset-nullmeasurableset-biinter.md) | 338 | `result-track:653df72f7bb64472a514216e50e770210d3f58e228740b4b795bc10d07d2fbc7` |
| 56 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_sInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-set-finite-nullmeasurableset-sinter.md) | 342 | `result-track:615c16f06a8d4659224746ff6915b3211f4300ec953255b51662d31c90753699` |
| 57 | `theorem` | [nullMeasurableSet_toMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-tomeasurable.md) | 346 | `result-track:2c4b6a6946e30b4487141163c8720d433b9279f71448c603c5ac4ffc8cd2fddd` |
| 58 | `lemma` | [measure_preimage_fst_singleton_eq_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-preimage-fst-singleton-eq-tsum.md) | 351 | `result-track:4e0261683c90bf7529c6fc7ca044d3ac473690308075fc4a08fb731d147f3231` |
| 59 | `lemma` | [measure_preimage_snd_singleton_eq_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-preimage-snd-singleton-eq-tsum.md) | 356 | `result-track:7fb5b079a2e904b365d8986bb1573a2e68b73347ef277905137add66a6ef4fae` |
| 60 | `lemma` | [measure_preimage_fst_singleton_eq_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-preimage-fst-singleton-eq-sum.md) | 361 | `result-track:293998e2678e94fae777896778447281b083046b5e912399e34fadb3fdb15f0f` |
| 61 | `lemma` | [measure_preimage_snd_singleton_eq_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-preimage-snd-singleton-eq-sum.md) | 365 | `result-track:9a01c5872a7f532423859f282e719bded70cd55844ce0648a8fe3ce0fdda4a73` |
| 62 | `def` | [NullMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurable.md) | 377 | `declaration-track:9126fa815701cee4d9a3f0c0212e6085ffb68991ad2b0a5bdf3e057953614de8` |
| 63 | `theorem` | [_root_.Measurable.nullMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-measurable-nullmeasurable.md) | 380 | `result-track:1e8049060cdb92bbfd36b4f92cf3d98d255327cfe33bc3fa25a23d132221778c` |
| 64 | `theorem` | [NullMeasurable.measurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurable-measurable.md) | 383 | `result-track:b3d15ea291526479eb3e7eb8a2eb44dee863803646edee90c6c96ccdfb960d0e` |
| 65 | `theorem` | [Measurable.comp_nullMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measurable-comp-nullmeasurable.md) | 387 | `result-track:e2615bb862c28d557c881e989890dd64cf9a1b1c10fac46209e739eae45734f1` |
| 66 | `theorem` | [NullMeasurable.congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurable-congr.md) | 391 | `result-track:92d58b840ebde0963437474096a22876ea4763217103bd334a56f28b848231fe` |
| 67 | `class` | [Measure.IsComplete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-iscomplete.md) | 403 | `declaration-track:9d297358621b739b4bc16c869cf2424ae623a7429d71f438b315991e5414f414` |
| 68 | `theorem` | [Measure.isComplete_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-iscomplete-iff.md) | 408 | `result-track:c128bf99efe9f105fd676ebd7e729cbdf891f3ff73623387f0cdbc243db8d3c2` |
| 69 | `theorem` | [Measure.IsComplete.out](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measure-iscomplete-out.md) | 411 | `result-track:dc7ee7cfbff0aedd1aef9265b270338109933ca7daec43733eddb5ca53b8ecb3` |
| 70 | `theorem` | [measurableSet_of_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/measurableset-of-null.md) | 414 | `result-track:d8abd00521c7113fb0c5f1980792f53493a3470e3305d158253c0a7434eb9207` |
| 71 | `theorem` | [NullMeasurableSet.measurable_of_complete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurableset-measurable-of-complete.md) | 417 | `result-track:21990b862f64e13d640deaacd59486d12f7ce462761a9c8e03690637a3ece939` |
| 72 | `theorem` | [NullMeasurable.measurable_of_complete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/nullmeasurable-measurable-of-complete.md) | 424 | `result-track:8d56333c5a51088f91b97dcd27c2996e772c4557d1ee2dbe07c8278ec13904ec` |
| 73 | `theorem` | [_root_.Measurable.congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/root-measurable-congr-ae.md) | 427 | `result-track:c168c8fa0fb781d110759e662d05f29106061043232a87c3418b53ec6e6c8809` |
| 74 | `def` | [completion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/completion.md) | 434 | `declaration-track:675337c4e175f9ceef8cf49600511bc8fc4955b8c05897c69ad8757fe9cc0a15` |
| 75 | `instance` | [completion.isComplete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/completion-iscomplete.md) | 442 | `declaration-track:9394ec4004ccde7177ad21145953a7427948e3ac3291bb2feefa1a3ca12d3e18` |
| 76 | `theorem` | [coe_completion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/coe-completion.md) | 446 | `result-track:1cbdca4430b87a9cd356c90b52170be2ce5177e165e985a0420debc81ff76a1a` |
| 77 | `theorem` | [completion_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/completion-apply.md) | 449 | `result-track:b16a70dba86d9d557779d71f1e541b3761a52da10194056663e55dd481b6c370` |
| 78 | `theorem` | [ae_completion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableSymmDiff.lean/declarations/ae-completion.md) | 454 | `result-track:d2507990af71ee89a6e28fee87e0599d955e5a6de5e2f07645f2e3369faeaec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd9efb132b09ebaf4acd02d9b40d589db0ea48c1ccd3d175081ce22893287796 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta63c8f1a54e1d71342cd7141d40258986cf4c31c35be5507d903341d03a8d2ac.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/NullMeasurable/Varianta63c8f1a54e1d71342cd7141d40258986cf4c31c35be5507d903341d03a8d2ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
