# Verification target: Mv Polynomial Derivation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b846b42e56463ea45678933af940837fee1fa0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b846b42e56463ea45678933af940837fee1fa0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Supported` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDerivationₗ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation-source-edition-2.md) | 40 | `declaration-track:d6d0efee4cf3c8adc36226c00a37c3e4026a812e0b3a862016feb6962bb9f10a` |
| 2 | `theorem` | [mkDerivationₗ_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation-monomial-source-edition-2.md) | 47 | `result-track:c84a1f7d5d0621da8faba464ba0bbffa7eb505b96d502f45f667cc4766a92bab` |
| 3 | `theorem` | [mkDerivationₗ_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation-c.md) | 52 | `result-track:37041a7bd747733d3ad3475ec4efbdcca167ae6fe781d3f7e01b93ed8637d706` |
| 4 | `theorem` | [mkDerivationₗ_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation-x-source-edition-2.md) | 55 | `result-track:adeebb05eede481088b7d83131632f894753014f39fb3f22adec7494b8d02dc8` |
| 5 | `theorem` | [derivation_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/derivation-c.md) | 59 | `result-track:325d949dcb0611023675e2e2152fff869932a8df5a2d52298df5ca0c91b33fa9` |
| 6 | `theorem` | [derivation_C_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/derivation-c-mul.md) | 63 | `result-track:4a0900ec82aca4d70e92423811572397826136386fc86b6cddca1fd6f0bf4169` |
| 7 | `theorem` | [derivation_eqOn_supported](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/derivation-eqon-supported.md) | 70 | `result-track:32daffb5b26648122e3155091d86fed54354bb84fde1837328663f6b728f34f8` |
| 8 | `theorem` | [derivation_eq_of_forall_mem_vars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/derivation-eq-of-forall-mem-vars.md) | 75 | `result-track:1c3265a8c1a1c4018f6e53eb9b1e5b0b4123e179b5c756607b2737190f004634` |
| 9 | `theorem` | [derivation_eq_zero_of_forall_mem_vars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/derivation-eq-zero-of-forall-mem-vars.md) | 79 | `result-track:6983dc9c9d7357824156fd07feca2aab5bf1862ffce77ac3b9a4ab992a0d1f82` |
| 10 | `theorem` | [derivation_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/derivation-ext.md) | 84 | `result-track:30cb59e6614f79fa421f1c87dc1ddb16d703cdca18a3bfc38eb8e0582b0cd693` |
| 11 | `theorem` | [leibniz_iff_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/leibniz-iff-x.md) | 90 | `result-track:75672c30fb32edee312f39f51377cae0a2da767e16da89a22b7e315e8be9e23d` |
| 12 | `def` | [mkDerivation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation.md) | 114 | `declaration-track:9875b01a8f8386a97aa0d5b7d14ac551cf21f50d317962d1aff44b192fc8e026` |
| 13 | `theorem` | [mkDerivation_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation-x.md) | 130 | `result-track:a3ceb069d364550ff168e495a089ded042d5f8e3e9c07b2fafb09e255ef6da11` |
| 14 | `theorem` | [mkDerivation_monomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivation-monomial.md) | 133 | `result-track:75fdbf7bdf5b9f1b3f1927e9782565e49d5485411285563f897f32d651fae2b9` |
| 15 | `def` | [mkDerivationEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MvPolynomialDerivationNamespaced.lean/declarations/mkderivationequiv.md) | 139 | `declaration-track:0339565c8ab49e76677a8f63d2a657d6c12466c52c00f7d7a87ee623d669fbb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cacc85829d48a19a615f11968e130a7ba7a62e6a2cb94f940d836521365cb85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant1cc0c2cf6511d9ef268667962c128ec831c6f632e415b7a410da5fe21da770a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
