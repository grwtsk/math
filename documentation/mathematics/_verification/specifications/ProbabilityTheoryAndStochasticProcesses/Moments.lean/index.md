# Verification target: Moments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bedd94d8fdc8540ee28df839cef4504a5a5ecede",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bedd94d8fdc8540ee28df839cef4504a5a5ecede`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Variance` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moment](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/moment.md) | 51 | `declaration-track:e8bab45ed12f345da92c2a6a8e174b7563b87fdb9c852612217c016acf32a28a` |
| 2 | `def` | [centralMoment](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/centralmoment.md) | 56 | `declaration-track:21bdf02e824caedf2b54ad346b1a18e28df2ac583086b308d3f767b8f86ff718` |
| 3 | `theorem` | [moment_zero](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/moment-zero.md) | 62 | `result-track:d6885222743bfd38701f0ef98dc33ccefaf6b8ff6b147ce1f869ff45fa77ce0c` |
| 4 | `theorem` | [centralMoment_zero](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/centralmoment-zero.md) | 68 | `result-track:1c3dea5faefb12bfd39f2608edd40d618ed3c56a88faf213a5b025fab57b4382` |
| 5 | `theorem` | [centralMoment_one'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/centralmoment-one.md) | 73 | `result-track:0cd0f598a7e0ba9346703ad80d875b3766a301d78b6d6bbc1b3fb8eda56d9cc0` |
| 6 | `theorem` | [centralMoment_one](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/centralmoment-one-source-edition-2.md) | 81 | `result-track:e08d004fa35a98e367d2689c3b4211b6420e055f4e00ce205d261c9ad45dc9f6` |
| 7 | `theorem` | [centralMoment_two_eq_variance](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/centralmoment-two-eq-variance.md) | 94 | `result-track:aa3cf705fa06acce1807eaac9310082c425c31f851855150c192653a3c19b7b1` |
| 8 | `def` | [mgf](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf.md) | 103 | `declaration-track:be38c30145a3bdbf3ec5a98e0c3b61ba94b9047cdf6373d0f07150ad80783941` |
| 9 | `def` | [cgf](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf.md) | 108 | `declaration-track:4dcd88a309e08d85a5d774400f07e70cae1098ee40666406e64c73a99a161016` |
| 10 | `theorem` | [mgf_zero_fun](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-zero-fun.md) | 113 | `result-track:08088250da55e6e9de9e3764ee47c6feaa2971c353ff5a0495fc86c44d9b8e48` |
| 11 | `theorem` | [cgf_zero_fun](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-zero-fun.md) | 118 | `result-track:50791b8caa2dffe89afd5dcccbf3a032fa085d0a8c6e6c25499c9b6d73f39608` |
| 12 | `theorem` | [mgf_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-zero-measure.md) | 122 | `result-track:7d0bf9470fb0678337c3b06bb00561b6b8837774d4a02e6e86ea90a53bdc526c` |
| 13 | `theorem` | [cgf_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-zero-measure.md) | 126 | `result-track:fefb88029a071ecbb1466a2d2db0aa6d074df78af62e56682cb3cf3313ca3025` |
| 14 | `theorem` | [mgf_const'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-const-source-edition-2.md) | 131 | `result-track:a00fb6a737ebd644e18bc8e39b14a2416614427e18d2b9a17333ea742f5ce649` |
| 15 | `theorem` | [mgf_const](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-const.md) | 136 | `result-track:4e6d2af5b670c7993ba3e480eb6118fade8e1e65a76fb222fa54826d5ebd4ade` |
| 16 | `theorem` | [cgf_const'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-const.md) | 141 | `result-track:d9dacdf738ef7829b774a916e64138d3bb516b225446b55b8f95719018f7bd43` |
| 17 | `theorem` | [cgf_const](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-const-source-edition-2.md) | 151 | `result-track:e7eac9be825c2a991debd1c4fdcdf14793c932ef9d75a40f927d9db1ef9f1f45` |
| 18 | `theorem` | [mgf_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-zero-source-edition-2.md) | 156 | `result-track:fc595003380a3620b9a5f1ce97cd7f063a460d1349ac1a44fcb46785d970cb7d` |
| 19 | `theorem` | [mgf_zero](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-zero.md) | 161 | `result-track:66cff287c4f26d9d2ece594c808b70e2c138c95d27ef54562f6247932d8ee556` |
| 20 | `theorem` | [cgf_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-zero-source-edition-2.md) | 166 | `result-track:da433146afb1a933fe22e3224abb0596bf480692c2c393fea162af7188cdcd5b` |
| 21 | `theorem` | [cgf_zero](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-zero.md) | 170 | `result-track:a342ec5050d1ba0f7a14b641e09ccd697d9309add6adc6cc525c0df14ff35000` |
| 22 | `theorem` | [mgf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-undef.md) | 174 | `result-track:394daa45033215daf7ff37337fac5d1eae06cd9b431af83632ee506580d18d12` |
| 23 | `theorem` | [cgf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-undef.md) | 178 | `result-track:081fe0487887a2fe0c5c08677046a2dba35a818b0b58cb75d4f909901f98d6d1` |
| 24 | `theorem` | [mgf_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-nonneg.md) | 182 | `result-track:580d55aea32530f9edade7cc1ba773f7be4b1bfc8641d40ff988847119edf847` |
| 25 | `theorem` | [mgf_pos'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-pos.md) | 189 | `result-track:3f5d98926535a745e29a4f000a578e19e9286120e3995351e3895457ec71a5b5` |
| 26 | `theorem` | [mgf_pos](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-pos-source-edition-2.md) | 208 | `result-track:db1e62bea93c3dd5ec8f0a683a013ba274de3918de2b7335ff74bdefec9dbbc3` |
| 27 | `theorem` | [mgf_neg](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/mgf-neg.md) | 213 | `result-track:577189bc0296a45b28a4e648dc9127e28cb09420e310414511f61aaac68de309` |
| 28 | `theorem` | [cgf_neg](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/cgf-neg.md) | 216 | `result-track:e6ae7cbefc3b84a94cd981f384420ddd8719d19f4047dec26462749cd79c0910` |
| 29 | `theorem` | [IndepFun.exp_mul](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/indepfun-exp-mul.md) | 220 | `result-track:83330e8e81a20664589fe6eb55207f0453939551f6a3ccda73bde374dbf3c0ed` |
| 30 | `theorem` | [IndepFun.mgf_add](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/indepfun-mgf-add.md) | 227 | `result-track:03a98d190c68fd7e3b95d6ca86b150b7617e5ec1ffb5345a8e3ec9647f994066` |
| 31 | `theorem` | [IndepFun.mgf_add'](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/indepfun-mgf-add-source-edition-2.md) | 235 | `result-track:b199f4fa67a1980181c41bfa43d6ba04de1fc76ce7a8a27bd2b7443693743df0` |
| 32 | `theorem` | [IndepFun.cgf_add](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/indepfun-cgf-add.md) | 245 | `result-track:ff7330832681c7baa2333e817940890aef2ab01676dd2b9c85040fcb54912cb4` |
| 33 | `theorem` | [aestronglyMeasurable_exp_mul_add](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/aestronglymeasurable-exp-mul-add.md) | 255 | `result-track:563dbf74b7c2ef207021131a3d10891aa1569aa32cb13d88d8c83ee65248e623` |
| 34 | `theorem` | [aestronglyMeasurable_exp_mul_sum](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/aestronglymeasurable-exp-mul-sum.md) | 263 | `result-track:08fe2206f656957ba0daa153d871353c9ff340aa00e236691617d3e91ca51ae3` |
| 35 | `theorem` | [IndepFun.integrable_exp_mul_add](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/indepfun-integrable-exp-mul-add.md) | 277 | `result-track:5607e67c6b4ef7f219ec68e828568ba4f7000884d920a3c273ea2eb652a5496f` |
| 36 | `theorem` | [iIndepFun.integrable_exp_mul_sum](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/iindepfun-integrable-exp-mul-sum.md) | 285 | `result-track:a6766253c23162dbe3047d76011ba2b4efb02cfdd8408eaa97141bbad1f03235` |
| 37 | `theorem` | [iIndepFun.mgf_sum](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/iindepfun-mgf-sum.md) | 302 | `result-track:6c542f7efe4a25b990c8e21a0931c6afc38087af9d219bff7da7549f9a257655` |
| 38 | `theorem` | [iIndepFun.cgf_sum](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/iindepfun-cgf-sum.md) | 317 | `result-track:84cb542b761676f6d4954abf25d9be8fbec48cda7f8e8fc11bc4d84e4fe588b9` |
| 39 | `theorem` | [measure_ge_le_exp_mul_mgf](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/measure-ge-le-exp-mul-mgf.md) | 329 | `result-track:db1b28b3477fd9d895d0d9c1199b732a4155c1895bcf13924004871578846ab9` |
| 40 | `theorem` | [measure_le_le_exp_mul_mgf](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/measure-le-le-exp-mul-mgf.md) | 352 | `result-track:163a82fb2d2b93d1bc281ca2a0eab644b2129c2a0cbca30e16cdc667bce73d16` |
| 41 | `theorem` | [measure_ge_le_exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/measure-ge-le-exp-cgf.md) | 364 | `result-track:6f7dc6aedf4a58338956bc3a12da0af614bb6bccb48959b4f391007146e5b9a0` |
| 42 | `theorem` | [measure_le_le_exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/Moments.lean/declarations/measure-le-le-exp-cgf.md) | 373 | `result-track:53869a88c445244696075b1248a05251640b72ba204a8bca512a7239edac222d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb8fb0b7edc78a6cd36ffb480b4e1a66c047e2e250a532172400bc51af02875c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
