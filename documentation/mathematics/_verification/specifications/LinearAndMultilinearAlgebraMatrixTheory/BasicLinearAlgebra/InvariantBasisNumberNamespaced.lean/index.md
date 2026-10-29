# Verification target: Invariant Basis Number Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5440521e91d9736dddb16a72c02e4565a090982e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5440521e91d9736dddb16a72c02e4565a090982e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongRankCondition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/strongrankcondition.md) | 90 | `declaration-track:5d76a5e100347385f56dce1cf22d24d715247866c1a41b9c13b395ad077a4065` |
| 2 | `theorem` | [le_of_fin_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/le-of-fin-injective.md) | 95 | `result-track:ad09794c7ca85cce5ee62d2bb4939b817947dfb3aef69d886195a99456f06f5b` |
| 3 | `theorem` | [strongRankCondition_iff_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/strongrankcondition-iff-succ.md) | 102 | `result-track:a96c79afd4aed69d64f9fc427f2eca18cd452463c9acd348378399a31571527c` |
| 4 | `theorem` | [card_le_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/card-le-of-injective-source-line-114-occurrence-2.md) | 114 | `result-track:e783e2c76f7a993b324712d584fce719083662a646514c5084b49e26c7787c9e` |
| 5 | `theorem` | [card_le_of_injective'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/card-le-of-injective.md) | 123 | `result-track:1728100b52139fc579d5edd9728a2135c3855bf8bb464ca4d8c58f80cee7b0b8` |
| 6 | `class` | [RankCondition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/rankcondition.md) | 134 | `declaration-track:a1251cb898a89427cf49b797dbb73a17937f37cc6c10532c7fe170e60f502d69` |
| 7 | `theorem` | [le_of_fin_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/le-of-fin-surjective.md) | 139 | `result-track:a62c7e761f8e5ba07a63e5fd072da910ed9ac8e35469e02f232f53323e8bf610` |
| 8 | `theorem` | [card_le_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/card-le-of-surjective.md) | 144 | `result-track:03e0fb90ff5c37caa58f3e2eac4b2fed2c1ef32cc74547e7a3c707d56a89a3b9` |
| 9 | `theorem` | [card_le_of_surjective'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/card-le-of-surjective-source-line-153-occurrence-2.md) | 153 | `result-track:730ed98c21d919f73f8b0b55e962d2c518cca79724f81235d9ff440c36a793be` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/anonymous-instance-source-line-166-occurrence-2.md) | 166 | `declaration-track:76e8b866cee43648451588f6097b090f4b27b590c700e5e04302b1588752dcd3` |
| 11 | `class` | [InvariantBasisNumber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/invariantbasisnumber.md) | 175 | `declaration-track:212523f4d2e727fc39e3f359ebb6a3f56d5e1ee7db14941bf6a4e2e65262635f` |
| 12 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/anonymous-instance.md) | 180 | `declaration-track:1f1e1916116e33299c0d530837e17c1edb073d3171cd553790108699bae80c1e` |
| 13 | `theorem` | [eq_of_fin_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/eq-of-fin-equiv.md) | 192 | `result-track:de7df1a383c4cabe5198787dd681dca219c305f6b82b4d1d10c140728ae91dab` |
| 14 | `theorem` | [card_eq_of_linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/card-eq-of-linearequiv.md) | 196 | `result-track:c1ec7602711d7156bd4ba492a590e059e4bacc8ecf34092cb4e57dbf58ab6eba` |
| 15 | `theorem` | [nontrivial_of_invariantBasisNumber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/nontrivial-of-invariantbasisnumber.md) | 205 | `result-track:8d2f09f75e82b8f69dba95a981c745a4740c96924c310e82bf2f508ec127eda0` |
| 16 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/anonymous-instance-source-line-234-occurrence-2.md) | 234 | `declaration-track:d6fa56106541b0c6833c4c87adaf3c97153e367e716171dfb5125eb7bf736758` |
| 17 | `def` | [induced_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/induced-map.md) | 274 | `declaration-track:adf48588f09d7570cd21d9d99867cb61a433f17cc5d2e89b26b915c071f492f0` |
| 18 | `def` | [induced_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/induced-equiv.md) | 287 | `declaration-track:e8fd69a41524b2eccdf4d72b8d26c073f187b543d6617eb76cde9c3f3e715de5` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvariantBasisNumberNamespaced.lean/declarations/anonymous-instance-source-line-319-occurrence-2.md) | 319 | `declaration-track:76bfa2dd13db9a05399b0f1fe4546d2be921ba7fc5d9b1007d6b72cdb8eee0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41fa18c60db76acdf074a51ea7db5f9156fe4ddf8bc098e737b709e4c2291712 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
