# Verification target: Karnaugh Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027de05d06929cdd7f65936df0e1c4a3372b50be",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027de05d06929cdd7f65936df0e1c4a3372b50be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.TruthTable` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.Hypercube.Gray` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KarnaughMap.KMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-kmap.md) | 19 | `declaration-track:e2b6eae32a209084c44c61ff1752d2b8ddbf6f1b099a0e9b4a54b2a1f738efd4` |
| 2 | `def` | [KarnaughMap.rowBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-rowbit.md) | 23 | `declaration-track:b941d9a2ec3e6bfeae13302163423c8cde94cf72bf53e5f1e4c1a644ae46ba08` |
| 3 | `def` | [KarnaughMap.colBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-colbit.md) | 31 | `declaration-track:efb11de758b53f83192d8137f0d14647bcdb873f5e8090fee0307a138b26831d` |
| 4 | `def` | [KarnaughMap.input](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-input.md) | 44 | `declaration-track:b4ee15a93b4304150023a533f2d97be8b1d24892f2fb7a3f02d821498a9a24a9` |
| 5 | `def` | [KarnaughMap.fromTruthTable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-fromtruthtable.md) | 56 | `declaration-track:40d6018d5893b46d8f56ece18bc39381f82f055a229811ad575b62c18006adf6` |
| 6 | `def` | [KarnaughMap.rowAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-rowaxis.md) | 62 | `declaration-track:48552ca34f5b312c2021fa2bdcd15d81066c06ff4c9ac2f4b41372f28689805b` |
| 7 | `def` | [KarnaughMap.colAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KarnaughMapNamespaced.lean/declarations/karnaughmap-colaxis.md) | 67 | `declaration-track:8a256c9ac9e17f3ddb77ee9319bfa16b552ed9de1e0ca2bf17ff84f85358061b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df402c89273978e06ae1eb430f7b76ad835f187434b01f2d38f319ede158a69b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/KarnaughMap/Variant645bb976f8bf84971108bca42e19c7ce59b4741e0e7213b51a6660039c77948f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
