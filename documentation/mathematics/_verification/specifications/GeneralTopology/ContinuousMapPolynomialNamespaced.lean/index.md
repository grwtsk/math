# Verification target: Continuous Map Polynomial Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff435b788e45333e0de0084dac0089287dc7e461",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant5b7246c3aa023fa107b98333caa11f8c9beb65eccd82c5b9f3e33a55ca499760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff435b788e45333e0de0084dac0089287dc7e461`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant5b7246c3aa023fa107b98333caa11f8c9beb65eccd82c5b9f3e33a55ca499760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant5b7246c3aa023fa107b98333caa11f8c9beb65eccd82c5b9f3e33a55ca499760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Star` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContinuousMap](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/tocontinuousmap.md) | 48 | `declaration-track:f1e62adf8612c54ad84394197eb08d7bb3f47bce096d1f19a9af8b8837563e59` |
| 2 | `lemma` | [toContinuousMap_X_eq_id](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/tocontinuousmap-x-eq-id.md) | 52 | `result-track:e5083747369c4fdb71c593b16b86adfa5b4866d27f52e2315fdacdadfd662705` |
| 3 | `def` | [toContinuousMapOn](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/tocontinuousmapon.md) | 61 | `declaration-track:05229fb3c6818e68e0323e17059115f15f872d6b6c35e42636dcb7b15235fd8d` |
| 4 | `lemma` | [toContinuousMapOn_X_eq_restrict_id](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/tocontinuousmapon-x-eq-restrict-id.md) | 65 | `result-track:cb9da5ada4b34abe66c16435c5b1f71af614e7664ba31151358e50400cbe3709` |
| 5 | `theorem` | [aeval_continuousMap_apply](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/aeval-continuousmap-apply.md) | 79 | `result-track:36a1e30d241e97f6b2d5c54b2e6097c36ab436ea3e08e80e80f4eaad4c11bbe0` |
| 6 | `def` | [toContinuousMapAlgHom](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/tocontinuousmapalghom.md) | 96 | `declaration-track:a6198dd824bc1eadf9934f951966ac8abe01bdd92f7e7487adafae7636732a14` |
| 7 | `def` | [toContinuousMapOnAlgHom](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/tocontinuousmaponalghom.md) | 117 | `declaration-track:b2f3463e604fc66a2e95615ae7c8ccde70586ac7fcad3919893117bad5ae3bf1` |
| 8 | `def` | [polynomialFunctions](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions.md) | 148 | `declaration-track:65618d2f3a802c4c507fef832edc0239d2023f0c9b5c2df903849a857701c07a` |
| 9 | `theorem` | [polynomialFunctions_coe](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-coe.md) | 152 | `result-track:b11fa6ff5b9e063a221be7ab9396608cdded06aa4ee90431aa7c3bddce012348` |
| 10 | `theorem` | [polynomialFunctions_separatesPoints](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-separatespoints.md) | 161 | `result-track:1beeca0c5e84f15f03161469e8feede88703c170541d1784119c246b6614904b` |
| 11 | `theorem` | [polynomialFunctions.comap_compRightAlgHom_iccHomeoI](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-comap-comprightalghom-icchomeoi.md) | 174 | `result-track:a29f71eb2f5707da71f232fb764e7746bef6534c5da301d3a12ea25c0f1c8521` |
| 12 | `theorem` | [polynomialFunctions.eq_adjoin_X](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-eq-adjoin-x.md) | 214 | `result-track:545dd5f5c1f5b96dc33fc154f6434558a24b235d771e28a15df853c08639d465` |
| 13 | `theorem` | [polynomialFunctions.le_equalizer](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-le-equalizer.md) | 228 | `result-track:866e1341faf3d0256ee104bb02ae5fd51e09f6f27ba714649c51099338bca793` |
| 14 | `theorem` | [polynomialFunctions.starClosure_eq_adjoin_X](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-starclosure-eq-adjoin-x.md) | 237 | `result-track:cc4c44cdd3fe90a4ad7e45fd14fc78eae196a6b0c3b30286f9ffad48e3da46f8` |
| 15 | `theorem` | [polynomialFunctions.starClosure_le_equalizer](../../../../GeneralTopology/ContinuousMapPolynomialNamespaced.lean/declarations/polynomialfunctions-starclosure-le-equalizer.md) | 241 | `result-track:acd68ca4691b487e0b2c4d38f74dad2a59bc38cb15c9452a2bd8763621322983` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=707bc8625e0a33651d6ba82b2d2b36b0d8bfc796def54bf28819c4be4994203e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant5b7246c3aa023fa107b98333caa11f8c9beb65eccd82c5b9f3e33a55ca499760.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variant5b7246c3aa023fa107b98333caa11f8c9beb65eccd82c5b9f3e33a55ca499760.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
