# Verification target: List Iterate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeea9d4b2b6bf32bf6259165f59892ab9d0363a3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantdd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeea9d4b2b6bf32bf6259165f59892ab9d0363a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantdd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantdd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/length-iterate.md) | 21 | `result-track:82acd21f4dc389ecda78b573a29eecf3f7abb6cc168d114acaa3b5e011a0f771` |
| 2 | `theorem` | [iterate_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/iterate-eq-nil.md) | 25 | `result-track:0655f2c74246bc2d9fa1cf51571db92bd556144e665b4c02ce470cb108e5a53e` |
| 3 | `theorem` | [getElem?_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/getelem-iterate-source-edition-2.md) | 28 | `result-track:6dd7e355961950a9f91cd48afbe6175745ad1c700399b989d8082269c891b57f` |
| 4 | `theorem` | [getElem_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/getelem-iterate.md) | 34 | `result-track:339b483520908d4949a7e53a7a7e96a08b7c6963cd0a3ae8a036fa0b97dec1c4` |
| 5 | `theorem` | [mem_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/mem-iterate.md) | 39 | `result-track:2eadf97c7942e92fff91da7d21ec0f613b94f350828dc7985cf9410f6ba53c68` |
| 6 | `theorem` | [range_map_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/range-map-iterate.md) | 44 | `result-track:5d5d30c65f5691b9b64509383cfe178436144b0cbaea4883a9cc13dc0f6ca79a` |
| 7 | `theorem` | [iterate_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/iterate-add.md) | 48 | `result-track:650d38833e323e10f748d3ef81f89ab00ed09b5ed68395a2518f8b2ada4cd9f6` |
| 8 | `theorem` | [take_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListIterate.lean/declarations/take-iterate.md) | 54 | `result-track:80eaf7f0737e85bea116812e59495683d64df40afd8d32037205161ee51c1848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbe92f8592f52398efca20ee31748acb00bb6d28fc522af243b62d575194dd4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantdd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variantdd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
