# Verification target: GRWTSK.LinearAlgebra.Matrix.ToeplitzHankel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34b83ba36bdd11d4052f123b8f60a8e986d92d11",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Matrix/ToeplitzHankel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34b83ba36bdd11d4052f123b8f60a8e986d92d11`.

Source path: `GRWTSK/LinearAlgebra/Matrix/ToeplitzHankel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Matrix/ToeplitzHankel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Block` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toeplitz](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/toeplitz.md) | 17 | `declaration-track:560b0aa593e58136d3d94bf494d75cfa04f717e838f43a5d02a587c72e096616` |
| 2 | `def` | [hankel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/hankel.md) | 20 | `declaration-track:68ef9a4a67aa3dfca7ce69c0d5735b8c11dbc547c319514630d8f6097424668d` |
| 3 | `def` | [crossBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/crossblock.md) | 23 | `declaration-track:5deccbd0ef6f824f6a6c38219410f120544c30a0bc1a93fa604c0bc1cfd024cd` |
| 4 | `def` | [joinIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/joinindex.md) | 27 | `declaration-track:a11d01764f0b93cb47a65c0bf9cbe644edd517d5c819a9cdabd5e04474acb4d5` |
| 5 | `def` | [reverseIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/reverseindex.md) | 31 | `declaration-track:bd281a7fe83229b99faac12d2e42df0dae0ac2b3bc64bbf8d8ca0b5704639873` |
| 6 | `lemma` | [reverseIndex_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/reverseindex-involutive.md) | 33 | `result-track:d363483c1f7addd4c4ec1ffb40e371e1027554c908d3beec19378ede522fe314` |
| 7 | `def` | [reverseEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/reverseequiv.md) | 39 | `declaration-track:1b2adae307a53f163704b7a2936803c1efb4933d188c2ce999a3ea1ee86ec2e4` |
| 8 | `lemma` | [crossBlock_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/crossblock-reverse.md) | 45 | `result-track:c4e905fd75f1ded84a710ba976bdf9490133fb7db4eebfac6b7dfd503b2405f4` |
| 9 | `theorem` | [toeplitz_doubling](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/toeplitz-doubling.md) | 53 | `result-track:615df25b068583b98d421cc649c540f0f214addbb28b12b76961b52aac336e39` |
| 10 | `def` | [doubled](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/doubled.md) | 70 | `declaration-track:bf3b48a09155435aec7b0e2eadd0be9eddcca97b758309a9f2ebc574e873c1e2` |
| 11 | `def` | [cut](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/cut.md) | 73 | `declaration-track:03846fdb54840327b1c5f4c044bb74d7535dc7feb694bbf07a3c43476d738076` |
| 12 | `theorem` | [cut_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/cut-commutator.md) | 77 | `result-track:28f53c734ce88ce1028103379fbd833b0d153e7b61e07ec089b8d61492f66123` |
| 13 | `def` | [squareSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/squaresum.md) | 89 | `declaration-track:ea881dcb73cb09005eabf3315b0c934d4f31353ca710298ad115e160c9ef3b0e` |
| 14 | `lemma` | [squareSum_blocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/squaresum-blocks.md) | 92 | `result-track:57c1c392a592693aa30c31d68f36bdb6bc88ce932302aa1b53362d3dbad93cd7` |
| 15 | `theorem` | [squareSum_doubled](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToeplitzHankelHistoricalSourceEdition2.lean/declarations/squaresum-doubled.md) | 103 | `result-track:0c05430b3960f2fee794749b50f2de3a941097039258f2675d6373586f408eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d67d776063cac80fb73f296fc2f760c6dcc235a764793523ba7f58415f372e07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/Matrix/ToeplitzHankel.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/ToeplitzHankel__SourceOccurrencea27b2caefd1c38e9032a4ce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
