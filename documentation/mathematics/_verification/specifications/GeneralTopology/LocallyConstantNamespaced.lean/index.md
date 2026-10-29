# Verification target: Locally Constant Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa78f0410ff63244407d38525bc7efece4de0556",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyConstant/Variant1124a7ac6e27e7d677d8d620fd76837364ff9ab385c96e9a94811cdffda17a14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyConstantNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyConstantNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa78f0410ff63244407d38525bc7efece4de0556`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyConstant/Variant1124a7ac6e27e7d677d8d620fd76837364ff9ab385c96e9a94811cdffda17a14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyConstant/Variant1124a7ac6e27e7d677d8d620fd76837364ff9ab385c96e9a94811cdffda17a14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.LocallyConstant.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toContinuousMapMonoidHom](../../../../GeneralTopology/LocallyConstantNamespaced.lean/declarations/tocontinuousmapmonoidhom.md) | 32 | `declaration-track:24f9652af7eb3d074972d62916a65704bd6aa2af18f6edc1d1f44f2633d481ee` |
| 2 | `def` | [toContinuousMapLinearMap](../../../../GeneralTopology/LocallyConstantNamespaced.lean/declarations/tocontinuousmaplinearmap.md) | 43 | `declaration-track:284a1e91ee6b0623cc5aa04cce822c0cd4e7d47ee0f5bd617b678cb928bb2e64` |
| 3 | `def` | [toContinuousMapAlgHom](../../../../GeneralTopology/LocallyConstantNamespaced.lean/declarations/tocontinuousmapalghom.md) | 55 | `declaration-track:b7c44dd6dda1bffdc58206c36ecba9353b3bf012aa464288516d33b951769271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbecd0d6be1192b5847632498ec66ed8748f76e21ead79a0a13eefe231c8605c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyConstant/Variant1124a7ac6e27e7d677d8d620fd76837364ff9ab385c96e9a94811cdffda17a14.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyConstant/Variant1124a7ac6e27e7d677d8d620fd76837364ff9ab385c96e9a94811cdffda17a14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
