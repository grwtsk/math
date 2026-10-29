# Verification target: Representation Indexed Functions And Equality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f74e78120a45d838a2c419b576016104ae5a29a8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypedComparisonComponents/Variant208ddf85e8d31445/RepresentationIndexedFunctionsAndEquality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f74e78120a45d838a2c419b576016104ae5a29a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypedComparisonComponents/Variant208ddf85e8d31445/RepresentationIndexedFunctionsAndEquality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypedComparisonComponents/Variant208ddf85e8d31445/RepresentationIndexedFunctionsAndEquality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Represented](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/represented.md) | 46 | `declaration-track:b3caa25f4d9cf106820d951675f219f2ef198074dc47ee4a0eda7c42cb12480b` |
| 2 | `structure` | [Parameterized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/parameterized.md) | 53 | `declaration-track:e0bc1b191466b44df45742a28bdfb3b4094034cb1b50b8216ecde271ef3a53d1` |
| 3 | `structure` | [RepresentationEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/representationequiv.md) | 60 | `declaration-track:a8f25e0236006595ed0488b5815ebed5d714ec1de2c9a1fdb6b03f660a88ef60` |
| 4 | `def` | [Parameterized.at](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/parameterized-at.md) | 66 | `declaration-track:7a1795352172c4516af45c853b4916aab9342d2ed027396bc994090e08718308` |
| 5 | `def` | [RepresentationIndependent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/representationindependent.md) | 72 | `declaration-track:f52adcd2f6514c99011ce1479d059b44df8278c8ff3ff875e9c6764dba3e45ac` |
| 6 | `theorem` | [Parameterized.map_eq_of_representationEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/parameterized-map-eq-of-representationequiv.md) | 76 | `result-track:be28808a9c44b92580a8f1926d6343a955251343692553d417b61f55abc4f8fd` |
| 7 | `theorem` | [RepresentationIndependent.map_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RepresentationIndexedFunctionsAndEquality.lean/declarations/representationindependent-map-eq.md) | 84 | `result-track:7d1dd7c1d3aa4c66acadfff6faacd085a52e3784f2297cf5afca52535a51cea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71dec27ef348284288927ed085e2341f4a1feeea7af4c28e59fcf0994f20b44e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypedComparisonComponents/Variant208ddf85e8d31445/RepresentationIndexedFunctionsAndEquality.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypedComparisonComponents/Variant208ddf85e8d31445/RepresentationIndexedFunctionsAndEquality.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
