# Verification target: Counit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c58c10c9b4dc3c4651f7522a17b1f04cc9850b9c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Counit/Variante9e94cd5579d7c33c010560bb49d44e0877d817cab875427bfbc51f1599b04b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c58c10c9b4dc3c4651f7522a17b1f04cc9850b9c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Counit/Variante9e94cd5579d7c33c010560bb49d44e0877d817cab875427bfbc51f1599b04b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Counit/Variante9e94cd5579d7c33c010560bb49d44e0877d817cab875427bfbc51f1599b04b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Eval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ACounit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/acounit.md) | 45 | `declaration-track:1ac2e8a5000de5f331577600860740f4db4cfe3f2a36ff2aaabaa903d8d96995` |
| 2 | `theorem` | [ACounit_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/acounit-x.md) | 51 | `result-track:a606be5f7fefd252287174d746c5ac8c56ea54cec8629848e3724831bbbdac96` |
| 3 | `theorem` | [ACounit_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/acounit-c.md) | 56 | `result-track:f9f839af00c00adf48b428252622b41719f015571504b211290eaa974baa8592` |
| 4 | `theorem` | [ACounit_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/acounit-surjective.md) | 61 | `result-track:cdbd78a2c3a6a639476a3b063ab3960ac8df24f66c6a70cdf76c1d0c85e613e1` |
| 5 | `def` | [counit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counit.md) | 68 | `declaration-track:daf723135bbd6f17b65b9d9fb3034770c86cf3f8026c49300d6f7643e0ca2871` |
| 6 | `def` | [counitNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counitnat.md) | 76 | `declaration-track:fdb248311fc70e746db662842c9d52b8a7b213de265e3a01f8e767659d392820` |
| 7 | `theorem` | [counit_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counit-surjective.md) | 79 | `result-track:54315818c3eecf32c17c898ecfc8759a425cfeecebdf2108bb58bd880f5049e1` |
| 8 | `theorem` | [counitNat_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counitnat-surjective.md) | 82 | `result-track:01de49eb06e5dc72608331267d05df695e8724906ee5e8e240df05fe3c45c306` |
| 9 | `theorem` | [counit_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counit-c.md) | 85 | `result-track:fcfed0e42c3893005b35764c3619cb10f2c737424450dd19e6383eac4362ef57` |
| 10 | `theorem` | [counitNat_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counitnat-c.md) | 88 | `result-track:2b1101f7a67095af4fc3f0135be33445dde6077a13a4bbed82d07da41ccef802` |
| 11 | `theorem` | [counit_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counit-x.md) | 94 | `result-track:666c9864f6ec3e83333eee97507b5974b81ab67c56ecdf73ed19f117ee13f379` |
| 12 | `theorem` | [counitNat_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespaced.lean/declarations/counitnat-x.md) | 98 | `result-track:fa8f3ebb02417b667de29bce686c94b06c1b1624815d28b81dc4a84e75364244` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbcc2a50d34fd4d0e37db687cbc0702c37782c8b456024b9f54c3a8d34fcf0f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Counit/Variante9e94cd5579d7c33c010560bb49d44e0877d817cab875427bfbc51f1599b04b8.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Counit/Variante9e94cd5579d7c33c010560bb49d44e0877d817cab875427bfbc51f1599b04b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
