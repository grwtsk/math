# Verification target: Normed Valued Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e95bb2d606654b45d628d5e2bf380eef65edeb57",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e95bb2d606654b45d628d5e2bf380eef65edeb57`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Ultra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.RankOne` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuationTopology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valuation](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/valuation.md) | 48 | `declaration-track:d9ca815431319b8803444acb64ad9ffa56e76ad9684e65422254c77ce639d473` |
| 2 | `theorem` | [valuation_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/valuation-apply.md) | 56 | `result-track:41c88bf4679f02e2f63276820300151373a7b53eb0204a680bced35cd15b94ca` |
| 3 | `def` | [toValued](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/tovalued.md) | 59 | `declaration-track:65da719cd0f1b0fa0dd8129c851bbd00ed3ee4782cd7ea217519da3fc0a97b78` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/instance-source-edition-2.md) | 70 | `declaration-track:878f76b0cedb65d7a0ec4daf9cbe6617d2e313036d1961c47d727a2c78a1ee59` |
| 5 | `def` | [norm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm.md) | 88 | `declaration-track:5af2e13b31db58daaedb381d9cc8f98e47991d23016d5bf5f7542c4114ce4e56` |
| 6 | `theorem` | [norm_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-def.md) | 90 | `result-track:b7dfb6fdba300cd0dff27e0c5102697886a4eacf00adfc9175814d0ed2181c4b` |
| 7 | `theorem` | [norm_nonneg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-nonneg.md) | 92 | `result-track:cba3271dd771ed06b67f3e2d1c5f55bbe00ed1fb0cd63978da1a7851907d6c9c` |
| 8 | `theorem` | [norm_add_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-add-le.md) | 94 | `result-track:773437162ee63f7b1b72b40008dc918de98aa9a1b429843aeb417f3e2bc3e719` |
| 9 | `theorem` | [norm_eq_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-eq-zero.md) | 98 | `result-track:120c7242fc63fb2a9e5dd46227bbf6711684e1eb99119ca8c5aac7fca9a0a1bf` |
| 10 | `theorem` | [norm_pos_iff_valuation_pos](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-pos-iff-valuation-pos.md) | 101 | `result-track:e86c28a418b170b24115a600906d2935aeb3eeeeb5f58c6b80f088cd71140d15` |
| 11 | `def` | [toNormedField](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/tonormedfield.md) | 109 | `declaration-track:9fe91a6914cb10aaee09ac4e8590834af0b1a240d1b2ab31cf64826f826f0365` |
| 12 | `lemma` | [isNonarchimedean_norm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/isnonarchimedean-norm.md) | 166 | `result-track:89dd857973c4a31d0952b0fdeddc08f19d0983c16e7565d7e0795f93569be565` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/instance.md) | 168 | `declaration-track:58cd83062085957c69a57e291ad6b417f570ba4af5c970c6ccb79347ded6b132` |
| 14 | `lemma` | [coe_valuation_eq_rankOne_hom_comp_valuation](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/coe-valuation-eq-rankone-hom-comp-valuation.md) | 174 | `result-track:9f08640677cea1014862462ceaa30ae2f01b488b28792fe068f6710e51eb0641` |
| 15 | `theorem` | [norm_le_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-le-iff.md) | 185 | `result-track:bc14010fb15b514832cc6d89c6716388482589f11b534caefed652e1ee0c1219` |
| 16 | `theorem` | [norm_lt_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-lt-iff.md) | 189 | `result-track:4e1c49cdcdd77b9fe532cd2b0744df5cc5a78c213752b0d0a716fdf042ea1b0e` |
| 17 | `theorem` | [norm_le_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-le-one-iff.md) | 193 | `result-track:308a9d8118e7cb85da7d47646fbf61cf87a08e3eac17189913d7d3f537ac24b4` |
| 18 | `theorem` | [norm_lt_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/norm-lt-one-iff.md) | 197 | `result-track:2f94b28a87478c5aaf588d68b34026b164970fc150b6b23c023d368e1c27c314` |
| 19 | `theorem` | [one_le_norm_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/one-le-norm-iff.md) | 201 | `result-track:a79d49ffd5d3f9203d8999a4f614617e97191cc536cfdc6d43c795ef662542db` |
| 20 | `theorem` | [one_lt_norm_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/one-lt-norm-iff.md) | 205 | `result-track:20a8725201f857fcec1ec7094fb1862e3e4afaf8cd6ceecc2087968c88d2e9a6` |
| 21 | `def` | [toNontriviallyNormedField](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/NormedValuedNamespaced.lean/declarations/tonontriviallynormedfield.md) | 213 | `declaration-track:2153ef51bec8192ff68e0621b0664ee6cbca1a4bde1877be1724e367e26869ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7a63ff6d167fcd2369621d601b795661e9af5e046167dc52e1ca6202dc81bce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
