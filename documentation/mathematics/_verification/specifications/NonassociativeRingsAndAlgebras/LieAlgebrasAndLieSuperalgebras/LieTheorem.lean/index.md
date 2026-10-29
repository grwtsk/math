# Verification target: Lie Theorem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29f87660be69e2247c93d5076461a3aa2eff1472`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Weights.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nilpotent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [T](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/declarations/t.md) | 46 | `declaration-track:5dd6c297f1080833418136c8d85f76fc482c5d80ae5d964effdd237b0dee4352` |
| 2 | `lemma` | [weightSpaceOfIsLieTower_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/declarations/weightspaceofislietower-aux.md) | 49 | `result-track:307b543731a30aef247f6c2b14da9dba8bd61f60afcb886765fed432322abac9` |
| 3 | `def` | [weightSpaceOfIsLieTower](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/declarations/weightspaceofislietower.md) | 146 | `declaration-track:7fcef557e2140d2c4eb42018711de5a43c66d21a78c1c03876746fa2b91023cd` |
| 4 | `theorem` | [exists_nontrivial_weightSpace_of_lieIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/declarations/exists-nontrivial-weightspace-of-lieideal.md) | 161 | `result-track:f8b47bc95a9ca570573660639cbb0f096c20e4d51d5fa35b14aa66d34b640859` |
| 5 | `lemma` | [exists_forall_lie_eq_smul_of_isSolvable_of_finite](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/declarations/exists-forall-lie-eq-smul-of-issolvable-of-finite.md) | 205 | `result-track:86b94fafa631aa14752dc7abeff5d7165d32fc20ca4798652792163b7dce998c` |
| 6 | `theorem` | [exists_nontrivial_weightSpace_of_isSolvable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTheorem.lean/declarations/exists-nontrivial-weightspace-of-issolvable.md) | 233 | `result-track:0c91462517ba7b04414fff310382c0c39b69f3b56ff23c0d15b110d3576a6931` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3adddc308923e9f5e08a5f93b7b1735f4c43bedc78f9648bae54fe3e7c66930 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
