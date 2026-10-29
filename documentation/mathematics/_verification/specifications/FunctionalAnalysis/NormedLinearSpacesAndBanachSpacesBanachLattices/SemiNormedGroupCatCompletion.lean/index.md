# Verification target: Semi Normed Group Cat Completion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1861b38f695eca1e8deb6e7f76bce20d0a7d17c9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1861b38f695eca1e8deb6e7f76bce20d0a7d17c9`.

Source path: `GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGroupCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.HomCompletion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion.md) | 47 | `declaration-track:510bf5545290ffc5313d3a94d30e4999101d6a6aa0e53909a3a013f7726a39e6` |
| 2 | `instance` | [completion_completeSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-completespace.md) | 54 | `declaration-track:b58bd6a8cd4195f1327b5fa9f816927359193a0b945064f81ea1576450d4c254` |
| 3 | `def` | [completion.incl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-incl.md) | 60 | `declaration-track:33109a7ac1716dfe912295a52a0b601a35e7d23216e5f59724bb0a2f92c448fd` |
| 4 | `theorem` | [completion.norm_incl_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-norm-incl-eq.md) | 66 | `result-track:2c63e2d34ba8dbd694515248317ecd043b865d435e7ea502b9d7e764e20d25e8` |
| 5 | `theorem` | [completion.map_normNoninc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-map-normnoninc.md) | 70 | `result-track:47c91243ff0a6b8b5d7a6a16ea1836ba28e863958a45041a9941c7369144c348` |
| 6 | `def` | [completion.mapHom](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-maphom.md) | 83 | `declaration-track:ccf018c9fd470ad828a11bc55a41bc8fd7c814c075fed36d59da65295fa7fcc2` |
| 7 | `theorem` | [completion.map_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-map-zero.md) | 92 | `result-track:a6d132a84c2d5a55bd8408d090be0173ec75ea7e3a2d87d19706b50c41dabf00` |
| 8 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:be24cf639381d1e3c073b461a98e153cf76e65cb85a251c7dfefedd77b538cb9` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/instance.md) | 115 | `declaration-track:3b2670fdcc454f88a3a9ca85a6d6c9c30a84f222101cc9a180ea4d8360691fed` |
| 10 | `def` | [completion.lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-lift.md) | 121 | `declaration-track:719c1664c497f82568827f0644ad30fdb9700635fe27e62da2e28baf71944abd` |
| 11 | `theorem` | [completion.lift_comp_incl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-lift-comp-incl.md) | 128 | `result-track:98b415f9ba345498c08ace8460abed44eaac749b88ae9948e3e7252dcdd87c81` |
| 12 | `theorem` | [completion.lift_unique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SemiNormedGroupCatCompletion.lean/declarations/completion-lift-unique.md) | 133 | `result-track:4a48dab3abf399907ba9ad7a80840a778496c0f2eb8c3ac5b8c9e46b4f426c84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a964b99e5cb3f4e706acb4ed30e91b1f6e2cd0021c4a4d74f01ecbcf6d19e1e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean","GRWTSK/_verification/specifications/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
