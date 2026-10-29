# Verification target: Basis Fin Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abaee46483c1718fa09614a443312f3206c06b27",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abaee46483c1718fa09614a443312f3206c06b27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkFinCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/mkfincons.md) | 48 | `declaration-track:a3b7366e3a150eef3eef1ca87c9a470eccde6350ce511dc837f0630d4a9decfb` |
| 2 | `theorem` | [coe_mkFinCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/coe-mkfincons.md) | 64 | `result-track:4451dd06aebed4908c558309c87046a5207416dae3cc74bca2bd5728f2bbd8f0` |
| 3 | `def` | [mkFinConsOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/mkfinconsofle.md) | 73 | `declaration-track:4da40eae692371c890ca8c483519305448dc342ab268a8f290f5d96273d4c532` |
| 4 | `theorem` | [coe_mkFinConsOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/coe-mkfinconsofle.md) | 81 | `result-track:f0cf7b454dad355a7e782fc1b18edcdb38a0d9ca7099a9613a4e25a1a2ca155f` |
| 5 | `def` | [finTwoProd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/fintwoprod.md) | 89 | `declaration-track:e6acf21dfc5f333b20264417bfd3617fd41a89259a8fa19af635dea31b7cc30b` |
| 6 | `theorem` | [finTwoProd_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/fintwoprod-zero.md) | 93 | `result-track:082b336830f6663d99f3f233b772873511bd45a61ec9dd08d761b14ae31e516d` |
| 7 | `theorem` | [finTwoProd_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/fintwoprod-one.md) | 97 | `result-track:3774ca11b712f83d382ecfc9316a2e79c1335783240ae7f885f008e3de2a9bde` |
| 8 | `theorem` | [coe_finTwoProd_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinNamespaced.lean/declarations/coe-fintwoprod-repr.md) | 101 | `result-track:2b49af596b29497e8760efee462038f763a9b27fb36fd51b71949394e4c3b04e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b34bc5035598062636a62afa260d3f07671d4545d01b7f966ebe76dbe623b3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Fin/Variant87ebd4f1a7f28e2bf7dd670facc06445433bc2e045238636904676b5ec7d243d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
