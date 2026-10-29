# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Declarations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fabf44bbdee9ce91ca815f90f95387299f38c3a7",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fabf44bbdee9ce91ca815f90f95387299f38c3a7`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport`](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/GapTransportHistoricalSourceEdition2.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.LinearAlgebra.Sturmian`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianHistoricalSourceEdition2.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SturmianFiniteVolumeHistoricalSourceEdition2.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS`](../../../../../OperatorTheory/FreeIDS.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DirichletCutHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts`](../../../../../OperatorTheory/SturmianBlockCounts.lean/index.md) — import line 6; pinned internal source present.
- `Lean` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-6.md) | 12 | `declaration-track:311a08c2c160eeabecbb5bc7f7b123acf6fb8019f786b61e1ca3e17dbabc0c3d` |
| 2 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-29.md) | 21 | `declaration-track:dcac890901d83d5b7a60671d5fdbdaa3589cad0f0a103e405b907276eaa48e8d` |
| 3 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-15.md) | 28 | `declaration-track:6e709647694649c4f74332a2c3ed1bd2d02a5672e7edf95d36e0a4feda416c82` |
| 4 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-5.md) | 33 | `declaration-track:2c24cf93ac44f8d0c095da95755b99534e783e9055e5bbf1e7d873cb66cae8cd` |
| 5 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-31.md) | 41 | `declaration-track:eaa817e7f9286430bb7909b0b3b18e70b596f4325c3d8cfccf3893e64298ed0d` |
| 6 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-3.md) | 47 | `declaration-track:23cce48a18271a387c72b7cd7ee13a61f2f0c3feebb606bbc4389eba648e30cf` |
| 7 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-32.md) | 54 | `declaration-track:eb16c249064154a1f390362cb93a5d5621d335dd1aea858bf1f964349e78da59` |
| 8 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-10.md) | 70 | `declaration-track:58e918a93bd10717fcdcc0e4cd248eee549f9281e3e87d5859159dd69ce443da` |
| 9 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-13.md) | 75 | `declaration-track:63185d6979635b7566372450ef490c6f940efe0b674c57d440426e0fe0c2c7e1` |
| 10 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-25.md) | 80 | `declaration-track:ba5323dd1da300355cf52f82940d5ed0fa83f76ec29b9f18809d2fd2f6935a9f` |
| 11 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-23.md) | 87 | `declaration-track:af962f6994034dde26207dfbf418b74d553fa0cafc3ec071807c78a6b14a077f` |
| 12 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-16.md) | 95 | `declaration-track:71f3d44bc677f3235ef2a1df9b26459bd4f1bf76cd80af5d057ac16938f1f279` |
| 13 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-9.md) | 102 | `declaration-track:5109fd275f69f878f73c1d283b6b11748aa5214645a4c62da47464d4d4866551` |
| 14 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-2.md) | 111 | `declaration-track:218def5d07a17e9beab0495eaa499c290d0db212ebdeda202097b3fd4810d56e` |
| 15 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-22.md) | 116 | `declaration-track:a29cd9d880c51f8d95f4fbd6c0d46981cfdca9d3ebe5ced142399131139117ea` |
| 16 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example.md) | 122 | `declaration-track:0dcd5ebb09e774e9f6be098f34be36602d9fd6da11139664c401b67af6670f83` |
| 17 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-21.md) | 129 | `declaration-track:9d895322165ddb83b22d9deb87805122a52dd6d09147619064bd94eebbeaa1e6` |
| 18 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-19.md) | 140 | `declaration-track:8981c28f1fbf6849702f667d469a29a12ffcfe4dec64b88181ecab739efbf32a` |
| 19 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-35.md) | 145 | `declaration-track:f02df8fbb613e08fa83e44171ebd31a2f5fe8a42f88f6ba2075e574d03980ba8` |
| 20 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-17.md) | 153 | `declaration-track:76f621515de0f77347aa022ae97a810b87048e3e054727996214ad689d1236be` |
| 21 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-26.md) | 162 | `declaration-track:c868ce2cc91d204a276475d95d506541025f499df14e22954983f51585549392` |
| 22 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-14.md) | 165 | `declaration-track:6ce53bcba350ad8548441efbae7189e28b10033070a99ae0131e107db446cd38` |
| 23 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-28.md) | 169 | `declaration-track:ceed8c7e59f164e97fdce099af48129420d60e38625265400f27b70f61c0f43d` |
| 24 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-18.md) | 173 | `declaration-track:7eb5ddebaebd61c02b251efd37de06c595d908bed8fd7ebe10a216193090df6c` |
| 25 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-12.md) | 180 | `declaration-track:59968b5d313d4e267e59d8c57799cf0dfed478ece44f3e20de06301c2d7d32eb` |
| 26 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-7.md) | 183 | `declaration-track:36cc1f16dfae70ddc8aa0f56c322bb1292a8016a98398931cc79b5a3a9f755fe` |
| 27 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-8.md) | 188 | `declaration-track:4c0eb9d465ea94d4be27d7610cb5008cc7a6c4a0b5ee5d0662ed3cffb1ac4998` |
| 28 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-24.md) | 195 | `declaration-track:b848c0834e0ae1d113791e6eb2a2e5bba8bb271ad908ae9904e686eb75d589ac` |
| 29 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-20.md) | 197 | `declaration-track:8f77985c688403c9ae3442a07dbc2461f9021d0447584c5f3af608e30f3d7157` |
| 30 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-36.md) | 200 | `declaration-track:f354635b9c78762bb65faee185985cccfad0e255bb09ce629e643c3ba36b06a4` |
| 31 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-27.md) | 204 | `declaration-track:c8c0d6b4fa3ecd2026cd192aad07390cd0b9c724b121db18cfeb3a1918e5dee2` |
| 32 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-11.md) | 209 | `declaration-track:595f6111519ac18c9ee8b4f969f9f5020f1696aea34cbe627a3a3191f44532fa` |
| 33 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-30.md) | 212 | `declaration-track:e3932d66eb27545989e6592543d3b70b514f44725b72aeba44f714b9e9cd8af6` |
| 34 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-33.md) | 216 | `declaration-track:ec072925a02bdf1b32d3c291c12f3d0a4202109c134d43949e23b6466071ae39` |
| 35 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-34.md) | 219 | `declaration-track:ee255d049bf374358470dfe4bc823790b3a2439f298c2130560e6ec898bbf3aa` |
| 36 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/example-source-edition-4.md) | 220 | `declaration-track:249206bb138f899a08a51b129086b5aef82350bdee820f4ab42cfdc445bb8341` |
| 37 | `elab` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Declarations.lean/declarations/elab.md) | 223 | `declaration-track:f0b3b5207ad8f2c8d21b8ba70a14b18351e95481e87014c93530d859464a5c83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eae4d17cb3775c65221721bef1e710da00651679ca982b2a4e17458c4c89395b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Declarations__SourceOccurrence333ac66a17c57d19154ebc03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
