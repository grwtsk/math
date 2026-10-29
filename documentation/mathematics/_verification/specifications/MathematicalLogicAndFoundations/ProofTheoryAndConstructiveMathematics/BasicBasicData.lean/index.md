# Verification target: Basic Basic Data

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4358eb2ecf0e7e9c629ce4943242a3eecb3ccd01",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2960a445509d74525b541de97249b984d3bb02168a2a2ee9de4131a5013c8b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4358eb2ecf0e7e9c629ce4943242a3eecb3ccd01`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2960a445509d74525b541de97249b984d3bb02168a2a2ee9de4131a5013c8b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2960a445509d74525b541de97249b984d3bb02168a2a2ee9de4131a5013c8b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MiuAtom](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miuatom.md) | 73 | `declaration-track:ea1b89244d4b85ed8e443ba85d3031f4e24afcf8983ad789b807b835ab7aace6` |
| 2 | `instance` | [miuAtomInhabited](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miuatominhabited.md) | 92 | `declaration-track:382fe48f533e812c8926ac04deb1b06dc45ee4e0244a1b96756410475ccb83c6` |
| 3 | `def` | [MiuAtom.repr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miuatom-repr.md) | 97 | `declaration-track:6d57a701d3956d6281b1de6bae0b2e2a09f0dbef3b05c27ff5006827fc1f85b0` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:694437b6d0d043a66b17a85f2bda2c3152baa8f452fb679b7dbc201892ddc146` |
| 5 | `abbrev` | [Miustr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miustr.md) | 109 | `declaration-track:9ceecd1a70e00de3d96cb686ccf64d8c7112314cafec75a1685ce0ba9f339be5` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/instance.md) | 111 | `declaration-track:38b356e338b662e5c73f25a39b42a996c41f973f541e848f11afbb41d648ccaf` |
| 7 | `def` | [Miustr.mrepr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miustr-mrepr.md) | 115 | `declaration-track:9739cf303a2690fba135a996492046095eb93d42835da4d8a00053b8b54bbb64` |
| 8 | `instance` | [miurepr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miurepr.md) | 119 | `declaration-track:92570f853eaed72deeefcddffa9a785f3ae26979d40ce70f37eaab08810ddba3` |
| 9 | `def` | [lcharToMiustr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/lchartomiustr.md) | 124 | `declaration-track:5391bd0bb380f6f04ed07612ce83477d4ab8d8a7a90a79d37cd2cb89fda109cd` |
| 10 | `instance` | [stringCoeMiustr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/stringcoemiustr.md) | 134 | `declaration-track:121d555b17d47f9e361f7177575fa7c4046a652556ebb48c8723b0d046222cb6` |
| 11 | `inductive` | [Derivable](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/derivable.md) | 147 | `declaration-track:4590304a1ee87c3f4c30d0eb34da0edb3e7f4f5f71cef7bcf8c6c8f63aed18f8` |
| 12 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/example-source-edition-2.md) | 159 | `declaration-track:056c7118df5b0ab29099692e8f155859cdd699f6fbcb7136740300d767748e76` |
| 13 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/example.md) | 163 | `declaration-track:01af44481cd469fa174faf33af3e23b3d438962f0bcf05b3ee99cc4134d5ed23` |
| 14 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/example-source-edition-5.md) | 167 | `declaration-track:771b4b4e6fda3deeaf58bf792bf20293d12f5e2402a83894d1182dfc2d90f6c0` |
| 15 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/example-source-edition-6.md) | 171 | `declaration-track:bc52e8ee980cc86686bd31f3daffce231e012ae884e2b36bbe564b541825aa8e` |
| 16 | `theorem` | [MIU_der](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/miu-der.md) | 180 | `result-track:b1e5bdb0fa1c0bae339a921cf4a15ad67d66be6fc3978e8c53965ea99ae37972` |
| 17 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/example-source-edition-3.md) | 185 | `declaration-track:28d668cfd95bcf0e704822f203f35819f76321787a9cfc192e12939ad6b658ba` |
| 18 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/BasicBasicData.lean/declarations/example-source-edition-4.md) | 189 | `declaration-track:4d21a8b031dd1c16e10d5d551d11d6ad113cacb7d36a786a98dcc69155889513` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b16d4bfd54888a77e9d2bd009adabd260d6bace4de5068d643e1618444183832 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2960a445509d74525b541de97249b984d3bb02168a2a2ee9de4131a5013c8b28.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2960a445509d74525b541de97249b984d3bb02168a2a2ee9de4131a5013c8b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
