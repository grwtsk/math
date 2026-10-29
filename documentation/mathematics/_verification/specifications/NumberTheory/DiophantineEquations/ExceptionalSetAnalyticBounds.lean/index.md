# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetAnalyticBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96654b6bc934d1a9aa4bd647892af3008f54f50b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/index.md) · [Full source](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96654b6bc934d1a9aa4bd647892af3008f54f50b`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdmissibleAnatomicReduction`](../../../../../NumberTheory/DiophantineEquations/AdmissibleAnatomicReduction.lean/index.md) — import line 18; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDyadicScale](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/isdyadicscale.md) | 33 | `declaration-track:416442c7bf30322abcbbd6008259f96c57a0d7726db7fca52fe2ed624c66a4b8` |
| 2 | `structure` | [PaperAdmissible](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/paperadmissible.md) | 39 | `declaration-track:251186978a611205524959b83e36ad7c4334c5444aaef5af1904a5d84690f8ed` |
| 3 | `def` | [totalScaleProduct](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/totalscaleproduct.md) | 61 | `declaration-track:d1149a15262a80f0b9791f403ef3f843c05e9f3b8fe885519c06e32bec6dd3ea` |
| 4 | `def` | [divisibleScaleProduct](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/divisiblescaleproduct.md) | 66 | `declaration-track:9127fc69092a54a1a48579c966ce483b13fab524020aca7564c8ebee1f004395` |
| 5 | `def` | [selectedScaleProduct](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/selectedscaleproduct.md) | 70 | `declaration-track:9c4239dcad3fe2e51aef4b70acf2cdcf8403b50dc51f37785fcb723e74c57df3` |
| 6 | `def` | [selectedWeightedScaleProduct](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/selectedweightedscaleproduct.md) | 76 | `declaration-track:2a45401967cb26552a25e7a0606a80366e0ef2ed4167addab0b9ff4fd887a37f` |
| 7 | `theorem` | [selectedScaleProduct_empty](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/selectedscaleproduct-empty.md) | 81 | `result-track:7afdf2691d731c69dbe48b692dd0995f3fd9a2f63f8745404ce921795d022784` |
| 8 | `theorem` | [selectedWeightedScaleProduct_empty](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/selectedweightedscaleproduct-empty.md) | 86 | `result-track:21682c1500357c77fb760f39b9f685291eb6a4f9865e3ec04b22bcc85d179d53` |
| 9 | `theorem` | [selectedScaleProduct_univ](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/selectedscaleproduct-univ.md) | 91 | `result-track:857506ea63c589392e9de50e7351381c8e2694128a31154739208a104037bbb0` |
| 10 | `theorem` | [divisibleScaleProduct_one](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/divisiblescaleproduct-one.md) | 96 | `result-track:2f7fdc10dc723b74cad8ded24a5fb7ce823e20720ff4b1d0c874765ee7bd523d` |
| 11 | `def` | [StrictCoordinateMembership](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/strictcoordinatemembership.md) | 103 | `declaration-track:1c8a78518d60aa616a6e4173575a101e0240c85816a24dcbbc49c6247ab5d9cd` |
| 12 | `def` | [paperBoxFinset](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/paperboxfinset.md) | 111 | `declaration-track:63b5cefe29950bc1dfd0daece1325baf0e8813218d7f0fb94759e9015547ef3a` |
| 13 | `theorem` | [mem_paperBoxFinset](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/mem-paperboxfinset.md) | 117 | `result-track:144ca45f495949f2e717bc0afd9ee955b5d30d8d7e706144e75f55244f8213ce` |
| 14 | `def` | [paperBoxCard](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/paperboxcard.md) | 124 | `declaration-track:af2a3aeede6b5683a495c001416a9322e6f5781e6b9c79e6e3e95e9242544e70` |
| 15 | `theorem` | [paperBoxCard_le_boxCard](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/paperboxcard-le-boxcard.md) | 127 | `result-track:3d747919fede32065dba18d737272d549c5af2d8e580650f94cc954629897a52` |
| 16 | `def` | [fourierMajorant](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/fouriermajorant.md) | 133 | `declaration-track:3392b9a12317e592bda12b787e2dc6d6a33fa7b85a3989589ef70592519aa463` |
| 17 | `def` | [FourierEstimateFor](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/fourierestimatefor.md) | 143 | `declaration-track:8f6d5c0a4632f6b974c2d6f19594b2a870a50cc1babb33773c853bbbcd3113e1` |
| 18 | `def` | [PaperFourierEstimate](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/paperfourierestimate.md) | 155 | `declaration-track:814f899120b02758c623b718e473942ed1ad3c36634cd15f8e1605930ec50626` |
| 19 | `def` | [ClosedFourierEstimate](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/closedfourierestimate.md) | 161 | `declaration-track:515d88bad4e79d9dc9d03285290f1424108f2a6e1cf321694234ed7c8eec7d70` |
| 20 | `def` | [geometryMajorant](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/geometrymajorant.md) | 165 | `declaration-track:64ab6b8955167ae1461698b3bf0552fc11a58484cae27c96a2749cdc1f74ef4f` |
| 21 | `def` | [GeometryEstimateFor](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/geometryestimatefor.md) | 178 | `declaration-track:14a66aedbc1e875938eecb55f59d24f91f5d859352cbe2a783cd072d6a36ad95` |
| 22 | `def` | [PaperGeometryEstimate](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/papergeometryestimate.md) | 187 | `declaration-track:8c0a8d27d6c721556f1dd0666b1bf13b14198283f1bddff44888aa38529c7a98` |
| 23 | `def` | [ClosedGeometryEstimate](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/closedgeometryestimate.md) | 192 | `declaration-track:9e734eb430f24cccab6eb7d7af880aa1a824639398859e6a88bdd6ed1d88d15f` |
| 24 | `theorem` | [fourierEstimateFor_mono](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/fourierestimatefor-mono.md) | 197 | `result-track:4d736b89919439f8fcbe5b4d44d3df13f5540ac2fad52d08810dd917a7c12db9` |
| 25 | `theorem` | [geometryEstimateFor_mono](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/geometryestimatefor-mono.md) | 210 | `result-track:38745a959ffd3e7e99cf3d461166cb0b9aa5bbc4af92d44f00dd44fdc173f87c` |
| 26 | `theorem` | [paperFourierEstimate_of_closed](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/paperfourierestimate-of-closed.md) | 223 | `result-track:d74ca81e7d852f30901931acd1b358c6be450c5cd2243ddaf85ffb1d473e6cef` |
| 27 | `theorem` | [paperGeometryEstimate_of_closed](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/papergeometryestimate-of-closed.md) | 230 | `result-track:453217b09deb9edf0686b1c420f6ed4e01b0c94fd9c061858e6db69febff7c05` |
| 28 | `def` | [HasClosedFourierEstimates](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/hasclosedfourierestimates.md) | 237 | `declaration-track:213310b8780eef7b13dd12835b4e66903343e037a5bb4bdc516dac99381aee03` |
| 29 | `def` | [HasClosedGeometryEstimates](../../../../../NumberTheory/DiophantineEquations/ExceptionalSetAnalyticBounds.lean/declarations/hasclosedgeometryestimates.md) | 242 | `declaration-track:5d48fc7e1b75a4a56e3aa66a8a48ea3f22b6c5720e98ad456facd09602288287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ead5dc689bec7ad2f7620aac9d4c7853b4188c3ecdfd9c76caed3f9f638519b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetAnalyticBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
