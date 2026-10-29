# Verification target: Baire Measurable Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68b92b008fdc52227f3f2a0b1050bb7e01b40d21",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68b92b008fdc52227f3f2a0b1050bb7e01b40d21`.

Source path: `GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.EventuallyMeasurable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coborder_mem_residual](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/coborder-mem-residual.md) | 53 | `result-track:7d9e0b62696c30651ca91662f58f84e4a2a8e0ec20d6e3d4fa69d4b058eb7135` |
| 2 | `theorem` | [closure_residualEq](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/closure-residualeq.md) | 56 | `result-track:2e3323d090731820b50d8af2f5a834c90383a94d3cb1ae3b9cf12b0840a88162` |
| 3 | `def` | [BaireMeasurableSet](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset.md) | 67 | `declaration-track:f007872f82631a7d30a554ea8cc9082b59897e61abacb370ab52fe1af13762eb` |
| 4 | `theorem` | [of_mem_residual](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/of-mem-residual.md) | 74 | `result-track:443fa68b35f338be7c7750c7162064e741de2202e8b70d7117f60f8c6afdd46d` |
| 5 | `theorem` | [Baire Measurable Namespaced](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset-source-line-77-occurrence-2.md) | 77 | `result-track:37a1e915e9514113479f74e7227ca631e4b6d37ba1fe2dbd83e3b73e26eb0daa` |
| 6 | `theorem` | [Baire Measurable Namespaced](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset-source-line-82-occurrence-2.md) | 82 | `result-track:74501bebee1b716da6e69cb19119a706988e87f849de0ecc4b2a5b6836b83f1f` |
| 7 | `theorem` | [compl](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/compl.md) | 86 | `result-track:71861f651076f43d3c893f2b4a9de3f7030a8bd7afea0b86c2414d4eb443db88` |
| 8 | `theorem` | [of_compl](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/of-compl.md) | 88 | `result-track:c49fdadc3dcbf9283fa0a9ac9d9fe92723eaaee53fba8c84a4ae6e2464ae834a` |
| 9 | `theorem` | [Baire Measurable Namespaced](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset-source-line-90-occurrence-2.md) | 90 | `result-track:e0a2ae085f6d120f820a1b133267498bd32d52a5dd45d11e8aa5e83097974056` |
| 10 | `theorem` | [iUnion](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/iunion.md) | 93 | `result-track:96290226ccc68b1bdff3759fc6c6c0d12072fc988bcfff8e151eece287ea4ebe` |
| 11 | `theorem` | [biUnion](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/biunion.md) | 97 | `result-track:5f6bf73ea50755eaef7688dc3ea02cbd2d14e97deccef75c0a9e64251c336346` |
| 12 | `theorem` | [sUnion](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/sunion.md) | 101 | `result-track:cd41105293a57c85a9551abca3388641c2435370b034938aaa625a76a98b98e2` |
| 13 | `theorem` | [iInter](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/iinter.md) | 105 | `result-track:e5205a6073098b372286f9f37932635d61076cddc485f591a3215210daf0b2c3` |
| 14 | `theorem` | [biInter](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/biinter.md) | 109 | `result-track:6c2d5670de5661ec8304369649c533754cdb2d741ddccc8be6ce3c78a55f0257` |
| 15 | `theorem` | [sInter](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/sinter.md) | 113 | `result-track:393e6f98c3eccbff15e64b0ef080ae4a9d0164764d760d85f8082b67be9830c4` |
| 16 | `theorem` | [union](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/union.md) | 117 | `result-track:830370578133c42f4be1860064c81fd664a4c2a60833e75819b8bb654f1d642f` |
| 17 | `theorem` | [inter](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/inter.md) | 121 | `result-track:4ffccee406b8149f40396c7edf25c8558fbf1af038d3bcb8da4dd669ac2ab5ed` |
| 18 | `theorem` | [diff](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/diff.md) | 125 | `result-track:a2703b99ac14481dfdf98518326addb927245254670c2906f4fcd1eda5d2adfd` |
| 19 | `theorem` | [congr](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/congr.md) | 129 | `result-track:69afde311f0a4a3eff2565bf51b588cf389208ee6d123d916566e4e5bae0002b` |
| 20 | `theorem` | [MeasurableSet.residualEq_isOpen](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/measurableset-residualeq-isopen.md) | 137 | `result-track:df9cde9da23d49af7de1ea93fc8b07b4f95dffd37b6fb8e07a874938afc7c0c2` |
| 21 | `theorem` | [BaireMeasurableSet.residualEq_isOpen](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset-residualeq-isopen.md) | 150 | `result-track:e798c11af6ca04748c6f4c27bf34eed2db677dc1fc433c51769213a1d7b65506` |
| 22 | `theorem` | [BaireMeasurableSet.iff_residualEq_isOpen](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset-iff-residualeq-isopen.md) | 158 | `result-track:c4ba7ac819c19fec42525695dbb8ab7d0a84150210ba7c43d1db8256d8f098e7` |
| 23 | `theorem` | [tendsto_residual_of_isOpenMap](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/tendsto-residual-of-isopenmap.md) | 168 | `result-track:a96c75b19c28dcab6c5c69a76de39f3bafc966a04c92b3a181712eb2d8143dea` |
| 24 | `theorem` | [IsMeagre.preimage_of_isOpenMap](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/ismeagre-preimage-of-isopenmap.md) | 175 | `result-track:1522b17a4323a757dc7b78b7668f0485c3263abc568f2e7cd76c07b8e0e4e741` |
| 25 | `theorem` | [BaireMeasurableSet.preimage](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/bairemeasurableset-preimage.md) | 180 | `result-track:14813225acc2ca8793c46ab85d88d8452f65c59ea3ef125d87584d5851ed2d19` |
| 26 | `theorem` | [Homeomorph.residual_map_eq](../../../../GeneralTopology/BaireMeasurableNamespaced.lean/declarations/homeomorph-residual-map-eq.md) | 187 | `result-track:19e18fd98dedffed441080cf29497502e24e95b6f81379640ef42bace3b5da38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3751237e962ab28099bf5fce32eebb24cffc1103d6dfa6e70f1a90df3c2121fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BaireMeasurable/Variantf7db35183156fe6890e9949704bee85dbdb84319f2bb36fe7fb69bf21a970df7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
