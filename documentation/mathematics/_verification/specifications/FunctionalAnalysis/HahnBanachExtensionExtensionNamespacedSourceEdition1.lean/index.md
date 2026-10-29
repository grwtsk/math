# Verification target: Hahn Banach Extension Extension Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "311621f36dc94b35e1acf4da32ec6bda07b16988",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `311621f36dc94b35e1acf4da32ec6bda07b16988`.

Source path: `GRWTSK/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extend` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_extension_norm_eq](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/exists-extension-norm-eq-source-edition-2.md) | 49 | `result-track:50f80f381b8fb6f20073dc829d2d39a52562666017b269ecb3df8a21a2619a1f` |
| 2 | `theorem` | [exists_extension_norm_eq](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/exists-extension-norm-eq.md) | 78 | `result-track:3957f0e5fceffb33297d81e2db22255dff0ed6b43684056fb1fdb4cd07a2fd5d` |
| 3 | `lemma` | [ContinuousLinearMap.exist_extension_of_finiteDimensional_range](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/continuouslinearmap-exist-extension-of-finitedimensional-range.md) | 130 | `result-track:002e59016aed728bf014103cad425c12fd8733bbfef8e4f188f42126ce40bb66` |
| 4 | `lemma` | [Submodule.ClosedComplemented.of_finiteDimensional](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/submodule-closedcomplemented-of-finitedimensional.md) | 144 | `result-track:f3ebd08f8bbd32f749c3344f4c31ffd5b67aa2273deed4841ff0a51278d861c4` |
| 5 | `theorem` | [coord_norm'](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/coord-norm.md) | 158 | `result-track:5b5053de60113f2c5c56a04ec6c25cc395fba05560ee4eb890c334dcee5e6407` |
| 6 | `theorem` | [exists_dual_vector](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/exists-dual-vector.md) | 164 | `result-track:8bd4d487afbfad872ab5805b11d1f4ea5e9651903b1ffe09aaced75ad6cad7aa` |
| 7 | `theorem` | [exists_dual_vector'](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/exists-dual-vector-source-edition-2.md) | 177 | `result-track:ae64fa36d9ca8e63ff27242868cf5b3c6197017ece4fa97db01e3a49ebf653cd` |
| 8 | `theorem` | [exists_dual_vector''](../../../../FunctionalAnalysis/HahnBanachExtensionExtensionNamespacedSourceEdition1.lean/declarations/exists-dual-vector-source-edition-3.md) | 188 | `result-track:aecda4559ecce0f106d896540e93fa4b8b09737aaa6777054a7f3f9a98733b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f7a33c50c8d342b27dede905e2fda1f42b82761317c152c2a096e09f2fee5f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean","GRWTSK/_verification/specifications/Analysis/Extension/Variant14d644224d71736a31ba6f5f780dfdcadf8abad7d01f1292f6084c19e014197f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
