# Verification target: Default Pair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52258da581c4a4af20efdfb9082f0615156de817",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/ProductTypes/FixedNumericPairs/Variante128ee73a5d21770/DefaultPair.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefaultPair.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefaultPair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52258da581c4a4af20efdfb9082f0615156de817`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/ProductTypes/FixedNumericPairs/Variante128ee73a5d21770/DefaultPair.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/ProductTypes/FixedNumericPairs/Variante128ee73a5d21770/DefaultPair.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [Positive Natural One](../../../../../NumberTheory/PositiveNaturalOne.lean/index.md) — import line 17; pinned internal source present.
- [Real Half](../../../../../RealFunctions/RealHalf.lean/index.md) — import line 18; pinned internal source present.
- `Folder.NumberTheory.PositiveNat` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DualPivot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefaultPair.lean/declarations/dualpivot.md) | 43 | `declaration-track:77e2e28202b7e4fef127feaf038d18b1dbacbd36f0875a4b9404113101fc1734` |
| 2 | `def` | [defaultDualPivot](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefaultPair.lean/declarations/defaultdualpivot.md) | 47 | `declaration-track:08b8cc70d1297d40db47e0892051b3058e77a92efb8b4be2aa3a59e54a22e6f8` |
| 3 | `theorem` | [defaultDualPivot_arithmetic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefaultPair.lean/declarations/defaultdualpivot-arithmetic.md) | 51 | `result-track:ec6a81169f31b3da4ba140a51a6b1b10da0d1afda8f81ed498fa6514465a22d5` |
| 4 | `theorem` | [defaultDualPivot_spectral](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DefaultPair.lean/declarations/defaultdualpivot-spectral.md) | 54 | `result-track:c393db2255717cd382ccd416aa764b8490c20084f83cb0c761728f03f5c72edf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81bec4ce656e132def95b56dcb5bd5121707ad4802e2e50a83c518129d1695f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/ProductTypes/FixedNumericPairs/Variante128ee73a5d21770/DefaultPair.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/SimpleTypeTheory/ProductTypes/FixedNumericPairs/Variante128ee73a5d21770/DefaultPair.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
