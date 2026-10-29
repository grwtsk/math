# Verification target: Symmetric Algebra Basis Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fafbdee95d73448ad609df5db39224047c4a10c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantb751b37933580232c8578a2b2a73e416172ae5297aab59412156de6a814f882f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fafbdee95d73448ad609df5db39224047c4a10c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantb751b37933580232c8578a2b2a73e416172ae5297aab59412156de6a814f882f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantb751b37933580232c8578a2b2a73e416172ae5297aab59412156de6a814f882f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.SymmetricAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivMvPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/equivmvpolynomial.md) | 50 | `declaration-track:69ea728cd532a6fd3f4513300f695eaf16f6be93938fd2fe53254c4c4194abce` |
| 2 | `lemma` | [equivMvPolynomial_ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/equivmvpolynomial-apply.md) | 59 | `result-track:f7b0c34cdf731ffdaead6a5ed58d5d4fb024402ee855c91feeb3a77e008ca67a` |
| 3 | `lemma` | [equivMvPolynomial_symm_X](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/equivmvpolynomial-symm-x.md) | 64 | `result-track:7e075b6d931bd8c1887ddb7f471a911c0f424ae2800db66556c600fb2b4bab89` |
| 4 | `def` | [Symmetric Algebra Basis Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/symmetricalgebra.md) | 70 | `declaration-track:677c2e5358e5a241e2cb0b5ec316818029f6e27d48ac07d91232d9c7ce9fbfa6` |
| 5 | `instance` | [instModuleFree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/instmodulefree.md) | 75 | `declaration-track:6e2509c7765542eebb104ff1e07691bd73ab584e422e48a7e34a803ed8b3c8bf` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/instnozerodivisors.md) | 81 | `declaration-track:44f041a97a48e151e0df9b1d39eb7902085d94d5aab8ac29b76cf165cdbf07d8` |
| 7 | `instance` | [instIsDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/instisdomain.md) | 92 | `declaration-track:0e142534b57612814545a1f29aa3cd0c396968a04b47939534cc1aabb1522c7a` |
| 8 | `lemma` | [rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricAlgebraBasisNamespaced.lean/declarations/rank-eq.md) | 98 | `result-track:206525ba5314aca689a8a25d96917b8bd95203d4db08a87bda61331bac500395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9bbc5f9b0dc014531cfb8052fd45effe3d2cff86b8f494cbbba220b85cef12d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantb751b37933580232c8578a2b2a73e416172ae5297aab59412156de6a814f882f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basis/Variantb751b37933580232c8578a2b2a73e416172ae5297aab59412156de6a814f882f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
