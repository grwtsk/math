# Verification target: Lebesgue Basic Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f473f27faa14345f5da6bfe50ac65aad71ea558c",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantec7f8b933681d423b1cc7bedaa75c55615450e34e96ed92c6d8910efec71b51f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f473f27faa14345f5da6bfe50ac65aad71ea558c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantec7f8b933681d423b1cc7bedaa75c55615450e34e96ed92c6d8910efec71b51f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variantec7f8b933681d423b1cc7bedaa75c55615450e34e96ed92c6d8910efec71b51f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFunc` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SimpleFunc.lintegral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/simplefunc-lintegral-eq-lintegral.md) | 62 | `result-track:b2e790d3f5f7b115fbe0c754a899f0967fa806f1ba99b4b921c9cec7c0e11434` |
| 2 | `theorem` | [lintegral_mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono.md) | 69 | `result-track:241235443f98585fd738c92746e8d809eb0b92387fc80c869ad350885622bab9` |
| 3 | `theorem` | [lintegral_mono_fn'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-fn-source-edition-2.md) | 75 | `result-track:f71a6f4f098e089a5ef26af6bdd88827ba993c331636450331f52b168750b6b6` |
| 4 | `theorem` | [lintegral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-source-edition-2.md) | 79 | `result-track:89dc0920231e9d4f097c7d76b4b6ddf5761455db22f42fb115cca85598919f81` |
| 5 | `theorem` | [lintegral_mono_fn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-fn.md) | 83 | `result-track:66c63f527b77e6ae2ac250ce29d0485d2afbe233967ebba3eda027fb1e18ab55` |
| 6 | `theorem` | [lintegral_mono_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-nnreal.md) | 87 | `result-track:cba0a2423914a6b8789255067054fda4a96df4cb36eb70263f3bd634d80fb10b` |
| 7 | `theorem` | [iSup_lintegral_measurable_le_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/isup-lintegral-measurable-le-eq-lintegral.md) | 90 | `result-track:9b4fe30ff01d8eacc8554a9398b220ca792f4b7fb59399d8087619c8ee3a1874` |
| 8 | `theorem` | [lintegral_mono_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-set-source-edition-2.md) | 98 | `result-track:d21356c031bf4ba25bca2846f4fe1bb7ae230295ab0df3d915827a2a27279cde` |
| 9 | `theorem` | [lintegral_mono_set'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-set.md) | 102 | `result-track:5ec2fcfb0daab030d3a45f95ef025826cf88a336b3c6eb8a6cb90d660a2d89b5` |
| 10 | `theorem` | [monotone_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/monotone-lintegral.md) | 106 | `result-track:efa29c535beca58690e296bd723e6e66d3a3482d9e0694f602698408dc5d64da` |
| 11 | `theorem` | [lintegral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-const.md) | 110 | `result-track:082a573e93a74dca92ada1a5708ae9fa6444054f7ad25e3d8091f035488be1b0` |
| 12 | `theorem` | [lintegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-zero.md) | 114 | `result-track:1cbba1cab47ced78a760c43281c885c2c6739ccf04f3eaf1610e44e1a0724bf2` |
| 13 | `theorem` | [lintegral_zero_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-zero-fun.md) | 116 | `result-track:1a6cf1522869e26ad87f21da1564661a7db55654c30068b312c2fd1bbfbdf96e` |
| 14 | `theorem` | [lintegral_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-one.md) | 119 | `result-track:b4c7d3e660e07cd464805336560f32c316f931d66662467cb79c46e39f24df76` |
| 15 | `theorem` | [setLIntegral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-const.md) | 121 | `result-track:6c602e453c71a9bddd7af4c2ca6f741793745f3adbafadd1f0f1315e1f7de70b` |
| 16 | `theorem` | [setLIntegral_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-one.md) | 124 | `result-track:d6566652b647baa21524f0d4f69aa3b816f7eddcd07b291d534aa9536474a8c3` |
| 17 | `theorem` | [exists_measurable_le_lintegral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/exists-measurable-le-lintegral-eq.md) | 129 | `result-track:bfab3c9e500abcb0e763edadd9238c6a637e37bdfcd46e122089c7c5a2dbd06a` |
| 18 | `theorem` | [lintegral_eq_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-eq-nnreal.md) | 148 | `result-track:ffaf31d6206be7eddc3a34d340d0e14deda2d6af8cfb5e0465a04dbe5787abd7` |
| 19 | `theorem` | [exists_simpleFunc_forall_lintegral_sub_lt_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/exists-simplefunc-forall-lintegral-sub-lt-of-pos.md) | 170 | `result-track:3a34a1ca950f71281fa83d25e8ab306ee287abe6ad12c4ad28ce59b351de2c09` |
| 20 | `theorem` | [iSup_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/isup-lintegral-le-source-edition-2.md) | 188 | `result-track:a998e7a68c03e9675be8c1a2004b5f754fa83eae81331bba60a721d5a16302c4` |
| 21 | `theorem` | [iSup₂_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/isup-lintegral-le.md) | 193 | `result-track:84ac5daaaec8675557f6b5ab9d5b8c2524eb1ac6cdb4775d99a50fa42c0a3dcc` |
| 22 | `theorem` | [le_iInf_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/le-iinf-lintegral.md) | 198 | `result-track:7ef9c359b7dc3a851d7215a985a886ce6a60f7ec684c9c2905e62dfaafbb5908` |
| 23 | `theorem` | [le_iInf₂_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/le-iinf-lintegral-source-edition-2.md) | 203 | `result-track:d5507175b1a42bcda8a57f022a610658d95bd00c45437d70475edf4c2c778c0f` |
| 24 | `theorem` | [lintegral_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-mono-ae.md) | 208 | `result-track:b4284d8bf58542eeb2f9e221d01297295b42c1cdd9afceab571a97f623b64a2a` |
| 25 | `theorem` | [setLIntegral_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-mono-ae.md) | 230 | `result-track:6b35c9b8021493a2a0a8538a56b1368e9ead8bfc62d071f255aa2e59770e88be` |
| 26 | `theorem` | [setLIntegral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-mono.md) | 239 | `result-track:bf5e0cbb90547427808287003e6394c661df69c7f8957073736202f6e6ec7a6f` |
| 27 | `theorem` | [setLIntegral_mono_ae'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-mono-ae-source-edition-2.md) | 243 | `result-track:d56bcdeceb36ffc1c47656a13a8ed53cc418bd6a1ce9a7711a5d9f2bb444cc96` |
| 28 | `theorem` | [setLIntegral_mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-mono-source-edition-2.md) | 247 | `result-track:fc5f23154200d4218916227696e0a38e52bf9b47f0e4719e6756236a685c85a9` |
| 29 | `theorem` | [setLIntegral_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-le-lintegral.md) | 251 | `result-track:53ba37b04f8af3083fffd236c20d881f1766100ce59bb68fe472f92abfbff3a6` |
| 30 | `theorem` | [lintegral_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-congr-ae.md) | 255 | `result-track:e5bdba30b02b1123bc7b0823e625737cd9d72e0fe52fbb4ed6d04f6c2e61d16e` |
| 31 | `theorem` | [lintegral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-congr.md) | 258 | `result-track:8ec9f65413e778409c46d4448e8d43f8f855fc3b39761f4d0232796806e8e4b7` |
| 32 | `theorem` | [setLIntegral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-congr.md) | 261 | `result-track:abd9535916bbd558c3a09cb36647c2f37802781be819c67e65c446dc2d500324` |
| 33 | `theorem` | [setLIntegral_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-congr-fun.md) | 264 | `result-track:0ce3f632733026dadd1793eca72e7aa9f434530a20647ec30024163370d17356` |
| 34 | `theorem` | [lintegral_eq_zero_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-eq-zero-iff-source-edition-2.md) | 277 | `result-track:61b96379acca2cc288edbfdef002663766e7cbf9d6a38dd6b4b073915159088d` |
| 35 | `theorem` | [lintegral_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-eq-zero-iff.md) | 303 | `result-track:1378705a7545c2a1bec97340f2d8e7dc60a77c467c647fd678234b884e0c33e9` |
| 36 | `theorem` | [setLIntegral_eq_zero_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-eq-zero-iff-source-edition-2.md) | 308 | `result-track:9871365a18252880b50322b2c847ba807ca891e6287dc7704e193a11b7f12322` |
| 37 | `theorem` | [setLIntegral_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-eq-zero-iff.md) | 313 | `result-track:273986ed81ab69276d202fa71d59143dcff298b29e5d1f33a3477bf5d5340343` |
| 38 | `theorem` | [lintegral_pos_iff_support](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-pos-iff-support.md) | 317 | `result-track:eac369a488f6eeaf5d62509d5cb7e3dd0d70f1f247502f7ce2b79e7335a1af92` |
| 39 | `theorem` | [setLIntegral_pos_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-pos-iff.md) | 321 | `result-track:5190b40106086de54d040e5d8bebf7bcbdbc7847b1e210723402393ba660438f` |
| 40 | `theorem` | [exists_pos_setLIntegral_lt_of_measure_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/exists-pos-setlintegral-lt-of-measure-lt.md) | 331 | `result-track:143fa81525844bfcad83234a2a240e4c82042d8da82245fd01dcefa2a3e7c808` |
| 41 | `theorem` | [tendsto_setLIntegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/tendsto-setlintegral-zero.md) | 364 | `result-track:6fcb40efa1a883cd71c5e9a8bf86236b88dae51106af321909c009035ca8fb89` |
| 42 | `theorem` | [lintegral_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-smul-measure.md) | 374 | `result-track:287b6c1373dd062761de5bbdabaad6b65e363443abbaf2063140f41599965260` |
| 43 | `lemma` | [setLIntegral_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-smul-measure.md) | 378 | `result-track:f0cbc65efbdb9b41c9345d45752e786e6ff55eba6549d0636354d244f09aa213` |
| 44 | `theorem` | [lintegral_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-zero-measure.md) | 384 | `result-track:b285a7fe7da2ad25c486834602f14df0c10095e1f7383f846c426a1775078beb` |
| 45 | `theorem` | [lintegral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-add-measure.md) | 389 | `result-track:4cfce68ac8a5dedbc6c13adbb4da9bc0d89c1711e094e9d425aa3a9ce46ee8e4` |
| 46 | `theorem` | [lintegral_finset_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-finset-sum-measure.md) | 399 | `result-track:15901353ee8acbf3d9aa91a95ead89389f67b4eb4af6aa15a4c9b576fffa0d65` |
| 47 | `theorem` | [lintegral_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-sum-measure.md) | 408 | `result-track:c87c11cd604baf7c113132b458825d27f0fe223f8a824cee5e779dbe7adc5fdd` |
| 48 | `theorem` | [hasSum_lintegral_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/hassum-lintegral-measure.md) | 414 | `result-track:88ae0cf35e72ed5476c32ea6865e821518751a1086c9748773d39d45d2d74aa3` |
| 49 | `theorem` | [lintegral_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-of-isempty.md) | 419 | `result-track:9c2f1a118d30dacc3b5b7c3d0559b675237a52b98240ca39fafab2a4e0b04d09` |
| 50 | `theorem` | [setLIntegral_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-empty.md) | 424 | `result-track:db767a0878e9ebf9f37205166f56f24651e08e7fb9c20d3f6bcd1df7bbbde013` |
| 51 | `theorem` | [setLIntegral_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-univ.md) | 427 | `result-track:5a528e1fd29f18ba8c19897ce9bb9876558c1bba87ca5de8d5fc3e2a565f020b` |
| 52 | `theorem` | [setLIntegral_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-measure-zero.md) | 430 | `result-track:e589b4c7343f15154e9d625c1ffc23653c064f67c759dce8046e05b27e2e6980` |
| 53 | `theorem` | [lintegral_rw₁](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-rw.md) | 436 | `result-track:e27c0ada1c058a4b3444adc384cc793e837019ec9e594e92f1349934d70fe5b1` |
| 54 | `theorem` | [lintegral_rw₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-rw-source-edition-2.md) | 441 | `result-track:ffbf3f54819123fdece4427a816626992bb3a949e564f5b408d559bb02e69497` |
| 55 | `theorem` | [lintegral_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-le.md) | 445 | `result-track:9bd153f3bff7cacf1b881aa57700437a3dc5152367c56935a700b28c948e3b32` |
| 56 | `theorem` | [lintegral_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-source-edition-2.md) | 462 | `result-track:f8f5edeb7e18eee403466a97658792ac788166b4a59182d6ad4d89d184a99076` |
| 57 | `lemma` | [setLIntegral_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-indicator.md) | 470 | `result-track:ba410cd1c0c2d9a5d7e257920a79f0b79cc4f10200ff5366424b9e49e1300165` |
| 58 | `theorem` | [lintegral_indicator₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator.md) | 474 | `result-track:8015eb5e5278f1bc284b49acfe2fa3027c9dfde05eece08b4239c38b4a2e9989` |
| 59 | `lemma` | [setLIntegral_indicator₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-indicator-source-edition-2.md) | 480 | `result-track:e6b07ce09ec600fb43202c9f8f39f7ab1f36b4948f08498c6ab9500e233a3caa` |
| 60 | `theorem` | [lintegral_indicator_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-const-le.md) | 485 | `result-track:d25c77d7748219f71373875d76e6fc64a8cacf5eef2f9ef0cc11dc2dbb4da60d` |
| 61 | `theorem` | [lintegral_indicator_const₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-const.md) | 489 | `result-track:672aea13e3a3b4aa009a037bac6d458f993005ffcdefa98020d4f809bd3ad201` |
| 62 | `theorem` | [lintegral_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-const-source-edition-2.md) | 493 | `result-track:a7564aa15f31dc09637e42513e6b95964475ca88aa4ecb9b53af490ccf4fd658` |
| 63 | `lemma` | [setLIntegral_eq_of_support_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-eq-of-support-subset.md) | 497 | `result-track:1436e00d787e0054dc5b5f3253ef8c8ef50fb39f87fd0cbe772cd120164e4775` |
| 64 | `theorem` | [setLIntegral_eq_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-eq-const.md) | 507 | `result-track:6985a32c22a59d8359cc8904e98c6dd07fc14aac0f9f8b79375516d6efbda63c` |
| 65 | `theorem` | [lintegral_indicator_one_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-one-le.md) | 514 | `result-track:02d50c737ef33a73002664b2b8b70d19aa96486c14176d197fb350121697d5c5` |
| 66 | `theorem` | [lintegral_indicator_one₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-one-source-edition-2.md) | 518 | `result-track:4ac9f0bd19f15ff513b3dc2235db5cda6f9431fcb9ed21e563295ee9d61177d9` |
| 67 | `theorem` | [lintegral_indicator_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-indicator-one.md) | 522 | `result-track:3da522d4660b6804ecae401dd836b22fa7fab5c5c1802510f4489a091bc16235` |
| 68 | `theorem` | [Measure.ext_iff_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/measure-ext-iff-lintegral.md) | 526 | `result-track:a9a37ba31600bd35f9dff6c50c75212f3004a57a3b81a0977465f29776b658d9` |
| 69 | `theorem` | [Measure.ext_of_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/measure-ext-of-lintegral.md) | 534 | `result-track:29a1a275879c823031f7f86fe8e4b38c3bd18b1093cd20fc5380d1ca8b5d9a6b` |
| 70 | `theorem` | [lintegral_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-iunion-source-edition-2.md) | 542 | `result-track:8885b08f3ab58df1a3ffc692bd891ce067cd75832170c29ee67440f4dbb94ca2` |
| 71 | `theorem` | [lintegral_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-iunion.md) | 547 | `result-track:014dc1d56820838d2f0f19560f0bc1a86a2bbbf0a7afb0a575a816ecac2cb4a1` |
| 72 | `theorem` | [lintegral_biUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-biunion.md) | 552 | `result-track:306b9835223134441dedc3ab6023e910efec5c173d2aa174137dd473e3f1c295` |
| 73 | `theorem` | [lintegral_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-biunion-source-edition-2.md) | 558 | `result-track:3eb59f70b87959ca58fb49f6b33a29dcd784cd9d47c31f47333b896d48487630` |
| 74 | `theorem` | [lintegral_biUnion_finset₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-biunion-finset-source-edition-2.md) | 563 | `result-track:ff91ec0dfe9da61a3f9879f73e394eeabe61b902dc2a8bf03a0506678272b722` |
| 75 | `theorem` | [lintegral_biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-biunion-finset.md) | 568 | `result-track:0ca3b253392f3744593dedc3784fa3f88f6ef85915f3265803a169033f265a94` |
| 76 | `theorem` | [lintegral_iUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-iunion-le.md) | 573 | `result-track:6799e320d63d1359aff1a58e0c899c206e22a1aa7e53d326c58d906d375e5cc4` |
| 77 | `theorem` | [lintegral_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-union.md) | 578 | `result-track:879cd1e3acc2d0fc0d5eee8bb377a2e1f74a2661d4c9cd3ab7412b5c63b2739f` |
| 78 | `theorem` | [lintegral_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-union-le.md) | 582 | `result-track:e2f7493e054a0326538061fa5831b1db39940881ccc7b7e7575e41d64c07ab1a` |
| 79 | `theorem` | [lintegral_inter_add_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-inter-add-diff.md) | 587 | `result-track:90c4c945e32c152b4a547262b219675482faaef8ff28b4d7619c3f5633bc7f81` |
| 80 | `theorem` | [lintegral_add_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-add-compl.md) | 591 | `result-track:ac87df94ac8501c257f59cfd2aa46a90b6cd0b424d1d2b3faf52948b57529ebd` |
| 81 | `lemma` | [lintegral_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-piecewise.md) | 595 | `result-track:154399976a9a90ceefcff9ce0035955b46c9c44057bc6f072f6317446030c826` |
| 82 | `theorem` | [setLIntegral_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-compl.md) | 602 | `result-track:3c8d9d6a64c7603fc632b74c74b7cc7d941e13a28c6b1335979a722ab6ed5391` |
| 83 | `theorem` | [setLIntegral_iUnion_of_directed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-iunion-of-directed.md) | 609 | `result-track:1d7f481f08f244cd5734c5d0f822dd597d8c39cd057b1a65e7c7e35c35baf6d9` |
| 84 | `theorem` | [lintegral_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/lintegral-max.md) | 615 | `result-track:6d9e2055b8c1a4aa99d526f7ea68f5c488dfe38a4c17c40b7aa22f8fbcdeb31f` |
| 85 | `theorem` | [setLIntegral_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-max.md) | 625 | `result-track:42c67aad11b644de2242e0b31105370e592110ddddcbb2ab3cb52e0b2aa18745` |
| 86 | `theorem` | [setLIntegral_lt_top_of_le_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-lt-top-of-le-nnreal.md) | 633 | `result-track:ceed8e6bdf825b5152131e78a314757f46cd772a6f750487de7a85508173116d` |
| 87 | `theorem` | [setLIntegral_lt_top_of_bddAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-lt-top-of-bddabove.md) | 641 | `result-track:d919effc6a8f3ab750fbe13db72660bca33d319d23584112cd885444ac00ffca` |
| 88 | `theorem` | [setLIntegral_lt_top_of_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicSourceEdition3.lean/declarations/setlintegral-lt-top-of-iscompact.md) | 646 | `result-track:a4da6def97361969817460ce67b81bf990b46b278ee634b5ff685cc67a8f5800` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=148b9efa2f422c8c62e62eb1206ba5b8d4b0cccb4df955482c9c249a497ba17c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantec7f8b933681d423b1cc7bedaa75c55615450e34e96ed92c6d8910efec71b51f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variantec7f8b933681d423b1cc7bedaa75c55615450e34e96ed92c6d8910efec71b51f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
