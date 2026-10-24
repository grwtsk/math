# Verification target: GRWTSK.Topology.GeneralTopology.Stieltjes.Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56028fa6106b368cbb7296b4a8a138d9c34b7966",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56028fa6106b368cbb7296b4a8a138d9c34b7966`.

Source path: `GRWTSK/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LeftRightLim` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StieltjesFunction](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/stieltjesfunction--db7399c82d6d0f8604a13452.md) | 46 | `declaration-track:db7399c82d6d0f8604a13452d8c4ea4b06f359ae80de4122964352deacd3e830` |
| 2 | `instance` | [instCoeFun](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/instcoefun--24c5d53f1bae9626fb4772d6.md) | 59 | `declaration-track:24c5d53f1bae9626fb4772d68053fb4c696baa11215a1784e53dd4754f410983` |
| 3 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/ext--a22ba3d9c60965e5fab4eece.md) | 65 | `result-track:a22ba3d9c60965e5fab4eecea5cf537e6a4daf060ade749699e17e4dbf4f9a82` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/mono--06ccd88babe690d4d2cd6bde.md) | 70 | `result-track:06ccd88babe690d4d2cd6bdea8f0d3724c2c5119b9f42c591aa5b5c94ca0b42c` |
| 5 | `theorem` | [right_continuous](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/right-continuous--0c7b7a47d5908eb3db8b9456.md) | 74 | `result-track:0c7b7a47d5908eb3db8b94567dcb5d8a00ce43ac955b0a6bc3a02207c7c87d36` |
| 6 | `theorem` | [rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/rightlim-eq--e2e7631ca059551e207869ad.md) | 78 | `result-track:e2e7631ca059551e207869addfac3ab796523713dcf6d84bc16372dcb5b2d773` |
| 7 | `theorem` | [iInf_Ioi_eq](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/iinf-ioi-eq--c2e725fa28990578017f1d8c.md) | 83 | `result-track:c2e725fa28990578017f1d8c2c29313e553f8d749aa359e7311e29de179e77cb` |
| 8 | `theorem` | [iInf_rat_gt_eq](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/iinf-rat-gt-eq--12c24fe0fcb1ef6d4826e650.md) | 90 | `result-track:12c24fe0fcb1ef6d4826e650ddd87ecd6b0f30f61901edc13fb7c67d870126f9` |
| 9 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/id--6c49cfcf9a72f6e351498a45.md) | 101 | `declaration-track:6c49cfcf9a72f6e351498a456e51d9abe9a70113c7d8ebbe4ecbda90d8a77d53` |
| 10 | `theorem` | [id_leftLim](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/id-leftlim--3dc14de5c755366a350285ac.md) | 109 | `result-track:3dc14de5c755366a350285ac303e05984b476ef3c668dfff2e0ee5ef63b77a5f` |
| 11 | `instance` | [instInhabited](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/instinhabited--badf8546366e833b14b27454.md) | 114 | `declaration-track:badf8546366e833b14b274540f2f570f06b6642d7c1a5c3c797ab432887899f4` |
| 12 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.StieltjesFunction.Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.Monotone.stieltjesFunction](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/root-grwtsk-topology-generaltopology-stieltjesfunction-variantebcaf0abb5--82a86aaf5b620e7eee994a66.md) | 120 | `declaration-track:82a86aaf5b620e7eee994a668fe5324a44d39fe3503028eb89495f2f64bf5ddd` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.StieltjesFunction.Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.Monotone.stieltjesFunction_eq](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/root-grwtsk-topology-generaltopology-stieltjesfunction-variantebcaf0abb5--7e029f8c5d763ec867e1fec2.md) | 140 | `result-track:7e029f8c5d763ec867e1fec2e2b27ca6e7f1bd011e5a72c5633e0c038e8297db` |
| 14 | `theorem` | [countable_leftLim_ne](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/countable-leftlim-ne--568a570d975c7ebe629de841.md) | 145 | `result-track:568a570d975c7ebe629de8418b546e43612f507275683edfd085e5c4c15c9bde` |
| 15 | `def` | [length](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/length--5c48defbcd638dfe32b4228d.md) | 157 | `declaration-track:5c48defbcd638dfe32b4228d640e37f4d9c56d0e2c7476d936eb30bf07b92d0f` |
| 16 | `theorem` | [length_empty](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/length-empty--b78af78feaaaf0950da8d063.md) | 162 | `result-track:b78af78feaaaf0950da8d0636a5fb08082daf2ad4b698e58225b51c43490885f` |
| 17 | `theorem` | [length_Ioc](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/length-ioc--9a872cf1f16d12d76cca684f.md) | 167 | `result-track:9a872cf1f16d12d76cca684f9b53320941f03bbc23e25e57058cbcd174853d36` |
| 18 | `theorem` | [length_mono](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/length-mono--b800a4bf9b34f6399ea987f9.md) | 178 | `result-track:b800a4bf9b34f6399ea987f993fdb155e48541cafc110ab1104e422215205b3c` |
| 19 | `def` | [outer](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/outer--aa9ee936420d96d7e6037c33.md) | 185 | `declaration-track:aa9ee936420d96d7e6037c3380f996afe88c3fab0ec337be8f9110bc23ced9a1` |
| 20 | `theorem` | [outer_le_length](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/outer-le-length--f8b7ab28581b8bb9578184aa.md) | 189 | `result-track:f8b7ab28581b8bb9578184aa7077896306dc56b43b98fc6a7fe82cb9bb89fdeb` |
| 21 | `theorem` | [length_subadditive_Icc_Ioo](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/length-subadditive-icc-ioo--2b4619ffc985985e5f82f551.md) | 197 | `result-track:2b4619ffc985985e5f82f551c14ec5e5201ab89c3ba353b77a4230c0151dc11e` |
| 22 | `theorem` | [outer_Ioc](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/outer-ioc--2de191f235255e24242a643f.md) | 232 | `result-track:2de191f235255e24242a643f8d06163a907ef45f59409ef99360e2c3a218b479` |
| 23 | `theorem` | [measurableSet_Ioi](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measurableset-ioi--b32bc745371bab7ae4fa58cc.md) | 295 | `result-track:b32bc745371bab7ae4fa58cc5523937f900019cad7e9721dde6b714174db8146` |
| 24 | `theorem` | [outer_trim](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/outer-trim--6b8eda315d4dd512ce6345f4.md) | 315 | `result-track:6b8eda315d4dd512ce6345f4363e859041fde0000ec9655feed6e06b369c2bd0` |
| 25 | `theorem` | [borel_le_measurable](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/borel-le-measurable--0304c948d3810823a39a3fb6.md) | 341 | `result-track:0304c948d3810823a39a3fb652c2f84de21ae0aed742b0c2fd79318773356d8a` |
| 26 | `theorem` | [measure_Ioc](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-ioc--90be4e3079fb6265478e84e9.md) | 360 | `result-track:90be4e3079fb6265478e84e9ceeed92048c1f066442424cf17a87ad6c79f6c77` |
| 27 | `theorem` | [measure_singleton](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-singleton--bb1ff154e91eb9a3ce590f31.md) | 366 | `result-track:bb1ff154e91eb9a3ce590f311dcc6ac55cc871e2c37466b7088bebb02c159dd4` |
| 28 | `theorem` | [measure_Icc](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-icc--f26d342245275276a26a13f9.md) | 393 | `result-track:f26d342245275276a26a13f962e4701c175ab82c553483838ac9cf52db1606e3` |
| 29 | `theorem` | [measure_Ioo](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-ioo--c15dd1ac2de823d3dae1d267.md) | 404 | `result-track:c15dd1ac2de823d3dae1d26713248994c20d15362523d2c2bd37b1c249345890` |
| 30 | `theorem` | [measure_Ico](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-ico--f477756f8c805fa7e648043b.md) | 421 | `result-track:f477756f8c805fa7e648043b5f1eb4993d51d88c7f0921ec07f22a2bc71bcaf9` |
| 31 | `theorem` | [measure_Iic](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-iic--79b0069b2aebadb28e11d658.md) | 431 | `result-track:79b0069b2aebadb28e11d6580ac0f0e4eccfc75bd55d4dbba12db04d8137f7a4` |
| 32 | `theorem` | [measure_Ici](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-ici--17a56040cc0dd4e96f36d6b9.md) | 438 | `result-track:17a56040cc0dd4e96f36d6b96083fe80aedc7d1c1fa8abef48860154b60580fc` |
| 33 | `theorem` | [measure_univ](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/measure-univ--787b143bb31a3307c56a5c7d.md) | 450 | `result-track:787b143bb31a3307c56a5c7d8b989ca05320bea41adab58acc5b987518c8349a` |
| 34 | `instance` | [instIsLocallyFiniteMeasure](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/instislocallyfinitemeasure--99c2ebb7f74297d529ca19db.md) | 457 | `declaration-track:99c2ebb7f74297d529ca19dbb62a9594ce489ac3b6ac936de00eacc34f4f3031` |
| 35 | `lemma` | [eq_of_measure_of_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/eq-of-measure-of-tendsto-atbot--fc2ca57963f31823cb6479b4.md) | 461 | `result-track:fc2ca57963f31823cb6479b42cb0f7125deffdd72300096aa9200ce5d03df946` |
| 36 | `lemma` | [eq_of_measure_of_eq](../../../../../mathematics/Topology/GeneralTopology/Stieltjes/Variant463389dc1f731a74e7021d975495dd02957936b4db624e5123f1e99fc5aac8e8.lean/declarations/eq-of-measure-of-eq--5a6fedfd57d9c61fee9e9fa3.md) | 473 | `result-track:5a6fedfd57d9c61fee9e9fa311e2a52b1087009cbaa1fc604f9818529b150523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
