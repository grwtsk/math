# Verification target: LHopital Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228345c9479667b9da4cc94ce7fb391fe0fa6e81",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LHopitalNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/LHopitalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228345c9479667b9da4cc94ce7fb391fe0fa6e81`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lhopital_zero_right_on_Ioo](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-right-on-ioo-source-edition-2.md) | 57 | `result-track:d753cf25805176fb413a6d385b0dab23fdadb147de504eaafe1bc25eb8965dbf` |
| 2 | `theorem` | [lhopital_zero_right_on_Ico](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-right-on-ico.md) | 100 | `result-track:3b95f721ce8650679acf78c60e00fb14c0d55f6607ddbb35327ad44793535db0` |
| 3 | `theorem` | [lhopital_zero_left_on_Ioo](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-left-on-ioo.md) | 111 | `result-track:ec63b734c377c267644fc759cace78a68d3a7eebea1fe92ee5d733d865141799` |
| 4 | `theorem` | [lhopital_zero_left_on_Ioc](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-left-on-ioc.md) | 135 | `result-track:80fcba3e797c89340d856daae1179bf3b60162e379beadea2550ecb725c6e95d` |
| 5 | `theorem` | [lhopital_zero_atTop_on_Ioi](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-attop-on-ioi-source-edition-2.md) | 146 | `result-track:f44eac3cf0692eff6bfaf36d9eb04128c7d3ec42d732aa4740e88d503f92d6b8` |
| 6 | `theorem` | [lhopital_zero_atBot_on_Iio](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-atbot-on-iio.md) | 175 | `result-track:095e191aaad155086432737f87fa80e892563d6c5c16600c6f82dbd83009ddc8` |
| 7 | `theorem` | [lhopital_zero_right_on_Ioo](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-right-on-ioo.md) | 203 | `result-track:c51b4796a45cceddac7155885a99279b88ce31cd08c315bfb24f5155397f44a1` |
| 8 | `theorem` | [lhopital_zero_right_on_Ico](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-right-on-ico-source-edition-2.md) | 215 | `result-track:bff0bbbd87103355848616ed431fd0b9a78e73c40f1781124f32576bcf714ac2` |
| 9 | `theorem` | [lhopital_zero_left_on_Ioo](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-left-on-ioo-source-edition-2.md) | 226 | `result-track:efb00935db93b0b815fe3ab152ce96ca8b8c34014f510709abcc5378b81e4377` |
| 10 | `theorem` | [lhopital_zero_atTop_on_Ioi](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-attop-on-ioi.md) | 238 | `result-track:f15c6ccb803377008d2eeffa08f695501b36cbfb4b80d12e2a6235619119ca1a` |
| 11 | `theorem` | [lhopital_zero_atBot_on_Iio](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-atbot-on-iio-source-edition-2.md) | 249 | `result-track:8ee77a286d2254045c7c1a0d44953f974a59d07070d08c25137fbed6c878f0f3` |
| 12 | `theorem` | [lhopital_zero_nhdsGT](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhdsgt.md) | 273 | `result-track:a2c1bfccbe93d0a99200bdb44d0f8b22e8a011866fec0bcc11379238c0ac7dc9` |
| 13 | `theorem` | [lhopital_zero_nhdsLT](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhdslt.md) | 293 | `result-track:e15798c57b085b7e4f00a31fdbb3e6cc6a4bb18642f8505b1f7f0a8d162a8fb5` |
| 14 | `theorem` | [lhopital_zero_nhdsNE](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhdsne-source-edition-2.md) | 314 | `result-track:f2ca31cf0ac1db6909e28c6030afbd8d7cf33bd53cabcf15b92bc0e9edfe633d` |
| 15 | `theorem` | [lhopital_zero_nhds](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhds-source-edition-2.md) | 327 | `result-track:8e6c035237b10efcf9701b505aafb2bed51d09545aebbf4b891078ac58751aaa` |
| 16 | `theorem` | [lhopital_zero_atTop](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-attop-source-edition-2.md) | 336 | `result-track:77133ed4143c43c93643d2d304909729824703370c1e9e966cceecdc087fde18` |
| 17 | `theorem` | [lhopital_zero_atBot](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-atbot-source-edition-2.md) | 353 | `result-track:96d961efd87806637d9fab3066ec76c71e48b06b41f8eb47eff76d5dcfb32ccf` |
| 18 | `theorem` | [lhopital_zero_nhdsGT](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhdsgt-source-edition-2.md) | 374 | `result-track:ca52749fcb611c34e72d072813a31778ad4075736a2ed13d65d1fd770a05474b` |
| 19 | `theorem` | [lhopital_zero_nhdsLT](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhdslt-source-edition-2.md) | 391 | `result-track:eeb6ca9104473158069a2391e87197e1597399c01498085d518eebebfecd3d15` |
| 20 | `theorem` | [lhopital_zero_nhdsNE](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhdsne.md) | 409 | `result-track:10f287e151624b10a935ffd90f76757fa8bec2bd7019fbfc7423040b9200849e` |
| 21 | `theorem` | [lhopital_zero_nhds](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-nhds.md) | 422 | `result-track:1a2a3f494a7d99c123f1cdffef475abcbdcd19d15e825c47493e352c3c752c47` |
| 22 | `theorem` | [lhopital_zero_atTop](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-attop.md) | 431 | `result-track:5ce85645258231f6da9d74af9af265b83101ce3239660af86645acdba9128e42` |
| 23 | `theorem` | [lhopital_zero_atBot](../../../../RealFunctions/LHopitalNamespaced.lean/declarations/lhopital-zero-atbot.md) | 445 | `result-track:6a79b674ed523f759bd754039c7c82ce996b4805a0c482f3b5c5a7ec3aa66004` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab05766df3e75fd91820c2e840df41bb92a8d2aa1f2771d0886d6a94a09b1740 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
