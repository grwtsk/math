# Verification target: Induction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3becd4f8156cb9cf0b97e84c503df8568eeda765",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InductionNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/InductionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3becd4f8156cb9cf0b97e84c503df8568eeda765`.

Source path: `GRWTSK/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Span` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Successor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.ZeroLimit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GoodProducts.P0](../../../../GeneralTopology/InductionNamespaced.lean/declarations/goodproducts-p0.md) | 61 | `result-track:9568d5c8e1c5dc3a001f93a71909812392847a01f8bdbbe2957d084e5c6f9517` |
| 2 | `theorem` | [GoodProducts.Plimit](../../../../GeneralTopology/InductionNamespaced.lean/declarations/goodproducts-plimit.md) | 71 | `result-track:1f9cb4a0478f38f890bbcf57eeadeed7634bc674a1e67d9c67c83aa8bee9c627` |
| 3 | `theorem` | [GoodProducts.linearIndependentAux](../../../../GeneralTopology/InductionNamespaced.lean/declarations/goodproducts-linearindependentaux.md) | 80 | `result-track:d32e17e24461f3737a7ce2cbdc09222dbf4d46d348212810579ebc870fec7c8a` |
| 4 | `theorem` | [GoodProducts.linearIndependent](../../../../GeneralTopology/InductionNamespaced.lean/declarations/goodproducts-linearindependent.md) | 93 | `result-track:2681f898c1def618a154f2946a5ab0ca25ae96599d7ef0fa449b34a0adc7de45` |
| 5 | `def` | [GoodProducts.Basis](../../../../GeneralTopology/InductionNamespaced.lean/declarations/goodproducts-basis.md) | 100 | `declaration-track:99788976149f06e23f6b4cb4aa7459339aa341154202112626c1d1dd37ffdef6` |
| 6 | `theorem` | [Nobeling_aux](../../../../GeneralTopology/InductionNamespaced.lean/declarations/nobeling-aux.md) | 113 | `result-track:eecf9432d3b70d67930f36b2844969f550ba8d73e313dea23459c7a856ad561a` |
| 7 | `def` | [Nobeling.ι](../../../../GeneralTopology/InductionNamespaced.lean/declarations/nobeling.md) | 124 | `declaration-track:12242cbb175e4fbcd29608bbed2a32afa15e1c85855efecaf659f236acafcd38` |
| 8 | `theorem` | [Nobeling.isClosedEmbedding](../../../../GeneralTopology/InductionNamespaced.lean/declarations/nobeling-isclosedembedding.md) | 128 | `result-track:51551f32e0fb282c31c9ae72bfac661ebe2a964d69e5e0ce337410d6ef2bb38c` |
| 9 | `instance` | [LocallyConstant.freeOfProfinite](../../../../GeneralTopology/InductionNamespaced.lean/declarations/locallyconstant-freeofprofinite.md) | 162 | `declaration-track:459963def5cf26e88bcb5598dcb3bdd8bbbcc62519aba0f70a32948de0ef9515` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00b9d78ce6437130cd975f631fca457074d29252ff8ed1ea634357439723c7ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean","GRWTSK/_verification/specifications/Topology/Induction/Variant62cb0e963a955868979ceb690d282b140398ca15f86ad8e7e4ec4d50bea86a29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
