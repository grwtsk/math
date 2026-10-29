# Verification target: Finsupp Well Founded Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45ba3997e2a43339cc348923aceb69db48bf566a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant72c3be62723bd4ce2e83c201792155fe7b25c4105b38302c2b109ce38a6f95ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45ba3997e2a43339cc348923aceb69db48bf566a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant72c3be62723bd4ce2e83c201792155fe7b25c4105b38302c2b109ce38a6f95ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant72c3be62723bd4ce2e83c201792155fe7b25c4105b38302c2b109ce38a6f95ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.WellFounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Lex.acc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/lex-acc.md) | 45 | `result-track:aa4f748fd000c00a66ff8eac92f2c1f96154c269fab6a0ed69b478ddf11fe136` |
| 2 | `theorem` | [Lex.wellFounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/lex-wellfounded-source-edition-2.md) | 53 | `result-track:da0426639b9a66a8350bc1c373e4e448511c5251d63612548dbf208b6f857166` |
| 3 | `theorem` | [Lex.wellFounded'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/lex-wellfounded.md) | 57 | `result-track:728f2f5c1e00bf8a41936bf476744c0e98fb59e550a8b647d8e74b8738706d55` |
| 4 | `instance` | [Lex.wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/lex-wellfoundedlt.md) | 63 | `declaration-track:9b87ee1ed33ed2aa89519caaa9b15a111ebb56dd9da42f7a0c5732921a558dbf` |
| 5 | `theorem` | [Lex.wellFounded_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/lex-wellfounded-of-finite.md) | 70 | `result-track:8bac1606272c9da204aecfdd2510c27e2bfc78e7a9427089c7726ca6cccd104d` |
| 6 | `theorem` | [Lex.wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/lex-wellfoundedlt-of-finite.md) | 75 | `result-track:00a9eab6d9dbb0152202d66a3f6bea478e7b2bca1e2b71d0dbf1d9a52cc7cd85` |
| 7 | `theorem` | [wellFoundedLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/wellfoundedlt-source-edition-2.md) | 80 | `result-track:ddf429dd556531fd7e104802922859f6977910a8bf462b1c0848fd739d9db7b3` |
| 8 | `instance` | [wellFoundedLT'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/wellfoundedlt.md) | 85 | `declaration-track:5f16623923c5aaf8635dad0598b61afa791971b5cca4429739fb9b407f5b1364` |
| 9 | `instance` | [wellFoundedLT_of_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppWellFoundedNamespacedAligned.lean/declarations/wellfoundedlt-of-finite.md) | 90 | `declaration-track:f0aaf9570c9945d2f8c357dc50fccc69c67bf5cff5bb9e7a090ec42c3df7a1d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c2bcebaa251439cd9a60b6c73b11d90a79b1d3fb0281c46d60419ebc1455687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant72c3be62723bd4ce2e83c201792155fe7b25c4105b38302c2b109ce38a6f95ba.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/Variant72c3be62723bd4ce2e83c201792155fe7b25c4105b38302c2b109ce38a6f95ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
