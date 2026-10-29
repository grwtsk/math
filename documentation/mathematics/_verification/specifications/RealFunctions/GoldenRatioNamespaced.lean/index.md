# Verification target: Golden Ratio Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83c45af59f998f4f901b17d8b311c1a6a92f8596",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/GoldenRatioNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/GoldenRatioNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83c45af59f998f4f901b17d8b311c1a6a92f8596`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Fib` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeNormNum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.LinearRecurrence` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.NatFib` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldenRatio](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldenratio.md) | 41 | `declaration-track:afece8288ca5649be96a5b8e6f740f34842906b1badf0e3ef88556908cd51d30` |
| 2 | `def` | [goldenConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldenconj.md) | 47 | `declaration-track:72eb9cea2400f2eaba2308c639b29444b3c028be7d089d8745d7f6c5a411fbc3` |
| 3 | `theorem` | [inv_gold](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/inv-gold.md) | 56 | `result-track:5f8bdd50af0c83c447780eea316f9f27c557147aa5116ec0dd9e39260cf4f34d` |
| 4 | `theorem` | [inv_goldConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/inv-goldconj.md) | 63 | `result-track:b17803435681f757515b3e5b55d3184cd8b73eb057fdb044a89eb5a2354025df` |
| 5 | `theorem` | [gold_mul_goldConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-mul-goldconj.md) | 69 | `result-track:f434737533a9f506d416f93c83227169beb141aee29c3f58308a9be38e8b8ffa` |
| 6 | `theorem` | [goldConj_mul_gold](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldconj-mul-gold.md) | 76 | `result-track:1301fa36d4da68366d913fd16563be56c6364b60535d3a6340d7251cec0791b7` |
| 7 | `theorem` | [gold_add_goldConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-add-goldconj.md) | 82 | `result-track:a49b2a66d2b9e3bdc583ce68dde33c37503d6fc5d2517c8a31cf874603b58ee9` |
| 8 | `theorem` | [one_sub_goldConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/one-sub-goldconj.md) | 87 | `result-track:58983f15e570f878b0c6868fa2226ccd871448acc424a2cf6081beb04b216e95` |
| 9 | `theorem` | [one_sub_gold](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/one-sub-gold.md) | 91 | `result-track:e106771174cfe1419c70c0ade10e73660e155065d56b694777e58804c4472f56` |
| 10 | `theorem` | [gold_sub_goldConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-sub-goldconj.md) | 96 | `result-track:78e53c06d5ff382d8847d188a157f3940c588d5d792f4e564ecf049ee3d57377` |
| 11 | `theorem` | [gold_sq](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-sq.md) | 102 | `result-track:781d4fe4d1d362c34288f1258c0e07d628600bd04fb151d1664a9a75a8e531d1` |
| 12 | `theorem` | [goldConj_sq](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldconj-sq.md) | 109 | `result-track:76f21b7f98509f4d7518f44fe4a72ec81107ae8421934b08db9ee4cfda9ef9af` |
| 13 | `theorem` | [gold_pos](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-pos.md) | 115 | `result-track:173c018f340ae2df253f709c5e96374721e3ebf5974a085933ef9c1a53c6018e` |
| 14 | `theorem` | [gold_ne_zero](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-ne-zero.md) | 119 | `result-track:d2513360c1294235187ac86d91841f1204e385cbb6cbc509d50daa110d44e517` |
| 15 | `theorem` | [one_lt_gold](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/one-lt-gold.md) | 123 | `result-track:ca92a6ad50a0d02cc3dc1bece167ff58aa3cf83e4d41bfad8b88381285a6f8b7` |
| 16 | `theorem` | [goldConj_neg](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldconj-neg.md) | 128 | `result-track:cece56042bf28964eb28d0753cd1ad8085834964de02e388a0b20d5907d33d6d` |
| 17 | `theorem` | [goldConj_ne_zero](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldconj-ne-zero.md) | 132 | `result-track:fa0ecafd87ca0d757c17e1c633e9d664310ab98415fdd2812fbc2863b0385e8e` |
| 18 | `theorem` | [neg_one_lt_goldConj](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/neg-one-lt-goldconj.md) | 136 | `result-track:baab0baf58cfe0d2ab8223e7e83965e49944be4efac783925ff07797546e9d43` |
| 19 | `theorem` | [gold_irrational](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/gold-irrational.md) | 147 | `result-track:242e4a99486ffe049fc22c18ae25c566611e0f744ed2d644e6b1eef6c30e0432` |
| 20 | `theorem` | [goldConj_irrational](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/goldconj-irrational.md) | 157 | `result-track:aaa708361487a0076a55ee99f928b0b71b10180a0359558ce171f16d5fd62903` |
| 21 | `def` | [fibRec](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/fibrec.md) | 176 | `declaration-track:fcc81ace33418aec32179d81ac33e2dcab0562b92d7fd188635ebb64b0fbc0f5` |
| 22 | `theorem` | [fibRec_charPoly_eq](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/fibrec-charpoly-eq.md) | 186 | `result-track:d10e645c7e32b2862588afba7893839b31082172debf67c04b29a7ff4d60f992` |
| 23 | `theorem` | [fib_isSol_fibRec](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/fib-issol-fibrec.md) | 195 | `result-track:d494c9e997f915008984934784858b73f3570bb528a52c04dcd4c334954a3e20` |
| 24 | `theorem` | [geom_gold_isSol_fibRec](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/geom-gold-issol-fibrec.md) | 204 | `result-track:e274aadf7820e5c8ab7541e64d3e99b43b9ffb9ccb35ef9d9ef32b8bbfca7f03` |
| 25 | `theorem` | [geom_goldConj_isSol_fibRec](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/geom-goldconj-issol-fibrec.md) | 210 | `result-track:be35d88da2fb6e509f47131f12a63af6d37919983fa8fb9e9bf59bac7a15acdd` |
| 26 | `theorem` | [Real.coe_fib_eq'](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/real-coe-fib-eq-source-edition-2.md) | 218 | `result-track:c2e58a3f5a0c70d3b4e11657d9aa73b55ec701790e62886aa16d438f3ad40307` |
| 27 | `theorem` | [Real.coe_fib_eq](../../../../RealFunctions/GoldenRatioNamespaced.lean/declarations/real-coe-fib-eq.md) | 241 | `result-track:15f3f31be4e17cf4961153e155df8b5bf9c8ce97dabe8245e6bf67f6d30f72b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62c73f4fe314a19671f1f9eac8a2ae839d7602ef861a498e5043dddbd46d8c98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
