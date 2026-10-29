# Verification target: Function Ess Sup Ess Sup Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d97ee12149c6d8883218ae1eaf811ff5ee458ebf",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d97ee12149c6d8883218ae1eaf811ff5ee458ebf`.

Source path: `GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ENNReal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.UniformOn` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup.md) | 43 | `declaration-track:de645fc5d641309c58b23335d2bf8af1bbd33e99a98edf5387d3c57038e7110f` |
| 2 | `def` | [essInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf.md) | 48 | `declaration-track:aa76451355f2fdce77e9c2be1c22dbaa22e2acfde1684867ae5129eb6fc3aff3` |
| 3 | `theorem` | [essSup_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-congr-ae.md) | 51 | `result-track:65bdb42646e71cded623986a51738ba73b7d2d41bb88692123141e257c674be9` |
| 4 | `theorem` | [essInf_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-congr-ae.md) | 54 | `result-track:e63af86d789d09d10891f91ac1db5a0fa3dad06ae08a6cc29b17213dd5cec1c8` |
| 5 | `theorem` | [essSup_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-const-source-edition-2.md) | 58 | `result-track:e7f4644319338aaffacbc790c83cad5636ee62898dd662ff5f5541798ad28c67` |
| 6 | `theorem` | [essInf_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-const.md) | 62 | `result-track:6614307e5e3647793da6cb49d35f24a7a74b7fb6a660a84f645de77181752ba1` |
| 7 | `theorem` | [essSup_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-const.md) | 65 | `result-track:25bc7e33e12676d882293753623fc280ba8bd8f4aee93bf607efb6413138e6a8` |
| 8 | `theorem` | [essInf_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-const-source-edition-2.md) | 68 | `result-track:b14d7fb89e1670e98b88390365f643f429aef19fd6a3f231a6082240d301808c` |
| 9 | `lemma` | [essSup_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-smul-measure.md) | 76 | `result-track:75d6e9233b6e102f55292016944f60fe65dd402f03b74d3eda38db6b6453b97d` |
| 10 | `lemma` | [essSup_eq_ciSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-eq-cisup.md) | 83 | `result-track:0aa5be400acc14a2ab9e298304d4206d0e7175b61437a516f2b2ca72be20b159` |
| 11 | `lemma` | [essInf_eq_ciInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-eq-ciinf.md) | 86 | `result-track:9231e81985bb465e63b285dcd5c45d00b5eefdd6f8db8bc741c51089f9446722` |
| 12 | `lemma` | [essSup_count_eq_ciSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-count-eq-cisup.md) | 91 | `result-track:6f6f9dd81353b9ec321b7f698d1775327c1bd412bbc0420e3b8c28663a90c6cd` |
| 13 | `lemma` | [essInf_count_eq_ciInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-count-eq-ciinf.md) | 94 | `result-track:329d7f7d5f313c0ab0a49e173a3e55fbfde29275ef2997a6a923852e49aed70d` |
| 14 | `lemma` | [essSup_uniformOn_eq_ciSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-uniformon-eq-cisup.md) | 97 | `result-track:715ed265073a5b99b8fa47194cd3816a6911089f75b03e09ef232ffba73356b4` |
| 15 | `lemma` | [essInf_cond_count_eq_ciInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-cond-count-eq-ciinf.md) | 101 | `result-track:2d9601748d14ab03f01278d86808eea1747ec7faee06ac9b8538d106acaf8b67` |
| 16 | `theorem` | [essSup_eq_sInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-eq-sinf.md) | 111 | `result-track:23a79a4eefa0b7d759b2d75ec0dd198cb8a7feb4e6ee63de12ddbb493adaa43b` |
| 17 | `theorem` | [essInf_eq_sSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-eq-ssup.md) | 116 | `result-track:413a4436bced6b9a27d485882559e39b69b1b708a78ded8b83ef887d43a10be6` |
| 18 | `theorem` | [ae_lt_of_essSup_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/ae-lt-of-esssup-lt.md) | 121 | `result-track:b0cda3f93e303fc64403d3be7cf034a6ffd268dfcc958cf92265d09eb627ba78` |
| 19 | `theorem` | [ae_lt_of_lt_essInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/ae-lt-of-lt-essinf.md) | 126 | `result-track:c20ee8646e93f5677a01381b3a2661d8bcba4254c79c92018116283b8ae0e661` |
| 20 | `theorem` | [ae_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/ae-le-esssup-source-edition-2.md) | 133 | `result-track:7f3824359a3466546b7709e8678dcf497f7e2b3af11ccd54723f79eea16199f1` |
| 21 | `theorem` | [ae_essInf_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/ae-essinf-le.md) | 138 | `result-track:0760603b3e758731777d651540d626bc3f042f4db467d9a6b3e6046bc2637506` |
| 22 | `theorem` | [meas_essSup_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/meas-esssup-lt.md) | 143 | `result-track:b694ed2e3d84920cdba9e9b68dc56e39c475d8f592bcb46e594c571dd8d8c985` |
| 23 | `theorem` | [meas_lt_essInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/meas-lt-essinf.md) | 149 | `result-track:f5cd6e780b2d411b48de4cb9e2bcf4959f70d176f244a226d1dd34522fdb0c11` |
| 24 | `theorem` | [essSup_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-measure-zero.md) | 162 | `result-track:f795d26b2b6b921be176fc5bb114ee3ec58a1d1623cc7823529a2a929140a6f0` |
| 25 | `theorem` | [essInf_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-measure-zero.md) | 166 | `result-track:1a0230693315f1e72b9770e7eed5dc7931c921a1ebe4c9ca57fc98dc821ec63d` |
| 26 | `theorem` | [essSup_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-mono-ae.md) | 169 | `result-track:719c545038275c50937ffe4095a21e80b63e1130a13f4d2caa4b09af8a273c66` |
| 27 | `theorem` | [essInf_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-mono-ae.md) | 172 | `result-track:3d3a1f24de66ae538f4c273122a81538bb0d50b1ffffd834edb6aacd50c4fae0` |
| 28 | `theorem` | [essSup_le_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-le-of-ae-le.md) | 175 | `result-track:380e595105a8a2cc5e6898e5541bac73ac77365b66d6119845ef6ae1ba9c96f8` |
| 29 | `theorem` | [le_essInf_of_ae_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/le-essinf-of-ae-le.md) | 178 | `result-track:7ef684d1c816a5859b3ddace8aa39515a89daf8eefdb944d5083323447ba5aa7` |
| 30 | `theorem` | [essSup_const_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-const-bot.md) | 181 | `result-track:b5371f35990b2c86f26c05024be6cc4493e36765412cd83aa172afb81eb592a0` |
| 31 | `theorem` | [essInf_const_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-const-top.md) | 184 | `result-track:1709879ba01b7ee354de9d7eef2b0f9189350e1cadacbd313b44affaf970fae6` |
| 32 | `theorem` | [OrderIso.essSup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/orderiso-esssup-apply.md) | 187 | `result-track:4319d3040bba63ac9943d72f6f248b75543245996a23df16ef0a3730a9be2de2` |
| 33 | `theorem` | [OrderIso.essInf_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/orderiso-essinf-apply.md) | 192 | `result-track:5ae0fc233806447889ecfbe93478ac42c3855959a3d5323dd49353731782aa53` |
| 34 | `theorem` | [essSup_mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-mono-measure-source-edition-2.md) | 196 | `result-track:81c9b1b2d05242322d3f65e9ccf5fcbafc02067b830c0c35a9aba816e1b3f24e` |
| 35 | `theorem` | [essSup_mono_measure'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-mono-measure.md) | 200 | `result-track:5134f0a3ce5969fd7938367749c64b20286b606e68aed7668565f6cc70e42293` |
| 36 | `theorem` | [essInf_antitone_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-antitone-measure.md) | 205 | `result-track:40f31de5e0eb422074816f4b787129390b423cf582584c790509dfefaedd2302` |
| 37 | `lemma` | [essSup_eq_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-eq-isup.md) | 209 | `result-track:5ffbde5fb222da0453228d033e8f657811b1dcb1cd8c9f0220b72e313c9c7983` |
| 38 | `lemma` | [essInf_eq_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-eq-iinf.md) | 212 | `result-track:cd31d5a0385f32ee5e8d79e0c6e7a9b87f889fddbb9ca4ac38dc5056aec197e6` |
| 39 | `lemma` | [essSup_count](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-count.md) | 215 | `result-track:fbe97d71d67db29c00266b1de90af79d5ea1113523cfd7e77ffb4963b19bf172` |
| 40 | `lemma` | [essInf_count](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/essinf-count.md) | 218 | `result-track:f3bb2bce269509a5f5369d9929fbf7355a56c08ca2d76b6e2735374f64e83c67` |
| 41 | `theorem` | [essSup_comp_le_essSup_map_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-comp-le-esssup-map-measure.md) | 225 | `result-track:b5ea28749e629cfbaf353d9ed94c8121bdb8ab275a3d6e1b94cd07e37268a5f9` |
| 42 | `theorem` | [MeasurableEmbedding.essSup_map_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/measurableembedding-esssup-map-measure.md) | 231 | `result-track:5dd0eb61d187a672375032e5b2d401810d2883e88a6d345b7aa862bbeca9dc03` |
| 43 | `theorem` | [essSup_map_measure_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-map-measure-of-measurable.md) | 241 | `result-track:cf5cad5855497b8df50909cb580357ab160a3689703479e6f0f0d59648052aab` |
| 44 | `theorem` | [essSup_map_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-map-measure.md) | 249 | `result-track:6236844ba7f97f8af7948dcfe831b1c65feeda235c67a936d340901cc218575d` |
| 45 | `lemma` | [essSup_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-piecewise.md) | 265 | `result-track:5435ab4632f9c4ad6ab05eb1921a88a862de88faa9bfd9f8c73e1c23c361b5b0` |
| 46 | `theorem` | [essSup_indicator_eq_essSup_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-indicator-eq-esssup-restrict.md) | 269 | `result-track:0d30ef8d2f2f2b602591b1a5e70fd31ce61b024180835b0fcefc26343e398267` |
| 47 | `theorem` | [ae_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/ae-le-esssup.md) | 275 | `result-track:103e4ee427e0bda5e6ee2d5749214030def12f26f17036312cc4c9e7b430add6` |
| 48 | `theorem` | [essSup_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-eq-zero-iff.md) | 279 | `result-track:823459f32797682bc98294e9bb16f4a993d3aa342e63263263545508214e34b4` |
| 49 | `theorem` | [essSup_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-const-mul.md) | 282 | `result-track:6a3601ab82e2ea0b24509b5651f1725feafa9666fb3c93212501962f2de11755` |
| 50 | `theorem` | [essSup_mul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-mul-le.md) | 285 | `result-track:31d0d612644cb2442277db64ce2f8dffebdf2d0d5fd42a110f66caa821347152` |
| 51 | `theorem` | [essSup_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-add-le.md) | 288 | `result-track:1e2a9ba9bbff34f7ec165e5d3daf52abc0274eb6f1a787a43c3eca3a54541326` |
| 52 | `theorem` | [essSup_liminf_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-liminf-le.md) | 291 | `result-track:41d859274c8547f3bbd7083dc34935d57f9c0e3257f69f8eed55d2c5172bd287` |
| 53 | `theorem` | [coe_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/coe-esssup.md) | 297 | `result-track:b1d533fdba90daae58c055b32a6c7ac162344ac17fa8ad882aeb5f787e99ad99` |
| 54 | `lemma` | [essSup_restrict_eq_of_support_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionEssSupEssSupSourceEdition1.lean/declarations/esssup-restrict-eq-of-support-subset.md) | 303 | `result-track:299eef381bd65c63be4a772c21cc594324d9b08c7781524c3751152ed8c6b0cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffc7d887d7e28fa37ad197a814c2af9d0b887aba73cca299d5731a203f5ba83e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
